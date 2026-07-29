import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean

structure ConstraintsLemmaPackage {G : MultiplicativeConstraintsPackage} where
  distributionProperties : Prop
  lemmaBound : Prop
  multiplicativeBounds : Prop

structure ConstraintsLemmaEvidence {G : MultiplicativeConstraintsPackage}
    (C : ConstraintsLemmaPackage G) where
  distributionPropertiesClosed : C.distributionProperties
  lemmaBoundClosed : C.lemmaBound
  multiplicativeBoundsClosed : C.multiplicativeBounds

def ConstraintsLemmaClosed {G : MultiplicativeConstraintsPackage}
    (C : ConstraintsLemmaPackage G) : Prop :=
  C.distributionProperties ∧ C.lemmaBound ∧ C.multiplicativeBounds

theorem constraints_lemma_closed_from_evidence
    {G : MultiplicativeConstraintsPackage} (C : ConstraintsLemmaPackage G)
    (E : ConstraintsLemmaEvidence C) : ConstraintsLemmaClosed C := by
  exact And.intro E.distributionPropertiesClosed
    (And.intro E.lemmaBoundClosed E.multiplicativeBoundsClosed)

end DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean
end HautevilleHouse
