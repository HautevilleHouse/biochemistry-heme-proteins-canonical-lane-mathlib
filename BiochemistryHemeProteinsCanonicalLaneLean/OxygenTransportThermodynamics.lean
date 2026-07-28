import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryHemeProteinsCanonicalLaneLean

structure OxygenTransportThermodynamicsPackage where
  gibbsFreeEnergyChange : ℝ
  enthalpyChange : ℝ
  entropyChange : ℝ
  hillCoefficient : ℝ
  p50PartialPressure : ℝ
  oxygenAffinityUnderStdConditions : Prop
  thermodynamicConsistency : Prop

structure OxygenTransportThermodynamicsEvidence
    (T : OxygenTransportThermodynamicsPackage) where
  oxygenAffinityUnderStdConditionsClosed : T.oxygenAffinityUnderStdConditions
  thermodynamicConsistencyClosed : T.thermodynamicConsistency

def OxygenTransportThermodynamicsClosed (T : OxygenTransportThermodynamicsPackage) : Prop :=
  T.oxygenAffinityUnderStdConditions ∧ T.thermodynamicConsistency

theorem oxygen_transport_thermodynamics_closed_from_evidence
    (T : OxygenTransportThermodynamicsPackage)
    (E : OxygenTransportThermodynamicsEvidence T) :
    OxygenTransportThermodynamicsClosed T := by
  exact And.intro E.oxygenAffinityUnderStdConditionsClosed E.thermodynamicConsistencyClosed

end BiochemistryHemeProteinsCanonicalLaneLean
end HautevilleHouse