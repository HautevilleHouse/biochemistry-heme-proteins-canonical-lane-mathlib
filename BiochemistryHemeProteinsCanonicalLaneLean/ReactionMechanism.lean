import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryHemeProteinsCanonicalLaneLean

structure ReactionMechanismPackage where
  enzyme : Type
  substrateBinding : Prop
  catalyticStep : Prop
  productRelease : Prop
  steadyStateKinetics : Prop

structure ReactionMechanismEvidence (P : ReactionMechanismPackage) where
  substrateBindingClosed : P.substrateBinding
  catalyticStepClosed : P.catalyticStep
  productReleaseClosed : P.productRelease
  steadyStateKineticsClosed : P.steadyStateKinetics

def ReactionMechanismClosed (P : ReactionMechanismPackage) : Prop :=
  P.substrateBinding ∧ P.catalyticStep ∧ P.productRelease ∧ P.steadyStateKinetics

theorem reaction_mechanism_closed_from_evidence (P : ReactionMechanismPackage) (E : ReactionMechanismEvidence P) : ReactionMechanismClosed P :=
  And.intro E.substrateBindingClosed (And.intro E.catalyticStepClosed (And.intro E.productReleaseClosed E.steadyStateKineticsClosed))

end BiochemistryHemeProteinsCanonicalLaneLean
end HautevilleHouse