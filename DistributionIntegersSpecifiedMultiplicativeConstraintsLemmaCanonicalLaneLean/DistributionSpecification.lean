import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean

structure DistributionSpecificationPackage where
  integerSet : Type
  densityFunction : Type
  specifiedValues : Prop
  finiteMoment : Prop
  concentrationInequality : Prop

structure DistributionSpecificationEvidence (D : DistributionSpecificationPackage) where
  specifiedValuesClosed : D.specifiedValues
  finiteMomentClosed : D.finiteMoment
  concentrationInequalityClosed : D.concentrationInequality

def DistributionSpecificationClosed (D : DistributionSpecificationPackage) : Prop :=
  D.specifiedValues ∧ D.finiteMoment ∧ D.concentrationInequality

theorem distribution_specification_closed_from_evidence (D : DistributionSpecificationPackage)
    (E : DistributionSpecificationEvidence D) : DistributionSpecificationClosed D := by
  exact And.intro E.specifiedValuesClosed
    (And.intro E.finiteMomentClosed E.concentrationInequalityClosed)

end DistributionIntegersSpecifiedMultiplicativeConstraintsLemmaCanonicalLaneLean
end HautevilleHouse
