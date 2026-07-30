import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure ElasticTensorConstraints where
  stiffnessTensor : Type u
  complianceTensor : Type v
  positiveDefiniteStiffness : Prop
  positiveDefiniteCompliance : Prop
  symmetryConditions : Prop
  positiveDefiniteStiffnessClosed : positiveDefiniteStiffness
  positiveDefiniteComplianceClosed : positiveDefiniteCompliance
  symmetryConditionsClosed : symmetryConditions

structure ElasticTensorEvidence (E : ElasticTensorConstraints) where
  positiveDefiniteStiffnessClosed : E.positiveDefiniteStiffness
  positiveDefiniteComplianceClosed : E.positiveDefiniteCompliance
  symmetryConditionsClosed : E.symmetryConditions

def ElasticTensorClosed (E : ElasticTensorConstraints) : Prop :=
  E.positiveDefiniteStiffness ∧ E.positiveDefiniteCompliance ∧ E.symmetryConditions

theorem elastic_tensor_closed_from_evidence (E : ElasticTensorConstraints)
    (Ev : ElasticTensorEvidence E) : ElasticTensorClosed E := by
  exact And.intro Ev.positiveDefiniteStiffnessClosed
    (And.intro Ev.positiveDefiniteComplianceClosed Ev.symmetryConditionsClosed)

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse