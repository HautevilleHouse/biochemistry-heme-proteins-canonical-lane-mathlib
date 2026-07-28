import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryHemeProteinsCanonicalLaneLean

structure AllosteryModel where
  modelName : String
  parameters : Type
  cooperativityCoefficient : ℝ
  bindingCurveSigmoidal : Prop
  mwcModelApplied : Prop
  knfModelApplied : Prop

structure CooperativeBindingAllosteryPackage (M : AllosteryModel) where
  sigmoidalBindingValid : M.bindingCurveSigmoidal
  cooperativityCoefficientPositive : M.cooperativityCoefficient > 0

structure CooperativeBindingAllosteryEvidence {M : AllosteryModel}
    (P : CooperativeBindingAllosteryPackage M) where
  sigmoidalBindingValidClosed : P.sigmoidalBindingValid
  cooperativityCoefficientPositiveClosed : P.cooperativityCoefficientPositive

def CooperativeBindingAllosteryClosed {M : AllosteryModel}
    (P : CooperativeBindingAllosteryPackage M) : Prop :=
  P.sigmoidalBindingValid ∧ P.cooperativityCoefficientPositive

theorem cooperative_binding_allostery_closed_from_evidence
    {M : AllosteryModel} (P : CooperativeBindingAllosteryPackage M)
    (E : CooperativeBindingAllosteryEvidence P) :
    CooperativeBindingAllosteryClosed P := by
  exact And.intro E.sigmoidalBindingValidClosed E.cooperativityCoefficientPositiveClosed

end BiochemistryHemeProteinsCanonicalLaneLean
end HautevilleHouse