import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsLemma

structure DistributionIntegersBase where
  integerSet : Type u
  additiveGroup : AddGroup integerSet
  specifiedMultiplicativeConstraint : Prop
  distributionProperty : Prop
  constraintClosedWitness : specifiedMultiplicativeConstraint
  distributionClosedWitness : distributionProperty

structure DistributiveAdmittedObject where
  base : DistributionIntegersBase
  admissible : Prop
  remainderRecorded : Prop
  conclusion : admissible ∧ remainderRecorded

def DistributiveWitnessClosed (O : DistributiveAdmittedObject) : Prop :=
  O.admissible ∧ O.remainderRecorded

end DistributionIntegersSpecifiedMultiplicativeConstraintsLemma
end HautevilleHouse