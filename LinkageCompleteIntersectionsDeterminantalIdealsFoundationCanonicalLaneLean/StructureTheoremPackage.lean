import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean

structure StructureTheoremPackage (L : LinkagePackage) (C : CompleteIntersectionPackage) (D : DeterminantalIdealsPackage) where
  linkedCI : Prop
  linkedDet : Prop
  ciImpliesDet : Prop
  linkedCIWitness : linkedCI
  linkedDetWitness : linkedDet
  ciImpliesDetWitness : ciImpliesDet

def StructureTheoremClosed (S : StructureTheoremPackage L C D) : Prop :=
  S.linkedCI ∧ S.linkedDet ∧ S.ciImpliesDet

end LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean
end HautevilleHouse