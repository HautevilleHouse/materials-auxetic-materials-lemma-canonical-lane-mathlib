import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure AuxeticElasticityTensor where
  materialBody : Type u
  elasticityTensor : Type v
  voigtNotationMatrix : Type w
  positiveDefinite : Prop
  negativePoissonConstraint : Prop
  auxeticStrainCompatibility : Prop

structure AuxeticElasticityTensorEvidence (A : AuxeticElasticityTensor) where
  positiveDefiniteClosed : A.positiveDefinite
  negativePoissonConstraintClosed : A.negativePoissonConstraint
  auxeticStrainCompatibilityClosed : A.auxeticStrainCompatibility

def AuxeticElasticityTensorClosed (A : AuxeticElasticityTensor) : Prop :=
  A.positiveDefinite ∧ A.negativePoissonConstraint ∧ A.auxeticStrainCompatibility

theorem auxetic_elasticity_tensor_closed_from_evidence (A : AuxeticElasticityTensor) (E : AuxeticElasticityTensorEvidence A) :
    AuxeticElasticityTensorClosed A := by
  exact And.intro E.positiveDefiniteClosed (And.intro E.negativePoissonConstraintClosed E.auxeticStrainCompatibilityClosed)

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse