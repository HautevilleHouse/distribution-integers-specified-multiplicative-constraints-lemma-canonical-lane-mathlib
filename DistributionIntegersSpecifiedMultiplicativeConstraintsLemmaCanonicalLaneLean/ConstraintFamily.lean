import canonicalLaneMathlib.AdmissibleClass
import DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean.MultiplicativeConstraintBase

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsLemma

structure ConstraintFamilyPackage {G : DistributionIntegersBase} where
  multiplicativeMap : G.integerSet → G.integerSet
  constraintSet : Set G.integerSet
  distributesOver : ∀ a b : G.integerSet, multiplicativeMap (a + b) = multiplicativeMap a * multiplicativeMap b
  constraintClosed : Prop
  constraintClosedTerm : constraintClosed

structure ConstraintFamilyEvidence {G : DistributionIntegersBase} (F : ConstraintFamilyPackage G) where
  distributesOverClosed : F.distributesOver
  constraintClosedClosed : F.constraintClosed

def ConstraintFamilyClosed {G : DistributionIntegersBase} (F : ConstraintFamilyPackage G) : Prop :=
  (∀ a b : G.integerSet, F.multiplicativeMap (a + b) = F.multiplicativeMap a * F.multiplicativeMap b) ∧
  F.constraintClosed

theorem constraint_family_closed_from_evidence {G : DistributionIntegersBase} (F : ConstraintFamilyPackage G) (E : ConstraintFamilyEvidence F) :
    ConstraintFamilyClosed F := by
  exact And.intro E.distributesOverClosed E.constraintClosedClosed

end DistributionIntegersSpecifiedMultiplicativeConstraintsLemma
end HautevilleHouse