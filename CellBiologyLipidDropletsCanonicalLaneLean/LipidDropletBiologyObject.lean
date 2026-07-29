import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDroplets

structure LipidDropletBiologyObject where
  lipidDroplet : Type
  biogenesisPathway : Prop
  metabolicRegulation : Prop
  conclusion : biogenesisPathway ∧ metabolicRegulation

def LipidDropletWitnessClosed (O : LipidDropletBiologyObject) : Prop :=
  O.biogenesisPathway ∧ O.metabolicRegulation

end CellBiologyLipidDroplets
end HautevilleHouse