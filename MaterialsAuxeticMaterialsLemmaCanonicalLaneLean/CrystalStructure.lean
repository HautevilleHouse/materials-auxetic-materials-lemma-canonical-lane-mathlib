import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure CrystalStructurePackage where
  latticeType : Type u
  primitiveCellVolume : ℕ
  symmetryGroup : Type v
  basisVectors : List (ℝ × ℝ × ℝ)
  cellVolumePositive : Prop
  symmetryGroupFinite : Prop

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  cellVolumePositiveClosed : C.cellVolumePositive
  symmetryGroupFiniteClosed : C.symmetryGroupFinite

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.cellVolumePositive ∧ C.symmetryGroupFinite

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage)
    (E : CrystalStructureEvidence C) : CrystalStructureClosed C := by
  exact And.intro E.cellVolumePositiveClosed E.symmetryGroupFiniteClosed

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
