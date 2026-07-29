import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure TreadmillingPackage where
  plusEndPolymerization : Prop
  minusEndDepolymerization : Prop
  steadyStateFlux : Prop
  nucleotideState : Prop
  lengthRegulation : Prop

def TreadmillingEvidence (T : TreadmillingPackage) where
  plusEndPolymerizationClosed : T.plusEndPolymerization
  minusEndDepolymerizationClosed : T.minusEndDepolymerization
  steadyStateFluxClosed : T.steadyStateFlux
  nucleotideStateClosed : T.nucleotideState
  lengthRegulationClosed : T.lengthRegulation

def TreadmillingClosed (T : TreadmillingPackage) : Prop :=
  T.plusEndPolymerization ∧ T.minusEndDepolymerization ∧ T.steadyStateFlux ∧ T.nucleotideState ∧ T.lengthRegulation

theorem treadmilling_closed_from_evidence (T : TreadmillingPackage) (E : TreadmillingEvidence T) :
    TreadmillingClosed T := by
  exact And.intro E.plusEndPolymerizationClosed
    (And.intro E.minusEndDepolymerizationClosed
      (And.intro E.steadyStateFluxClosed
        (And.intro E.nucleotideStateClosed E.lengthRegulationClosed)))

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse