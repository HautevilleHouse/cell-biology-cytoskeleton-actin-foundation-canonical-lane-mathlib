import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure CofilinRegulationPackage where
  coffilinBinding : Prop
  actinDepolymerization : Prop
  severingActivity : Prop
  pHDependence : Prop
  phosphorylationRegulation : Prop
  cofilinPhosphorylation : Prop

def CofilinRegulationEvidence (C : CofilinRegulationPackage) where
  coffilinBindingClosed : C.cofilinBinding
  actinDepolymerizationClosed : C.actinDepolymerization
  severingActivityClosed : C.severingActivity
  pHDependenceClosed : C.pHDependence
  phosphorylationRegulationClosed : C.phosphorylationRegulation
  cofilinPhosphorylationClosed : C.cofilinPhosphorylation

def CofilinRegulationClosed (C : CofilinRegulationPackage) : Prop :=
  C.cofilinBinding ∧ C.actinDepolymerization ∧ C.severingActivity ∧ C.pHDependence ∧ C.phosphorylationRegulation ∧ C.cofilinPhosphorylation

theorem cofilin_regulation_closed_from_evidence (C : CofilinRegulationPackage) (E : CofilinRegulationEvidence C) :
    CofilinRegulationClosed C := by
  exact And.intro E.cofilinBindingClosed
    (And.intro E.actinDepolymerizationClosed
      (And.intro E.severingActivityClosed
        (And.intro E.pHDependenceClosed
          (And.intro E.phosphorylationRegulationClosed E.cofilinPhosphorylationClosed))))

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse