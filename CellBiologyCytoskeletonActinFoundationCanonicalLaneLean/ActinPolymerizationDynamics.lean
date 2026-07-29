import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure ActinPolymerizationPackage where
  monomerConcentration : ℝ
  nucleationRate : ℝ
  elongationRate : ℝ
  severingRate : ℝ
  cappingProteinEffect : Prop
  atpHydrolysisCoupling : Prop

structure ActinPolymerizationEvidence (P : ActinPolymerizationPackage) where
  monomerConcentrationClosed : P.monomerConcentration > 0
  nucleationRateClosed : P.nucleationRate > 0
  elongationRateClosed : P.elongationRate > 0
  severingRateClosed : P.severingRate > 0
  cappingProteinEffectClosed : P.cappingProteinEffect
  atpHydrolysisCouplingClosed : P.atpHydrolysisCoupling

def ActinPolymerizationClosed (P : ActinPolymerizationPackage) : Prop :=
  P.monomerConcentration > 0 ∧ P.nucleationRate > 0 ∧ P.elongationRate > 0 ∧
  P.severingRate > 0 ∧ P.cappingProteinEffect ∧ P.atpHydrolysisCoupling

theorem actin_polymerization_closed_from_evidence (P : ActinPolymerizationPackage)
    (E : ActinPolymerizationEvidence P) : ActinPolymerizationClosed P := by
  exact And.intro E.monomerConcentrationClosed
    (And.intro E.nucleationRateClosed
      (And.intro E.elongationRateClosed
        (And.intro E.severingRateClosed
          (And.intro E.cappingProteinEffectClosed E.atpHydrolysisCouplingClosed))))

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse