import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure AuxeticLaminaLemmaPackage {C : CrystalStructurePackage}
    {P : PhaseDiagramPackage C} {E : ElasticityTensorPackage}
    {F : FractureToughnessPackage} where
  inplanePoissonRatio : ℝ
  outOfPlanePoissonRatio : ℝ
  laminaThickness : ℝ
  auxeticResponseDomain : Prop
  negativePoissonRatioRealized : Prop

structure AuxeticLaminaLemmaEvidence {C : CrystalStructurePackage}
    {P : PhaseDiagramPackage C} {E : ElasticityTensorPackage}
    {F : FractureToughnessPackage}
    (A : AuxeticLaminaLemmaPackage) where
  auxeticResponseDomainClosed : A.auxeticResponseDomain
  negativePoissonRatioRealizedClosed : A.negativePoissonRatioRealized

def AuxeticLaminaLemmaClosed {C : CrystalStructurePackage}
    {P : PhaseDiagramPackage C} {E : ElasticityTensorPackage}
    {F : FractureToughnessPackage}
    (A : AuxeticLaminaLemmaPackage) : Prop :=
  A.auxeticResponseDomain ∧ A.negativePoissonRatioRealized

theorem auxetic_lamina_lemma_closed_from_evidence {C : CrystalStructurePackage}
    {P : PhaseDiagramPackage C} {E : ElasticityTensorPackage}
    {F : FractureToughnessPackage}
    (A : AuxeticLaminaLemmaPackage) (Ev : AuxeticLaminaLemmaEvidence A) :
    AuxeticLaminaLemmaClosed A := by
  exact And.intro Ev.auxeticResponseDomainClosed Ev.negativePoissonRatioRealizedClosed

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
