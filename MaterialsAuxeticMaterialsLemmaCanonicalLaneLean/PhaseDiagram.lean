import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure PhaseDiagramPackage {C : CrystalStructurePackage} where
  phases : List String
  transitionTemperatures : List ℝ
  pressureRange : ℝ × ℝ
  phaseBoundaries : Prop
  continuityOfTransitions : Prop

structure PhaseDiagramEvidence {C : CrystalStructurePackage}
    (P : PhaseDiagramPackage C) where
  phaseBoundariesClosed : P.phaseBoundaries
  continuityOfTransitionsClosed : P.continuityOfTransitions

def PhaseDiagramClosed {C : CrystalStructurePackage}
    (P : PhaseDiagramPackage C) : Prop :=
  P.phaseBoundaries ∧ P.continuityOfTransitions

theorem phase_diagram_closed_from_evidence {C : CrystalStructurePackage}
    (P : PhaseDiagramPackage C) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed E.continuityOfTransitionsClosed

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
