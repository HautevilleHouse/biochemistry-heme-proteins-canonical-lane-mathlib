import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryHemeProteinsCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BiochemistryHemeProteinsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BiochemistryHemeProteinsCanonicalLaneLean

structure CooperativeBindingPackage (A : AdmissibleClass) where
  hillCoefficient : ℝ
  partialPressureOxygen : ℝ → ℝ
  bindingCurveModel : String
  cooperativityMechanism : String
  fractionalSaturation : ℝ → ℝ
  hillCoefficientPositive : hillCoefficient > 0
  bindingCurveSigmoidal : Prop
  cooperativityClosed : Prop
  cooperativityClosedTerm : cooperativityClosed

structure CooperativeBindingEvidence {A : AdmissibleClass} (C : CooperativeBindingPackage A) where
  hillCoefficientPositiveClosed : C.hillCoefficientPositive
  bindingCurveSigmoidalClosed : C.bindingCurveSigmoidal
  cooperativityClosedClosed : C.cooperativityClosed

def CooperativeBindingClosed {A : AdmissibleClass} (C : CooperativeBindingPackage A) : Prop :=
  C.cooperativityClosed

theorem cooperative_binding_closed_from_evidence
    {A : AdmissibleClass} (C : CooperativeBindingPackage A) (E : CooperativeBindingEvidence C) :
    CooperativeBindingClosed C :=
  E.cooperativityClosedClosed

end BiochemistryHemeProteinsCanonicalLaneLean
end HautevilleHouse