import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

structure OperatorIdealAdmittedObject where
  space : Type u
  norm : space → ℝ
  idealProperty : Prop
  conclusion : idealProperty

structure OperatorIdealClass where
  ideal : Type u
  membershipTest : (α → β) → Prop
  idealClosedUnderAddition : Prop
  idealClosedUnderScalarMultiplication : Prop
  idealClosedUnderComposition : Prop

structure OperatorIdealEvidence (I : OperatorIdealClass) where
  idealClosedUnderAdditionTerm : I.idealClosedUnderAddition
  idealClosedUnderScalarMultiplicationTerm : I.idealClosedUnderScalarMultiplication
  idealClosedUnderCompositionTerm : I.idealClosedUnderComposition

def OperatorIdealClosed (I : OperatorIdealClass) : Prop :=
  I.idealClosedUnderAddition ∧ I.idealClosedUnderScalarMultiplication ∧ I.idealClosedUnderComposition

theorem operator_ideal_closed_from_evidence (I : OperatorIdealClass) (E : OperatorIdealEvidence I) :
    OperatorIdealClosed I := by
  exact And.intro E.idealClosedUnderAdditionTerm
    (And.intro E.idealClosedUnderScalarMultiplicationTerm
      E.idealClosedUnderCompositionTerm)

def OperatorIdealWitnessClosed (O : OperatorIdealAdmittedObject) : Prop :=
  O.idealProperty

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse