import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean

structure CompleteIntersectionPackage where
  ring : Type u
  ideal : Type v
  grade : ℕ
  regularSequence : Prop
  completeIntersectionProperty : Prop
  regularSequenceWitness : regularSequence

def CompleteIntersectionClosed (C : CompleteIntersectionPackage) : Prop :=
  C.regularSequence ∧ C.completeIntersectionProperty

end LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean
end HautevilleHouse