import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure MyosinMotorPackage where
  atpaseActivity : Prop
  actinBinding : Prop
  powerStroke : Prop
  processiveMovement : Prop
  forceGeneration : Prop

def MyosinMotorEvidence (M : MyosinMotorPackage) where
  atpaseActivityClosed : M.atpaseActivity
  actinBindingClosed : M.actinBinding
  powerStrokeClosed : M.powerStroke
  processiveMovementClosed : M.processiveMovement
  forceGenerationClosed : M.forceGeneration

def MyosinMotorClosed (M : MyosinMotorPackage) : Prop :=
  M.atpaseActivity ∧ M.actinBinding ∧ M.powerStroke ∧ M.processiveMovement ∧ M.forceGeneration

theorem myosin_motor_closed_from_evidence (M : MyosinMotorPackage) (E : MyosinMotorEvidence M) :
    MyosinMotorClosed M := by
  exact And.intro E.atpaseActivityClosed
    (And.intro E.actinBindingClosed
      (And.intro E.powerStrokeClosed
        (And.intro E.processiveMovementClosed E.forceGenerationClosed)))

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse