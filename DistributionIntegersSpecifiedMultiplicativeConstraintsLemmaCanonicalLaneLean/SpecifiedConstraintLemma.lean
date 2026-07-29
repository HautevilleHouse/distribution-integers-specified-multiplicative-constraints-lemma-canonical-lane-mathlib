import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean

structure SpecifiedConstraintLemmaPackage {M : MultiplicativeConstraintsPackage} where
  constraintList : List M.specifiedMultiplicativeConstraints
  lemmaStatement : ∀ (a b : M.integerDomain), (∃ (c : M.integerDomain), (a, b, c) ∈ constraintList) → M.multiplication a b = 
    (match (constraintList.find? (λ (x : M.integerDomain × M.integerDomain × M.integerDomain) => x.1 = a ∧ x.2.1 = b)) with
    | some (_, _, c) => c
    | none => 0)
  lemmaProof : lemmaStatement

def SpecifiedConstraintLemmaClosed {M : MultiplicativeConstraintsPackage} (S : SpecifiedConstraintLemmaPackage M) : Prop :=
  S.lemmaStatement

end DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean
end HautevilleHouse