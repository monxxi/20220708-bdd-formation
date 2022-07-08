#language: fr
Fonctionnalité: Valider un service
#    En tant que pongiste
#    Je souhaite faire un service
#    Afin de démarrer la manche
#
#    En tant qu'arbitre
#    Je souhaite vérifier qu'un service est valide
#    Afin de démarrer la manche

  En tant qu'arbitre
  Je souhaite connaitre les règles du service
  Afin de vérifier qu'un service est valide

  let: la balle touche le filet et passe de l'autre coté
  le service commence quand tu frappes la balle après un lancer correct


  Scénario: le service est régulier
    Etant donné un lancer correct
    Quand la balle rebondit du camp du serveur au camp adverse
    Alors le service est régulier

#  Scénario: l'adversaire répond au service
#    Etant donné un service correct
#    Quand la balle rebondit du camp adverse

  Scénario: un échange commence
    Etant donné un service régulier
    Quand le relanceur frappe la balle
    Alors l'échange commence

  Scénario: ace
    Etant donné un service régulier
    Quand la balle n'est pas frappée en retour
    Alors le service est gagnant

  Scénario: let
    Etant donné un lancer correct
    Quand la balle rebondit du camp du serveur au camp adverse en touchant le filet
    Alors le service est à rejouer
#
#  Scénario: Service perdant dû à une faute avant le filet
#    Etant donné un lancer correct
#    Quand la balle ne touche pas le camp du serveur
#    Alors le service est perdant
#
#  Scénario: Service perdant dû à une faute après le filet
#    Etant donné un lancer correct
#    Quand la balle ne touche pas le camp du relanceur
#    Alors le service est perdant
#
#  Scénario: la balle ne touche aucun camp
#    Etant donné un lancer correct
#    Quand la balle ne touche aucun camp
#    Alors le service est perdant

  Scénario: Service perdant dû à un lancer incorrect
    Quand le lancer est incorrect
    Alors le service est perdant


  Scénario: Service perdant dû à un rebond invalide
    Etant donné un lancer correct
    Quand la balle ne rebondit pas du camp du serveur au camp adverse
    Alors le service est perdant


  Règle:
  - la balle doit s'élever à 16cm au dessus du niveau supérieur de la table
  - la raquette et la balle doivent se situer au dessus du niveau de la table
  et derriere la ligne de fond
  - la balle doit toujours être visible

    Scénario: lancer correct
      Etant donné que la balle a été lancée par le serveur
      Et que la balle a été lancée verticalement derriere la ligne de fond
      Et que la balle a atteint au moins 16cm au dessus du niveau supérieur de la table
      Et que la balle est visible de l'arbitre et des joueurs
      Quand la balle est frappée par le serveur
      Alors le lancer est correct


    Plan du Scénario: lancer incorrect dû a une hauteur minimale de 16cm non atteinte
      Etant donné que la balle a atteint <hauteur atteinte>cm au dessus du niveau supérieur de la table
      Quand la balle est frappée par le serveur
      Alors le lancer est incorrect

      Exemples:
        | hauteur atteinte |
        | 15               |
        | 10               |
        | 15.99            |

    Scénario: lancer incorrect dû à un lancer non vertical
      Etant donné que la balle n'a pas été lancée verticalement
      Quand la balle est frappée par le serveur
      Alors le lancer est incorrect

    Scénario: lancer incorrect dû au masquage de la balle
      Etant donné que la balle n'est pas visible de l'arbitre ou des joueurs
      Quand la balle est frappée par le serveur
      Alors le lancer est incorrect

    Scénario:la balle n'est pas lancée par le serveur
      Etant donné que la balle n'est pas lancée par le serveur
      Quand la balle est frappée par le serveur
      Alors le lancer est incorrect
