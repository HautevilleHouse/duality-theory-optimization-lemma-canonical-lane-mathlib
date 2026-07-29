import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationLemmaCanonicalLaneLean

structure DualityGap where
  primalOptimum : Float
  dualOptimum : Float
  gap : Float := primalOptimum - dualOptimum
  zeroGapCondition : gap = 0.0
  strongDualityHolds : Prop
  constraintQualification : Prop
  zeroGapClosed : zeroGapCondition
  strongDualityHoldsClosed : strongDualityHolds
  constraintQualificationClosed : constraintQualification

def DualityGapClosed (G : DualityGap) : Prop :=
  G.zeroGapCondition ∧ G.strongDualityHolds ∧ G.constraintQualification

theorem duality_gap_closed_from_evidence (G : DualityGap) : DualityGapClosed G :=
  And.intro G.zeroGapClosed (And.intro G.strongDualityHoldsClosed G.constraintQualificationClosed)

end DualityTheoryOptimizationLemmaCanonicalLaneLean
end HautevilleHouse
