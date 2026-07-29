import DualityTheoryOptimizationLemmaCanonicalLaneLean.SaddlePoint

/-!
# Convex Conjugate Package
-/

namespace HautevilleHouse
namespace DualityTheoryOptimizationLemmaCanonicalLaneLean

structure ConvexConjugatePackage where
  primalFunction : Type u
  conjugateFunction : Type v
  biconjugate : Type w
  fenchelInequality : Prop

structure ConvexConjugateEvidence (C : ConvexConjugatePackage) where
  fenchelInequalityClosed : C.fenchelInequality

def ConvexConjugateClosed (C : ConvexConjugatePackage) : Prop :=
  C.fenchelInequality

theorem convex_conjugate_closed_from_evidence (C : ConvexConjugatePackage) (E : ConvexConjugateEvidence C) :
    ConvexConjugateClosed C := by
  exact E.fenchelInequalityClosed

end DualityTheoryOptimizationLemmaCanonicalLaneLean
end HautevilleHouse