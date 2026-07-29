import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean

structure DeterminantalIdealsPackage where
  matrix : Type u
  size_m : ℕ
  size_n : ℕ
  rank : ℕ
  idealGeneratedByMinors : Prop
  heightProperty : Prop
  idealGeneratedByMinorsWitness : idealGeneratedByMinors
  heightPropertyWitness : heightProperty

def DeterminantalIdealsClosed (D : DeterminantalIdealsPackage) : Prop :=
  D.idealGeneratedByMinors ∧ D.heightProperty

end LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean
end HautevilleHouse