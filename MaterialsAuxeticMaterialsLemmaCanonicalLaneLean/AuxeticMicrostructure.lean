import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure MicrostructurePackage where
  unitCellGeometry : Type u
  hingeCompliance : Prop
  reentrantAngle : ℝ
  auxeticStrain : Prop
  hingeComplianceClosed : hingeCompliance
  strainClosed : auxeticStrain

def MicrostructureClosed (M : MicrostructurePackage) : Prop :=
  M.hingeCompliance ∧ M.auxeticStrain

theorem microstructure_closed_from_package (M : MicrostructurePackage) :
    MicrostructureClosed M := by
  exact And.intro M.hingeComplianceClosed M.strainClosed

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse