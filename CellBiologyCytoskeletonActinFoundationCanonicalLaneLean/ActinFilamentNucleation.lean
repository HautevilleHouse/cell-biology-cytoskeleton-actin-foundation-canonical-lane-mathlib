import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure ActinNucleationPackage where
  forminActivity : Prop
  arp23Complex : Prop
  nucleationRate : ℝ
  filamentLengthDistribution : Prop
  branchingAngle : Prop

structure ActinNucleationEvidence (N : ActinNucleationPackage) where
  forminActivityClosed : N.forminActivity
  arp23ComplexClosed : N.arp23Complex
  nucleationRateClosed : N.nucleationRate = 0.1
  filamentLengthDistributionClosed : N.filamentLengthDistribution
  branchingAngleClosed : N.branchingAngle = 70

def ActinNucleationClosed (N : ActinNucleationPackage) : Prop :=
  N.forminActivity ∧ N.arp23Complex ∧ N.nucleationRate > 0 ∧ N.filamentLengthDistribution ∧ N.branchingAngle = 70

theorem actin_nucleation_closed_from_evidence (N : ActinNucleationPackage) (E : ActinNucleationEvidence N) : ActinNucleationClosed N := by
  refine ⟨E.forminActivityClosed, E.arp23ComplexClosed, ?_, E.filamentLengthDistributionClosed, E.branchingAngleClosed⟩
  exact E.nucleationRateClosed.symm ▸ (by norm_num)

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse