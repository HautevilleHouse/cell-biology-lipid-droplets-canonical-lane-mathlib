import HautevilleHouse.CellBiologyLipidDropletsCanonicalLaneLean.ContactSiteRegulation

namespace HautevilleHouse
namespace CellBiologyLipidDropletsCanonicalLaneLean

structure RegulatoryNetworkPackage {P : LipidDropletDynamicsPackage}
    {C : ContactSiteRegulationPackage P} where
  transcriptionControl : Prop
  postTranslationalModification : Prop
  feedbackLoops : Prop
  stressResponse : Prop

structure RegulatoryNetworkEvidence {P : LipidDropletDynamicsPackage}
    {C : ContactSiteRegulationPackage P} (R : RegulatoryNetworkPackage C) where
  transcriptionControlClosed : R.transcriptionControl
  postTranslationalModificationClosed : R.postTranslationalModification
  feedbackLoopsClosed : R.feedbackLoops
  stressResponseClosed : R.stressResponse

def RegulatoryNetworkClosed {P : LipidDropletDynamicsPackage}
    {C : ContactSiteRegulationPackage P} (R : RegulatoryNetworkPackage C) : Prop :=
  R.transcriptionControl ∧ R.postTranslationalModification ∧ R.feedbackLoops ∧ R.stressResponse

theorem regulatory_network_closed_from_evidence {P : LipidDropletDynamicsPackage}
    {C : ContactSiteRegulationPackage P} (R : RegulatoryNetworkPackage C)
    (E : RegulatoryNetworkEvidence R) : RegulatoryNetworkClosed R :=
  And.intro E.transcriptionControlClosed (And.intro E.postTranslationalModificationClosed
    (And.intro E.feedbackLoopsClosed E.stressResponseClosed))

end CellBiologyLipidDropletsCanonicalLaneLean
end HautevilleHouse