class PigLatinTranslator {
  String translate(String input) {
    String returnString = new String();
    List vowels = new List();
    vowels = ["a", "e", "i", "o", "u"]

    char first = input.charAt(0);

    returnString = input += "ay";

    return returnString;
  }
}