import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

structure CalkinAlgebra where
  algebra : Type u
  ideal : Type v
  quotient : Type w
  exactSequenceHolds : Prop
  fredholmIndexDefined : Prop

def CalkinAlgebraEvidence (C : CalkinAlgebra) : Prop :=
  C.exactSequenceHolds ∧ C.fredholmIndexDefined

def CalkinAlgebraClosed (C : CalkinAlgebra) : Prop :=
  C.exactSequenceHolds ∧ C.fredholmIndexDefined

theorem calkin_algebra_closed (C : CalkinAlgebra) (E : CalkinAlgebraEvidence C) :
    CalkinAlgebraClosed C := by
  exact And.intro E.1 E.2

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse