import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean

structure DistributionIntegersSet where
  integerRange : ℕ
  primeSet : List ℕ
  multiplicativeLowerBound : ℝ
  densityBound : ℝ

structure DistributionIntegersEvidence (D : DistributionIntegersSet) where
  integerRangeClosed : D.integerRange > 0
  primeSetClosed : ∀ p ∈ D.primeSet, Nat.Prime p
  multiplicativeLowerBoundClosed : D.multiplicativeLowerBound > 0
  densityBoundClosed : D.densityBound > 0 ∧ D.densityBound ≤ 1

def DistributionIntegersClosed (D : DistributionIntegersSet) : Prop :=
  D.integerRange > 0 ∧ (∀ p ∈ D.primeSet, Nat.Prime p) ∧
  D.multiplicativeLowerBound > 0 ∧ (D.densityBound > 0 ∧ D.densityBound ≤ 1)

theorem distribution_integers_closed_from_evidence (D : DistributionIntegersSet)
    (E : DistributionIntegersEvidence D) : DistributionIntegersClosed D := by
  exact And.intro E.integerRangeClosed
    (And.intro E.primeSetClosed
      (And.intro E.multiplicativeLowerBoundClosed E.densityBoundClosed))

end DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean
end HautevilleHouse