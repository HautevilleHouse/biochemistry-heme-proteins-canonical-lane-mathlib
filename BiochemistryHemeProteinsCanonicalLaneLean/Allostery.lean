import BiochemistryHemeProteinsCanonicalLaneLean.Cooperativity

namespace HautevilleHouse
namespace BiochemistryHemeProteinsCanonicalLaneLean

structure AllosteryPackage where
  tState : Prop
  rState : Prop
  allostericConstant : ℝ
  tToRTransition : Prop

structure AllosteryEvidence (A : AllosteryPackage) where
  tStateClosed : A.tState
  rStateClosed : A.rState
  allostericConstantClosed : A.allostericConstant = 0.1
  tToRTransitionClosed : A.tToRTransition

def AllosteryClosed (A : AllosteryPackage) : Prop :=
  A.tState ∧ A.rState ∧ A.tToRTransition

theorem allostery_closed_from_evidence (A : AllosteryPackage)
    (E : AllosteryEvidence A) : AllosteryClosed A := by
  exact And.intro E.tStateClosed
    (And.intro E.rStateClosed E.tToRTransitionClosed)

end BiochemistryHemeProteinsCanonicalLaneLean
end HautevilleHouse
