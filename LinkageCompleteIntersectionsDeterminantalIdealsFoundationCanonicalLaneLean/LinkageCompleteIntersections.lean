import canonicalLaneMathlib.AdmissibleClass
import LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean.DeterminantalIdeals

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean

structure LinkageCompleteIntersectionPackage (D : DeterminantalIdealPackage) where
  linkedIdeal : DeterminantalIdealPackage
  linkageDepthCondition : Prop
  canonicalModuleIsDeterminantal : Prop

structure LinkageCompleteIntersectionEvidence {D : DeterminantalIdealPackage} (L : LinkageCompleteIntersectionPackage D) where
  linkageDepthConditionClosed : L.linkageDepthCondition
  canonicalModuleIsDeterminantalClosed : L.canonicalModuleIsDeterminantal

def LinkageCompleteIntersectionClosed {D : DeterminantalIdealPackage} (L : LinkageCompleteIntersectionPackage D) : Prop :=
  L.linkageDepthCondition ∧ L.canonicalModuleIsDeterminantal

end LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean
end HautevilleHouse
