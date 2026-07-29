import DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Distribution Constraints Package
-/

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean

structure DistributionConstraintsPackage where
  integerDistribution : Prop
  specifiedConstraints : Prop
  multiplicativeConstraints : Prop
  constraintClosure : Prop

structure DistributionConstraintsEvidence (D : DistributionConstraintsPackage) where
  integerDistributionClosed : D.integerDistribution
  specifiedConstraintsClosed : D.specifiedConstraints
  multiplicativeConstraintsClosed : D.multiplicativeConstraints
  constraintClosureClosed : D.constraintClosure

def DistributionConstraintsClosed (D : DistributionConstraintsPackage) : Prop :=
  D.integerDistribution ∧ D.specifiedConstraints ∧ D.multiplicativeConstraints ∧ D.constraintClosure

theorem distribution_constraints_closed_from_evidence
    (D : DistributionConstraintsPackage) (E : DistributionConstraintsEvidence D) :
    DistributionConstraintsClosed D := by
  exact And.intro E.integerDistributionClosed
    (And.intro E.specifiedConstraintsClosed
      (And.intro E.multiplicativeConstraintsClosed E.constraintClosureClosed))

end DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean
end HautevilleHouse