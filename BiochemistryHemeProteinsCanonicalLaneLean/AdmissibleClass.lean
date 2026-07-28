import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryHemeProteinsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HemeAdmittedObject where
  hemeProtein : Type
  oxygenBindingSite : Type
  cooperativityModel : Prop
  redoxState : Prop
  bindingAffinity : ℝ
  conclusion : bindingAffinity > 0

structure AdmissibleClass where
  object : HemeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HemeWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryHemeProteinsCanonicalLaneLean
end HautevilleHouse