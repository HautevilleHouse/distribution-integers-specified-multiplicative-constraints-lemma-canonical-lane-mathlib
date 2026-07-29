import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean

structure MultiplicativeConstraintPackage where
  factorisation : Type
  primeSet : Type
  multiplicativeBound : Prop
  divisorClosedUnderMultiplication : Prop
  valuationCompatible : Prop

structure MultiplicativeConstraintEvidence (M : MultiplicativeConstraintPackage) where
  multiplicativeBoundClosed : M.multiplicativeBound
  divisorClosedUnderMultiplicationClosed : M.divisorClosedUnderMultiplication
  valuationCompatibleClosed : M.valuationCompatible

def MultiplicativeConstraintClosed (M : MultiplicativeConstraintPackage) : Prop :=
  M.multiplicativeBound ∧ M.divisorClosedUnderMultiplication ∧ M.valuationCompatible

theorem multiplicative_constraint_closed_from_evidence (M : MultiplicativeConstraintPackage)
    (E : MultiplicativeConstraintEvidence M) : MultiplicativeConstraintClosed M := by
  exact And.intro E.multiplicativeBoundClosed
    (And.intro E.divisorClosedUnderMultiplicationClosed E.valuationCompatibleClosed)

end DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean
end HautevilleHouse
