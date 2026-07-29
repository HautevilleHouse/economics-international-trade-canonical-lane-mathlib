import canonicalLaneMathlib.AdmissibleClass
import EconomicsInternationalTradeCanonicalLaneLean.UtilityTheoryPackage

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

structure TradeEquilibriumPackage (U : UtilityTheoryPackage) where
  countrySet : Type u
  productionSet : countrySet → Type v
  factorEndowments : countrySet → Type w
  tradeMatrix : countrySet → countrySet → ℝ
  arePreferencesAdditivelySeparable : Prop
  factorPriceEqualization : Prop
  heckscherOhlinTheoremHolds : Prop
  arePreferencesAdditivelySeparableTerm : arePreferencesAdditivelySeparable
  factorPriceEqualizationTerm : factorPriceEqualization
  heckscherOhlinTheoremHoldsTerm : heckscherOhlinTheoremHolds

structure TradeEquilibriumEvidence {U : UtilityTheoryPackage}
    (T : TradeEquilibriumPackage U) where
  arePreferencesAdditivelySeparableClosed : T.arePreferencesAdditivelySeparable
  factorPriceEqualizationClosed : T.factorPriceEqualization
  heckscherOhlinTheoremHoldsClosed : T.heckscherOhlinTheoremHolds

def TradeEquilibriumClosed {U : UtilityTheoryPackage}
    (T : TradeEquilibriumPackage U) : Prop :=
  T.arePreferencesAdditivelySeparable ∧ T.factorPriceEqualization ∧ T.heckscherOhlinTheoremHolds

theorem trade_equilibrium_closed_from_evidence {U : UtilityTheoryPackage}
    (T : TradeEquilibriumPackage U) (E : TradeEquilibriumEvidence T) :
    TradeEquilibriumClosed T := by
  exact And.intro E.arePreferencesAdditivelySeparableClosed
    (And.intro E.factorPriceEqualizationClosed E.heckscherOhlinTheoremHoldsClosed)

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse