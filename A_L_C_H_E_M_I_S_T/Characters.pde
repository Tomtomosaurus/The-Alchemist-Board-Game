void characters() {
  if (FatimaWin==false && AlchemistWin==false && EnglishmanWin==false) {
    Santiago();
  }
  if (SantiagoWin==false && AlchemistWin==false && EnglishmanWin==false) {
    Fatima();
  }
  if (SantiagoWin==false && FatimaWin==false && EnglishmanWin==false) {
    Alchemist();
  }
  if (SantiagoWin==false && FatimaWin==false && AlchemistWin==false) {
    Englishman();
  }
}
void charactersMovement() {
  movementAlchemist();
  movementEnglishman();
  movementFatima();
  movementSantiago();
}
