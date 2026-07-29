import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean

def ConstrainedLinkageClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_linkage_endgame (A : AdmissibleClass) : ConstrainedLinkageClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean
end HautevilleHouse