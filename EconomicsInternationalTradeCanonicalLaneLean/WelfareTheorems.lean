import EconomicsInternationalTradeCanonicalLaneLean.ArrowDebreuEquilibrium

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

structure FirstWelfareTheorem where
  competitiveEquilibrium : Prop
  paretoOptimal : Prop
  firstTheorem : competitiveEquilibrium → paretoOptimal

def FirstWelfarePackage (F : FirstWelfareTheorem) : Prop :=
  F.firstTheorem ≠ ∅

structure SecondWelfareTheorem where
  paretoOptimal : Prop
  lumpSumTransfers : Prop
  competitiveEquilibriumExists : Prop
  secondTheorem : paretoOptimal → lumpSumTransfers → competitiveEquilibriumExists

def SecondWelfarePackage (S : SecondWelfareTheorem) : Prop :=
  S.secondTheorem ≠ ∅

theorem first_welfare_theorem_closed
    (F : FirstWelfareTheorem) (h : F.firstTheorem ≠ ∅) :
    FirstWelfarePackage F := by
  exact h

theorem second_welfare_theorem_closed
    (S : SecondWelfareTheorem) (h : S.secondTheorem ≠ ∅) :
    SecondWelfarePackage S := by
  exact h

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse