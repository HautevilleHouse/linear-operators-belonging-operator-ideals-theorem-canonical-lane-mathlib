import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

structure OperatorIdealPackage where
  idealType : Type u
  containmentCondition : Prop
  stabilityUnderComposition : Prop
  stabilityUnderSum : Prop
  stabilityUnderScalar : Prop
  idealTypeDefined : idealType
  containmentConditionClosed : containmentCondition
  stabilityUnderCompositionClosed : stabilityUnderComposition
  stabilityUnderSumClosed : stabilityUnderSum
  stabilityUnderScalarClosed : stabilityUnderScalar

structure OperatorIdealEvidence (I : OperatorIdealPackage) where
  containmentConditionClosed : I.containmentCondition
  stabilityUnderCompositionClosed : I.stabilityUnderComposition
  stabilityUnderSumClosed : I.stabilityUnderSum
  stabilityUnderScalarClosed : I.stabilityUnderScalar

def OperatorIdealClosed (I : OperatorIdealPackage) : Prop :=
  I.containmentCondition ∧ I.stabilityUnderComposition ∧ I.stabilityUnderSum ∧ I.stabilityUnderScalar

theorem operator_ideal_closed_from_evidence (I : OperatorIdealPackage)
    (E : OperatorIdealEvidence I) : OperatorIdealClosed I := by
  exact And.intro E.containmentConditionClosed
    (And.intro E.stabilityUnderCompositionClosed
      (And.intro E.stabilityUnderSumClosed E.stabilityUnderScalarClosed))

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse