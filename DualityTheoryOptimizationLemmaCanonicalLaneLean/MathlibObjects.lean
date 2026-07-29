import DualityTheoryOptimizationLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DualityTheoryOptimizationLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DualitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DualityAdmittedObject where
  space : DualitySpace
  convexProblem : Prop
  dualProblemFormulated : Prop
  closedProperConvex : Prop
  optimalValue : Type
  conclusion : closedProperConvex

structure DualityEndgameState where
  object : DualityAdmittedObject

def DualityWitnessClosed (O : DualityAdmittedObject) : Prop :=
  O.closedProperConvex

end DualityTheoryOptimizationLemmaCanonicalLaneLean
end HautevilleHouse