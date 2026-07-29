import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean

structure DeterminantalIdealPackage where
  ring : Type u
  commRing : CommRing ring
  matrixDimensions : Nat × Nat
  idealGenerators : List (ring)
  heightDeterminantal : Prop
  coheightDeterminantal : Prop
  primaryDecompositionExists : Prop

structure DeterminantalIdealEvidence (D : DeterminantalIdealPackage) where
  heightDeterminantalClosed : D.heightDeterminantal
  coheightDeterminantalClosed : D.coheightDeterminantal
  primaryDecompositionExistsClosed : D.primaryDecompositionExists

def DeterminantalIdealClosed (D : DeterminantalIdealPackage) : Prop :=
  D.heightDeterminantal ∧ D.coheightDeterminantal ∧ D.primaryDecompositionExists

theorem determinantal_ideal_closed_from_evidence (D : DeterminantalIdealPackage)
    (E : DeterminantalIdealEvidence D) : DeterminantalIdealClosed D := by
  exact And.intro E.heightDeterminantalClosed (And.intro E.coheightDeterminantalClosed E.primaryDecompositionExistsClosed)

end LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean
end HautevilleHouse