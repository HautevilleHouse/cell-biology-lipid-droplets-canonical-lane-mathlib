import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsCanonicalLaneLean

structure LipidDropletPackage where
  erMembraneContact : Prop
  neutralLipidSynthesis : Prop
  lipidDropletNucleation : Prop
  monolayerFormation : Prop
  sizeControl : Prop

def LipidDropletFormationClosed (P : LipidDropletPackage) : Prop :=
  P.erMembraneContact ∧ P.neutralLipidSynthesis ∧ P.lipidDropletNucleation ∧
  P.monolayerFormation ∧ P.sizeControl

structure LipidDropletFormationEvidence (P : LipidDropletPackage) where
  erMembraneContactClosed : P.erMembraneContact
  neutralLipidSynthesisClosed : P.neutralLipidSynthesis
  lipidDropletNucleationClosed : P.lipidDropletNucleation
  monolayerFormationClosed : P.monolayerFormation
  sizeControlClosed : P.sizeControl

theorem lipid_droplet_formation_closed_from_evidence (P : LipidDropletPackage)
    (E : LipidDropletFormationEvidence P) : LipidDropletFormationClosed P := by
  exact And.intro E.erMembraneContactClosed
    (And.intro E.neutralLipidSynthesisClosed
      (And.intro E.lipidDropletNucleationClosed
        (And.intro E.monolayerFormationClosed E.sizeControlClosed)))

end CellBiologyLipidDropletsCanonicalLaneLean
end HautevilleHouse