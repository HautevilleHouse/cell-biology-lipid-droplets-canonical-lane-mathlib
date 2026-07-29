import HautevilleHouse.CellBiologyLipidDropletsCanonicalLaneLean.LipidDropletDynamics

namespace HautevilleHouse
namespace CellBiologyLipidDropletsCanonicalLaneLean

structure ContactSiteRegulationPackage {P : LipidDropletDynamicsPackage} where
  membraneTethering : Prop
  lipidTransfer : Prop
  signalingPlatform : Prop
  metabolicCrosstalk : Prop

structure ContactSiteRegulationEvidence {P : LipidDropletDynamicsPackage}
    (C : ContactSiteRegulationPackage P) where
  membraneTetheringClosed : C.membraneTethering
  lipidTransferClosed : C.lipidTransfer
  signalingPlatformClosed : C.signalingPlatform
  metabolicCrosstalkClosed : C.metabolicCrosstalk

def ContactSiteRegulationClosed {P : LipidDropletDynamicsPackage}
    (C : ContactSiteRegulationPackage P) : Prop :=
  C.membraneTethering ∧ C.lipidTransfer ∧ C.signalingPlatform ∧ C.metabolicCrosstalk

theorem contact_site_regulation_closed_from_evidence {P : LipidDropletDynamicsPackage}
    (C : ContactSiteRegulationPackage P) (E : ContactSiteRegulationEvidence C) :
    ContactSiteRegulationClosed C :=
  And.intro E.membraneTetheringClosed (And.intro E.lipidTransferClosed
    (And.intro E.signalingPlatformClosed E.metabolicCrosstalkClosed))

end CellBiologyLipidDropletsCanonicalLaneLean
end HautevilleHouse