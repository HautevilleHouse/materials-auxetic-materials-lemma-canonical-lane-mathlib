import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure AuxeticAdmittedObject where
  material : Type
  microstructure : Type
  poissonRatio : ℝ
  auxeticProperty : poissonRatio < 0
  conclusion : auxeticProperty

def AuxeticWitnessClosed (O : AuxeticAdmittedObject) : Prop :=
  O.auxeticProperty

theorem auxetic_admitted_object_conclusion (O : AuxeticAdmittedObject) :
    AuxeticWitnessClosed O := by
  exact O.conclusion

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
