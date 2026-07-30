import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure LatticeElasticityPackage where
  crystalSystem : Type u
  latticeVectors : crystalSystem → (ℝ × ℝ × ℝ)
  elasticTensor : crystalSystem → (ℝ × ℝ × ℝ × ℝ × ℝ × ℝ)
  poissonRatioNegative : Prop
  auxeticDirection : crystalSystem → ℝ
  negativePoissonClosed : poissonRatioNegative

def LatticeElasticityClosed (L : LatticeElasticityPackage) : Prop :=
  L.poissonRatioNegative

theorem lattice_elasticity_closed_from_package (L : LatticeElasticityPackage) :
    LatticeElasticityClosed L := by
  exact L.negativePoissonClosed

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse