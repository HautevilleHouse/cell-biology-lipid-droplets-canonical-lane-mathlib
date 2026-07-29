import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsCanonicalLaneLean

structure LipidDropletAdmittedObject where
  cell : Type
  dropletPopulation : Prop
  metabolicRegulation : Prop
  dropletFormation : Prop
  conclusion : dropletFormation

structure LipidDropletWitnessClosed (O : LipidDropletAdmittedObject) : Prop where
  dropletFormationClosed : O.dropletFormation

end CellBiologyLipidDropletsCanonicalLaneLean
end HautevilleHouse
