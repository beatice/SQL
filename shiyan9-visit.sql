CREATE TABLE visit 
(
  year  YEAR(4),
  month INT(2) UNSIGNED ZEROFILL,
  day   INT(2) UNSIGNED ZEROFILL
);

INSERT INTO visit VALUES(2000,1,1),(2000,1,20),(2000,1,30),(2000,2,2),(2000,2,23),(2000,2,23);