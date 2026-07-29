import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure ActinDynamicsRegulationModel where
  nucleationPromotingFactors : Type u
  cappingProteins : Type v
  severingProteins : Type w
  branchingComplex : Type x
  arp23Complex : Type y
  regulationSignaling : Prop
  feedbackLoops : Prop
  regulationClosed : Prop

def ActinDynamicsRegulationClosed (R : ActinDynamicsRegulationModel) : Prop :=
  R.regulationClosed

theorem regulation_from_evidence (R : ActinDynamicsRegulationModel) (h : R.regulationClosed) :
    ActinDynamicsRegulationClosed R := h

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse
