/*
 * Small programm to combine syllables, where some syllables
 * are used only as suffix/prefix
 * 1. Install java SDK
 * 3. Run: javac NameVoting.java && java NameVoting '[Pre "neo", Suf "master", Pre "turbo", Uni "leo", Suf "3000"]'
 **/
 
import java.lang.String;
import java.util.List;
import java.util.LinkedList;
public class NameVoting {


  public static void main(String[] args) {
    System.out.println(NameVoting.combine(args[0]));
  }

  public static List<String> combine(String input) {
    List<String> ps = new LinkedList<String>();
    List<String> ss = new LinkedList<String>();

    for (String word : input.replaceAll("^\\[|\\]$", "").split(",\\s*")) {
      String part[] = word.split(" ") ;
      String val = part[1].replaceAll("^\"|\"$", "");
      if (part[0].equals("Pre")) {
        ps.add(val);
      } else if (part[0].equals("Suf")) {
        ss.add(val);
      } else {
        ps.add(val);
        ss.add(val);
      }
    }

    List<String> result = new LinkedList<String>();
    for (String p : ps)
      for (String s : ss) {
        if (! p.equals(s)) {
          result.add(p + s);
        }
      }
    return result;
  }

}

