import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCytoskeletonActinFoundationCanonicalLaneLean.ActinPolymerization

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure ForceGenerationPackage (A : AdmissibleClass) where
  polymerizationForce : Prop
  treadmillingForce : Prop
  myosinMotorActivity : Prop
  membraneProtrusion : Prop

structure ForceGenerationEvidence (F : ForceGenerationPackage A) where
  polymerizationForceClosed : F.polymerizationForce
  treadmillingForceClosed : F.treadmillingForce
  myosinMotorActivityClosed : F.myosinMotorActivity
  membraneProtrusionClosed : F.membraneProtrusion

def ForceGenerationClosed (F : ForceGenerationPackage A) : Prop :=
  F.polymerizationForce ∧ F.treadmillingForce ∧
  F.myosinMotorActivity ∧ F.membraneProtrusion

theorem force_generation_closed_from_evidence
    (F : ForceGenerationPackage A) (E : ForceGenerationEvidence F) :
    ForceGenerationClosed F :=
  And.intro E.polymerizationForceClosed
    (And.intro E.treadmillingForceClosed
      (And.intro E.myosinMotorActivityClosed
        E.membraneProtrusionClosed))

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse