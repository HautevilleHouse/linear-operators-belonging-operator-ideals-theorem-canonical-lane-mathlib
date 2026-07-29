import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

structure OperatorIdealClass where
  ideal : Type u
  membershipCriterion : Prop
  closedUnderAddition : Prop
  closedUnderMultiplication : Prop
  closedUnderAdjoint : Prop
  containsFiniteRank : Prop

structure OperatorIdealEvidence (I : OperatorIdealClass) where
  membershipCriterionClosed : I.membershipCriterion
  closedUnderAdditionClosed : I.closedUnderAddition
  closedUnderMultiplicationClosed : I.closedUnderMultiplication
  closedUnderAdjointClosed : I.closedUnderAdjoint
  containsFiniteRankClosed : I.containsFiniteRank

def OperatorIdealClosed (I : OperatorIdealClass) : Prop :=
  I.membershipCriterion ∧ I.closedUnderAddition ∧ I.closedUnderMultiplication ∧ I.closedUnderAdjoint ∧ I.containsFiniteRank

theorem operator_ideal_closed_from_evidence (I : OperatorIdealClass) (E : OperatorIdealEvidence I) : OperatorIdealClosed I := by
  exact And.intro E.membershipCriterionClosed
    (And.intro E.closedUnderAdditionClosed
      (And.intro E.closedUnderMultiplicationClosed
        (And.intro E.closedUnderAdjointClosed E.containsFiniteRankClosed)))

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse