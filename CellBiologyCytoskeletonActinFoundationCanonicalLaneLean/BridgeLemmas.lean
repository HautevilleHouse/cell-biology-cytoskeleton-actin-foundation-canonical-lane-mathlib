import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ActinWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse