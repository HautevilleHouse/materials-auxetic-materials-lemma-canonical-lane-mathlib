import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure AuxeticPhaseTransition where
  phaseDiagram : Type u
  criticalParameters : Type v
  auxeticPhaseRegion : Prop
  transitionTemperature : Prop
  hysteresisControl : Prop

structure AuxeticPhaseTransitionEvidence (P : AuxeticPhaseTransition) where
  auxeticPhaseRegionClosed : P.auxeticPhaseRegion
  transitionTemperatureClosed : P.transitionTemperature
  hysteresisControlClosed : P.hysteresisControl

def AuxeticPhaseTransitionClosed (P : AuxeticPhaseTransition) : Prop :=
  P.auxeticPhaseRegion ∧ P.transitionTemperature ∧ P.hysteresisControl

theorem auxetic_phase_transition_closed_from_evidence (P : AuxeticPhaseTransition) (E : AuxeticPhaseTransitionEvidence P) :
    AuxeticPhaseTransitionClosed P := by
  exact And.intro E.auxeticPhaseRegionClosed (And.intro E.transitionTemperatureClosed E.hysteresisControlClosed)

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse