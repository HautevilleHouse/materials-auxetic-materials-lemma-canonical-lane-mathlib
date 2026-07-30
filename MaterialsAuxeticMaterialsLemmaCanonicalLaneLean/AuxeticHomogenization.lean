import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure HomogenizedAuxeticProperties where
  effectivePoisson : ℝ → ℝ
  frequencyRange : ℝ × ℝ
  auxeticBand : Set ℝ
  homogenizationLimit : Prop
  auxeticBandNonempty : auxeticBand.Nonempty
  homogenizationLimitTerm : homogenizationLimit

defhomogenizedAuxeticClosed (H : HomogenizedAuxeticProperties) : Prop :=
  H.auxeticBandNonempty ∧ ∀ ω ∈ H.auxeticBand, H.effectivePoisson ω < 0

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse