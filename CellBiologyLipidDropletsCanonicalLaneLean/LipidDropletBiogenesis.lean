import canonicalLaneMathlib.LipidDropletBiologyObject

namespace HautevilleHouse
namespace CellBiologyLipidDroplets

structure LipidDropletBiogenesis where
  erMembraneContact : Prop
  neutralLipidSynthesis : Prop
  dropletNucleation : Prop
  growthAndMaturation : Prop

structure LipidDropletBiogenesisEvidence (B : LipidDropletBiogenesis) where
  erMembraneContactClosed : B.erMembraneContact
  neutralLipidSynthesisClosed : B.neutralLipidSynthesis
  dropletNucleationClosed : B.dropletNucleation
  growthAndMaturationClosed : B.growthAndMaturation

def LipidDropletBiogenesisClosed (B : LipidDropletBiogenesis) : Prop :=
  B.erMembraneContact ∧ B.neutralLipidSynthesis ∧ B.dropletNucleation ∧ B.growthAndMaturation

theorem lipid_droplet_biogenesis_closed_from_evidence
    (B : LipidDropletBiogenesis) (E : LipidDropletBiogenesisEvidence B) :
    LipidDropletBiogenesisClosed B := by
  exact And.intro E.erMembraneContactClosed
    (And.intro E.neutralLipidSynthesisClosed
      (And.intro E.dropletNucleationClosed E.growthAndMaturationClosed))

end CellBiologyLipidDroplets
end HautevilleHouse