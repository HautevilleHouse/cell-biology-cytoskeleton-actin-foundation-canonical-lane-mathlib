import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCytoskeletonActinFoundationCanonicalLaneLean.ActinPolymerization

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure RegulatoryProteinsPackage (A : AdmissibleClass) where
  profilinActinBinding : Prop
  cofilinActinBinding : Prop
  arp23Branching : Prop
  cappingProteinRegulation : Prop

structure RegulatoryProteinsEvidence (R : RegulatoryProteinsPackage A) where
  profilinActinBindingClosed : R.profilinActinBinding
  cofilinActinBindingClosed : R.cofilinActinBinding
  arp23BranchingClosed : R.arp23Branching
  cappingProteinRegulationClosed : R.cappingProteinRegulation

def RegulatoryProteinsClosed (R : RegulatoryProteinsPackage A) : Prop :=
  R.profilinActinBinding ∧ R.cofilinActinBinding ∧
  R.arp23Branching ∧ R.cappingProteinRegulation

theorem regulatory_proteins_closed_from_evidence
    (R : RegulatoryProteinsPackage A) (E : RegulatoryProteinsEvidence R) :
    RegulatoryProteinsClosed R :=
  And.intro E.profilinActinBindingClosed
    (And.intro E.cofilinActinBindingClosed
      (And.intro E.arp23BranchingClosed
        E.cappingProteinRegulationClosed))

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse