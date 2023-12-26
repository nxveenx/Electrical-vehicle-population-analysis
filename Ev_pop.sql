--viewing the database:

  select * from Ev_pop;

--Total ev's by city and county:

    SELECT 
    city,
    county,
    COUNT(*) AS total_ev_count
FROM 
    Ev_population
GROUP BY 
    city, county
ORDER BY 
    total_ev_count DESC;

--Average Range by Model and Make:

     SELECT 
    model,
    make,
    AVG(electric_range) AS avg_range
FROM 
    ev_population
GROUP BY 
    model, make
ORDER BY 
    avg_range DESC;


--Top EV Models by Count:

    SELECT 
    model,
    make,
    COUNT(*) AS model_count
FROM 
    ev_population
GROUP BY 
    model, make
ORDER BY 
    model_count DESC;


--Top Cities with the Highest EV Count:

 SELECT city, COUNT(*) as total_evs
FROM ev_population
GROUP BY city
ORDER BY total_evs DESC

   
--Total EVs by Location:
   
    SELECT state, COUNT(*) as total_evs
FROM ev_population
GROUP BY state;
  
  

   
