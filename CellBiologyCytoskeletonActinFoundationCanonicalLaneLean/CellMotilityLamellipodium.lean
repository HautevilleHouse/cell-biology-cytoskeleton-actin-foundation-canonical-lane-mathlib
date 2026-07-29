import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure LamellipodiumPackage where
  protrusionRate : ℝ
  adhesionFormation : Prop
  actinPolymerizationFront : Prop
  retrogradeFlow : ℝ
  cellSpeed : ℝ

structure LamellipodiumEvidence (L : LamellipodiumPackage) where
  protrusionRateClosed : L.protrusionRate = 6
  adhesionFormationClosed : L.adhesionFormation
  actinPolymerizationFrontClosed : L.actinPolymerizationFront
  retrogradeFlowClosed : L.retrogradeFlow = 2
  cellSpeedClosed : L.cellSpeed = 0.5

def LamellipodiumClosed (L : LamellipodiumPackage) : Prop :=
  L.protrusionRate > 0 ∧ L.adhesionFormation ∧ L.actinPolymerizationFront ∧ L.retrogradeFlow > 0 ∧ L.cellSpeed > 0

theorem lamellipodium_closed_from_evidence (L : LamellipodiumPackage) (E : LamellipodiumEvidence L) : LamellipodiumClosed L := by
  refine ⟨?_, E.adhesionFormationClosed, E.actinPolymerizationFrontClosed, ?_, ?_⟩
  · exact E.protrusionRateClosed.symm ▸ (by norm_num)
  · exact E.retrogradeFlowClosed.symm ▸ (by norm_num)
  · exact E.cellSpeedClosed.symm ▸ (by norm_num)

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse