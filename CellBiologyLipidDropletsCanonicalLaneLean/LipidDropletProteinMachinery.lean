import canonicalLaneMathlib.LipidDropletBiologyObject

namespace HautevilleHouse
namespace CellBiologyLipidDroplets

structure LipidDropletProteinMachinery where
  perilipinFamily : Prop
  lipases : Prop
  transferProteins : Prop
  regulatoryKinases : Prop

structure LipidDropletProteinMachineryEvidence (P : LipidDropletProteinMachinery) where
  perilipinFamilyClosed : P.perilipinFamily
  lipasesClosed : P.lipases
  transferProteinsClosed : P.transferProteins
  regulatoryKinasesClosed : P.regulatoryKinases

def LipidDropletProteinMachineryClosed (P : LipidDropletProteinMachinery) : Prop :=
  P.perilipinFamily ∧ P.lipases ∧ P.transferProteins ∧ P.regulatoryKinases

theorem lipid_droplet_protein_machinery_closed_from_evidence
    (P : LipidDropletProteinMachinery) (E : LipidDropletProteinMachineryEvidence P) :
    LipidDropletProteinMachineryClosed P := by
  exact And.intro E.perilipinFamilyClosed
    (And.intro E.lipasesClosed
      (And.intro E.transferProteinsClosed E.regulatoryKinasesClosed))

end CellBiologyLipidDroplets
end HautevilleHouse