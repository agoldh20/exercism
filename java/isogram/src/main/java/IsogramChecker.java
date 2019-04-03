import java.util.*;

class IsogramChecker {

    boolean isIsogram(String phrase) {
      Set<Character> splitPhrase = new HashSet<>();

      for (int index = 0; index < phrase.length(); index++) {
        char letter = phrase.charAt(index);
        letter = Character.toLowerCase(letter);

        if (letter == ' ' || letter == '-') {
          continue;
        }

        if (splitPhrase.contains(letter)) {
          return false;
        } else {
          splitPhrase.add(letter);
        }
      }
      return true;
    }
}
