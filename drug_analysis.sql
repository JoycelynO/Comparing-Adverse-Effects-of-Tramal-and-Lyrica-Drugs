-- Data Processing

-- To load relevant drugs into Power Query
SELECT [primaryid],
       [drug_seq],
       [role_cod],
       [drugname]
  FROM med1
  WHERE drugname LIKE '%TRAMA%' OR 
		drugname LIKE '%ULTRAM%' OR 
		drugname LIKE '%LYRICA%'
UNION
SELECT [primaryid],
       [drug_seq],
       [role_cod],
       [drugname]
  FROM med2
  WHERE drugname LIKE '%TRAMA%' OR 
		drugname LIKE '%ULTRAM%' OR 
		drugname LIKE '%LYRICA%'
UNION
SELECT [primaryid],
       [drug_seq],
       [role_cod],
       [drugname]
  FROM med3
  WHERE drugname LIKE '%TRAMA%' OR 
		drugname LIKE '%ULTRAM%' OR 
		drugname LIKE '%LYRICA%'
UNION
SELECT [primaryid],
       [drug_seq],
       [role_cod],
       [drugname]
  FROM med4
  WHERE drugname LIKE '%TRAMA%' OR 
		drugname LIKE '%ULTRAM%' OR 
		drugname LIKE '%LYRICA%'

-- To load reactions into Power Query
SELECT primaryid, 
       pt
  FROM reac1
UNION
SELECT primaryid, 
       pt
  FROM reac2
UNION
SELECT primaryid, 
       pt
  FROM reac3
UNION
SELECT primaryid, 
	   pt
  FROM reac4

-- To load demographics into Power Query
SELECT primaryid, 
       sex, 
	   mfr_sndr, 
	   occr_country
FROM demo1
UNION
SELECT primaryid, 
       sex, 
	   mfr_sndr, 
	   occr_country
FROM demo2
UNION
SELECT primaryid, 
       sex, 
	   mfr_sndr, 
	   occr_country
FROM demo3
UNION
SELECT primaryid, 
       sex, 
	   mfr_sndr, 
	   occr_country
FROM demo4