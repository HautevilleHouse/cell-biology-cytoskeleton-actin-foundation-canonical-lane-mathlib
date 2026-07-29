import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure ActinBindingProtein where
  proteinName : String
  bindingSite : String
  affinity : Float
  function : String
  regulation : Prop

def ActinBindingProteinValid (p : ActinBindingProtein) : Prop :=
  p.regulation

theorem binding_protein_valid_by_regulation (p : ActinBindingProtein) (h : p.regulation) :
    ActinBindingProteinValid p := h

structure ActinBindingProteinFamily where
  familyName : String
  members : List ActinBindingProtein
  commonFunction : String
  familyClosed : Prop

def ActinBindingProteinFamilyClosed (f : ActinBindingProteinFamily) : Prop :=
  f.familyClosed

theorem binding_protein_family_closed_from_evidence (f : ActinBindingProteinFamily) (h : f.familyClosed) :
    ActinBindingProteinFamilyClosed f := h

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse
