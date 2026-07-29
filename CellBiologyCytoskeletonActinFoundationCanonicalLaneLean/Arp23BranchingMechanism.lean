import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure Arp23BranchingPackage where
  nucleationPromotingFactor : Prop
  branchingAngle : ℝ
  daughterFilamentElongation : Prop
  atpHydrolysisEffect : Prop
  cappingProteinRegulation : Prop
  networkDendriticStructure : Prop

structure Arp23BranchingEvidence (A : Arp23BranchingPackage) where
  nucleationPromotingFactorClosed : A.nucleationPromotingFactor
  branchingAngleClosed : A.branchingAngle = 70 * π / 180
  daughterFilamentElongationClosed : A.daughterFilamentElongation
  atpHydrolysisEffectClosed : A.atpHydrolysisEffect
  cappingProteinRegulationClosed : A.cappingProteinRegulation
  networkDendriticStructureClosed : A.networkDendriticStructure

def Arp23BranchingClosed (A : Arp23BranchingPackage) : Prop :=
  A.nucleationPromotingFactor ∧ A.branchingAngle = 70 * π / 180 ∧
  A.daughterFilamentElongation ∧ A.atpHydrolysisEffect ∧
  A.cappingProteinRegulation ∧ A.networkDendriticStructure

theorem arp23_branching_closed_from_evidence (A : Arp23BranchingPackage)
    (E : Arp23BranchingEvidence A) : Arp23BranchingClosed A := by
  exact And.intro E.nucleationPromotingFactorClosed
    (And.intro E.branchingAngleClosed
      (And.intro E.daughterFilamentElongationClosed
        (And.intro E.atpHydrolysisEffectClosed
          (And.intro E.cappingProteinRegulationClosed E.networkDendriticStructureClosed))))

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse