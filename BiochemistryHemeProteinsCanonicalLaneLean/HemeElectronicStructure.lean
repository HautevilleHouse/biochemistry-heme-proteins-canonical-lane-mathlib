import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryHemeProteinsCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BiochemistryHemeProteinsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BiochemistryHemeProteinsCanonicalLaneLean

structure HemeElectronicStructurePackage (A : AdmissibleClass) where
  dOrbitalSplitting : String
  ligandFieldStrength : ℝ
  spinState : String
  piBackbonding : Prop
  electronicSpectroscopy : Prop
  ligandFieldStrengthPositive : ligandFieldStrength > 0
  electronicSpectroscopyClosed : Prop
  electronicSpectroscopyClosedTerm : electronicSpectroscopyClosed

structure HemeElectronicStructureEvidence {A : AdmissibleClass} (E : HemeElectronicStructurePackage A) where
  ligandFieldStrengthPositiveClosed : E.ligandFieldStrengthPositive
  electronicSpectroscopyClosedClosed : E.electronicSpectroscopyClosed

def HemeElectronicStructureClosed {A : AdmissibleClass} (E : HemeElectronicStructurePackage A) : Prop :=
  E.electronicSpectroscopyClosed

theorem heme_electronic_structure_closed_from_evidence
    {A : AdmissibleClass} (E : HemeElectronicStructurePackage A) (Ev : HemeElectronicStructureEvidence E) :
    HemeElectronicStructureClosed E :=
  Ev.electronicSpectroscopyClosedClosed

end BiochemistryHemeProteinsCanonicalLaneLean
end HautevilleHouse