import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryHemeProteinsCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BiochemistryHemeProteinsCanonicalLaneLean.HemeProteinStructure
import HautevilleHouse.BiochemistryHemeProteinsCanonicalLaneLean.HemeBindingKinetics
import HautevilleHouse.BiochemistryHemeProteinsCanonicalLaneLean.CooperativeBindingAllostery
import HautevilleHouse.BiochemistryHemeProteinsCanonicalLaneLean.OxygenTransportThermodynamics
import HautevilleHouse.BiochemistryHemeProteinsCanonicalLaneLean.RedoxProperties

namespace HautevilleHouse
namespace BiochemistryHemeProteinsCanonicalLaneLean

def HemeWitnessClosed (O : HemeAdmittedObject) : Prop :=
  O.bindingAffinity > 0

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HemeWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedHemeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_heme_endgame (A : AdmissibleClass) :
    ConstrainedHemeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistryHemeProteinsCanonicalLaneLean
end HautevilleHouse