import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinFoundationCanonicalLaneLean.ActinPolymerization

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure Arp2_3Complex where
  activationSignal : Prop
  branchingSiteRecognized : Prop
  nucleationTemplate : Prop
  atpHydrolysis : Prop

structure Arp2_3BranchingPackage {P : ActinPolymerizationPackage} where
  arp2_3Complex : Arp2_3Complex
  branchingAngle : ℝ
  branchElongationRate : ℝ
  autoinhibitionReleased : Prop
  actinBindingCompetent : Prop
  branchingAngleInRange : branchingAngle > 0 ∧ branchingAngle < π
  branchElongationRatePositive : branchElongationRate > 0

structure Arp2_3BranchingEvidence {P : ActinPolymerizationPackage}
    (B : Arp2_3BranchingPackage P) where
  activationSignalClosed : B.arp2_3Complex.activationSignal
  branchingSiteRecognizedClosed : B.arp2_3Complex.branchingSiteRecognized
  nucleationTemplateClosed : B.arp2_3Complex.nucleationTemplate
  atpHydrolysisClosed : B.arp2_3Complex.atpHydrolysis
  branchingAngleInRangeClosed : B.branchingAngleInRange
  branchElongationRatePositiveClosed : B.branchElongationRatePositive
  autoinhibitionReleasedClosed : B.autoinhibitionReleased
  actinBindingCompetentClosed : B.actinBindingCompetent

def Arp2_3BranchingClosed {P : ActinPolymerizationPackage}
    (B : Arp2_3BranchingPackage P) : Prop :=
  B.arp2_3Complex.activationSignal ∧ B.arp2_3Complex.branchingSiteRecognized ∧
  B.arp2_3Complex.nucleationTemplate ∧ B.arp2_3Complex.atpHydrolysis ∧
  B.branchingAngleInRange ∧ B.branchElongationRatePositive ∧
  B.autoinhibitionReleased ∧ B.actinBindingCompetent

theorem arp2_3_branching_closed_from_evidence {P : ActinPolymerizationPackage}
    (B : Arp2_3BranchingPackage P) (E : Arp2_3BranchingEvidence B) :
    Arp2_3BranchingClosed B := by
  exact And.intro E.activationSignalClosed
    (And.intro E.branchingSiteRecognizedClosed
      (And.intro E.nucleationTemplateClosed
        (And.intro E.atpHydrolysisClosed
          (And.intro E.branchingAngleInRangeClosed
            (And.intro E.branchElongationRatePositiveClosed
              (And.intro E.autoinhibitionReleasedClosed
                E.actinBindingCompetentClosed))))))

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse
