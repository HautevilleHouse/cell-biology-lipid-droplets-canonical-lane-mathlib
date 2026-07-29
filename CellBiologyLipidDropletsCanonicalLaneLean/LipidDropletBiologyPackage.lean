import HautevilleHouse.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsCanonicalLaneLean

structure LipidDropletAdmittedObject where
  dropletSource : Type
  assemblyDynamics : Prop
  regulatoryNetwork : Prop
  contactSites : Prop

structure AdmissibleClass where
  object : LipidDropletAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.assemblyDynamics ∧ A.object.regulatoryNetwork ∧ A.object.contactSites

end CellBiologyLipidDropletsCanonicalLaneLean
end HautevilleHouse