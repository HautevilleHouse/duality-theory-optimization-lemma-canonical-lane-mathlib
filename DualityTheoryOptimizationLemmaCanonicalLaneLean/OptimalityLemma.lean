import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationLemmaCanonicalLaneLean

structure OptimalityLemmaPackage (D : DualityGapCorePackage) (L : LagrangianDualityPackage D) (S : SubgradientConditionPackage D L) where
  primalOptimalImpliesDualOptimal : Prop
  dualOptimalImpliesPrimalOptimal : Prop
  zeroDualityGapCharacterization : Prop
  primalAttainsOptimum : Prop
  dualAttainsOptimum : Prop

structure OptimalityLemmaEvidence (D : DualityGapCorePackage) (L : LagrangianDualityPackage D) (S : SubgradientConditionPackage D L) (O : OptimalityLemmaPackage D L S) where
  primalOptimalImpliesDualOptimalClosed : O.primalOptimalImpliesDualOptimal
  dualOptimalImpliesPrimalOptimalClosed : O.dualOptimalImpliesPrimalOptimal
  zeroDualityGapCharacterizationClosed : O.zeroDualityGapCharacterization
  primalAttainsOptimumClosed : O.primalAttainsOptimum
  dualAttainsOptimumClosed : O.dualAttainsOptimum

def OptimalityLemmaClosed (D : DualityGapCorePackage) (L : LagrangianDualityPackage D) (S : SubgradientConditionPackage D L) (O : OptimalityLemmaPackage D L S) : Prop :=
  O.primalOptimalImpliesDualOptimal ∧ O.dualOptimalImpliesPrimalOptimal ∧ O.zeroDualityGapCharacterization ∧ O.primalAttainsOptimum ∧ O.dualAttainsOptimum

theorem optimality_lemma_closed_from_evidence (D : DualityGapCorePackage) (L : LagrangianDualityPackage D) (S : SubgradientConditionPackage D L) (O : OptimalityLemmaPackage D L S) (E : OptimalityLemmaEvidence D L S O) :
    OptimalityLemmaClosed D L S O := by
  exact And.intro E.primalOptimalImpliesDualOptimalClosed
    (And.intro E.dualOptimalImpliesPrimalOptimalClosed
      (And.intro E.zeroDualityGapCharacterizationClosed
        (And.intro E.primalAttainsOptimumClosed E.dualAttainsOptimumClosed)))

end DualityTheoryOptimizationLemmaCanonicalLaneLean
end HautevilleHouse