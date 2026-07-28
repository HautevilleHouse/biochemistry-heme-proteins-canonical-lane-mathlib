import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryHemeProteinsCanonicalLaneLean

structure OxygenBindingKineticsPackage where
  hemeProtein : Type
  dissociationConstant : Prop
  associationRate : Prop
  cooperativityIndex : Prop
  phDependence : Prop

structure OxygenBindingKineticsEvidence (P : OxygenBindingKineticsPackage) where
  dissociationConstantClosed : P.dissociationConstant
  associationRateClosed : P.associationRate
  cooperativityIndexClosed : P.cooperativityIndex
  phDependenceClosed : P.phDependence

def OxygenBindingKineticsClosed (P : OxygenBindingKineticsPackage) : Prop :=
  P.dissociationConstant ∧ P.associationRate ∧ P.cooperativityIndex ∧ P.phDependence

theorem oxygen_binding_kinetics_closed_from_evidence (P : OxygenBindingKineticsPackage) (E : OxygenBindingKineticsEvidence P) : OxygenBindingKineticsClosed P :=
  And.intro E.dissociationConstantClosed (And.intro E.associationRateClosed (And.intro E.cooperativityIndexClosed E.phDependenceClosed))

end BiochemistryHemeProteinsCanonicalLaneLean
end HautevilleHouse