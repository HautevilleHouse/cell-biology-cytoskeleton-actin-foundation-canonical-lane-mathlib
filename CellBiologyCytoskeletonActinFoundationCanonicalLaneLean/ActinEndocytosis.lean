import HautevilleHouse.CellBiologyCytoskeletonActinFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure ActinEndocytosisPackage where
  membraneInvagination : Prop
  actinPolymerizationForce : Prop
  vesicleScission : Prop
  cargoInternalization : Prop
  pathwayRegulation : Prop

structure ActinEndocytosisEvidence (E : ActinEndocytosisPackage) where
  membraneInvaginationClosed : E.membraneInvagination
  actinPolymerizationForceClosed : E.actinPolymerizationForce
  vesicleScissionClosed : E.vesicleScission
  cargoInternalizationClosed : E.cargoInternalization
  pathwayRegulationClosed : E.pathwayRegulation

def ActinEndocytosisClosed (E : ActinEndocytosisPackage) : Prop :=
  E.membraneInvagination ∧ E.actinPolymerizationForce ∧ E.vesicleScission ∧ E.cargoInternalization ∧ E.pathwayRegulation

theorem actin_endocytosis_closed_from_evidence (E : ActinEndocytosisPackage) (Ev : ActinEndocytosisEvidence E) :
    ActinEndocytosisClosed E := by
  exact And.intro Ev.membraneInvaginationClosed
    (And.intro Ev.actinPolymerizationForceClosed
      (And.intro Ev.vesicleScissionClosed
        (And.intro Ev.cargoInternalizationClosed Ev.pathwayRegulationClosed)))

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse