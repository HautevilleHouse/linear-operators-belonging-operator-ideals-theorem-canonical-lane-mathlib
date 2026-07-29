import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

structure SchattenIdeal where
  exponent : ℝ
  normDefinition : Type
  closedUnderAddition : Prop
  closedUnderScalarMultiplication : Prop
  closedUnderComposition : Prop

def SchattenIdealEvidence (S : SchattenIdeal) : Prop :=
  S.closedUnderAddition ∧ S.closedUnderScalarMultiplication ∧ S.closedUnderComposition

def SchattenIdealClosed (S : SchattenIdeal) : Prop :=
  S.closedUnderAddition ∧ S.closedUnderScalarMultiplication ∧ S.closedUnderComposition

theorem schatten_ideal_closed (S : SchattenIdeal) (E : SchattenIdealEvidence S) :
    SchattenIdealClosed S := by
  exact And.intro E.1 (And.intro E.2.1 E.2.2)

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse