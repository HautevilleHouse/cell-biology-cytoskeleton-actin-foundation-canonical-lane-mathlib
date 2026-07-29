import HautevilleHouse.CellBiologyCytoskeletonActinFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse