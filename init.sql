/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50740
 Source Host           : localhost:3306
 Source Schema         : goview

 Target Server Type    : MySQL
 Target Server Version : 50740
 File Encoding         : 65001

 Date: 01/06/2024 00:24:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_goview_project
-- ----------------------------
DROP TABLE IF EXISTS `t_goview_project`;
CREATE TABLE `t_goview_project`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `projectName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT 0,
  `createTime` datetime(0) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `createUserId` int(11) DEFAULT NULL,
  `isDelete` smallint(6) NOT NULL DEFAULT 0,
  `indexImage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp(0) DEFAULT NULL,
  `updated_at` timestamp(0) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_goview_project
-- ----------------------------
INSERT INTO `t_goview_project` VALUES (1, '1ir45p65s2n400', 0, '2024-06-01 00:19:04', NULL, 0, 'http://127.0.0.1:3000/upload/1_index_preview.png', NULL, NULL, '2024-06-01 00:19:04');
INSERT INTO `t_goview_project` VALUES (3, '1ir45p65s2n40031', 0, '2024-05-31 22:43:58', NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `t_goview_project` VALUES (4, '3rym3tehl1w000', 0, '2024-06-01 00:19:09', NULL, 0, 'http://127.0.0.1:3000/upload/4_index_preview.png', NULL, NULL, '2024-06-01 00:19:09');

-- ----------------------------
-- Table structure for t_goview_project_data
-- ----------------------------
DROP TABLE IF EXISTS `t_goview_project_data`;
CREATE TABLE `t_goview_project_data`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `projectId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createUserId` int(11) NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) DEFAULT NULL,
  `updated_at` timestamp(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_goview_project_data
-- ----------------------------
INSERT INTO `t_goview_project_data` VALUES (1, '1', '2024-06-01 00:17:19.258', 1, '{\r\n  \"editCanvasConfig\": {\r\n    \"projectName\": \"1ir45p65s2n400\",\r\n    \"width\": 1920,\r\n    \"height\": 1080,\r\n    \"filterShow\": false,\r\n    \"hueRotate\": 0,\r\n    \"saturate\": 1,\r\n    \"contrast\": 1,\r\n    \"brightness\": 1,\r\n    \"opacity\": 1,\r\n    \"rotateZ\": 0,\r\n    \"rotateX\": 0,\r\n    \"rotateY\": 0,\r\n    \"skewX\": 0,\r\n    \"skewY\": 0,\r\n    \"blendMode\": \"normal\",\r\n    \"background\": null,\r\n    \"backgroundImage\": null,\r\n    \"selectColor\": true,\r\n    \"chartThemeColor\": \"dark\",\r\n    \"chartCustomThemeColorInfo\": null,\r\n    \"chartThemeSetting\": {\r\n      \"title\": {\r\n        \"show\": true,\r\n        \"textStyle\": {\r\n          \"color\": \"#BFBFBF\",\r\n          \"fontSize\": 18\r\n        },\r\n        \"subtextStyle\": {\r\n          \"color\": \"#A2A2A2\",\r\n          \"fontSize\": 14\r\n        }\r\n      },\r\n      \"xAxis\": {\r\n        \"show\": true,\r\n        \"name\": \"\",\r\n        \"nameGap\": 15,\r\n        \"nameTextStyle\": {\r\n          \"color\": \"#B9B8CE\",\r\n          \"fontSize\": 12\r\n        },\r\n        \"inverse\": false,\r\n        \"axisLabel\": {\r\n          \"show\": true,\r\n          \"fontSize\": 12,\r\n          \"color\": \"#B9B8CE\",\r\n          \"rotate\": 0\r\n        },\r\n        \"position\": \"bottom\",\r\n        \"axisLine\": {\r\n          \"show\": true,\r\n          \"lineStyle\": {\r\n            \"color\": \"#B9B8CE\",\r\n            \"width\": 1\r\n          },\r\n          \"onZero\": true\r\n        },\r\n        \"axisTick\": {\r\n          \"show\": true,\r\n          \"length\": 5\r\n        },\r\n        \"splitLine\": {\r\n          \"show\": false,\r\n          \"lineStyle\": {\r\n            \"color\": \"#484753\",\r\n            \"width\": 1,\r\n            \"type\": \"solid\"\r\n          }\r\n        }\r\n      },\r\n      \"yAxis\": {\r\n        \"show\": true,\r\n        \"name\": \"\",\r\n        \"nameGap\": 15,\r\n        \"nameTextStyle\": {\r\n          \"color\": \"#B9B8CE\",\r\n          \"fontSize\": 12\r\n        },\r\n        \"inverse\": false,\r\n        \"axisLabel\": {\r\n          \"show\": true,\r\n          \"fontSize\": 12,\r\n          \"color\": \"#B9B8CE\",\r\n          \"rotate\": 0\r\n        },\r\n        \"position\": \"left\",\r\n        \"axisLine\": {\r\n          \"show\": true,\r\n          \"lineStyle\": {\r\n            \"color\": \"#B9B8CE\",\r\n            \"width\": 1\r\n          },\r\n          \"onZero\": true\r\n        },\r\n        \"axisTick\": {\r\n          \"show\": true,\r\n          \"length\": 5\r\n        },\r\n        \"splitLine\": {\r\n          \"show\": true,\r\n          \"lineStyle\": {\r\n            \"color\": \"#484753\",\r\n            \"width\": 1,\r\n            \"type\": \"solid\"\r\n          }\r\n        }\r\n      },\r\n      \"legend\": {\r\n        \"show\": true,\r\n        \"type\": \"scroll\",\r\n        \"x\": \"center\",\r\n        \"y\": \"top\",\r\n        \"icon\": \"circle\",\r\n        \"orient\": \"horizontal\",\r\n        \"textStyle\": {\r\n          \"color\": \"#B9B8CE\",\r\n          \"fontSize\": 18\r\n        },\r\n        \"itemHeight\": 15,\r\n        \"itemWidth\": 15,\r\n        \"pageTextStyle\": {\r\n          \"color\": \"#B9B8CE\"\r\n        }\r\n      },\r\n      \"grid\": {\r\n        \"show\": false,\r\n        \"left\": \"10%\",\r\n        \"top\": \"60\",\r\n        \"right\": \"10%\",\r\n        \"bottom\": \"60\"\r\n      },\r\n      \"dataset\": null,\r\n      \"renderer\": \"svg\"\r\n    },\r\n    \"previewScaleType\": \"fit\"\r\n  },\r\n  \"componentList\": [\r\n    {\r\n      \"id\": \"30ebkc6r6iy000\",\r\n      \"isGroup\": false,\r\n      \"attr\": {\r\n        \"x\": 215,\r\n        \"y\": 558,\r\n        \"w\": 500,\r\n        \"h\": 300,\r\n        \"offsetX\": 0,\r\n        \"offsetY\": 0,\r\n        \"zIndex\": -1\r\n      },\r\n      \"styles\": {\r\n        \"filterShow\": false,\r\n        \"hueRotate\": 0,\r\n        \"saturate\": 1,\r\n        \"contrast\": 1,\r\n        \"brightness\": 1,\r\n        \"opacity\": 1,\r\n        \"rotateZ\": 0,\r\n        \"rotateX\": 0,\r\n        \"rotateY\": 0,\r\n        \"skewX\": 0,\r\n        \"skewY\": 0,\r\n        \"blendMode\": \"normal\",\r\n        \"animations\": []\r\n      },\r\n      \"preview\": {\r\n        \"overFlowHidden\": false\r\n      },\r\n      \"status\": {\r\n        \"lock\": false,\r\n        \"hide\": false\r\n      },\r\n      \"request\": {\r\n        \"requestDataType\": 0,\r\n        \"requestHttpType\": \"get\",\r\n        \"requestUrl\": \"\",\r\n        \"requestInterval\": null,\r\n        \"requestIntervalUnit\": \"second\",\r\n        \"requestContentType\": 0,\r\n        \"requestParamsBodyType\": \"none\",\r\n        \"requestSQLContent\": {\r\n          \"sql\": \"select * from  where\"\r\n        },\r\n        \"requestParams\": {\r\n          \"Body\": {\r\n            \"form-data\": {},\r\n            \"x-www-form-urlencoded\": {},\r\n            \"json\": \"\",\r\n            \"xml\": \"\"\r\n          },\r\n          \"Header\": {},\r\n          \"Params\": {}\r\n        }\r\n      },\r\n      \"filter\": null,\r\n      \"events\": {\r\n        \"baseEvent\": {\r\n          \"click\": null,\r\n          \"dblclick\": null,\r\n          \"mouseenter\": null,\r\n          \"mouseleave\": null\r\n        },\r\n        \"advancedEvents\": {\r\n          \"vnodeMounted\": null,\r\n          \"vnodeBeforeMount\": null\r\n        },\r\n        \"interactEvents\": []\r\n      },\r\n      \"key\": \"BarCommon\",\r\n      \"chartConfig\": {\r\n        \"key\": \"BarCommon\",\r\n        \"chartKey\": \"VBarCommon\",\r\n        \"conKey\": \"VCBarCommon\",\r\n        \"title\": \"柱状图\",\r\n        \"category\": \"Bars\",\r\n        \"categoryName\": \"柱状图\",\r\n        \"package\": \"Charts\",\r\n        \"chartFrame\": \"echarts\",\r\n        \"image\": \"bar_x.png\"\r\n      },\r\n      \"option\": {\r\n        \"legend\": {\r\n          \"show\": true,\r\n          \"type\": \"scroll\",\r\n          \"x\": \"center\",\r\n          \"y\": \"top\",\r\n          \"icon\": \"circle\",\r\n          \"orient\": \"horizontal\",\r\n          \"textStyle\": {\r\n            \"color\": \"#B9B8CE\",\r\n            \"fontSize\": 18\r\n          },\r\n          \"itemHeight\": 15,\r\n          \"itemWidth\": 15,\r\n          \"pageTextStyle\": {\r\n            \"color\": \"#B9B8CE\"\r\n          }\r\n        },\r\n        \"xAxis\": {\r\n          \"show\": true,\r\n          \"name\": \"\",\r\n          \"nameGap\": 15,\r\n          \"nameTextStyle\": {\r\n            \"color\": \"#B9B8CE\",\r\n            \"fontSize\": 12\r\n          },\r\n          \"inverse\": false,\r\n          \"axisLabel\": {\r\n            \"show\": true,\r\n            \"fontSize\": 12,\r\n            \"color\": \"#B9B8CE\",\r\n            \"rotate\": 0\r\n          },\r\n          \"position\": \"bottom\",\r\n          \"axisLine\": {\r\n            \"show\": true,\r\n            \"lineStyle\": {\r\n              \"color\": \"#B9B8CE\",\r\n              \"width\": 1\r\n            },\r\n            \"onZero\": true\r\n          },\r\n          \"axisTick\": {\r\n            \"show\": true,\r\n            \"length\": 5\r\n          },\r\n          \"splitLine\": {\r\n            \"show\": false,\r\n            \"lineStyle\": {\r\n              \"color\": \"#484753\",\r\n              \"width\": 1,\r\n              \"type\": \"solid\"\r\n            }\r\n          },\r\n          \"type\": \"category\"\r\n        },\r\n        \"yAxis\": {\r\n          \"show\": true,\r\n          \"name\": \"\",\r\n          \"nameGap\": 15,\r\n          \"nameTextStyle\": {\r\n            \"color\": \"#B9B8CE\",\r\n            \"fontSize\": 12\r\n          },\r\n          \"inverse\": false,\r\n          \"axisLabel\": {\r\n            \"show\": true,\r\n            \"fontSize\": 12,\r\n            \"color\": \"#B9B8CE\",\r\n            \"rotate\": 0\r\n          },\r\n          \"position\": \"left\",\r\n          \"axisLine\": {\r\n            \"show\": true,\r\n            \"lineStyle\": {\r\n              \"color\": \"#B9B8CE\",\r\n              \"width\": 1\r\n            },\r\n            \"onZero\": true\r\n          },\r\n          \"axisTick\": {\r\n            \"show\": true,\r\n            \"length\": 5\r\n          },\r\n          \"splitLine\": {\r\n            \"show\": true,\r\n            \"lineStyle\": {\r\n              \"color\": \"#484753\",\r\n              \"width\": 1,\r\n              \"type\": \"solid\"\r\n            }\r\n          },\r\n          \"type\": \"value\"\r\n        },\r\n        \"grid\": {\r\n          \"show\": false,\r\n          \"left\": \"10%\",\r\n          \"top\": \"60\",\r\n          \"right\": \"10%\",\r\n          \"bottom\": \"60\"\r\n        },\r\n        \"tooltip\": {\r\n          \"show\": true,\r\n          \"trigger\": \"axis\",\r\n          \"axisPointer\": {\r\n            \"show\": true,\r\n            \"type\": \"shadow\"\r\n          }\r\n        },\r\n        \"dataset\": {\r\n          \"dimensions\": [\r\n            \"product\",\r\n            \"data1\",\r\n            \"data2\"\r\n          ],\r\n          \"source\": [\r\n            {\r\n              \"product\": \"Mon\",\r\n              \"data1\": 120,\r\n              \"data2\": 130\r\n            },\r\n            {\r\n              \"product\": \"Tue\",\r\n              \"data1\": 200,\r\n              \"data2\": 130\r\n            },\r\n            {\r\n              \"product\": \"Wed\",\r\n              \"data1\": 150,\r\n              \"data2\": 312\r\n            },\r\n            {\r\n              \"product\": \"Thu\",\r\n              \"data1\": 80,\r\n              \"data2\": 268\r\n            },\r\n            {\r\n              \"product\": \"Fri\",\r\n              \"data1\": 70,\r\n              \"data2\": 155\r\n            },\r\n            {\r\n              \"product\": \"Sat\",\r\n              \"data1\": 110,\r\n              \"data2\": 117\r\n            },\r\n            {\r\n              \"product\": \"Sun\",\r\n              \"data1\": 130,\r\n              \"data2\": 160\r\n            }\r\n          ]\r\n        },\r\n        \"series\": [\r\n          {\r\n            \"type\": \"bar\",\r\n            \"barWidth\": 15,\r\n            \"label\": {\r\n              \"show\": true,\r\n              \"position\": \"top\",\r\n              \"color\": \"#fff\",\r\n              \"fontSize\": 12\r\n            },\r\n            \"itemStyle\": {\r\n              \"color\": null,\r\n              \"borderRadius\": 2\r\n            }\r\n          },\r\n          {\r\n            \"type\": \"bar\",\r\n            \"barWidth\": 15,\r\n            \"label\": {\r\n              \"show\": true,\r\n              \"position\": \"top\",\r\n              \"color\": \"#fff\",\r\n              \"fontSize\": 12\r\n            },\r\n            \"itemStyle\": {\r\n              \"color\": null,\r\n              \"borderRadius\": 2\r\n            }\r\n          }\r\n        ],\r\n        \"backgroundColor\": \"rgba(0,0,0,0)\"\r\n      }\r\n    }\r\n  ],\r\n  \"requestGlobalConfig\": {\r\n    \"requestDataPond\": [],\r\n    \"requestOriginUrl\": \"\",\r\n    \"requestInterval\": 30,\r\n    \"requestIntervalUnit\": \"second\",\r\n    \"requestParams\": {\r\n      \"Body\": {\r\n        \"form-data\": {},\r\n        \"x-www-form-urlencoded\": {},\r\n        \"json\": \"\",\r\n        \"xml\": \"\"\r\n      },\r\n      \"Header\": {},\r\n      \"Params\": {}\r\n    }\r\n  }\r\n}', NULL, NULL);

-- ----------------------------
-- Table structure for t_sys_file
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_file`;
CREATE TABLE `t_sys_file`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `file_suffix` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `md5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `virtual_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `relative_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `absolute_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) DEFAULT NULL,
  `updated_at` timestamp(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) DEFAULT NULL,
  `updated_at` timestamp(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '管理员', '2', '410792368778907648', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
