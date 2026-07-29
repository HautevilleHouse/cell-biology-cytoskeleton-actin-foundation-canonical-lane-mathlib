import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure ActinBindingMotif where
  sequence : String
  affinity : ℝ
  domainFamily : String

structure ActinBindingMotifPackage (A : AdmissibleClass) where
  motifConservation : Prop
  affinityRange : Prop
  structuralFold : Prop
  bindingInterface : Prop

structure ActinBindingMotifEvidence {A : AdmissibleClass}
    (P : ActinBindingMotifPackage A) where
  motifConservationClosed : P.motifConservation
  affinityRangeClosed : P.affinityRange
  structuralFoldClosed : P.structuralFold
  bindingInterfaceClosed : P.bindingInterface

def ActinBindingMotifClosed {A : AdmissibleClass}
    (P : ActinBindingMotifPackage A) : Prop :=
  P.motifConservation ∧ P.affinityRange ∧
  P.structuralFold ∧ P.bindingInterface

theorem actin_binding_motif_closed_from_evidence
    {A : AdmissibleClass} (P : ActinBindingMotifPackage A)
    (E : ActinBindingMotifEvidence P) : ActinBindingMotifClosed P :=
  And.intro E.motifConservationClosed
    (And.intro E.affinityRangeClosed
      (And.intro E.structuralFoldClosed
        E.bindingInterfaceClosed))

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse