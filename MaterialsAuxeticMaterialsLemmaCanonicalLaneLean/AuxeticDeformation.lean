import HautevilleHouse.MaterialsAuxeticMaterialsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsLemmaCanonicalLaneLean

structure DeformationMode where
  loadingDirection : String
  hingeRotation : Prop
  ribBending : Prop
  cellWallBuckling : Prop
  reentrantAngleChange : Prop

structure DeformationEvidence (D : DeformationMode) where
  hingeRotationClosed : D.hingeRotation
  ribBendingClosed : D.ribBending
  cellWallBucklingClosed : D.cellWallBuckling
  reentrantAngleChangeClosed : D.reentrantAngleChange

def DeformationClosed (D : DeformationMode) : Prop :=
  D.hingeRotation ∧ D.ribBending ∧ D.cellWallBuckling ∧ D.reentrantAngleChange

theorem deformation_closed_from_evidence (D : DeformationMode) (E : DeformationEvidence D) :
    DeformationClosed D := by
  exact And.intro E.hingeRotationClosed (And.intro E.ribBendingClosed
    (And.intro E.cellWallBucklingClosed E.reentrantAngleChangeClosed))

end MaterialsAuxeticMaterialsLemmaCanonicalLaneLean
end HautevilleHouse