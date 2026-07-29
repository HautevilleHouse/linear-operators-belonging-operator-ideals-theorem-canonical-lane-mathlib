import HautevilleHouse.LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean.OperatorIdealProperties

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

structure SchattenIdealPackage {O : OperatorIdealAdmittedObject}
    (P : OperatorIdealPropertiesPackage O) where
  exponent : ℝ
  finiteTraceCondition : Prop
  holderInequality : Prop
  dualityProperty : Prop

structure SchattenIdealEvidence {O : OperatorIdealAdmittedObject}
    {P : OperatorIdealPropertiesPackage O}
    (S : SchattenIdealPackage P) where
  exponentClosed : S.exponent > 0
  finiteTraceConditionClosed : S.finiteTraceCondition
  holderInequalityClosed : S.holderInequality
  dualityPropertyClosed : S.dualityProperty

def SchattenIdealClosed {O : OperatorIdealAdmittedObject}
    {P : OperatorIdealPropertiesPackage O}
    (S : SchattenIdealPackage P) : Prop :=
  (S.exponent > 0) ∧ S.finiteTraceCondition ∧
  S.holderInequality ∧ S.dualityProperty

theorem schatten_ideal_closed_from_evidence
    {O : OperatorIdealAdmittedObject}
    {P : OperatorIdealPropertiesPackage O}
    (S : SchattenIdealPackage P) (E : SchattenIdealEvidence S) :
    SchattenIdealClosed S := by
  exact And.intro E.exponentClosed
    (And.intro E.finiteTraceConditionClosed
      (And.intro E.holderInequalityClosed E.dualityPropertyClosed))

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse