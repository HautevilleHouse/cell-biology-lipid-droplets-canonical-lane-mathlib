import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace CellBiologyLipidDroplets

def ConstrainedLipidDropletClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lipid_droplet_endgame (A : AdmissibleClass) :
    ConstrainedLipidDropletClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyLipidDroplets
end HautevilleHouse