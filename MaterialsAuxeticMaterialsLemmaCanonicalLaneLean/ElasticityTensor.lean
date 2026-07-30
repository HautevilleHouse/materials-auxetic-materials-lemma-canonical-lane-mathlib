import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure ElasticityTensorPackage {C : CrystalStructurePackage}
    {P : PhaseDiagramPackage C} where
  stiffnessMatrix : Matrix (Fin 6) (Fin 6) ℝ
  complianceMatrix : Matrix (Fin 6) (Fin 6) ℝ
  positiveDefinite : Prop
  symmetryConditions : Prop
  auxeticCondition : Prop

structure ElasticityTensorEvidence {C : CrystalStructurePackage}
    {P : PhaseDiagramPackage C} (E : ElasticityTensorPackage) where
  positiveDefiniteClosed : E.positiveDefinite
  symmetryConditionsClosed : E.symmetryConditions
  auxeticConditionClosed : E.auxeticCondition

def ElasticityTensorClosed {C : CrystalStructurePackage}
    {P : PhaseDiagramPackage C} (E : ElasticityTensorPackage) : Prop :=
  E.positiveDefinite ∧ E.symmetryConditions ∧ E.auxeticCondition

theorem elasticity_tensor_closed_from_evidence {C : CrystalStructurePackage}
    {P : PhaseDiagramPackage C} (E : ElasticityTensorPackage)
    (Ev : ElasticityTensorEvidence E) : ElasticityTensorClosed E := by
  exact And.intro Ev.positiveDefiniteClosed
    (And.intro Ev.symmetryConditionsClosed Ev.auxeticConditionClosed)

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
