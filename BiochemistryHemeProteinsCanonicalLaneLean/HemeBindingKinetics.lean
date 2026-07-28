import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryHemeProteinsCanonicalLaneLean

structure BindingKineticsPackage where
  associationRate : ℝ
  dissociationRate : ℝ
  equilibriumConstant : ℝ
  bindingSiteConcentration : ℝ
  ligandConcentration : ℝ
  saturationFunction : Type
  michaelisMentenValid : Prop

structure BindingKineticsEvidence (K : BindingKineticsPackage) where
  michaelisMentenValidClosed : K.michaelisMentenValid

def BindingKineticsClosed (K : BindingKineticsPackage) : Prop :=
  K.michaelisMentenValid

theorem binding_kinetics_closed_from_evidence
    (K : BindingKineticsPackage) (E : BindingKineticsEvidence K) :
    BindingKineticsClosed K := by
  exact E.michaelisMentenValidClosed

end BiochemistryHemeProteinsCanonicalLaneLean
end HautevilleHouse