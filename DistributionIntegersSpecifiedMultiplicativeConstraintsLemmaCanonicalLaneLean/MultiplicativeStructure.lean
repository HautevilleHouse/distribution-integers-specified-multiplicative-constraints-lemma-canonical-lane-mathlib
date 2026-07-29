import DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean.DistributionConstraints

/-!
# Multiplicative Structure Package
-/

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean

structure MultiplicativeStructurePackage {D : DistributionConstraintsPackage} where
  monoidStructure : Prop
  multiplicativeEval : Prop
  distributionPreserved : Prop

structure MultiplicativeStructureEvidence {D : DistributionConstraintsPackage}
    (M : MultiplicativeStructurePackage D) where
  monoidStructureClosed : M.monoidStructure
  multiplicativeEvalClosed : M.multiplicativeEval
  distributionPreservedClosed : M.distributionPreserved

def MultiplicativeStructureClosed {D : DistributionConstraintsPackage}
    (M : MultiplicativeStructurePackage D) : Prop :=
  M.monoidStructure ∧ M.multiplicativeEval ∧ M.distributionPreserved

theorem multiplicative_structure_closed_from_evidence
    {D : DistributionConstraintsPackage} (M : MultiplicativeStructurePackage D)
    (E : MultiplicativeStructureEvidence M) : MultiplicativeStructureClosed M := by
  exact And.intro E.monoidStructureClosed
    (And.intro E.multiplicativeEvalClosed E.distributionPreservedClosed)

end DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean
end HautevilleHouse