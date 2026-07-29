import HautevilleHouse.CellBiologyCytoskeletonActinFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure ActinPolymerizationPackage where
  monomerBindingRate : Prop
  filamentNucleation : Prop
  atpHydrolysis : Prop
  treadmilling : Prop
  severingFactors : Prop

structure ActinPolymerizationEvidence (P : ActinPolymerizationPackage) where
  monomerBindingRateClosed : P.monomerBindingRate
  filamentNucleationClosed : P.filamentNucleation
  atpHydrolysisClosed : P.atpHydrolysis
  treadmillingClosed : P.treadmilling
  severingFactorsClosed : P.severingFactors

def ActinPolymerizationClosed (P : ActinPolymerizationPackage) : Prop :=
  P.monomerBindingRate ∧ P.filamentNucleation ∧ P.atpHydrolysis ∧ P.treadmilling ∧ P.severingFactors

theorem actin_polymerization_closed_from_evidence (P : ActinPolymerizationPackage) (E : ActinPolymerizationEvidence P) :
    ActinPolymerizationClosed P := by
  exact And.intro E.monomerBindingRateClosed
    (And.intro E.filamentNucleationClosed
      (And.intro E.atpHydrolysisClosed
        (And.intro E.treadmillingClosed E.severingFactorsClosed)))

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse