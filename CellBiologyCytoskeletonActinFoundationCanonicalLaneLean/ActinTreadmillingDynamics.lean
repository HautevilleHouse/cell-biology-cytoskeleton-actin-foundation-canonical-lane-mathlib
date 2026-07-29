import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure TreadmillingPackage where
  plusEndGrowth : ℝ
  minusEndShrinkage : ℝ
  criticalConcentration : ℝ
  atpHydrolysis : Prop
  severingProteins : Prop

structure TreadmillingEvidence (T : TreadmillingPackage) where
  plusEndGrowthClosed : T.plusEndGrowth = 5
  minusEndShrinkageClosed : T.minusEndShrinkage = 3
  criticalConcentrationClosed : T.criticalConcentration = 0.5
  atpHydrolysisClosed : T.atpHydrolysis
  severingProteinsClosed : T.severingProteins

def TreadmillingClosed (T : TreadmillingPackage) : Prop :=
  T.plusEndGrowth > 0 ∧ T.minusEndShrinkage < 0 ∧ T.criticalConcentration > 0 ∧ T.atpHydrolysis ∧ T.severingProteins

theorem treadmilling_closed_from_evidence (T : TreadmillingPackage) (E : TreadmillingEvidence T) : TreadmillingClosed T := by
  refine ⟨by linarith [E.plusEndGrowthClosed], by linarith [E.minusEndShrinkageClosed], by linarith, E.atpHydrolysisClosed, E.severingProteinsClosed⟩

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse