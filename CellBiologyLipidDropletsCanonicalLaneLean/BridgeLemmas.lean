import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDroplets

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LipidDropletWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyLipidDroplets
end HautevilleHouse