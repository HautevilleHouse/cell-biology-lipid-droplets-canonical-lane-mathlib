import HautevilleHouse.CellBiologyLipidDropletsCanonicalLaneLean.LipidDropletBiologyPackage

namespace HautevilleHouse
namespace CellBiologyLipidDropletsCanonicalLaneLean

structure LipidDropletDynamicsPackage where
  biogenesisRate : Prop
  degradationRate : Prop
  lipidComposition : Prop
  sizeDistribution : Prop

structure LipidDropletDynamicsEvidence (P : LipidDropletDynamicsPackage) where
  biogenesisRateClosed : P.biogenesisRate
  degradationRateClosed : P.degradationRate
  lipidCompositionClosed : P.lipidComposition
  sizeDistributionClosed : P.sizeDistribution

def LipidDropletDynamicsClosed (P : LipidDropletDynamicsPackage) : Prop :=
  P.biogenesisRate ∧ P.degradationRate ∧ P.lipidComposition ∧ P.sizeDistribution

theorem lipid_droplet_dynamics_closed_from_evidence (P : LipidDropletDynamicsPackage)
    (E : LipidDropletDynamicsEvidence P) : LipidDropletDynamicsClosed P :=
  And.intro E.biogenesisRateClosed (And.intro E.degradationRateClosed
    (And.intro E.lipidCompositionClosed E.sizeDistributionClosed))

end CellBiologyLipidDropletsCanonicalLaneLean
end HautevilleHouse