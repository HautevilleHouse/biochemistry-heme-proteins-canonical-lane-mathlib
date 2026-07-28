import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryHemeProteinsCanonicalLaneLean

structure HemeBindingPackage where
  hemeGroup : Type
  coordinationSphere : Prop
  redoxPotential : Prop
  ligandFieldStrength : Prop

structure HemeBindingEvidence (P : HemeBindingPackage) where
  coordinationSphereClosed : P.coordinationSphere
  redoxPotentialClosed : P.redoxPotential
  ligandFieldStrengthClosed : P.ligandFieldStrength

def HemeBindingClosed (P : HemeBindingPackage) : Prop :=
  P.coordinationSphere ∧ P.redoxPotential ∧ P.ligandFieldStrength

theorem heme_binding_closed_from_evidence (P : HemeBindingPackage) (E : HemeBindingEvidence P) : HemeBindingClosed P :=
  And.intro E.coordinationSphereClosed (And.intro E.redoxPotentialClosed E.ligandFieldStrengthClosed)

end BiochemistryHemeProteinsCanonicalLaneLean
end HautevilleHouse