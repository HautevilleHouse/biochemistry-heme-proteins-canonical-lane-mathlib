import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryHemeProteinsCanonicalLaneLean

structure HemeGroup where
  ironCenter : Type
  porphyrinRing : Type
  axialLigands : Type
  coordinationGeometry : Prop
  ironOxidationState : ℕ

e
 structure ProteinFold where
  polypeptideChain : Type
  hemeBindingPocket : Type
  quaternaryStructure : Type
  foldClass : String

structure HemeProteinStructurePackage where
  heme : HemeGroup
  protein : ProteinFold
  hemeCoordinationStable : Prop
  proteinFoldNative : Prop

structure HemeProteinStructureEvidence (S : HemeProteinStructurePackage) where
  hemeCoordinationStableClosed : S.hemeCoordinationStable
  proteinFoldNativeClosed : S.proteinFoldNative

def HemeProteinStructureClosed (S : HemeProteinStructurePackage) : Prop :=
  S.hemeCoordinationStable ∧ S.proteinFoldNative

theorem heme_protein_structure_closed_from_evidence
    (S : HemeProteinStructurePackage) (E : HemeProteinStructureEvidence S) :
    HemeProteinStructureClosed S := by
  exact And.intro E.hemeCoordinationStableClosed E.proteinFoldNativeClosed

end BiochemistryHemeProteinsCanonicalLaneLean
end HautevilleHouse