import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure CrosslinkPackage where
  filaminCrosslinks : Prop
  alphaActininBundles : Prop
  fimbrinBundles : Prop
  gelationFactor : ℝ
  meshSize : ℝ

structure CrosslinkEvidence (C : CrosslinkPackage) where
  filaminCrosslinksClosed : C.filaminCrosslinks
  alphaActininBundlesClosed : C.alphaActininBundles
  fimbrinBundlesClosed : C.fimbrinBundles
  gelationFactorClosed : C.gelationFactor = 0.8
  meshSizeClosed : C.meshSize = 50

def CrosslinkClosed (C : CrosslinkPackage) : Prop :=
  C.filaminCrosslinks ∧ C.alphaActininBundles ∧ C.fimbrinBundles ∧ C.gelationFactor > 0 ∧ C.meshSize > 0

theorem crosslink_closed_from_evidence (C : CrosslinkPackage) (E : CrosslinkEvidence C) : CrosslinkClosed C := by
  refine ⟨E.filaminCrosslinksClosed, E.alphaActininBundlesClosed, E.fimbrinBundlesClosed, ?_, ?_⟩
  · exact E.gelationFactorClosed.symm ▸ (by norm_num)
  · exact E.meshSizeClosed.symm ▸ (by norm_num)

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse