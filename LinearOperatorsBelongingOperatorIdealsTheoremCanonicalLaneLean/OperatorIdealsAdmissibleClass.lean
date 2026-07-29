import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

structure OperatorIdealAdmittedObject where
  underlyingSpace : Type u
  normedSpace : NormedAddCommGroup underlyingSpace
  operators : Set (underlyingSpace →ₗ[ℝ] underlyingSpace)
  idealAxioms : Prop
  conclusion : idealAxioms

def OperatorIdealWitnessClosed (O : OperatorIdealAdmittedObject) : Prop :=
  O.idealAxioms

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse