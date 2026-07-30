import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure AuxeticCellGeometry where
  cellShape : Type u
  reentrantAngle : ℝ
  hingeLength : ℝ
  strutThickness : ℝ
  geometryDefined : Prop
  reentrantAngleTerm : reentrantAngle > 0
  hingeLengthTerm : hingeLength > 0
  strutThicknessTerm : strutThickness > 0

structure AuxeticCellStructure where
  geometry : AuxeticCellGeometry
  unitCellDeformation : Type v
  poissonRatioComputed : ℝ
  auxeticSignature : Prop
  poissonRatioTerm : poissonRatioComputed < 0
  auxeticSignatureTerm : auxeticSignature

defauxeticCellStructureClosed (C : AuxeticCellStructure) : Prop :=
  C.auxeticSignature ∧ C.poissonRatioComputed < 0

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse