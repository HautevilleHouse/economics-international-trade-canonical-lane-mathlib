import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

structure HeckscherOhlinPackage where
  factorAbundance : Prop
  factorIntensity : Prop
  tradePattern : Prop
  factorPriceEqualization : Prop
  commodityPriceEqualization : Prop

structure HeckscherOhlinEvidence (H : HeckscherOhlinPackage) where
  factorAbundanceClosed : H.factorAbundance
  factorIntensityClosed : H.factorIntensity
  tradePatternClosed : H.tradePattern
  factorPriceEqualizationClosed : H.factorPriceEqualization
  commodityPriceEqualizationClosed : H.commodityPriceEqualization

def HeckscherOhlinClosed (H : HeckscherOhlinPackage) : Prop :=
  H.factorAbundance ∧ H.factorIntensity ∧ H.tradePattern ∧ H.factorPriceEqualization ∧ H.commodityPriceEqualization

theorem heckscher_ohlin_closed_from_evidence (H : HeckscherOhlinPackage) (E : HeckscherOhlinEvidence H) : HeckscherOhlinClosed H := by
  exact And.intro E.factorAbundanceClosed (And.intro E.factorIntensityClosed (And.intro E.tradePatternClosed (And.intro E.factorPriceEqualizationClosed E.commodityPriceEqualizationClosed)))

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse