import canonicalLaneMathlib.AdmissibleClass
import LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean.CanonicalModule

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean

structure PeskineSzpiroPackage {D : DeterminantalIdealPackage} {L : LinkageCompleteIntersectionPackage D} (C : CanonicalModulePackage L) where
  linkagePreservesCM : Prop
  dualityTheorem : Prop
  heightPreservation : Prop

structure PeskineSzpiroEvidence {D : DeterminantalIdealPackage} {L : LinkageCompleteIntersectionPackage D} {C : CanonicalModulePackage L} (P : PeskineSzpiroPackage C) where
  linkagePreservesCMClosed : P.linkagePreservesCM
  dualityTheoremClosed : P.dualityTheorem
  heightPreservationClosed : P.heightPreservation

def PeskineSzpiroClosed {D : DeterminantalIdealPackage} {L : LinkageCompleteIntersectionPackage D} {C : CanonicalModulePackage L} (P : PeskineSzpiroPackage C) : Prop :=
  P.linkagePreservesCM ∧ P.dualityTheorem ∧ P.heightPreservation

end LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean
end HautevilleHouse
