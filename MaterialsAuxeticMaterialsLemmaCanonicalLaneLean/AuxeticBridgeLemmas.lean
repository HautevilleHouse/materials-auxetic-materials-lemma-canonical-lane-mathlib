import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsAuxeticMaterialsLemmaCanonicalLaneLean.AuxeticCellStructure

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | AuxeticAdmittedObject obj => obj.auxeticSignature
  | _ => False

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  rcases A with ⟨obj, _, _, _⟩
  sorry

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse