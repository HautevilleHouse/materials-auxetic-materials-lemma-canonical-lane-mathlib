import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure AuxeticFractureToughness where
  crackGeometry : Type u
  stressIntensityFactor : Type v
  tougheningMechanism : Prop
  energyReleaseRate : Prop
  crackDeflection : Prop

structure AuxeticFractureToughnessEvidence (F : AuxeticFractureToughness) where
  tougheningMechanismClosed : F.tougheningMechanism
  energyReleaseRateClosed : F.energyReleaseRate
  crackDeflectionClosed : F.crackDeflection

def AuxeticFractureToughnessClosed (F : AuxeticFractureToughness) : Prop :=
  F.tougheningMechanism ∧ F.energyReleaseRate ∧ F.crackDeflection

theorem auxetic_fracture_toughness_closed_from_evidence (F : AuxeticFractureToughness) (E : AuxeticFractureToughnessEvidence F) :
    AuxeticFractureToughnessClosed F := by
  exact And.intro E.tougheningMechanismClosed (And.intro E.energyReleaseRateClosed E.crackDeflectionClosed)

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse