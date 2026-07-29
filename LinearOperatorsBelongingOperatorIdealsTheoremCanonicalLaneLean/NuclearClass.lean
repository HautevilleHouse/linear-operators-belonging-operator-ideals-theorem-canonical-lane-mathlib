import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean.SchattenClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

structure NuclearClass where
  traceCondition : Prop
  finiteRankApproximation : Prop
  traceDuality : Prop
  idealProperty : Prop

structure NuclearClassEvidence (N : NuclearClass) where
  traceConditionClosed : N.traceCondition
  finiteRankApproximationClosed : N.finiteRankApproximation
  traceDualityClosed : N.traceDuality
  idealPropertyClosed : N.idealProperty

def NuclearClassClosed (N : NuclearClass) : Prop :=
  N.traceCondition ∧ N.finiteRankApproximation ∧ N.traceDuality ∧ N.idealProperty

theorem nuclear_class_closed_from_evidence (N : NuclearClass) (E : NuclearClassEvidence N) : NuclearClassClosed N := by
  exact And.intro E.traceConditionClosed
    (And.intro E.finiteRankApproximationClosed
      (And.intro E.traceDualityClosed E.idealPropertyClosed))

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse