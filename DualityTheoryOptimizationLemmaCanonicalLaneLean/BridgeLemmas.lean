import DualityTheoryOptimizationLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DualityTheoryOptimizationLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DualityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DualityTheoryOptimizationLemmaCanonicalLaneLean
end HautevilleHouse