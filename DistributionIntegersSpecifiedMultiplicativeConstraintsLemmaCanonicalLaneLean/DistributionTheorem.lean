import canonicalLaneMathlib.AdmissibleClass
import DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean.ConstraintFamily

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsLemma

structure DistributionTheoremPackage {G : DistributionIntegersBase} {F : ConstraintFamilyPackage G} where
  distributionLaw : ∀ (a : G.integerSet), F.multiplicativeMap a = 1
  constrainedCondition : Prop
  distributionLawClosed : distributionLaw
  constrainedConditionClosed : constrainedCondition

structure DistributionTheoremEvidence {G : DistributionIntegersBase} {F : ConstraintFamilyPackage G} (D : DistributionTheoremPackage F) where
  distributionLawClosed : D.distributionLaw
  constrainedConditionClosed : D.constrainedCondition

def DistributionTheoremClosed {G : DistributionIntegersBase} {F : ConstraintFamilyPackage G} (D : DistributionTheoremPackage F) : Prop :=
  D.distributionLaw ∧ D.constrainedCondition

theorem distribution_theorem_closed_from_evidence {G : DistributionIntegersBase} {F : ConstraintFamilyPackage G} (D : DistributionTheoremPackage F) (E : DistributionTheoremEvidence D) :
    DistributionTheoremClosed D := by
  exact And.intro E.distributionLawClosed E.constrainedConditionClosed

end DistributionIntegersSpecifiedMultiplicativeConstraintsLemma
end HautevilleHouse