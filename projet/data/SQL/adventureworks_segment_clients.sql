-- J'explore les tables dont j'ai besoin en identifiant les champs nécessaires

SELECT *
FROM person.person;

-- 2

SELECT *
FROM sales.customer; -- on s'intéresse au champ customerid pour identifier les clients

-- 3

SELECT *
FROM sales.salesorderheader;

-- 4

SELECT *
FROM sales.salesorderdetail -- on s'intéresse au champ unitprice pour calculer les revenus générés

-- 5

SELECT *
FROM sales.salesterritory

-- Préparation des données : liste des territoires avec son CA total généré dans chaque région

SELECT 
    t.name AS territory,
    SUM(soh.totaldue) AS revenu_total
FROM 
    sales.salesorderheader AS soh
JOIN 
    sales.salesterritory t ON soh.territoryid = t.territoryid
GROUP BY 
    t.name
ORDER BY 
    revenu_total DESC;

-- liste des clients avec leur CA total

SELECT 
    c.customerid,
    p.firstname || ' ' || p.lastname AS nom_complet,
    SUM(soh.totaldue) AS revenu_total
FROM 
    sales.customer c
JOIN 
    sales.salesorderheader soh ON c.customerid = soh.customerid
JOIN 
    person.person p ON c.personid = p.businessentityid
GROUP BY 
    c.customerid, p.firstname, p.lastname
ORDER BY 
	revenu_total DESC;

-- création de segments clients :
    -- Premium : clients avec un CA > 10 000
    -- Potentiels : CA entre 5 000 et 10 000
    -- Non_premium : CA < 5 000

SELECT 
    c.customerid,
    p.firstname || ' ' || p.lastname AS nom_complet,
    SUM(soh.totaldue) AS revenu_total,
    CASE 
        WHEN SUM(soh.totaldue) > 10000 THEN 'Premium'
        WHEN SUM(soh.totaldue) BETWEEN 5000 AND 10000 THEN 'Potentiels'
        ELSE 'Non_Premium'
    END AS segment
FROM 
    sales.customer c
JOIN 
    sales.salesorderheader soh ON c.customerid = soh.customerid
JOIN 
    person.person p ON c.personid = p.businessentityid
GROUP BY 
    c.customerid, p.firstname, p.lastname
ORDER BY 
  revenu_total DESC;
