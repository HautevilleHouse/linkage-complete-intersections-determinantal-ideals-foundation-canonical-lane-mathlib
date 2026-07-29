import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded ∨ A.endpointSatisfied

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact Or.symm A.gateWitness

end LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean
end HautevilleHouse