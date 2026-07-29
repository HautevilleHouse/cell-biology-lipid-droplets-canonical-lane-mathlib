import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsCanonicalLaneLean

structure LipidMetabolismNetworkPackage where
  faSynthesis : Prop
  tagSynthesis : Prop
  lipolysisPathway : Prop
  betaOxidation : Prop
  faSynthesisClosed : faSynthesis
  tagSynthesisClosed : tagSynthesis
  lipolysisPathwayClosed : lipolysisPathway
  betaOxidationClosed : betaOxidation

def LipidMetabolismNetworkClosed (N : LipidMetabolismNetworkPackage) : Prop :=
  N.faSynthesis ∧ N.tagSynthesis ∧ N.lipolysisPathway ∧ N.betaOxidation

theorem lipid_metabolism_network_closed_from_evidence (N : LipidMetabolismNetworkPackage) : LipidMetabolismNetworkClosed N :=
  And.intro N.faSynthesisClosed (And.intro N.tagSynthesisClosed (And.intro N.lipolysisPathwayClosed N.betaOxidationClosed))

end CellBiologyLipidDropletsCanonicalLaneLean
end HautevilleHouse