import canonicalLaneMathlib.AdmissibleClass
import LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean.PeskineSzpiroTheory

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean

structure StructureTheoremPackage {D : DeterminantalIdealPackage} {L : LinkageCompleteIntersectionPackage D} {C : CanonicalModulePackage L} (P : PeskineSzpiroPackage C) where
  structureProof : Prop
  classifciationResult : Prop

structure StructureTheoremEvidence {D : DeterminantalIdealPackage} {L : LinkageCompleteIntersectionPackage D} {C : CanonicalModulePackage L} {P : PeskineSzpiroPackage C} (S : StructureTheoremPackage P) where
  structureProofClosed : S.structureProof
  classificationResultClosed : S.classifciationResult

def StructureTheoremClosed {D : DeterminantalIdealPackage} {L : LinkageCompleteIntersectionPackage D} {C : CanonicalModulePackage L} {P : PeskineSzpiroPackage C} (S : StructureTheoremPackage P) : Prop :=
  S.structureProof ∧ S.classifciationResult

end LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean
end HautevilleHouse
