//gestion d'une pizzeria en DART
//par Hugooogle#3512
//En Juillet 2022
import 'dart:io';

var listePizza = ["quatrefromages", "margarita", "reine"];
Pizza quatrefromageS = Pizza(30, 13, true, "quatrefromages");
Pizza margaritA = Pizza(32, 15, true, "margarita");
Pizza reinE = Pizza(28, 11, true, "reine");
void main() {
  presentation();
  commandez();
}

presentation() {
  print("bonjour dans notre pizzeria !");
  print("souhaitez vous voir notre carte tapez 1,");
  print("ou alors commendez directement tapez 2.");
  var indice = stdin.readLineSync();
  if (indice != null) {
    if (int.parse(indice) == 1) {
      afficherCarte();
      print("voulez vous voir les spécificité d'une pizza en particulier ? ");
      var choice = stdin.readLineSync();
      if (choice == "oui") {
        print("\n");
        margaritA.afficherInfoPizza();
        print("\n");
        quatrefromageS.afficherInfoPizza();
        print("\n");
        reinE.afficherInfoPizza();
        print("\n");
      }
    }
  }
}

afficherCarte() {
  for (var ele in listePizza) {
    print(ele);
  }
}

commandez() {
  print("Alors que voulez vous ? :");
  var nomPizza = stdin.readLineSync();
  if (nomPizza != null) {
    if (nomPizza.contains(quatrefromageS.name) ) {
      print("veuillez entrer votr mode de payment :");
      String? modePay = stdin.readLineSync();
      if (modePay != null) {
        Order quatrefromages =
            Order(quatrefromageS.prix, "Quatrefromages", modePay);
        quatrefromages.recapOrder();
      }
    }
    if (nomPizza.contains(margaritA.name)) {
      print("veuillez entrer votr mode de payment :");
      String? modePay = stdin.readLineSync();
      if (modePay != null) {
        Order margarita = Order(margaritA.prix, "Margarita", modePay);
        margarita.recapOrder();
      }
    }
    if (nomPizza.contains(reinE.name)) {
      print("veuillez entrer votr mode de payment :");
      String? modePay = stdin.readLineSync();
      if (modePay != null) {
        Order reine = Order(reinE.prix, "Reine", modePay);
        reine.recapOrder();
      }
    }
  }
}

class Pizza {
  int taille;
  int prix;
  bool disponibilite;
  String name;

  Pizza(this.taille, this.prix, this.disponibilite, this.name);

  afficherInfoPizza() {
    print("Votre $name fait $taille centimètre,");
    print("elle est a $prix € , ");
    print("est elle diponible ? : $disponibilite !");
  }
}

class Order {
  int prix;
  String pizza;
  String modePayment;

  Order(this.prix, this.pizza, this.modePayment);

  recapOrder() {
    print(
        "Vous avez donc commandé une $pizza , pour un montant de $prix € et vous payer $modePayment !");
    print("Merci de votre commande :).");
  }
}
