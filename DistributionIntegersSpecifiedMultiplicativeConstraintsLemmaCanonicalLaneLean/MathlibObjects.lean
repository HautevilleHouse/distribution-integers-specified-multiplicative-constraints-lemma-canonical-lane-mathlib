import Mathlib

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean

structure DistributionSpace where
  carrier : Type
  structure : Semiring carrier

structure DistributionAdmittedObject where
  space : DistributionSpace
  integerDistribution : Prop
  multiplicativeConstraint : Prop
  conclusion : integerDistribution ∧ multiplicativeConstraint

end DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean
end HautevilleHouse
