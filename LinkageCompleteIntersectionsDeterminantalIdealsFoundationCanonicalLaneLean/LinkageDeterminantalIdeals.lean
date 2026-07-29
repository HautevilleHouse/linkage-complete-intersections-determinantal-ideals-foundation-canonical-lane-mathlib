import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean

structure LinkageDeterminantalIdealsPackage where
  ideal : Type u
  genericallyCompleteIntersection : Prop
  linkageClass : Type v
  determinantalStructure : Prop
  linkageDepth : Nat
  residueField : Type w
  linkageClassClosedUnderCI : Prop

structure LinkageDeterminantalIdealsEvidence (P : LinkageDeterminantalIdealsPackage) where
  genericallyCompleteIntersectionClosed : P.genericallyCompleteIntersection
  determinantalStructureClosed : P.determinantalStructure
  linkageClassClosedUnderCIClosed : P.linkageClassClosedUnderCI

def LinkageDeterminantalIdealsClosed (P : LinkageDeterminantalIdealsPackage) : Prop :=
  P.genericallyCompleteIntersection ∧ P.determinantalStructure ∧ P.linkageClassClosedUnderCI

theorem linkage_determinantal_ideals_closed_from_evidence
    (P : LinkageDeterminantalIdealsPackage) (E : LinkageDeterminantalIdealsEvidence P) :
    LinkageDeterminantalIdealsClosed P := by
  exact And.intro E.genericallyCompleteIntersectionClosed
    (And.intro E.determinantalStructureClosed E.linkageClassClosedUnderCIClosed)

end LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean
end HautevilleHouse