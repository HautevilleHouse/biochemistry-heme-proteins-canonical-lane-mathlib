import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryHemeProteinsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.oxygenAffinity ∧ A.object.cooperativeBinding

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end BiochemistryHemeProteinsCanonicalLaneLean
end HautevilleHouse