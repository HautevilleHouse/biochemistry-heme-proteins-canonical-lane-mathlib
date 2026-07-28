import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryHemeProteinsCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BiochemistryHemeProteinsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BiochemistryHemeProteinsCanonicalLaneLean

structure HemeRedoxThermodynamicsPackage (A : AdmissibleClass) where
  reductionPotential : ℝ
  temperature : ℝ
  pH : ℝ
  electronTransferMechanism : String
  thermodynamicCycle : Prop
  reductionPotentialMeasured : Prop
  thermodynamicCycleClosed : Prop
  thermodynamicCycleClosedTerm : thermodynamicCycleClosed

structure HemeRedoxThermodynamicsEvidence {A : AdmissibleClass} (R : HemeRedoxThermodynamicsPackage A) where
  reductionPotentialMeasuredClosed : R.reductionPotentialMeasured
  thermodynamicCycleClosedClosed : R.thermodynamicCycleClosed

def HemeRedoxThermodynamicsClosed {A : AdmissibleClass} (R : HemeRedoxThermodynamicsPackage A) : Prop :=
  R.thermodynamicCycleClosed

theorem heme_redox_thermodynamics_closed_from_evidence
    {A : AdmissibleClass} (R : HemeRedoxThermodynamicsPackage A) (E : HemeRedoxThermodynamicsEvidence R) :
    HemeRedoxThermodynamicsClosed R :=
  E.thermodynamicCycleClosedClosed

end BiochemistryHemeProteinsCanonicalLaneLean
end HautevilleHouse