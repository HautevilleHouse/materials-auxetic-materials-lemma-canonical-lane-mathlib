import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure AuxeticAdmittedObject where
  unitCell : Type u
  latticeGeometry : Prop
  poissonRatioNegative : Prop
  auxeticResponse : Prop
  conclusion : auxeticResponse

structure AdmissibleClass where
  object : AuxeticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AuxeticWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def AuxeticWitnessClosed (O : AuxeticAdmittedObject) : Prop :=
  O.auxeticResponse

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse