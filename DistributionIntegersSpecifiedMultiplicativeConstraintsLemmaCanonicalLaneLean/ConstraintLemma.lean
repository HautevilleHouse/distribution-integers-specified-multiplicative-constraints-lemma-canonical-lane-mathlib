import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean.MultiplicativeConstraintSpec
import HautevilleHouse.DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean.DistributionStructure

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean

structure ConstraintLemmaPackage {C : MultiplicativeConstraintSet} {D : DistributionIntegersSet}
    (H : MultiplicativeConstraintClosed C) (G : DistributionIntegersClosed D) where
  multiplicativeEstimate : Prop
  distributionBoundFromConstraint : Prop
  uniformBound : Prop

structure ConstraintLemmaEvidence {C : MultiplicativeConstraintSet} {D : DistributionIntegersSet}
    {H : MultiplicativeConstraintClosed C} {G : DistributionIntegersClosed D}
    (P : ConstraintLemmaPackage H G) where
  multiplicativeEstimateClosed : P.multiplicativeEstimate
  distributionBoundFromConstraintClosed : P.distributionBoundFromConstraint
  uniformBoundClosed : P.uniformBound

def ConstraintLemmaClosed {C : MultiplicativeConstraintSet} {D : DistributionIntegersSet}
    {H : MultiplicativeConstraintClosed C} {G : DistributionIntegersClosed D}
    (P : ConstraintLemmaPackage H G) : Prop :=
  P.multiplicativeEstimate ∧ P.distributionBoundFromConstraint ∧ P.uniformBound

theorem constraint_lemma_closed_from_evidence
    {C : MultiplicativeConstraintSet} {D : DistributionIntegersSet}
    {H : MultiplicativeConstraintClosed C} {G : DistributionIntegersClosed D}
    (P : ConstraintLemmaPackage H G) (E : ConstraintLemmaEvidence P) :
    ConstraintLemmaClosed P := by
  exact And.intro E.multiplicativeEstimateClosed
    (And.intro E.distributionBoundFromConstraintClosed E.uniformBoundClosed)

end DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean
end HautevilleHouse