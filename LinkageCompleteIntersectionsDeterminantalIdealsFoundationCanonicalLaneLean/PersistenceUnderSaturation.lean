import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean

structure PersistenceUnderSaturationPackage where
  saturationType : Type u
  idealFamily : Type v
  persistenceProperty : Prop
  saturationInvariance : Prop
  linkageCompatibility : Prop

structure PersistenceUnderSaturationEvidence (P : PersistenceUnderSaturationPackage) where
  persistencePropertyClosed : P.persistenceProperty
  saturationInvarianceClosed : P.saturationInvariance
  linkageCompatibilityClosed : P.linkageCompatibility

def PersistenceUnderSaturationClosed (P : PersistenceUnderSaturationPackage) : Prop :=
  P.persistenceProperty ∧ P.saturationInvariance ∧ P.linkageCompatibility

theorem persistence_under_saturation_closed_from_evidence
    (P : PersistenceUnderSaturationPackage) (E : PersistenceUnderSaturationEvidence P) :
    PersistenceUnderSaturationClosed P := by
  exact And.intro E.persistencePropertyClosed
    (And.intro E.saturationInvarianceClosed E.linkageCompatibilityClosed)

end LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean
end HautevilleHouse