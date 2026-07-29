import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean

structure FiniteFreeResolutionPackage where
  polynomialRing : Type u
  moduleType : Type v
  freeResolutionLength : Nat
  resolutionExactness : Prop
  differentialsDefined : Prop
  lengthCompatibleWithLinkage : Prop

structure FiniteFreeResolutionEvidence (R : FiniteFreeResolutionPackage) where
  resolutionExactnessClosed : R.resolutionExactness
  differentialsDefinedClosed : R.differentialsDefined
  lengthCompatibleWithLinkageClosed : R.lengthCompatibleWithLinkage

def FiniteFreeResolutionClosed (R : FiniteFreeResolutionPackage) : Prop :=
  R.resolutionExactness ∧ R.differentialsDefined ∧ R.lengthCompatibleWithLinkage

theorem finite_free_resolution_closed_from_evidence
    (R : FiniteFreeResolutionPackage) (E : FiniteFreeResolutionEvidence R) :
    FiniteFreeResolutionClosed R := by
  exact And.intro E.resolutionExactnessClosed
    (And.intro E.differentialsDefinedClosed E.lengthCompatibleWithLinkageClosed)

end LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean
end HautevilleHouse