import DualityTheoryOptimizationLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DualityTheoryOptimizationLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : DualityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DualityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DualityTheoryOptimizationLemmaCanonicalLaneLean
end HautevilleHouse