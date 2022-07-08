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

  Scénario: le relanceur ne frappe pas le service
    Etant donné un service régulier
    Quand la balle n'est pas frappée en retour
    Alors le serveur gagne la manche


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


