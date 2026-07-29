import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure ActinFilamentSeveringPackage where
  severingProteinConcentration : ℝ
  filamentTension : ℝ
  severingRateConstant : ℝ
  nucleotideState : Prop
  coffilinBinding : Prop
  filamentTurnover : Prop

structure ActinFilamentSeveringEvidence (S : ActinFilamentSeveringPackage) where
  severingProteinConcentrationClosed : S.severingProteinConcentration > 0
  filamentTensionClosed : S.filamentTension > 0
  severingRateConstantClosed : S.severingRateConstant > 0
  nucleotideStateClosed : S.nucleotideState
  coffilinBindingClosed : S.cofilinBinding
  filamentTurnoverClosed : S.filamentTurnover

def ActinFilamentSeveringClosed (S : ActinFilamentSeveringPackage) : Prop :=
  S.severingProteinConcentration > 0 ∧ S.filamentTension > 0 ∧
  S.severingRateConstant > 0 ∧ S.nucleotideState ∧
  S.cofilinBinding ∧ S.filamentTurnover

theorem actin_filament_severing_closed_from_evidence
    (S : ActinFilamentSeveringPackage)
    (E : ActinFilamentSeveringEvidence S) : ActinFilamentSeveringClosed S := by
  exact And.intro E.severingProteinConcentrationClosed
    (And.intro E.filamentTensionClosed
      (And.intro E.severingRateConstantClosed
        (And.intro E.nucleotideStateClosed
          (And.intro E.cofilinBindingClosed E.filamentTurnoverClosed))))

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse