import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

def ConstrainedAuxeticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_auxetic_endgame (A : AdmissibleClass) :
    ConstrainedAuxeticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse