import HautevilleHouse.MaterialsAuxeticMaterialsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure ElasticTensorPackage where
  stiffnessMatrix : Prop
  negativePoissonRatio : Prop
  shearModulusPositive : Prop
  bulkModulusPositive : Prop
  auxeticStrainEnergy : Prop

structure ElasticTensorEvidence (E : ElasticTensorPackage) where
  stiffnessMatrixClosed : E.stiffnessMatrix
  negativePoissonRatioClosed : E.negativePoissonRatio
  shearModulusPositiveClosed : E.shearModulusPositive
  bulkModulusPositiveClosed : E.bulkModulusPositive
  auxeticStrainEnergyClosed : E.auxeticStrainEnergy

def ElasticTensorClosed (E : ElasticTensorPackage) : Prop :=
  E.stiffnessMatrix ∧ E.negativePoissonRatio ∧ E.shearModulusPositive ∧
  E.bulkModulusPositive ∧ E.auxeticStrainEnergy

theorem elastic_tensor_closed_from_evidence (E : ElasticTensorPackage)
    (Ev : ElasticTensorEvidence E) : ElasticTensorClosed E := by
  exact And.intro Ev.stiffnessMatrixClosed
    (And.intro Ev.negativePoissonRatioClosed
      (And.intro Ev.shearModulusPositiveClosed
        (And.intro Ev.bulkModulusPositiveClosed Ev.auxeticStrainEnergyClosed)))

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse