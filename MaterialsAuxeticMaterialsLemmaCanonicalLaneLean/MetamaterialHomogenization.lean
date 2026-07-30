import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure MetamaterialHomogenization where
  microstructureField : Type u
  effectiveModuli : Type v
  negativePoissonRatio : Prop
  strainEnergyDensity : Prop
  scaleSeparation : Prop

structure MetamaterialHomogenizationEvidence (M : MetamaterialHomogenization) where
  negativePoissonRatioClosed : M.negativePoissonRatio
  strainEnergyDensityClosed : M.strainEnergyDensity
  scaleSeparationClosed : M.scaleSeparation

def MetamaterialHomogenizationClosed (M : MetamaterialHomogenization) : Prop :=
  M.negativePoissonRatio ∧ M.strainEnergyDensity ∧ M.scaleSeparation

theorem metamaterial_homogenization_closed_from_evidence (M : MetamaterialHomogenization) (E : MetamaterialHomogenizationEvidence M) :
    MetamaterialHomogenizationClosed M := by
  exact And.intro E.negativePoissonRatioClosed (And.intro E.strainEnergyDensityClosed E.scaleSeparationClosed)

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse