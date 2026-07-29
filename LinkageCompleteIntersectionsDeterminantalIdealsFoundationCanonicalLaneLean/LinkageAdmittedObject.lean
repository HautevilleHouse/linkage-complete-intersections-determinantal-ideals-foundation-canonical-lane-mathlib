import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean

structure LinkageAdmittedObject where
  linkageClass : Type u
  moduleCategory : Type v
  linkageDepth : Nat
  linkageClosedUnderCI : Prop
  conclusion : linkageClosedUnderCI

def LinkageWitnessClosed (O : LinkageAdmittedObject) : Prop :=
  O.linkageClosedUnderCI

end LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean
end HautevilleHouse