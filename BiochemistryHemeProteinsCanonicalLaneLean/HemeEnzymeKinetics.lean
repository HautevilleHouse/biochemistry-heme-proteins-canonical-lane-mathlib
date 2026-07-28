import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryHemeProteinsCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BiochemistryHemeProteinsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BiochemistryHemeProteinsCanonicalLaneLean

structure HemeEnzymeKineticsPackage (A : AdmissibleClass) where
  substrateAffinity : ℝ
  catalyticRate : ℝ
  michaelisConstant : ℝ
  inhibitionType : String
  steadyStateModel : Prop
  catalyticRatesPositive : catalyticRate > 0
  steadyStateModelClosed : Prop
  steadyStateModelClosedTerm : steadyStateModelClosed

structure HemeEnzymeKineticsEvidence {A : AdmissibleClass} (K : HemeEnzymeKineticsPackage A) where
  catalyticRatesPositiveClosed : K.catalyticRatesPositive
  steadyStateModelClosedClosed : K.steadyStateModelClosed

def HemeEnzymeKineticsClosed {A : AdmissibleClass} (K : HemeEnzymeKineticsPackage A) : Prop :=
  K.steadyStateModelClosed

theorem heme_enzyme_kinetics_closed_from_evidence
    {A : AdmissibleClass} (K : HemeEnzymeKineticsPackage A) (E : HemeEnzymeKineticsEvidence K) :
    HemeEnzymeKineticsClosed K :=
  E.steadyStateModelClosedClosed

end BiochemistryHemeProteinsCanonicalLaneLean
end HautevilleHouse