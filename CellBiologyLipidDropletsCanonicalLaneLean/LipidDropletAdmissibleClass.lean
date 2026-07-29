import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsCanonicalLaneLean

structure LipidDropletCell where
  cellType : Type
  lipidDropletPopulation : Nat
  lipidMetabolismState : Prop
  stressCondition : Prop
  lipidDropletBiogenesis : Prop
  lipolysisPathway : Prop

structure AdmittedLipidDropletObject where
  cell : LipidDropletCell
  dropletDynamics : Prop
  metabolicRegulation : Prop

structure AdmissibleClass where
  object : AdmittedLipidDropletObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  dropletBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def dropletBridgeClosed (O : AdmittedLipidDropletObject) : Prop :=
  O.dropletDynamics ∧ O.metabolicRegulation

end CellBiologyLipidDropletsCanonicalLaneLean
end HautevilleHouse