import EconomicsInternationalTradeCanonicalLaneLean.ArrowDebreuEquilibrium

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

structure UtilityFunction where
  domain : Type
  codomain : Type
  representation : domain → codomain

def UtilityPackage (U : UtilityFunction) : Prop :=
  U.representation ≠ ∅

structure UtilityEvidence (U : UtilityFunction) where
  representationExistsClosed : U.representation ≠ ∅

def UtilityClosed (U : UtilityFunction) : Prop :=
  U.representation ≠ ∅

theorem utility_closed_from_evidence
    (U : UtilityFunction) (Ev : UtilityEvidence U) :
    UtilityClosed U := by
  exact Ev.representationExistsClosed

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse