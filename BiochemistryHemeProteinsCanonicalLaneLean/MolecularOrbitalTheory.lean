import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryHemeProteinsCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  ironCenter : Type
  ligandOrbitals : Type
  crystalFieldSplitting : Prop
  piBackbonding : Prop
  spinState : Prop

structure MolecularOrbitalTheoryEvidence (P : MolecularOrbitalTheoryPackage) where
  crystalFieldSplittingClosed : P.crystalFieldSplitting
  piBackbondingClosed : P.piBackbonding
  spinStateClosed : P.spinState

def MolecularOrbitalTheoryClosed (P : MolecularOrbitalTheoryPackage) : Prop :=
  P.crystalFieldSplitting ∧ P.piBackbonding ∧ P.spinState

theorem molecular_orbital_theory_closed_from_evidence (P : MolecularOrbitalTheoryPackage) (E : MolecularOrbitalTheoryEvidence P) : MolecularOrbitalTheoryClosed P :=
  And.intro E.crystalFieldSplittingClosed (And.intro E.piBackbondingClosed E.spinStateClosed)

end BiochemistryHemeProteinsCanonicalLaneLean
end HautevilleHouse