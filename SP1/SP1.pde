ArrayList<String> ordListe = new ArrayList<String>();
String valgtOrd;
int antalForsøg = 5;
String gættetOrd = "";

void setup() {
  size(400, 200);
  
  // Tilføj ord til ArrayList'en
  ordListe.add("computer");
  ordListe.add("programmering");
  ordListe.add("spil");
  ordListe.add("kreativitet");
  ordListe.add("udfordring");
  
  // Vælg et tilfældigt ord fra ArrayList'en
  valgtOrd = vælgTilfældigtOrd(ordListe);
  println("Det valgte ord er: " + valgtOrd);
}

String vælgTilfældigtOrd(ArrayList<String> liste) {
  int indeks = int(random(liste.size()));
  return liste.get(indeks);
}

void draw() {
  background(220);
  fill(0);
  textSize(16);
  
  // Vis ordet med kun de gættede bogstaver
  String vistOrd = "";
  for (int i = 0; i < valgtOrd.length(); i++) {
    char bogstav = valgtOrd.charAt(i);
    if (gættetOrd.contains(String.valueOf(bogstav))) {
      vistOrd += bogstav;
    } else {
      vistOrd += "_";
    }
    vistOrd += " ";
  }
  text(vistOrd, 50, 100);
  
  // Vis antallet af forsøg
  text("Forsøg tilbage: " + antalForsøg, 50, 150);
  
  // Tjek om spillet er slut
  if (vistOrd.equals(valgtOrd) || antalForsøg == 0) {
    if (vistOrd.equals(valgtOrd)) {
      text("Du har vundet!", 50, 50);
    } else {
      text("Du har tabt. Det valgte ord var: " + valgtOrd, 50, 50);
    }
    noLoop(); // Stop spillet
  }
}

void keyPressed() {
  if (key >= 'a' && key <= 'z') {
    char gættetBogstav = key;
    if (!gættetOrd.contains(String.valueOf(gættetBogstav))) {
      gættetOrd += gættetBogstav;
      if (valgtOrd.indexOf(gættetBogstav) == -1) {
        antalForsøg--; // Reducer antallet af forsøg, hvis det gættede bogstav ikke er i ordet.
      }
    }
  }
}
