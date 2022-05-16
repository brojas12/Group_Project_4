-- Creating tables for breast-cancer-db
CREATE TABLE area_mean_radius_mean(
	id varchar NOT NULL,
	diagnosis varchar NOT NULL,
	area_mean float NOT NULL,
	radius_mean float NOT NULL
);

SELECT * FROM area_mean_radius_mean

CREATE TABLE radius_worst_perimeter_mean(
	id varchar NOT NULL,
	diagnosis varchar NOT NULL,
	radius_worst float NOT NULL,
	perimeter_mean float NOT NULL
);

SELECT * FROM radius_worst_perimeter_mean

CREATE TABLE texture_worst_texture_mean(
	id varchar NOT NULL,
	diagnosis varchar NOT NULL,
	texture_worst float NOT NULL,
	texture_mean float NOT NULL
);

SELECT * FROM texture_worst_texture_mean

CREATE TABLE radius_worst_area_worst(
	id varchar NOT NULL,
	diagnosis varchar NOT NULL,
	radius_worst float NOT NULL,
	area_worst float NOT NULL
);

SELECT * FROM radius_worst_area_worst

CREATE TABLE data_csv(
	id VARCHAR NOT NULL,
	diagnosis VARCHAR NOT NULL,
	radius_mean FLOAT NOT NULL,
	texture_mean FLOAT NOT NULL,
	perimeter_mean FLOAT NOT NULL,
	area_mean FLOAT NOT NULL,
	smoothness_mean FLOAT NOT NULL,
	compactness_mean FLOAT NOT NULL,
	concavity_mean FLOAT NOT NULL,
	concave_points_mean FLOAT NOT NULL,
	symmetry_mean FLOAT NOT NULL,
	fractal_dimension_mean FLOAT NOT NULL,
	radius_worst FLOAT NOT NULL,
	texture_worst FLOAT NOT NULL,
	perimeter_worst FLOAT NOT NULL,
	area_worst FLOAT NOT NULL,
	smoothness_worst FLOAT NOT NULL,
	compactness_worst FLOAT NOT NULL,
	concavity_worst FLOAT NOT NULL,
	concave_points_worst FLOAT NOT NULL,
	symmetry_worst FLOAT NOT NULL,
	fractal_dimension_worst FLOAT NOT NULL
);

SELECT * FROM data_csv

SELECT
	data_csv.id,
	data_csv.diagnosis,
	area_mean_radius_mean.area_mean,
	area_mean_radius_mean.radius_mean,
	radius_worst_perimeter_mean.radius_worst,
	radius_worst_perimeter_mean.perimeter_mean,
	texture_worst_texture_mean.texture_worst,
	texture_worst_texture_mean.texture_mean,
	radius_worst_area_worst.radius_worst,
	radius_worst_area_worst.area_worst
FROM
	data_csv
INNER JOIN area_mean_radius_mean
	ON data_csv.id = area_mean_radius_mean.id
INNER JOIN radius_worst_perimeter_mean
	ON area_mean_radius_mean.id = radius_worst_perimeter_mean.id
INNER JOIN texture_worst_texture_mean
	ON radius_worst_perimeter_mean.id = texture_worst_texture_mean.id
INNER JOIN radius_worst_area_worst
	ON texture_worst_texture_mean.id = radius_worst_area_worst.id
ORDER BY data_csv.id;