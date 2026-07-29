import LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean.LCIAlgebraPackage

/-!
# Determinantal Structure Package

Models the determinantal ideals and their minors within the LCI context.
-/

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean

struct DeterminantalPackage (R : LCIRing) where
  matrix : Type
  entries : matrix → R.carrier
  size : Nat × Nat
  minors : Nat → Set (Ideal R.carrier)
  determinantalIdeal : Ideal R.carrier
  coheightCondition : Prop
  genericallyCompleteIntersection : Prop

struct DeterminantalEvidence (R : LCIRing) (D : DeterminantalPackage R) where
  minorsClosed : D.minors 0 = {⊥}
  determinantalIdealClosed : D.determinantalIdeal = Ideal.span {0}
  coheightConditionClosed : D.coheightCondition
  genericallyCompleteIntersectionClosed : D.genericallyCompleteIntersection

def DeterminantalClosed (R : LCIRing) (D : DeterminantalPackage R) : Prop :=
  D.coheightCondition ∧ D.genericallyCompleteIntersection

theorem determinantal_closed_from_evidence (R : LCIRing) (D : DeterminantalPackage R) (E : DeterminantalEvidence R D) : DeterminantalClosed R D := by
  exact And.intro E.coheightConditionClosed E.genericallyCompleteIntersectionClosed

end LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean
end HautevilleHouse