import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsCanonicalLaneLean

structure PerilipinCoatRegulationPackage where
  perilipinRecruitment : Prop
  coatStabilization : Prop
  lipaseAccessControl : Prop
  coatTurnover : Prop
  perilipinRecruitmentClosed : perilipinRecruitment
  coatStabilizationClosed : coatStabilization
  lipaseAccessControlClosed : lipaseAccessControl
  coatTurnoverClosed : coatTurnover

def PerilipinCoatRegulationClosed (P : PerilipinCoatRegulationPackage) : Prop :=
  P.perilipinRecruitment ∧ P.coatStabilization ∧ P.lipaseAccessControl ∧ P.coatTurnover

theorem perilipin_coat_regulation_closed_from_evidence (P : PerilipinCoatRegulationPackage) : PerilipinCoatRegulationClosed P :=
  And.intro P.perilipinRecruitmentClosed (And.intro P.coatStabilizationClosed (And.intro P.lipaseAccessControlClosed P.coatTurnoverClosed))

end CellBiologyLipidDropletsCanonicalLaneLean
end HautevilleHouse