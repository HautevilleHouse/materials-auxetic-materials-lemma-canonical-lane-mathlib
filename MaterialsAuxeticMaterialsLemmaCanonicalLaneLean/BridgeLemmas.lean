import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AuxeticWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse