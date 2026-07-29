import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

structure HilbertSchmidtClass where
  innerProductSpace : Type u
  hsCondition : Prop
  completeness : Prop
  idealProperty : Prop

structure HilbertSchmidtEvidence (H : HilbertSchmidtClass) where
  hsConditionClosed : H.hsCondition
  completenessClosed : H.completeness
  idealPropertyClosed : H.idealProperty

def HilbertSchmidtClosed (H : HilbertSchmidtClass) : Prop :=
  H.hsCondition ∧ H.completeness ∧ H.idealProperty

theorem hilbert_schmidt_closed_from_evidence (H : HilbertSchmidtClass) (E : HilbertSchmidtEvidence H) : HilbertSchmidtClosed H := by
  exact And.intro E.hsConditionClosed
    (And.intro E.completenessClosed E.idealPropertyClosed)

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse