String[] artists = {
  "Tobias Rahim",
  "Scarlet Pleasure",
  "Johnny Deluxe",
  "Ude af kontrol",
  "Shaggy"
};

String[] songs = {
  "Stor mand",
  "What a life",
  "Vi Vil Ha Mer",
  "Næ",
  "It Wasn't Me"
};

void setup() {
  for (int i = 0; i < artists.length; i++) {
    print(i + 1 + ". " + artists[i] + " : \"" + songs[i] + "\"\n");
  }
}
