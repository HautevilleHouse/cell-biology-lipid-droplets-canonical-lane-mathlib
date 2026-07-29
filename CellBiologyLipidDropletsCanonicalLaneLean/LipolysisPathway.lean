import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsCanonicalLaneLean

structure LipolysisPackage where
  lipaseActivation : Prop
  lipidMobilization : Prop
  fattyAcidRelease : Prop
  betaOxidation : Prop

structure LipolysisEvidence (L : LipolysisPackage) where
  lipaseActivationClosed : L.lipaseActivation
  lipidMobilizationClosed : L.lipidMobilization
  fattyAcidReleaseClosed : L.fattyAcidRelease
  betaOxidationClosed : L.betaOxidation

def LipolysisClosed (L : LipolysisPackage) : Prop :=
  L.lipaseActivation ∧ L.lipidMobilization ∧ L.fattyAcidRelease ∧ L.betaOxidation

theorem lipolysis_closed_from_evidence (L : LipolysisPackage) (E : LipolysisEvidence L) :
    LipolysisClosed L := by
  exact And.intro E.lipaseActivationClosed (And.intro E.lipidMobilizationClosed (And.intro E.fattyAcidReleaseClosed E.betaOxidationClosed))

end CellBiologyLipidDropletsCanonicalLaneLean
end HautevilleHouse