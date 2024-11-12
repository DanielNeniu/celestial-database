# Universe Database

## Purpose

The **Universe Database** is a project created for the purpose of learning and practicing PostgreSQL. The primary goal was to design a relational database to store detailed information about celestial objects such as galaxies, stars, planets, moons, and comets. Throughout this project, I focused on using PostgreSQL's features, including table creation, relationships, constraints, and query optimization.

The project was a step toward understanding the power of relational databases and how they can be utilized to store and organize complex data in a structured manner. The project was also aimed at improving my knowledge of SQL, normalization, and best practices for designing a database schema that represents real-world relationships.

## How It Was Achieved

To achieve this, I followed a process of research, learning, and hands-on experimentation. Here’s a breakdown of how I went about it:

1. **Researching PostgreSQL Concepts**: I began by studying key PostgreSQL concepts and database design principles. This involved reading official PostgreSQL documentation, as well as online tutorials and articles. Some of the most helpful resources included:
    - [FreeCodeCamp for the project idea](https://www.freecodecamp.org)
    - [PostgreSQL Documentation](https://www.postgresql.org/docs/)
    - [SQL for Data Science](https://www.coursera.org/learn/sql-for-data-science) (Coursera)
    - [Database Design - LearnSQL](https://learnsql.com/)
    - Various SQL and PostgreSQL community forums for practical examples and real-world advice.

2. **Database Schema Design**: Based on the information I wanted to store, I designed a schema that included tables for:
    - **Galaxy**: Representing galaxies with attributes like `name`, `age_in_millions_of_years`, `constellation`, and `distance_from_earth`.
    - **Star**: Storing information about stars like `name`, `mass`, `radius`, and their relationship to galaxies.
    - **Planet**: Including details about planets such as `name`, `type`, `mass`, `moons_count`, and their associated stars.
    - **Moon**: Storing information about moons with `diameter`, `mass`, `distance_from_planet`, and their relationship to planets.
    - **Comet**: Including data on comets like `name`, `orbital_period`, and `origin_galaxy_id`.
  
3. **SQL and Constraints**: I learned how to use **SQL constraints** to ensure data integrity. This included `NOT NULL`, `UNIQUE`, `PRIMARY KEY`, and `FOREIGN KEY` constraints to maintain relationships between tables and enforce valid data.

4. **Populating the Database**: After setting up the tables, I populated them with data, using realistic values for each celestial object. This was done manually for the initial population, and I explored ways to automate this in future iterations (like using Python for web scraping).

## Lessons Learned

1. **Relational Database Design**: I learned how to create **normalized tables** that represent the real-world relationships between galaxies, stars, planets, moons, and comets. I also implemented best practices such as ensuring data integrity with constraints (e.g., `NOT NULL`, `UNIQUE`, etc.).

2. **PostgreSQL Features**: I gained practical experience with PostgreSQL, including:
    - **Table creation** and the use of **constraints** to enforce data quality.
    - **Foreign key relationships** to connect data across multiple tables.
    - **Using ALTER TABLE** commands to modify table structures and apply constraints after table creation.
    - Query optimization techniques to retrieve and manipulate the data effectively.

3. **Improving Process**: Throughout the project, I identified ways to improve the process in the future. For instance, rather than manually populating the tables, I saw the potential to automate the data entry process through **web scraping** using **Python**. By scraping publicly available datasets, such as astronomical databases or APIs like NASA’s Astrophysics Data System or Open Exoplanet Catalogue, I could streamline the process of keeping the database up-to-date with real-world celestial data.

## Future Improvements

While the database is functional and meets the current project requirements, there are several ways I envision improving it:

1. **Web Scraping Automation**: 
   - Using Python libraries such as **BeautifulSoup** or **Scrapy**, I could scrape relevant astronomical websites and APIs to populate and update the database automatically with real-time or frequently updated information.
   
2. **API Integration**: 
   - I could integrate the database with APIs like **NASA’s API**, **Astroquery**, or **OpenExoplanet** to pull the latest data on stars, planets, moons, and comets, allowing the database to remain dynamic and up-to-date.
   
3. **Data Analysis and Visualization**:
   - With the database populated and automated, I could create scripts to analyze the relationships between various celestial objects, run complex queries, and even visualize the data using libraries like **Matplotlib** or **Plotly** for better insights.

4. **Web Interface**:
   - Another improvement could be developing a **web interface** that allows users to query and interact with the data. This could be built using frameworks like **Flask** or **Django**, and the data could be presented through an intuitive and user-friendly dashboard.

## Conclusion

This project was a valuable learning experience that deepened my understanding of relational databases, PostgreSQL, and SQL best practices. It also opened the door to future possibilities, such as automating data entry and implementing real-time updates via web scraping. I plan to continue refining this project, with an eye toward automating the data population and building more advanced tools around the database in the future.

---

This README serves as both a **learning log** and a **guide** for anyone interested in the project or looking to replicate similar database designs and workflows.
