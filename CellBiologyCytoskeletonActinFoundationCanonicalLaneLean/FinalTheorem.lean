import HautevilleHouse.CellBiologyCytoskeletonActinFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

def ConstrainedActinClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_actin_endgame (A : AdmissibleClass) :
    ConstrainedActinClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse