import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

structure HeckscherOhlinPackage where
  countries : Type u
  factors : Type v
  goods : Type w
  factorAbundance : Prop
  factorIntensity : Prop
  tradePattern : Prop
  theoremProof : Prop

structure HeckscherOhlinEvidence (P : HeckscherOhlinPackage) where
  factorAbundanceClosed : P.factorAbundance
  factorIntensityClosed : P.factorIntensity
  tradePatternClosed : P.tradePattern
  theoremProofClosed : P.theoremProof

def HeckscherOhlinClosed (P : HeckscherOhlinPackage) : Prop :=
  P.factorAbundance ∧ P.factorIntensity ∧ P.tradePattern ∧ P.theoremProof

theorem heckscher_ohlin_closed_from_evidence
    (P : HeckscherOhlinPackage) (E : HeckscherOhlinEvidence P) :
    HeckscherOhlinClosed P := by
  exact And.intro E.factorAbundanceClosed
    (And.intro E.factorIntensityClosed
      (And.intro E.tradePatternClosed E.theoremProofClosed))

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse