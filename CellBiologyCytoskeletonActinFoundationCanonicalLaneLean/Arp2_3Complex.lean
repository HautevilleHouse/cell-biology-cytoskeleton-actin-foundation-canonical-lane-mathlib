import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure Arp2_3ComplexPackage where
  subunitComposition : Prop
  activationByWASP : Prop
  branchFormation : Prop
  nucleationCapability : Prop
  regulatoryInputs : Prop

structure Arp2_3ComplexEvidence (A : Arp2_3ComplexPackage) where
  subunitCompositionClosed : A.subunitComposition
  activationByWASPClosed : A.activationByWASP
  branchFormationClosed : A.branchFormation
  nucleationCapabilityClosed : A.nucleationCapability
  regulatoryInputsClosed : A.regulatoryInputs

def Arp2_3ComplexClosed (A : Arp2_3ComplexPackage) : Prop :=
  A.subunitComposition ∧ A.activationByWASP ∧ A.branchFormation ∧ A.nucleationCapability ∧ A.regulatoryInputs

theorem arp2_3_complex_closed_from_evidence (A : Arp2_3ComplexPackage) (E : Arp2_3ComplexEvidence A) :
    Arp2_3ComplexClosed A := by
  exact And.intro E.subunitCompositionClosed
    (And.intro E.activationByWASPClosed
      (And.intro E.branchFormationClosed
        (And.intro E.nucleationCapabilityClosed E.regulatoryInputsClosed)))

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse