/*
 Navicat Premium Data Transfer

 Source Server         : MySql
 Source Server Type    : MySQL
 Source Server Version : 100110
 Source Host           : localhost:3306
 Source Schema         : venta_vehiculos

 Target Server Type    : MySQL
 Target Server Version : 100110
 File Encoding         : 65001

 Date: 26/03/2023 10:39:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes`  (
  `Id_Cliente` int(255) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Apellido` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `RUT` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Direccion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Telefono` int(11) NOT NULL,
  PRIMARY KEY (`Id_Cliente`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES (1, 'wilson', 'aguilera', '8847894-5', 'clinica antofagasta', 945698732);
INSERT INTO `clientes` VALUES (2, 'Carolina', 'Ortiz', '15847878-5', 'florida 2558', 945698732);
INSERT INTO `clientes` VALUES (3, 'Marcos', 'Gonzalez', '15456987-5', 'vargas 2545', 945698732);
INSERT INTO `clientes` VALUES (4, 'Felipe', 'Rios', '12325654-8', 'Santiago Centro 1545', 945698732);

-- ----------------------------
-- Table structure for detalle_ventas
-- ----------------------------
DROP TABLE IF EXISTS `detalle_ventas`;
CREATE TABLE `detalle_ventas`  (
  `Id_detalle_ventas` int(255) NOT NULL,
  `Id_cliente` int(255) NULL DEFAULT NULL,
  `Id_Vendedor` int(255) NULL DEFAULT NULL,
  `Id_autos` int(255) NULL DEFAULT NULL,
  `Id_forma_pago` int(255) NULL DEFAULT NULL,
  `Fecha` date NULL DEFAULT NULL,
  `Cantidad` int(255) NULL DEFAULT NULL,
  `IVA` decimal(16, 0) NULL DEFAULT NULL,
  `Total` decimal(16, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`Id_detalle_ventas`) USING BTREE,
  INDEX `Id_autos`(`Id_autos`) USING BTREE,
  INDEX `Id_Vendedor`(`Id_Vendedor`) USING BTREE,
  INDEX `Id_cliente`(`Id_cliente`) USING BTREE,
  INDEX `Id_forma_pago`(`Id_forma_pago`) USING BTREE,
  CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`Id_autos`) REFERENCES `vehiculo` (`Id_Vehiculo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`Id_Vendedor`) REFERENCES `vendedor` (`Id_Vendedor`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `detalle_ventas_ibfk_3` FOREIGN KEY (`Id_cliente`) REFERENCES `clientes` (`Id_Cliente`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `detalle_ventas_ibfk_4` FOREIGN KEY (`Id_forma_pago`) REFERENCES `forma_pago` (`id_forma_pago`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of detalle_ventas
-- ----------------------------

-- ----------------------------
-- Table structure for forma_pago
-- ----------------------------
DROP TABLE IF EXISTS `forma_pago`;
CREATE TABLE `forma_pago`  (
  `id_forma_pago` int(255) NULL DEFAULT NULL,
  `descipcion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  INDEX `id_forma_pago`(`id_forma_pago`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of forma_pago
-- ----------------------------
INSERT INTO `forma_pago` VALUES (1, 'Efectivo');
INSERT INTO `forma_pago` VALUES (2, 'Chueque');
INSERT INTO `forma_pago` VALUES (3, 'Credito');
INSERT INTO `forma_pago` VALUES (4, 'Tarjeta de Credito');
INSERT INTO `forma_pago` VALUES (5, 'Convenio');

-- ----------------------------
-- Table structure for vehiculo
-- ----------------------------
DROP TABLE IF EXISTS `vehiculo`;
CREATE TABLE `vehiculo`  (
  `Id_Vehiculo` int(255) NOT NULL AUTO_INCREMENT,
  `Matricula` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Marca` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Modelo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Color` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Precio` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`Id_Vehiculo`) USING BTREE,
  INDEX `Id_Marca`(`Marca`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of vehiculo
-- ----------------------------
INSERT INTO `vehiculo` VALUES (1, 'XDSD-48', 'Suzuki', 'Sportage', 'Rojo', 12500000);
INSERT INTO `vehiculo` VALUES (2, 'RGTY-85', 'Mazda', 'Xl235', 'beige', 3500000);
INSERT INTO `vehiculo` VALUES (3, 'SFTG-65', 'Renault', 'Emotion', 'Metalico', 10850652);
INSERT INTO `vehiculo` VALUES (4, 'ASFG-45', 'Audi', 'GT456', 'Azul', 25650000);

-- ----------------------------
-- Table structure for vendedor
-- ----------------------------
DROP TABLE IF EXISTS `vendedor`;
CREATE TABLE `vendedor`  (
  `Id_Vendedor` int(255) NOT NULL AUTO_INCREMENT,
  `RUT` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Nombre` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Apellidos` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Telefono` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`Id_Vendedor`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of vendedor
-- ----------------------------
INSERT INTO `vendedor` VALUES (1, '12654987-8', 'Marco', 'Garcia', '9789456123');
INSERT INTO `vendedor` VALUES (2, '14563654-8', 'Felipe', 'Muñoz', '9789565423');
INSERT INTO `vendedor` VALUES (3, '08456321-8', 'Luisa', 'Peña', '9785652562');

SET FOREIGN_KEY_CHECKS = 1;
