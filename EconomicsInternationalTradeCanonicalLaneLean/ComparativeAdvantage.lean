import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

structure ComparativeAdvantagePackage where
  countryAEndowment : Prop
  countryBEndowment : Prop
  goodXTechnology : Prop
  goodYTechnology : Prop
  opportunityCostRatioA : Nat
  opportunityCostRatioB : Nat
  autarkyPrices : Prop
  worldPrices : Prop
  gainsFromTrade : Prop

structure ComparativeAdvantageEvidence (C : ComparativeAdvantagePackage) where
  countryAEndowmentClosed : C.countryAEndowment
  countryBEndowmentClosed : C.countryBEndowment
  goodXTechnologyClosed : C.goodXTechnology
  goodYTechnologyClosed : C.goodYTechnology
  autarkyPricesClosed : C.autarkyPrices
  worldPricesClosed : C.worldPrices
  gainsFromTradeClosed : C.gainsFromTrade

def ComparativeAdvantageClosed (C : ComparativeAdvantagePackage) : Prop :=
  C.countryAEndowment ∧ C.countryBEndowment ∧ C.goodXTechnology ∧ C.goodYTechnology ∧ C.autarkyPrices ∧ C.worldPrices ∧ C.gainsFromTrade

theorem comparative_advantage_closed_from_evidence (C : ComparativeAdvantagePackage) (E : ComparativeAdvantageEvidence C) : ComparativeAdvantageClosed C :=
  And.intro E.countryAEndowmentClosed
    (And.intro E.countryBEndowmentClosed
      (And.intro E.goodXTechnologyClosed
        (And.intro E.goodYTechnologyClosed
          (And.intro E.autarkyPricesClosed
            (And.intro E.worldPricesClosed E.gainsFromTradeClosed)))))

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse