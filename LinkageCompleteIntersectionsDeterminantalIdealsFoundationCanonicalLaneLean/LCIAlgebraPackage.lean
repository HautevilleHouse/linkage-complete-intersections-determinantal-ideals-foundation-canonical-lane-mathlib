import canonicalLaneMathlib.AdmissibleClass

/-!
# LCI Algebra Package

Records the algebraic structure for linkage, complete intersections, and determinantal ideals.
-/

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean

structure LCIRing where
  carrier : Type u
  ring : Ring carrier
  noetherian : Prop
  local : Prop
  regularLocal : Prop

struct LCIAlgebraPackage (R : LCIRing) where
  linkedIdeals : Set (Ideal R.carrier)
  completeIntersectionCondition : Prop
  determinantalPresentation : Prop
  linkageEquivalence : Prop
  structureTheoremLocal : Prop

struct LCIAlgebraEvidence (R : LCIRing) (P : LCIAlgebraPackage R) where
  linkedIdealsClosed : P.linkedIdeals = P.linkedIdeals
  completeIntersectionConditionClosed : P.completeIntersectionCondition
  determinantalPresentationClosed : P.determinantalPresentation
  linkageEquivalenceClosed : P.linkageEquivalence
  structureTheoremLocalClosed : P.structureTheoremLocal

def LCIAlgebraClosed (R : LCIRing) (P : LCIAlgebraPackage R) : Prop :=
  P.completeIntersectionCondition ∧ P.determinantalPresentation ∧ P.linkageEquivalence ∧ P.structureTheoremLocal

theorem lci_algebra_closed_from_evidence (R : LCIRing) (P : LCIAlgebraPackage R) (E : LCIAlgebraEvidence R P) : LCIAlgebraClosed R P := by
  exact And.intro E.completeIntersectionConditionClosed (And.intro E.determinantalPresentationClosed (And.intro E.linkageEquivalenceClosed E.structureTheoremLocalClosed))

end LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean
end HautevilleHouse