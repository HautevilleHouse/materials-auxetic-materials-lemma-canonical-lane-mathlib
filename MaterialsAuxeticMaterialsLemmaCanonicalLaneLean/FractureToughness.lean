import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure FractureToughnessPackage {C : CrystalStructurePackage}
    {P : PhaseDiagramPackage C} {E : ElasticityTensorPackage} where
  criticalStressIntensity : ℝ
  crackGrowthResistance : ℝ
  energyReleaseRate : ℝ
  fractureCriteria : Prop
  toughnessBounds : Prop

structure FractureToughnessEvidence {C : CrystalStructurePackage}
    {P : PhaseDiagramPackage C} {E : ElasticityTensorPackage}
    (F : FractureToughnessPackage) where
  fractureCriteriaClosed : F.fractureCriteria
  toughnessBoundsClosed : F.toughnessBounds

def FractureToughnessClosed {C : CrystalStructurePackage}
    {P : PhaseDiagramPackage C} {E : ElasticityTensorPackage}
    (F : FractureToughnessPackage) : Prop :=
  F.fractureCriteria ∧ F.toughnessBounds

theorem fracture_toughness_closed_from_evidence {C : CrystalStructurePackage}
    {P : PhaseDiagramPackage C} {E : ElasticityTensorPackage}
    (F : FractureToughnessPackage) (Ev : FractureToughnessEvidence F) :
    FractureToughnessClosed F := by
  exact And.intro Ev.fractureCriteriaClosed Ev.toughnessBoundsClosed

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
