import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  cases A.gateWitness with
  | inl h => exact h
  | inr h => 
    have : A.endpointSatisfied := by
      exact h.some
    exact this

end LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean
end HautevilleHouse