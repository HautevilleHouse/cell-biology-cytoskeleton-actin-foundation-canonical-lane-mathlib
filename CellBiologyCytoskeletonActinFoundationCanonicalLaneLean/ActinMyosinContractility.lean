import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure ActinMyosinContractilityModel where
  myosinMotor : Type u
  atpHydrolysis : Prop
  slidingFilament : Prop
  contractileForce : Type v
  sarcomereOrganization : Type w
  forceGenerationClosed : Prop
  atpUtilizationClosed : Prop

structure ActinMyosinContractilityEvidence (M : ActinMyosinContractilityModel) where
  forceGenerationClosedTerm : M.forceGenerationClosed
  atpUtilizationClosedTerm : M.atpUtilizationClosed

def ActinMyosinContractilityClosed (M : ActinMyosinContractilityModel) : Prop :=
  M.forceGenerationClosed ∧ M.atpUtilizationClosed

theorem actin_myosin_contractility_closed_from_evidence (M : ActinMyosinContractilityModel)
    (E : ActinMyosinContractilityEvidence M) : ActinMyosinContractilityClosed M := by
  exact And.intro E.forceGenerationClosedTerm E.atpUtilizationClosedTerm

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse
