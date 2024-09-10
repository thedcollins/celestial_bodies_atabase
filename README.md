# Universe Database

This project is a PostgreSQL database schema designed to capture various astronomical objects, including planets, stars, moons, galaxies, and asteroids. It was created as part of a certification project to demonstrate proficiency in database design, SQL, and PostgreSQL.

## Project Overview

The database consists of five main tables:

- **`asteroid`**: Stores information about asteroids.
- **`galaxy`**: Stores information about galaxies.
- **`moon`**: Stores information about moons.
- **`planet`**: Stores information about planets.
- **`star`**: Stores information about stars.

Each table includes a primary key and relevant attributes, along with constraints to maintain data integrity.

## Schema Details

### Tables

- **`asteroid`**
  - `asteroid_id`: Unique identifier for each asteroid.
  - `name`: Name of the asteroid.
  - `diameter`: Diameter of the asteroid (in kilometers).
  - `distance_from_sun`: Distance from the Sun (in kilometers).
  - `orbital_inclination`: Orbital inclination (in degrees).
  - `surface_features`: Description of surface features.
  - `has_moons`: Boolean indicating if the asteroid has moons.
  - `is_comet`: Boolean indicating if the asteroid is a comet.

- **`galaxy`**
  - `galaxy_id`: Unique identifier for each galaxy.
  - `name`: Name of the galaxy.
  - `number_of_stars`: Number of stars in the galaxy.
  - `discovery_year`: Year the galaxy was discovered.
  - `mass`: Mass of the galaxy (in solar masses).
  - `description`: Description of the galaxy.
  - `has_supermassive_black_hole`: Boolean indicating if the galaxy has a supermassive black hole.
  - `visible_to_naked_eye`: Boolean indicating if the galaxy is visible to the naked eye.

- **`moon`**
  - `moon_id`: Unique identifier for each moon.
  - `name`: Name of the moon.
  - `radius`: Radius of the moon (in kilometers).
  - `distance_from_planet`: Distance from the parent planet (in kilometers).
  - `orbital_inclination`: Orbital inclination (in degrees).
  - `surface_features`: Description of surface features.
  - `tidally_locked`: Boolean indicating if the moon is tidally locked.
  - `has_atmosphere`: Boolean indicating if the moon has an atmosphere.
  - `planet_id`: Foreign key linking to the parent planet.

- **`planet`**
  - `planet_id`: Unique identifier for each planet.
  - `name`: Name of the planet.
  - `orbit_period`: Orbital period around the star (in days).
  - `moons_count`: Number of moons orbiting the planet.
  - `surface_gravity`: Surface gravity of the planet (in m/s²).
  - `atmosphere_composition`: Composition of the planet's atmosphere.
  - `supports_life`: Boolean indicating if the planet supports life.
  - `has_rings`: Boolean indicating if the planet has rings.
  - `star_id`: Foreign key linking to the parent star.

- **`star`**
  - `star_id`: Unique identifier for each star.
  - `name`: Name of the star.
  - `age`: Age of the star (in years).
  - `luminosity_class`: Luminosity class of the star.
  - `brightness`: Brightness of the star (in magnitudes).
  - `composition`: Composition of the star.
  - `is_main_sequence`: Boolean indicating if the star is a main-sequence star.
  - `has_planets`: Boolean indicating if the star has planets.
  - `galaxy_id`: Foreign key linking to the parent galaxy.

### Sequences

Each table with a primary key uses a sequence to generate unique identifiers:
- `asteroid_asteroid_id_seq`
- `galaxy_galaxy_id_seq`
- `moon_moon_id_seq`
- `planet_planet_id_seq`
- `star_star_id_seq`

### Constraints

- Primary Key constraints ensure each record is unique.
- Unique constraints prevent duplicate names for celestial objects.
- Foreign Key constraints maintain relationships between tables (e.g., moons and planets, stars and galaxies).

## Getting Started

To get started with this project:

1. **Clone the Repository**
   - Clone this repository to your local machine using your preferred Git client.

2. **Set Up the Database**
   - Ensure you have PostgreSQL installed on your system.
   - Use the provided SQL dump file (`dump.sql`) to create and populate the database. This file contains the schema definitions and sample data for the database.

3. **Explore the Database**
   - Connect to the PostgreSQL database using a client like `psql` or a graphical tool like pgAdmin.
   - Explore the tables and relationships defined in the schema.

4. **Query the Data**
   - Use SQL queries to interact with and analyze the data. Here are some example queries to get you started:
     - List all asteroids and their diameters.
     - Find all planets with rings.
     - Retrieve information about stars and their associated galaxies.

## What I Learned

- Designing and implementing a relational database schema.
- Using PostgreSQL features such as sequences and constraints.
- Writing SQL queries to interact with and manage the database.
- Understanding relationships between different astronomical entities and how they are represented in a database.

## Acknowledgements

- [PostgreSQL Documentation](https://www.postgresql.org/docs/)
- FreeCodeCamp for providing the certification and project guidelines.
