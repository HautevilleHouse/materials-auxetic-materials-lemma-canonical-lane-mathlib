import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure LatticeGeometryAuxetic where
  bravaisLattice : Type u
  unitCellVectors : Type v
  reentrantAngle : Prop
  hingingMechanism : Prop
  bulkModulusNegative : Prop

structure LatticeGeometryAuxeticEvidence (L : LatticeGeometryAuxetic) where
  reentrantAngleClosed : L.reentrantAngle
  hingingMechanismClosed : L.hingingMechanism
  bulkModulusNegativeClosed : L.bulkModulusNegative

def LatticeGeometryAuxeticClosed (L : LatticeGeometryAuxetic) : Prop :=
  L.reentrantAngle ∧ L.hingingMechanism ∧ L.bulkModulusNegative

theorem lattice_geometry_auxetic_closed_from_evidence (L : LatticeGeometryAuxetic) (E : LatticeGeometryAuxeticEvidence L) :
    LatticeGeometryAuxeticClosed L := by
  exact And.intro E.reentrantAngleClosed (And.intro E.hingingMechanismClosed E.bulkModulusNegativeClosed)

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse