import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : AuxeticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AuxeticWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
