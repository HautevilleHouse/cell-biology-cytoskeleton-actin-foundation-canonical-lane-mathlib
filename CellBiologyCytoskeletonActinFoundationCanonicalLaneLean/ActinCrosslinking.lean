import HautevilleHouse.CellBiologyCytoskeletonActinFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure ActinCrosslinkingPackage where
  crosslinkerBinding : Prop
  filamentBundling : Prop
  networkArchitecture : Prop
  mechanicalStiffness : Prop
  dynamicRemodeling : Prop

structure ActinCrosslinkingEvidence (X : ActinCrosslinkingPackage) where
  crosslinkerBindingClosed : X.crosslinkerBinding
  filamentBundlingClosed : X.filamentBundling
  networkArchitectureClosed : X.networkArchitecture
  mechanicalStiffnessClosed : X.mechanicalStiffness
  dynamicRemodelingClosed : X.dynamicRemodeling

def ActinCrosslinkingClosed (X : ActinCrosslinkingPackage) : Prop :=
  X.crosslinkerBinding ∧ X.filamentBundling ∧ X.networkArchitecture ∧ X.mechanicalStiffness ∧ X.dynamicRemodeling

theorem actin_crosslinking_closed_from_evidence (X : ActinCrosslinkingPackage) (E : ActinCrosslinkingEvidence X) :
    ActinCrosslinkingClosed X := by
  exact And.intro E.crosslinkerBindingClosed
    (And.intro E.filamentBundlingClosed
      (And.intro E.networkArchitectureClosed
        (And.intro E.mechanicalStiffnessClosed E.dynamicRemodelingClosed)))

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse