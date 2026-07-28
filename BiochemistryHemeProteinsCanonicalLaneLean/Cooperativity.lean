import BiochemistryHemeProteinsCanonicalLaneLean.HemeBinding

namespace HautevilleHouse
namespace BiochemistryHemeProteinsCanonicalLaneLean

structure CooperativityPackage where
  hillCoefficient : ℕ
  bindingCurve : ℕ → ℕ
  positiveCooperativity : Prop
  negativeCooperativity : Prop

structure CooperativityEvidence (C : CooperativityPackage) where
  hillCoefficientClosed : C.hillCoefficient = 4
  bindingCurveCorrect : ∀ n, C.bindingCurve n = n
  positiveCooperativityClosed : C.positiveCooperativity

def CooperativityClosed (C : CooperativityPackage) : Prop :=
  C.positiveCooperativity ∧ (C.hillCoefficient = 4)

theorem cooperativity_closed_from_evidence (C : CooperativityPackage)
    (E : CooperativityEvidence C) : CooperativityClosed C := by
  exact And.intro E.positiveCooperativityClosed E.hillCoefficientClosed

end BiochemistryHemeProteinsCanonicalLaneLean
end HautevilleHouse
