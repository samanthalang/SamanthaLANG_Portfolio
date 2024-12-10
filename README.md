# Samantha Lang - Data Analyst Portfolio

## A propos

Bonjour ! Je m'appelle Samantha, j'ai découvert le data-driven marketing durant mon cursus universitaire, suite à cela j'ai développé un intérêt pour l'analyse de données, ce qui m'a conduit à choisir cette voie et à en faire mon futur métier.

Grande curieuse et à l'aise avec tout ce qui est lié à l'informatique, j'aime apprendre de nouveaux concepts. C'est pour cela que je crée ce GitHub (notamment pour apprendre à en créer un à la perfection) afin de vous présenter mes projets.

Ce repository a pour but de montrer mes compétences analytiques mais surtout ma détermination à m'engager dans la voie de data analyste.

## Compétences techniques :
- SQL (PostgreSQL, MySQL, BigQuery)
- Python (pandas, matplotlib)
- Power BI, Excel


## CV
[Télécharger mon CV en PDF](projet/assets/CV_SLANG.pdf)


# Table des Matières

## Portfolio
### SQL
- [AdventureWorks : Analyse des segments clients](https://github.com/samanthalang/projet1/blob/main/projet/data/SQL/adventureworks_segment_clients.sql)

### PowerBI
- [AdventureWorks : Visualisation d'analyse des segments clients](https://github.com/samanthalang/projet1/blob/main/projet/data/PowerBI/adventureworks_segment_clients.pbix)

Le fichier est directement téléchargeable via le lien ci-dessus. Une capture d'écran est mise à disposition pour une visualisation rapide.

Aperçu : [Tableau de bord PowerBI](https://github.com/samanthalang/projet1/blob/main/projet/assets/Images/adventureworks.png)

### [Portfolio PDF](projet/assets/portfolio_SLANG.pdf)

## Certificats
- [IBM Data Analyst Certificate](projet/assets/IBM_Certificate1.pdf)
- [Google Analytics Certificate](projet/assets/Google_Certificate.pdf)
- [INSIDE LVMH Certificate](projet/assets/INSIDELVMH.pdf)

## Contact

- **Email** : [samantha.lang0905@gmail.com](mailto:samantha.lang0905@gmail.com)
- **LinkedIn** : [Samantha Lang](https://www.linkedin.com/in/samantha-lang-a265091b9/)


# Portfolio

## Dans cette section, vous retrouverez mes projets détaillés avec les logiciels utilisés et la refléxion qui a été faite.

### Analyse des segments clients pour optimiser la stratégie commerciale

**Code** : [Analyse des segments clients pour optimiser la stratégie commerciale](https://github.com/samanthalang/projet1/blob/main/projet/data/SQL/adventureworks_segment_clients.sql)

**Description** : Dans le cadre de ce projet, j’ai choisi d’explorer la base de données AdventureWorks, qui est une entreprise fictive, en me concentrant sur l’analyse des clients et à leur impact sur le chiffre d’affaires. Ce sujet s’inscrit dans la continuité de mon expérience en marketing, où la compréhension des clients et la segmentation sont essentielles pour orienter les décisions stratégiques. 
Mon objectif est de mettre en pratique mes compétences en data analyse pour identifier les segments clients les plus rentables et proposer des actions concrètes pour optimiser les performances commerciales.

**Problématique** : Quels sont les segments clients qui génèrent le plus de revenus  et comment ces insights peuvent-ils être utilisés pour optimiser la stratégie commerciale d'AdventureWorks ?

**Exploration des données** : 
Les données nécessaires ont été extraites de plusieurs tables de la base AdventureWorks :
- person.person
- sales.customer
- sales.salesorderheader
- sales.salesorderdetail
On va segmenter les clients avec des critères simples : par région, le montant total des commandes passées, et le nombre de commandes effectuées.

**Préparation des données** :
Nous avons donc là la liste des territoires avec son chiffre d’affaires total généré dans chaque région.
Pour identifier les clients les plus rentables, on va regrouper les données par client avec la requête se trouvant dans le code ci-dessus. Suite à la requête nous obtenons la liste des clients avec leur CA total.

Maintenant qu’on a préparé ces données, on va pousser l’analyse en créant des segments :
Premium : Clients avec un chiffre d’affaires > 10 000.
Potentiels : CA entre 5 000 et 10 000.
Non_premium : CA < 5 000.

**Analyse des données** :

Les données ont été analysées pour répondre à la problématique :
- Analyse des revenus par région.
- Classement des clients par chiffre d’affaires.
- Segmentation des clients en trois catégories : Premium, Potentiels, et Non Premium.

Analyse des revenus par région :

1. Southwest domine en termes de chiffre d'affaires

La région Southwest est la plus rentable. Cela représente probablement une part
importante du chiffre d'affaires global.
Il faudrait Identifier ce qui fonctionne dans cette région (stratégies marketing, produits les
plus vendus, profils clients...) pour pouvoir répliquer les pratiques dans d'autres régions,
tout en respectant les cultures/coutumes associées.

2. Northwest et Canada suivent de près

Les régions Northwest et Canada sont également des contributeurs majeurs. Cependant, mêmes s’ils ont des très bons résultats, il pourrait être pertinent d'identifier des moyens d'améliorer leur performance, par exemple en étudiant les segments clients sous-exploités.

3. Faibles performances en Allemagne

La région Germany a le revenu total le plus faible, de loin comparé à la première région. Il serait intéressant d’analyser pourquoi cette région est moins performante (offre moins
adaptée, faible engagement client...) et de mettre en place des campagnes marketing ou simplement ajuster l'offre pour cette région.

4. Fort potentiel d'amélioration dans les régions centrales et en France

Les régions Central et France sont dans la partie inférieure du classement mais restent au-dessus de Germany. Avec des efforts ciblés, ces régions pourraient facilement augmenter leur contribution au chiffre d'affaires global (notamment en faisant des campagnes spécifiques, ou encore en analysant les produits les plus performants localement).

5. Analyse des opportunités internationales

Les régions internationales comme United Kingdom et Germany pourraient représenter des marchés moins matures mais à fort potentiel si une stratégie efficace est appliquée.
Il faudrait étudier les besoins spécifiques de ces régions pour développer des offres qui soit
adaptées au marché et à la clientèle.

**Recommandations** :

1. Maximiser les revenus dans les meilleures régions :

Mettre davantage de ressources dans les régions Southwest, Northwest et Canada pour consolider leur domination. Explorer les segments clients et produits qui fonctionnent particulièrement bien dans ces régions.

2. Réengager les régions faibles :

Pour Germany et les régions centrales, concevoir des stratégies marketing ou des offres adaptées pour stimuler les ventes.

3. Prioriser les analyses segmentées :

Étudier les performances par type de produit ou par segment client dans chaque région pour identifier les opportunités d'amélioration.

**Visualisation sur PowerBI** : [Tableau de bord PowerBI](https://github.com/samanthalang/projet1/blob/main/projet/assets/Images/adventureworks.png)

