import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

structure AssetPricingPackage where
  assetSpace : Type u
  payoffSpace : Type v
  stateSpace : Type w
  pricingKernel : stateSpace → ℝ
  noArbitrage : Prop
  completeMarkets : Prop
  riskNeutralMeasureExists : Prop
  noArbitrageTerm : noArbitrage
  completeMarketsTerm : completeMarkets
  riskNeutralMeasureExistsTerm : riskNeutralMeasureExists

structure AssetPricingEvidence (A : AssetPricingPackage) where
  noArbitrageClosed : A.noArbitrage
  completeMarketsClosed : A.completeMarkets
  riskNeutralMeasureExistsClosed : A.riskNeutralMeasureExists

def AssetPricingClosed (A : AssetPricingPackage) : Prop :=
  A.noArbitrage ∧ A.completeMarkets ∧ A.riskNeutralMeasureExists

theorem asset_pricing_closed_from_evidence (A : AssetPricingPackage)
    (E : AssetPricingEvidence A) : AssetPricingClosed A := by
  exact And.intro E.noArbitrageClosed
    (And.intro E.completeMarketsClosed E.riskNeutralMeasureExistsClosed)

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse