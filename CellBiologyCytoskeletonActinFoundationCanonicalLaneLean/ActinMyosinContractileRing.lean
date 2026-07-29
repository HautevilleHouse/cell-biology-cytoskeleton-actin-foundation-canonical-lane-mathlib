import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure ActinMyosinContractileRingPackage where
  myosinIIConcentration : ℝ
  actinFilamentLength : ℝ
  crosslinkingDensity : ℝ
  atpHydrolysisRate : ℝ
  contractileForce : Prop
  ringConstrictionDynamics : Prop

structure ActinMyosinContractileRingEvidence (R : ActinMyosinContractileRingPackage) where
  myosinIIConcentrationClosed : R.myosinIIConcentration > 0
  actinFilamentLengthClosed : R.actinFilamentLength > 0
  crosslinkingDensityClosed : R.crosslinkingDensity > 0
  atpHydrolysisRateClosed : R.atpHydrolysisRate > 0
  contractileForceClosed : R.contractileForce
  ringConstrictionDynamicsClosed : R.ringConstrictionDynamics

def ActinMyosinContractileRingClosed (R : ActinMyosinContractileRingPackage) : Prop :=
  R.myosinIIConcentration > 0 ∧ R.actinFilamentLength > 0 ∧
  R.crosslinkingDensity > 0 ∧ R.atpHydrolysisRate > 0 ∧
  R.contractileForce ∧ R.ringConstrictionDynamics

theorem actin_myosin_contractile_ring_closed_from_evidence
    (R : ActinMyosinContractileRingPackage)
    (E : ActinMyosinContractileRingEvidence R) : ActinMyosinContractileRingClosed R := by
  exact And.intro E.myosinIIConcentrationClosed
    (And.intro E.actinFilamentLengthClosed
      (And.intro E.crosslinkingDensityClosed
        (And.intro E.atpHydrolysisRateClosed
          (And.intro E.contractileForceClosed E.ringConstrictionDynamicsClosed))))

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse