-- 
UPDATE `creature_template` SET `DmgSchool`=2,`AIName`='SmartAI' WHERE `entry`=22298;
DELETE FROM `smart_scripts` WHERE `entryorguid`=22298 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(22298, 0, 0, 0, 0, 0, 100, 0, 2000, 5000, 4000, 6000, 11, 9053, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Vile Fire-Soul - IC - cast Fireball');

DELETE FROM `creature` WHERE `guid` IN (78376,78377,78378,78379,78380,95097,95098,95099);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(78376, 22298, 530, 1, 1, 0, 0, 1665.164, 7379.932, 371.3260, 1.9711670, 300, 0, 0, 5744, 3155, 2),
(78377, 22298, 530, 1, 1, 0, 0, 1300.547, 7265.371, 365.3977, 0.2636836, 300, 0, 0, 5744, 3155, 2),
(78378, 22298, 530, 1, 1, 0, 0, 1553.611, 7337.983, 364.5789, 4.7328720, 300, 0, 0, 5744, 3155, 2),
(78379, 22298, 530, 1, 1, 0, 0, 1394.671, 7342.206, 364.3341, 2.0554120, 300, 0, 0, 5744, 3155, 2),
(78380, 22298, 530, 1, 1, 0, 0, 1340.532, 7145.310, 370.9655, 3.2989070, 300, 0, 0, 5744, 3155, 2),
(95097, 22298, 530, 1, 1, 0, 0, 1638.535, 7274.386, 363.9085, 3.5216810, 300, 0, 0, 5744, 3155, 2),
(95098, 22298, 530, 1, 1, 0, 0, 1443.807, 7154.815, 365.1341, 2.7720390, 300, 0, 0, 5744, 3155, 2),
(95099, 22298, 530, 1, 1, 0, 0, 1614.450, 7190.510, 369.1107, 4.4261390, 300, 0, 0, 5744, 3155, 2);

DELETE FROM `creature_addon` WHERE `guid` IN (78376,78377,78378,78379,78380,95097,95098,95099);
INSERT INTO `creature_addon` (`guid`, `path_id`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(78376, 783760, 0, 0, 0, ""),
(78377, 783770, 0, 0, 0, ""),
(78378, 783780, 0, 0, 0, ""),
(78379, 783790, 0, 0, 0, ""),
(78380, 783800, 0, 0, 0, ""),
(95097, 950970, 0, 0, 0, ""),
(95098, 950980, 0, 0, 0, ""),
(95099, 950990, 0, 0, 0, "");

DELETE FROM `waypoint_data` WHERE `id` IN (783760,783770,783780,783790,783800,950970,950980,950990);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`action`, `action_chance`) VALUES
(783760, 1, 1656.773, 7399.774, 364.5957, 0, 0, 100),
(783760, 2, 1618.392, 7388.847, 364.0782, 0, 0, 100),
(783760, 3, 1596.787, 7372.172, 364.3177, 0, 0, 100),
(783760, 4, 1583.301, 7349.601, 364.2329, 0, 0, 100),
(783760, 5, 1576.120, 7321.715, 364.0074, 0, 0, 100),
(783760, 6, 1578.735, 7300.728, 364.2141, 0, 0, 100),
(783760, 7, 1601.686, 7289.063, 364.2542, 0, 0, 100),
(783760, 8, 1620.862, 7306.874, 363.7522, 0, 0, 100),
(783760, 9, 1649.990, 7330.174, 364.4892, 0, 0, 100),
(783760, 10, 1667.378, 7344.556, 364.6805, 0, 0, 100),
(783760, 11, 1689.027, 7363.251, 369.1746, 0, 0, 100),
(783760, 12, 1693.287, 7378.132, 370.1225, 0, 0, 100),
(783760, 13, 1679.789, 7397.393, 370.2475, 0, 0, 100),
(783770, 1, 1344.036, 7277.105, 364.3158, 0, 0, 100),
(783770, 2, 1388.763, 7285.612, 364.1070, 0, 0, 100),
(783770, 3, 1420.870, 7274.422, 368.4656, 0, 0, 100),
(783770, 4, 1462.819, 7282.841, 372.8281, 0, 0, 100),
(783770, 5, 1498.383, 7284.034, 369.5018, 0, 0, 100),
(783770, 6, 1520.351, 7276.621, 366.9545, 0, 0, 100),
(783770, 7, 1545.125, 7284.149, 363.8119, 0, 0, 100),
(783770, 8, 1583.165, 7294.112, 364.1786, 0, 0, 100),
(783770, 9, 1615.823, 7304.567, 364.1540, 0, 0, 100),
(783770, 10, 1660.279, 7321.174, 364.2937, 0, 0, 100),
(783770, 11, 1615.823, 7304.567, 364.1540, 0, 0, 100),
(783770, 12, 1583.165, 7294.112, 364.1786, 0, 0, 100),
(783770, 13, 1545.125, 7284.149, 363.8119, 0, 0, 100),
(783770, 14, 1520.351, 7276.621, 366.9545, 0, 0, 100),
(783770, 15, 1498.383, 7284.034, 369.5018, 0, 0, 100),
(783770, 16, 1462.819, 7282.841, 372.8281, 0, 0, 100),
(783770, 17, 1421.132, 7274.339, 368.1682, 0, 0, 100),
(783770, 18, 1388.763, 7285.612, 364.1070, 0, 0, 100),
(783770, 19, 1344.036, 7277.105, 364.3158, 0, 0, 100),
(783770, 20, 1303.846, 7266.940, 365.1007, 0, 0, 100),
(783780, 1, 1554.584, 7290.185, 364.1391, 0, 0, 100),
(783780, 2, 1525.778, 7277.848, 367.1777, 0, 0, 100),
(783780, 3, 1498.065, 7278.037, 369.8182, 0, 0, 100),
(783780, 4, 1483.567, 7292.287, 369.9046, 0, 0, 100),
(783780, 5, 1466.943, 7322.390, 364.8974, 0, 0, 100),
(783780, 6, 1440.097, 7330.051, 363.3341, 0, 0, 100),
(783780, 7, 1419.282, 7321.108, 364.1296, 0, 0, 100),
(783780, 8, 1411.500, 7296.578, 364.1481, 0, 0, 100),
(783780, 9, 1410.777, 7272.359, 364.5040, 0, 0, 100),
(783780, 10, 1434.672, 7273.251, 373.3117, 0, 0, 100),
(783780, 11, 1471.087, 7283.519, 369.7131, 0, 0, 100),
(783780, 12, 1480.808, 7302.141, 367.6188, 0, 0, 100),
(783780, 13, 1515.857, 7328.195, 364.9102, 0, 0, 100),
(783780, 14, 1549.773, 7320.827, 364.2833, 0, 0, 100),
(783790, 1, 1377.954, 7373.933, 364.5356, 0, 0, 100),
(783790, 2, 1359.949, 7381.602, 364.4118, 0, 0, 100),
(783790, 3, 1341.117, 7362.622, 367.4298, 0, 0, 100),
(783790, 4, 1323.984, 7337.061, 364.1812, 0, 0, 100),
(783790, 5, 1321.021, 7306.510, 364.1526, 0, 0, 100),
(783790, 6, 1327.383, 7281.461, 364.0710, 0, 0, 100),
(783790, 7, 1343.056, 7258.956, 364.0087, 0, 0, 100),
(783790, 8, 1376.387, 7225.261, 363.3726, 0, 0, 100),
(783790, 9, 1380.471, 7192.426, 365.0630, 0, 0, 100),
(783790, 10, 1374.793, 7147.526, 364.8091, 0, 0, 100),
(783790, 11, 1380.471, 7192.426, 365.0630, 0, 0, 100),
(783790, 12, 1376.387, 7225.261, 363.3726, 0, 0, 100),
(783790, 13, 1343.056, 7258.956, 364.0087, 0, 0, 100),
(783790, 14, 1327.383, 7281.461, 364.0710, 0, 0, 100),
(783790, 15, 1321.021, 7306.510, 364.1526, 0, 0, 100),
(783790, 16, 1323.984, 7337.061, 364.1812, 0, 0, 100),
(783790, 17, 1341.117, 7362.622, 367.4298, 0, 0, 100),
(783790, 18, 1359.949, 7381.602, 364.4118, 0, 0, 100),
(783790, 19, 1377.954, 7373.933, 364.5356, 0, 0, 100),
(783790, 20, 1392.906, 7344.292, 364.2321, 0, 0, 100),
(783800, 1, 1327.511, 7143.245, 371.3334, 0, 0, 100),
(783800, 2, 1304.279, 7149.792, 370.8072, 0, 0, 100),
(783800, 3, 1293.159, 7174.249, 371.4051, 0, 0, 100),
(783800, 4, 1283.558, 7206.416, 371.2104, 0, 0, 100),
(783800, 5, 1304.064, 7246.037, 366.1053, 0, 0, 100),
(783800, 6, 1324.706, 7259.761, 364.0050, 0, 0, 100),
(783800, 7, 1353.680, 7279.329, 363.8527, 0, 0, 100),
(783800, 8, 1379.141, 7296.346, 364.3794, 0, 0, 100),
(783800, 9, 1353.680, 7279.329, 363.8527, 0, 0, 100),
(783800, 10, 1324.706, 7259.761, 364.0050, 0, 0, 100),
(783800, 11, 1304.064, 7246.037, 366.1053, 0, 0, 100),
(783800, 12, 1283.558, 7206.416, 371.2104, 0, 0, 100),
(783800, 13, 1293.159, 7174.249, 371.4051, 0, 0, 100),
(783800, 14, 1304.279, 7149.792, 370.8072, 0, 0, 100),
(783800, 15, 1327.511, 7143.245, 371.3334, 0, 0, 100),
(783800, 16, 1352.581, 7149.935, 371.0145, 0, 0, 100),
(950970, 1, 1611.359, 7263.525, 364.6029, 0, 0, 100),
(950970, 2, 1580.662, 7250.049, 364.7177, 0, 0, 100),
(950970, 3, 1546.296, 7240.428, 364.2438, 0, 0, 100),
(950970, 4, 1510.422, 7231.355, 370.7528, 0, 0, 100),
(950970, 5, 1484.828, 7221.558, 370.2086, 0, 0, 100),
(950970, 6, 1452.361, 7198.633, 368.9296, 0, 0, 100),
(950970, 7, 1413.485, 7188.418, 364.1214, 0, 0, 100),
(950970, 8, 1381.860, 7152.774, 363.8575, 0, 0, 100),
(950970, 9, 1340.350, 7150.415, 370.8895, 0, 0, 100),
(950970, 10, 1312.100, 7151.096, 371.1092, 0, 0, 100),
(950970, 11, 1270.860, 7138.866, 371.6308, 0, 0, 100),
(950970, 12, 1312.100, 7151.096, 371.1092, 0, 0, 100),
(950970, 13, 1340.350, 7150.415, 370.8895, 0, 0, 100),
(950970, 14, 1381.860, 7152.774, 363.8575, 0, 0, 100),
(950970, 15, 1413.485, 7188.418, 364.1214, 0, 0, 100),
(950970, 16, 1452.157, 7198.574, 368.9937, 0, 0, 100),
(950970, 17, 1484.828, 7221.558, 370.2086, 0, 0, 100),
(950970, 18, 1510.422, 7231.355, 370.7528, 0, 0, 100),
(950970, 19, 1546.296, 7240.428, 364.2438, 0, 0, 100),
(950970, 20, 1580.662, 7250.049, 364.7177, 0, 0, 100),
(950970, 21, 1611.359, 7263.525, 364.6029, 0, 0, 100),
(950970, 22, 1643.517, 7270.127, 364.1072, 0, 0, 100),
(950980, 1, 1419.505, 7164.240, 364.4756, 0, 0, 100),
(950980, 2, 1402.671, 7184.678, 364.2086, 0, 0, 100),
(950980, 3, 1400.633, 7203.377, 363.9698, 0, 0, 100),
(950980, 4, 1409.790, 7229.050, 363.9241, 0, 0, 100),
(950980, 5, 1426.006, 7237.803, 363.8538, 0, 0, 100),
(950980, 6, 1445.413, 7236.438, 370.0939, 0, 0, 100),
(950980, 7, 1475.855, 7214.994, 368.9968, 0, 0, 100),
(950980, 8, 1500.265, 7192.905, 365.7592, 0, 0, 100),
(950980, 9, 1513.472, 7180.257, 364.7081, 0, 0, 100),
(950980, 10, 1555.877, 7178.830, 365.0292, 0, 0, 100),
(950980, 11, 1552.187, 7214.417, 363.7809, 0, 0, 100),
(950980, 12, 1531.199, 7230.337, 364.7152, 0, 0, 100),
(950980, 13, 1508.693, 7232.303, 370.4947, 0, 0, 100),
(950980, 14, 1482.025, 7210.260, 369.3679, 0, 0, 100),
(950980, 15, 1468.256, 7190.412, 363.8764, 0, 0, 100),
(950980, 16, 1463.677, 7167.428, 365.2648, 0, 0, 100),
(950980, 17, 1450.946, 7154.204, 364.9455, 0, 0, 100),
(950990, 1, 1611.515, 7180.544, 369.7453, 0, 0, 100),
(950990, 2, 1595.189, 7181.851, 364.2325, 0, 0, 100),
(950990, 3, 1576.305, 7182.418, 363.0301, 0, 0, 100),
(950990, 4, 1551.096, 7188.584, 364.3322, 0, 0, 100),
(950990, 5, 1543.399, 7204.917, 364.7606, 0, 0, 100),
(950990, 6, 1546.314, 7228.875, 365.0632, 0, 0, 100),
(950990, 7, 1552.296, 7252.303, 364.4031, 0, 0, 100),
(950990, 8, 1576.719, 7259.852, 364.3064, 0, 0, 100),
(950990, 9, 1600.801, 7268.596, 364.1293, 0, 0, 100),
(950990, 10, 1610.080, 7244.772, 364.5979, 0, 0, 100),
(950990, 11, 1622.727, 7225.670, 368.7903, 0, 0, 100),
(950990, 12, 1638.417, 7212.743, 368.9995, 0, 0, 100),
(950990, 13, 1630.473, 7189.032, 369.5075, 0, 0, 100);
