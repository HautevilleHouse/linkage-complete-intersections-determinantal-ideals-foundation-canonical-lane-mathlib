import canonicalLaneMathlib.AdmissibleClass
import LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean.LinkageCompleteIntersections

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean

structure CanonicalModulePackage {D : DeterminantalIdealPackage} (L : LinkageCompleteIntersectionPackage D) where
  moduleDefined : Prop
  syzygyRank : Nat
  isMaximalCohenMacaulay : Prop

structure CanonicalModuleEvidence {D : DeterminantalIdealPackage} {L : LinkageCompleteIntersectionPackage D} (C : CanonicalModulePackage L) where
  moduleDefinedClosed : C.moduleDefined
  syzygyRankComputed : C.syzygyRank = D.matrixSize.2 - D.matrixSize.1
  maximalCohenMacaulayClosed : C.isMaximalCohenMacaulay

def CanonicalModuleClosed {D : DeterminantalIdealPackage} {L : LinkageCompleteIntersectionPackage D} (C : CanonicalModulePackage L) : Prop :=
  C.moduleDefined ∧ C.isMaximalCohenMacaulay ∧ C.syzygyRank = D.matrixSize.2 - D.matrixSize.1

end LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean
end HautevilleHouse
