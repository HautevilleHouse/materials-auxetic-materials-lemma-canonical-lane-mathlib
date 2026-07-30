import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure PoissonRatioCondition where
  nu_xy : ℝ
  nu_xz : ℝ
  nu_yz : ℝ
  negativePoissonRatios : Prop
  auxeticResponse : Prop
  negativePoissonRatiosClosed : negativePoissonRatios
  auxeticResponseClosed : auxeticResponse

structure PoissonRatioEvidence (P : PoissonRatioCondition) where
  negativePoissonRatiosClosed : P.negativePoissonRatios
  auxeticResponseClosed : P.auxeticResponse

def PoissonRatioClosed (P : PoissonRatioCondition) : Prop :=
  P.negativePoissonRatios ∧ P.auxeticResponse

theorem poisson_ratio_closed_from_evidence (P : PoissonRatioCondition)
    (E : PoissonRatioEvidence P) : PoissonRatioClosed P := by
  exact And.intro E.negativePoissonRatiosClosed E.auxeticResponseClosed

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse