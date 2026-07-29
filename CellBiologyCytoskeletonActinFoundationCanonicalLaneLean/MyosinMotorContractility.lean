import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure MyosinPackage where
  myosinIIActivity : Prop
  contractionRate : ℝ
  sarcomereOrganization : Prop
  atpDependence : Prop
  forceGeneration : ℝ

structure MyosinEvidence (M : MyosinPackage) where
  myosinIIActivityClosed : M.myosinIIActivity
  contractionRateClosed : M.contractionRate = 2
  sarcomereOrganizationClosed : M.sarcomereOrganization
  atpDependenceClosed : M.atpDependence
  forceGenerationClosed : M.forceGeneration = 5

def MyosinClosed (M : MyosinPackage) : Prop :=
  M.myosinIIActivity ∧ M.contractionRate > 0 ∧ M.sarcomereOrganization ∧ M.atpDependence ∧ M.forceGeneration > 0

theorem myosin_closed_from_evidence (M : MyosinPackage) (E : MyosinEvidence M) : MyosinClosed M := by
  refine ⟨E.myosinIIActivityClosed, ?_, E.sarcomereOrganizationClosed, E.atpDependenceClosed, ?_⟩
  · exact E.contractionRateClosed.symm ▸ (by norm_num)
  · exact E.forceGenerationClosed.symm ▸ (by norm_num)

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse