import HautevilleHouse.LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean.OperatorIdealGateLemmas

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

def ConstrainedOperatorIdealClosure (A : OperatorIdealAdmittedClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_operator_ideal_endgame (A : OperatorIdealAdmittedClass) :
    ConstrainedOperatorIdealClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse