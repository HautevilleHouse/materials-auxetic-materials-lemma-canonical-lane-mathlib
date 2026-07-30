import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure AuxeticCrystalStructure where
  latticeVectors : Type u
  atomicBasis : Type v
  symmetryGroup : Type w
  equilibriumPositions : Prop
  bravaisLatticeType : Prop
  equilibriumPositionsClosed : equilibriumPositions
  bravaisLatticeTypeClosed : bravaisLatticeType

structure AuxeticCrystalEvidence (A : AuxeticCrystalStructure) where
  equilibriumPositionsClosed : A.equilibriumPositions
  bravaisLatticeTypeClosed : A.bravaisLatticeType

def AuxeticCrystalClosed (A : AuxeticCrystalStructure) : Prop :=
  A.equilibriumPositions ∧ A.bravaisLatticeType

theorem auxetic_crystal_closed_from_evidence (A : AuxeticCrystalStructure)
    (E : AuxeticCrystalEvidence A) : AuxeticCrystalClosed A := by
  exact And.intro E.equilibriumPositionsClosed E.bravaisLatticeTypeClosed

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse