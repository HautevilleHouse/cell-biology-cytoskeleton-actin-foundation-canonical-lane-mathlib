import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinFoundationCanonicalLaneLean

structure FocalAdhesionPackage where
  integrinAttachment : Prop
  talinBinding : Prop
  vinculinRecruitment : Prop
  actinLinkage : Prop
  mechanotransduction : Prop
  signalingComplex : Prop

def FocalAdhesionEvidence (F : FocalAdhesionPackage) where
  integrinAttachmentClosed : F.integrinAttachment
  talinBindingClosed : F.talinBinding
  vinculinRecruitmentClosed : F.vinculinRecruitment
  actinLinkageClosed : F.actinLinkage
  mechanotransductionClosed : F.mechanotransduction
  signalingComplexClosed : F.signalingComplex

def FocalAdhesionClosed (F : FocalAdhesionPackage) : Prop :=
  F.integrinAttachment ∧ F.talinBinding ∧ F.vinculinRecruitment ∧ F.actinLinkage ∧ F.mechanotransduction ∧ F.signalingComplex

theorem focal_adhesion_closed_from_evidence (F : FocalAdhesionPackage) (E : FocalAdhesionEvidence F) :
    FocalAdhesionClosed F := by
  exact And.intro E.integrinAttachmentClosed
    (And.intro E.talinBindingClosed
      (And.intro E.vinculinRecruitmentClosed
        (And.intro E.actinLinkageClosed
          (And.intro E.mechanotransductionClosed E.signalingComplexClosed))))

end CellBiologyCytoskeletonActinFoundationCanonicalLaneLean
end HautevilleHouse