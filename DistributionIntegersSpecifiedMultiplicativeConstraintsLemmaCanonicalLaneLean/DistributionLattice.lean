import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean

structure DistributionLatticePackage {M : MultiplicativeConstraintsPackage} where
  baseSet : Type u
  distributionMap : M.integerDomain → baseSet → baseSet
  distributionIdentity : ∀ (x : baseSet), distributionMap (1 : M.integerDomain) x = x
  distributionCompatibility : ∀ (a b : M.integerDomain) (x : baseSet), distributionMap (M.multiplication a b) x = distributionMap a (distributionMap b x)

def DistributionLatticeClosed {M : MultiplicativeConstraintsPackage} (D : DistributionLatticePackage M) : Prop :=
  D.distributionIdentity ∧ D.distributionCompatibility

end DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean
end HautevilleHouse