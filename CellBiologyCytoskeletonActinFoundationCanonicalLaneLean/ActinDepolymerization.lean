import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinFoundationCanonicalLaneLean.ActinPolymerization

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure DepolymerizationFactors where
  cofilinBinding : Prop
  adfActivity : Prop
  severingProtein : Prop
  adpActinRelease : Prop

structure ActinDepolymerizationPackage {P : ActinPolymerizationPackage} where
  factors : DepolymerizationFactors
  depolRate : ℝ
  actinChaperone : Prop
  nucleotideExchange : Prop
  depolRatePositive : depolRate > 0
  chaperoneActive : actinChaperone → nucleotideExchange

structure ActinDepolymerizationEvidence {P : ActinPolymerizationPackage}
    (D : ActinDepolymerizationPackage P) where
  cofilinBindingClosed : D.factors.cofilinBinding
  adfActivityClosed : D.factors.adfActivity
  severingProteinClosed : D.factors.severingProtein
  adpActinReleaseClosed : D.factors.adpActinRelease
  depolRatePositiveClosed : D.depolRatePositive
  actinChaperoneClosed : D.actinChaperone
  nucleotideExchangeClosed : D.nucleotideExchange
  implicationClosed : D.chaperoneActive

def ActinDepolymerizationClosed {P : ActinPolymerizationPackage}
    (D : ActinDepolymerizationPackage P) : Prop :=
  D.factors.cofilinBinding ∧ D.factors.adfActivity ∧
  D.factors.severingProtein ∧ D.factors.adpActinRelease ∧
  D.depolRatePositive ∧ D.actinChaperone ∧ D.nucleotideExchange ∧
  D.chaperoneActive

theorem actin_depolymerization_closed_from_evidence {P : ActinPolymerizationPackage}
    (D : ActinDepolymerizationPackage P) (E : ActinDepolymerizationEvidence D) :
    ActinDepolymerizationClosed D := by
  exact And.intro E.cofilinBindingClosed
    (And.intro E.adfActivityClosed
      (And.intro E.severingProteinClosed
        (And.intro E.adpActinReleaseClosed
          (And.intro E.depolRatePositiveClosed
            (And.intro E.actinChaperoneClosed
              (And.intro E.nucleotideExchangeClosed
                E.implicationClosed))))))

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse
