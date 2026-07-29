import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean

structure LinkagePackage where
  ideal : Type u
  linkageClass : Prop
  linkageEquivalence : Prop
  linkageInvariant : Prop
  linkageEquivalenceWitness : linkageEquivalence
  linkageInvariantWitness : linkageInvariant

def LinkageClosed (L : LinkagePackage) : Prop :=
  L.linkageEquivalence ∧ L.linkageInvariant

end LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean
end HautevilleHouse