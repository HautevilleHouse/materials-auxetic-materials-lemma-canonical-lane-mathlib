import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure TopologyOptimizationConstraints where
  volumeFraction : ℝ
  connectivityConstraint : Prop
  minimumHingeWidth : ℝ
  connectivityConstraintTerm : connectivityConstraint
  minimumHingeWidthTerm : minimumHingeWidthWidth > 0

structure AuxeticTopologyOptimization where
  constraints : TopologyOptimizationConstraints
  optimizedPoisson : ℝ
  feasibilityProof : Prop
  optimizedPoissonTerm : optimizedPoisson < 0
  feasibilityProofTerm : feasibilityProof

defauxeticOptimizationClosed (T : AuxeticTopologyOptimization) : Prop :=
  T.feasibilityProof ∧ T.optimizedPoisson < 0

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse