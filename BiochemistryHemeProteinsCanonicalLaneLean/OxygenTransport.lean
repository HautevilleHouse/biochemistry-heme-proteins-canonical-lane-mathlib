import BiochemistryHemeProteinsCanonicalLaneLean.Allostery

namespace HautevilleHouse
namespace BiochemistryHemeProteinsCanonicalLaneLean

structure OxygenTransportPackage where
  partialPressure : ℝ
  saturationCurve : ℝ → ℝ
  myoglobinAffinity : Prop
  hemoglobinCooperativity : Prop

structure OxygenTransportEvidence (O : OxygenTransportPackage) where
  partialPressureClosed : O.partialPressure = 100
  saturationCurveCorrect : O.saturationCurve 100 = 0.98
  myoglobinAffinityClosed : O.myoglobinAffinity
  hemoglobinCooperativityClosed : O.hemoglobinCooperativity

def OxygenTransportClosed (O : OxygenTransportPackage) : Prop :=
  O.myoglobinAffinity ∧ O.hemoglobinCooperativity

theorem oxygen_transport_closed_from_evidence (O : OxygenTransportPackage)
    (E : OxygenTransportEvidence O) : OxygenTransportClosed O := by
  exact And.intro E.myoglobinAffinityClosed E.hemoglobinCooperativityClosed

end BiochemistryHemeProteinsCanonicalLaneLean
end HautevilleHouse
