import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationLemmaCanonicalLaneLean

structure FenchelRockafellarPackage where
  perturbationFunction : Type u
  primalProblem : Type v
  dualProblem : Type w
  strongDualityUnderRegularity : Prop
  epsilonSubdifferentialCalculus : Prop

structure FenchelRockafellarEvidence (F : FenchelRockafellarPackage) where
  strongDualityUnderRegularityClosed : F.strongDualityUnderRegularity
  epsilonSubdifferentialCalculusClosed : F.epsilonSubdifferentialCalculus

def FenchelRockafellarClosed (F : FenchelRockafellarPackage) : Prop :=
  F.strongDualityUnderRegularity ∧ F.epsilonSubdifferentialCalculus

theorem fenchel_rockafellar_closed_from_evidence (F : FenchelRockafellarPackage) (E : FenchelRockafellarEvidence F) :
    FenchelRockafellarClosed F := by
  exact And.intro E.strongDualityUnderRegularityClosed E.epsilonSubdifferentialCalculusClosed

end DualityTheoryOptimizationLemmaCanonicalLaneLean
end HautevilleHouse