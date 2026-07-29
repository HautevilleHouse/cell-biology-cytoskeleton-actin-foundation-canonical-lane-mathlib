import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure ActinCrosslinkingPackage where
  crosslinkerConcentration : ℝ
  bindingAffinity : ℝ
  unbindingRate : ℝ
  filamentSpacing : ℝ
  crosslinkStiffness : Prop
  networkElasticity : Prop

structure ActinCrosslinkingEvidence (C : ActinCrosslinkingPackage) where
  crosslinkerConcentrationClosed : C.crosslinkerConcentration > 0
  bindingAffinityClosed : C.bindingAffinity > 0
  unbindingRateClosed : C.unbindingRate > 0
  filamentSpacingClosed : C.filamentSpacing > 0
  crosslinkStiffnessClosed : C.crosslinkStiffness
  networkElasticityClosed : C.networkElasticity

def ActinCrosslinkingClosed (C : ActinCrosslinkingPackage) : Prop :=
  C.crosslinkerConcentration > 0 ∧ C.bindingAffinity > 0 ∧ C.unbindingRate > 0 ∧
  C.filamentSpacing > 0 ∧ C.crosslinkStiffness ∧ C.networkElasticity

theorem actin_crosslinking_closed_from_evidence (C : ActinCrosslinkingPackage)
    (E : ActinCrosslinkingEvidence C) : ActinCrosslinkingClosed C := by
  exact And.intro E.crosslinkerConcentrationClosed
    (And.intro E.bindingAffinityClosed
      (And.intro E.unbindingRateClosed
        (And.intro E.filamentSpacingClosed
          (And.intro E.crosslinkStiffnessClosed E.networkElasticityClosed))))

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse