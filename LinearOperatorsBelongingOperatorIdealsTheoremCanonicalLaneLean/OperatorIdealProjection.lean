import HautevilleHouse.LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean.OperatorIdealClass
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure OperatorIdealEndgameState where
  object : OperatorIdealAdmittedClass

def operatorIdealProjection : Projection OperatorIdealEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem operator_ideal_projection_idempotent (x : OperatorIdealEndgameState) :
    operatorIdealProjection.toFun (operatorIdealProjection.toFun x) = operatorIdealProjection.toFun x := by
  exact operatorIdealProjection.idempotent x

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse