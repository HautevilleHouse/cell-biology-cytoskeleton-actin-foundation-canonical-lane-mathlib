import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinFoundationCanonicalLaneLean.ActinPolymerization
import HautevilleHouse.CellBiologyCytoskeletonActinFoundationCanonicalLaneLean.ActinDepolymerization

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure TreadmillingCyclePackage {P : ActinPolymerizationPackage}
    {D : ActinDepolymerizationPackage P} where
  netPolymerization : ℝ
  steadyStateLength : ℝ
  atpHydrolysisCoupling : Prop
  barbedEndAddition : Prop
  pointedEndLoss : Prop
  lengthConservation : Prop
  barbedEndAdditionImplied : barbedEndAddition → atpHydrolysisCoupling
  lengthConservationCondition : netPolymerization = 0 → lengthConservation

structure TreadmillingCycleEvidence {P : ActinPolymerizationPackage}
    {D : ActinDepolymerizationPackage P}
    (T : TreadmillingCyclePackage P D) where
  netPolymerizationClosed : True
  steadyStateLengthClosed : True
  atpHydrolysisCouplingClosed : T.atpHydrolysisCoupling
  barbedEndAdditionClosed : T.barbedEndAddition
  pointedEndLossClosed : T.pointedEndLoss
  lengthConservationClosed : T.lengthConservation
  implicationClosed : T.barbedEndAdditionImplied
  lengthConditionClosed : T.lengthConservationCondition

def TreadmillingCycleClosed {P : ActinPolymerizationPackage}
    {D : ActinDepolymerizationPackage P}
    (T : TreadmillingCyclePackage P D) : Prop :=
  T.atpHydrolysisCoupling ∧ T.barbedEndAddition ∧ T.pointedEndLoss ∧
  T.lengthConservation ∧ T.barbedEndAdditionImplied ∧ T.lengthConservationCondition ∧
  True ∧ True

theorem treadmilling_cycle_closed_from_evidence {P : ActinPolymerizationPackage}
    {D : ActinDepolymerizationPackage P}
    (T : TreadmillingCyclePackage P D) (E : TreadmillingCycleEvidence T) :
    TreadmillingCycleClosed T := by
  exact And.intro E.atpHydrolysisCouplingClosed
    (And.intro E.barbedEndAdditionClosed
      (And.intro E.pointedEndLossClosed
        (And.intro E.lengthConservationClosed
          (And.intro E.implicationClosed
            (And.intro E.lengthConditionClosed
              (And.intro E.netPolymerizationClosed
                E.steadyStateLengthClosed))))))

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse
