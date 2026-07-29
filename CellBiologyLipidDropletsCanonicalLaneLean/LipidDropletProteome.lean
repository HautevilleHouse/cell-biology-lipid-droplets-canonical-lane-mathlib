import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsCanonicalLaneLean

structure LipidDropletProteomePackage where
  perilipinFamilyLocalization : Prop
  lipaseRecruitment : Prop
  membraneTraffickingProteins : Prop
  structuralProteins : Prop
  signalingProteins : Prop

structure LipidDropletProteomeEvidence (P : LipidDropletProteomePackage) where
  perilipinFamilyLocalizationClosed : P.perilipinFamilyLocalization
  lipaseRecruitmentClosed : P.lipaseRecruitment
  membraneTraffickingProteinsClosed : P.membraneTraffickingProteins
  structuralProteinsClosed : P.structuralProteins
  signalingProteinsClosed : P.signalingProteins

def LipidDropletProteomeClosed (P : LipidDropletProteomePackage) : Prop :=
  P.perilipinFamilyLocalization ∧ P.lipaseRecruitment ∧ P.membraneTraffickingProteins ∧ P.structuralProteins ∧ P.signalingProteins

theorem lipid_droplet_proteome_closed_from_evidence (P : LipidDropletProteomePackage) (E : LipidDropletProteomeEvidence P) : LipidDropletProteomeClosed P := by
  exact And.intro E.perilipinFamilyLocalizationClosed (And.intro E.lipaseRecruitmentClosed (And.intro E.membraneTraffickingProteinsClosed (And.intro E.structuralProteinsClosed E.signalingProteinsClosed)))

end CellBiologyLipidDropletsCanonicalLaneLean
end HautevilleHouse