import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure ElasticStabilityAnalysis where
  bornStabilityCriteria : Prop
  positiveStrainEnergy : Prop
  convexElasticPotential : Prop
  bornStabilityCriteriaClosed : bornStabilityCriteria
  positiveStrainEnergyClosed : positiveStrainEnergy
  convexElasticPotentialClosed : convexElasticPotential

structure StabilityEvidence (S : ElasticStabilityAnalysis) where
  bornStabilityCriteriaClosed : S.bornStabilityCriteria
  positiveStrainEnergyClosed : S.positiveStrainEnergy
  convexElasticPotentialClosed : S.convexElasticPotential

def StabilityClosed (S : ElasticStabilityAnalysis) : Prop :=
  S.bornStabilityCriteria ∧ S.positiveStrainEnergy ∧ S.convexElasticPotential

theorem stability_closed_from_evidence (S : ElasticStabilityAnalysis)
    (E : StabilityEvidence S) : StabilityClosed S := by
  exact And.intro E.bornStabilityCriteriaClosed
    (And.intro E.positiveStrainEnergyClosed E.convexElasticPotentialClosed)

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse