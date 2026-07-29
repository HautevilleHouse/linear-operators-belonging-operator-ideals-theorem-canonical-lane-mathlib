import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

structure SchattenClass (p : ℝ) where
  index : ℝ
  membershipCondition : Prop
  holderInequality : Prop
  interpolationProperty : Prop
  dualityProperty : Prop

structure SchattenClassEvidence {p : ℝ} (S : SchattenClass p) where
  membershipConditionClosed : S.membershipCondition
  holderInequalityClosed : S.holderInequality
  interpolationPropertyClosed : S.interpolationProperty
  dualityPropertyClosed : S.dualityProperty

def SchattenClassClosed {p : ℝ} (S : SchattenClass p) : Prop :=
  S.membershipCondition ∧ S.holderInequality ∧ S.interpolationProperty ∧ S.dualityProperty

theorem schatten_class_closed_from_evidence {p : ℝ} (S : SchattenClass p) (E : SchattenClassEvidence S) : SchattenClassClosed S := by
  exact And.intro E.membershipConditionClosed
    (And.intro E.holderInequalityClosed
      (And.intro E.interpolationPropertyClosed E.dualityPropertyClosed))

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse