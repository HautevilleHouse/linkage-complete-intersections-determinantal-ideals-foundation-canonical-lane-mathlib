import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean

structure LinkagePackage (D : DeterminantalIdealPackage) where
  linkedIdeal : D.ring
  linkageMatrix : List (List (D.ring))
  linkageHeightCondition : Prop
  linkagePurity : Prop
  linkageCompleteIntersection : Prop

structure LinkageEvidence (D : DeterminantalIdealPackage) (L : LinkagePackage D) where
  linkageHeightConditionClosed : L.linkageHeightCondition
  linkagePurityClosed : L.linkagePurity
  linkageCompleteIntersectionClosed : L.linkageCompleteIntersection

def LinkageClosed (D : DeterminantalIdealPackage) (L : LinkagePackage D) : Prop :=
  L.linkageHeightCondition ∧ L.linkagePurity ∧ L.linkageCompleteIntersection

theorem linkage_closed_from_evidence (D : DeterminantalIdealPackage) (L : LinkagePackage D)
    (E : LinkageEvidence D L) : LinkageClosed D L := by
  exact And.intro E.linkageHeightConditionClosed (And.intro E.linkagePurityClosed E.linkageCompleteIntersectionClosed)

end LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean
end HautevilleHouse