import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

structure KrugmanNewTradeTheoryPackage where
  increasingReturnsToScale : Type
  productDifferentiation : Type
  monopolisticCompetition : Type
  tradeVolume : Type
  intraIndustryTradeExists : Prop
  welfareGainsFromVariety : Prop
  homeMarketEffectPresent : Prop
  gravityEquationDerived : Prop

structure KrugmanNewTradeTheoryEvidence (K : KrugmanNewTradeTheoryPackage) where
  intraIndustryTradeExistsClosed : K.intraIndustryTradeExists
  welfareGainsFromVarietyClosed : K.welfareGainsFromVariety
  homeMarketEffectPresentClosed : K.homeMarketEffectPresent
  gravityEquationDerivedClosed : K.gravityEquationDerived

def KrugmanNewTradeTheoryClosed (K : KrugmanNewTradeTheoryPackage) : Prop :=
  K.intraIndustryTradeExists ∧ K.welfareGainsFromVariety ∧ K.homeMarketEffectPresent ∧ K.gravityEquationDerived

theorem krugman_new_trade_theory_closed_from_evidence
    (K : KrugmanNewTradeTheoryPackage) (E : KrugmanNewTradeTheoryEvidence K) :
    KrugmanNewTradeTheoryClosed K := by
  exact And.intro E.intraIndustryTradeExistsClosed
    (And.intro E.welfareGainsFromVarietyClosed
      (And.intro E.homeMarketEffectPresentClosed E.gravityEquationDerivedClosed))

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse