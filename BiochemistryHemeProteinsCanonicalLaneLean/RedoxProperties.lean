import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryHemeProteinsCanonicalLaneLean

structure RedoxPropertiesPackage where
  reductionPotential : ℝ
  oxidationStateFeII : Prop
  oxidationStateFeIII : Prop
  redoxCouple : Type
  electronTransferMechanism : Prop
  physiologicalRelevance : Prop

structure RedoxPropertiesEvidence (R : RedoxPropertiesPackage) where
  reductionPotentialMeasured : R.reductionPotential ≠ 0
  redoxCoupleCharacterized : R.redoxCouple ≠ Empty
  physiologicalRelevanceClosed : R.physiologicalRelevance

def RedoxPropertiesClosed (R : RedoxPropertiesPackage) : Prop :=
  R.reductionPotential ≠ 0 ∧ R.redoxCouple ≠ Empty ∧ R.physiologicalRelevance

theorem redox_properties_closed_from_evidence
    (R : RedoxPropertiesPackage) (E : RedoxPropertiesEvidence R) :
    RedoxPropertiesClosed R := by
  exact And.intro E.reductionPotentialMeasured
    (And.intro E.redoxCoupleCharacterized E.physiologicalRelevanceClosed)

end BiochemistryHemeProteinsCanonicalLaneLean
end HautevilleHouse