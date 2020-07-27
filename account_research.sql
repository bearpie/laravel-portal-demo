/*
 Navicat Premium Data Transfer

 Source Server         : Homestead
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:33060
 Source Schema         : account_research

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 28/07/2020 03:23:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for addresses
-- ----------------------------
DROP TABLE IF EXISTS `addresses`;
CREATE TABLE `addresses`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of addresses
-- ----------------------------
INSERT INTO `addresses` VALUES (101, 'Cristian Lee', 'cristian.lee1111@gmail.com', 'Earth', 'None', 0, '2020-07-27 12:14:55', '2020-07-27 12:44:56');
INSERT INTO `addresses` VALUES (102, 'David Lim', 'davidlimdev@gmail.com', 'Earth', 'None', 0, '2020-07-27 12:19:07', '2020-07-27 12:19:07');

-- ----------------------------
-- Table structure for email_template
-- ----------------------------
DROP TABLE IF EXISTS `email_template`;
CREATE TABLE `email_template`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of email_template
-- ----------------------------
INSERT INTO `email_template` VALUES (1, NULL, '2020-07-27 13:48:35', 'I hope you are staying safe and healthy in these uncertain times.\r\n \r\nMy name is David, and I am a full stack web developer with over 8 years of experience.\r\n \r\nI have an idea to collaborate with each other.\r\nHave you heard of Upwork? (https://www.upwork.com)\r\nIf you already have an Upwork account, then I would like to borrow it.\r\nIf you don’t have one, we can create it. I can help you with that. \r\nI\'m going to share the 15 ~ 20% of profit while I\'m using your account.\r\nYou will get an extra income each month just for sharing your account.\r\n \r\nIf you are interested in this kind of collaboration, I’d love to tell you more about this position and discuss how we could achieve great things together.\r\n \r\nBest Regards,\r\nDavid', 'Account Research', 'Potential Collaboration in a Remote Web Workplace');

-- ----------------------------
-- Table structure for example
-- ----------------------------
DROP TABLE IF EXISTS `example`;
CREATE TABLE `example`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of example
-- ----------------------------
INSERT INTO `example` VALUES (1, NULL, NULL, 'Et est aliquid quia.', 'Et et et rerum dolores corporis.', 2);
INSERT INTO `example` VALUES (2, NULL, NULL, 'Vel et voluptatem impedit beatae.', 'Quis et et quidem ut delectus sunt. Quisquam dolores voluptatem ab voluptatibus minima ut.', 1);
INSERT INTO `example` VALUES (3, NULL, NULL, 'Quibusdam quia doloribus ut at iure.', 'Eaque necessitatibus illo magni error omnis.', 4);
INSERT INTO `example` VALUES (4, NULL, NULL, 'Sequi quia qui veniam temporibus et.', 'Perspiciatis et iste recusandae. Accusamus qui adipisci voluptatibus exercitationem et quasi architecto.', 4);
INSERT INTO `example` VALUES (5, NULL, NULL, 'Officia expedita distinctio vel.', 'Laborum et voluptatibus illum consectetur qui ut.', 2);
INSERT INTO `example` VALUES (6, NULL, NULL, 'Dicta corrupti sunt.', 'Aut labore in aut sed qui doloremque quia. Ut ipsum quia nesciunt amet.', 3);
INSERT INTO `example` VALUES (7, NULL, NULL, 'Nam aut et vero aliquid.', 'Fugit ut aliquid nostrum animi et inventore saepe saepe. Quis et a adipisci maiores.', 2);
INSERT INTO `example` VALUES (8, NULL, NULL, 'Corrupti consectetur ab et.', 'Consequatur aliquam optio officia animi.', 3);
INSERT INTO `example` VALUES (9, NULL, NULL, 'Et et eius consequatur sapiente dolorem.', 'Quas reiciendis culpa reprehenderit dolor. Alias officiis molestias illo aut eos veniam ea.', 2);
INSERT INTO `example` VALUES (10, NULL, NULL, 'Voluptatum est exercitationem aspernatur numquam.', 'Rem nostrum magnam qui numquam. Quo est rerum aliquam ea sit cum.', 2);
INSERT INTO `example` VALUES (11, NULL, NULL, 'Omnis praesentium aut.', 'Quia sequi voluptatem ad at voluptatem.', 2);
INSERT INTO `example` VALUES (12, NULL, NULL, 'Ex non itaque.', 'Mollitia rem aut ipsa assumenda fuga. Praesentium dolores ex et dolor natus omnis aperiam ut.', 1);
INSERT INTO `example` VALUES (13, NULL, NULL, 'Voluptatibus non sunt quos animi.', 'Molestiae vel nostrum repellat. Occaecati quis qui hic qui sed.', 2);
INSERT INTO `example` VALUES (14, NULL, NULL, 'Velit qui cum minus ut unde.', 'Totam eum voluptatem temporibus. Amet repellendus minus officia nam eos voluptates eos.', 2);
INSERT INTO `example` VALUES (15, NULL, NULL, 'Quae quae vitae.', 'Suscipit rerum quia perferendis corrupti fugiat. Numquam sed illum sunt laboriosam est nesciunt.', 4);
INSERT INTO `example` VALUES (16, NULL, NULL, 'Consequatur quia perspiciatis et sunt praesentium.', 'Iusto eaque repellendus consequatur ut blanditiis beatae. Esse saepe cumque nesciunt ut.', 3);
INSERT INTO `example` VALUES (17, NULL, NULL, 'Esse occaecati nostrum fugit.', 'A sit ut similique autem est eveniet aliquam. Molestiae eum aliquam sit recusandae sunt.', 3);
INSERT INTO `example` VALUES (18, NULL, NULL, 'Et libero adipisci animi ipsa nisi.', 'Nulla est aut aspernatur quos qui.', 4);
INSERT INTO `example` VALUES (19, NULL, NULL, 'Omnis architecto commodi optio.', 'Distinctio porro dolor est qui. Repellat numquam repudiandae ut ipsa.', 2);
INSERT INTO `example` VALUES (20, NULL, NULL, 'Sed praesentium delectus.', 'Quia est est et et dolore. Eveniet aut labore quis deleniti.', 3);
INSERT INTO `example` VALUES (21, NULL, NULL, 'Est similique culpa eos.', 'Ut adipisci enim unde et animi esse nisi.', 2);
INSERT INTO `example` VALUES (22, NULL, NULL, 'Delectus officia qui debitis odit.', 'Dolores voluptatem voluptatibus sit laudantium eum sed nobis. Voluptas et suscipit adipisci.', 3);
INSERT INTO `example` VALUES (23, NULL, NULL, 'In esse eveniet est facere.', 'Necessitatibus eos vel et suscipit sed ex aspernatur. Veniam architecto labore eos minus.', 4);
INSERT INTO `example` VALUES (24, NULL, NULL, 'Et vel consequuntur.', 'Ipsam consequatur corrupti magni.', 1);
INSERT INTO `example` VALUES (25, NULL, NULL, 'Dolore nobis ab sed et sit.', 'Unde ea itaque cupiditate libero in consequatur. Nulla rerum facere esse sed quod facere.', 2);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for folder
-- ----------------------------
DROP TABLE IF EXISTS `folder`;
CREATE TABLE `folder`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `resource` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of folder
-- ----------------------------
INSERT INTO `folder` VALUES (1, NULL, NULL, 'root', NULL, NULL);
INSERT INTO `folder` VALUES (2, NULL, NULL, 'resource', 1, 1);
INSERT INTO `folder` VALUES (3, NULL, NULL, 'documents', 1, NULL);
INSERT INTO `folder` VALUES (4, NULL, NULL, 'graphics', 1, NULL);
INSERT INTO `folder` VALUES (5, NULL, NULL, 'other', 1, NULL);

-- ----------------------------
-- Table structure for form
-- ----------------------------
DROP TABLE IF EXISTS `form`;
CREATE TABLE `form`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL,
  `edit` tinyint(1) NOT NULL,
  `add` tinyint(1) NOT NULL,
  `delete` tinyint(1) NOT NULL,
  `pagination` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form
-- ----------------------------
INSERT INTO `form` VALUES (1, NULL, NULL, 'Example', 'example', 1, 1, 1, 1, 5);

-- ----------------------------
-- Table structure for form_field
-- ----------------------------
DROP TABLE IF EXISTS `form_field`;
CREATE TABLE `form_field`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `browse` tinyint(1) NOT NULL,
  `read` tinyint(1) NOT NULL,
  `edit` tinyint(1) NOT NULL,
  `add` tinyint(1) NOT NULL,
  `relation_table` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `relation_column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `form_id` int(10) UNSIGNED NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form_field
-- ----------------------------
INSERT INTO `form_field` VALUES (1, NULL, NULL, 'Title', 'text', 1, 1, 1, 1, NULL, NULL, 1, 'name');
INSERT INTO `form_field` VALUES (2, NULL, NULL, 'Description', 'text_area', 1, 1, 1, 1, NULL, NULL, 1, 'description');
INSERT INTO `form_field` VALUES (3, NULL, NULL, 'Status', 'relation_select', 1, 1, 1, 1, 'status', 'name', 1, 'status_id');

-- ----------------------------
-- Table structure for media
-- ----------------------------
DROP TABLE IF EXISTS `media`;
CREATE TABLE `media`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int(10) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `media_model_type_model_id_index`(`model_type`, `model_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of media
-- ----------------------------

-- ----------------------------
-- Table structure for menu_role
-- ----------------------------
DROP TABLE IF EXISTS `menu_role`;
CREATE TABLE `menu_role`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menus_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 123 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_role
-- ----------------------------
INSERT INTO `menu_role` VALUES (3, 'admin', 1);
INSERT INTO `menu_role` VALUES (4, 'admin', 2);
INSERT INTO `menu_role` VALUES (6, 'admin', 4);
INSERT INTO `menu_role` VALUES (7, 'admin', 5);
INSERT INTO `menu_role` VALUES (8, 'admin', 6);
INSERT INTO `menu_role` VALUES (9, 'admin', 7);
INSERT INTO `menu_role` VALUES (120, 'admin', 10);
INSERT INTO `menu_role` VALUES (122, 'admin', 66);

-- ----------------------------
-- Table structure for menulist
-- ----------------------------
DROP TABLE IF EXISTS `menulist`;
CREATE TABLE `menulist`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menulist
-- ----------------------------
INSERT INTO `menulist` VALUES (1, 'sidebar menu');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `href` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `sequence` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, 'Dashboard', '/', 'cil-speedometer', 'link', NULL, 1, 1);
INSERT INTO `menus` VALUES (2, 'Settings', NULL, 'cil-calculator', 'dropdown', NULL, 1, 5);
INSERT INTO `menus` VALUES (4, 'Users', '/users', NULL, 'link', 2, 1, 6);
INSERT INTO `menus` VALUES (5, 'Edit menu', '/menu/menu', NULL, 'link', 2, 1, 7);
INSERT INTO `menus` VALUES (6, 'Edit menu elements', '/menu/element', NULL, 'link', 2, 1, 8);
INSERT INTO `menus` VALUES (7, 'Edit roles', '/roles', NULL, 'link', 2, 1, 9);
INSERT INTO `menus` VALUES (10, 'Email', '/mail', 'cil-envelope-letter', 'link', NULL, 1, 2);
INSERT INTO `menus` VALUES (66, 'Address Book', '/addresses', 'cil-address-book', 'link', NULL, 1, 4);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (17, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (18, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (19, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (20, '2019_10_11_085455_create_notes_table', 1);
INSERT INTO `migrations` VALUES (21, '2019_10_12_115248_create_status_table', 1);
INSERT INTO `migrations` VALUES (22, '2019_11_08_102827_create_menus_table', 1);
INSERT INTO `migrations` VALUES (23, '2019_11_13_092213_create_menurole_table', 1);
INSERT INTO `migrations` VALUES (24, '2019_12_10_092113_create_permission_tables', 1);
INSERT INTO `migrations` VALUES (25, '2019_12_11_091036_create_menulist_table', 1);
INSERT INTO `migrations` VALUES (26, '2019_12_18_092518_create_role_hierarchy_table', 1);
INSERT INTO `migrations` VALUES (27, '2020_01_07_093259_create_folder_table', 1);
INSERT INTO `migrations` VALUES (28, '2020_01_08_184500_create_media_table', 1);
INSERT INTO `migrations` VALUES (29, '2020_01_21_161241_create_form_field_table', 1);
INSERT INTO `migrations` VALUES (30, '2020_01_21_161242_create_form_table', 1);
INSERT INTO `migrations` VALUES (31, '2020_01_21_161243_create_example_table', 1);
INSERT INTO `migrations` VALUES (32, '2020_03_12_111400_create_email_template_table', 1);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id`, `model_type`) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id`, `model_type`) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (1, 'App\\User', 1);
INSERT INTO `model_has_roles` VALUES (2, 'App\\User', 1);
INSERT INTO `model_has_roles` VALUES (2, 'App\\User', 2);
INSERT INTO `model_has_roles` VALUES (2, 'App\\User', 3);
INSERT INTO `model_has_roles` VALUES (2, 'App\\User', 4);
INSERT INTO `model_has_roles` VALUES (2, 'App\\User', 5);
INSERT INTO `model_has_roles` VALUES (2, 'App\\User', 6);
INSERT INTO `model_has_roles` VALUES (2, 'App\\User', 7);
INSERT INTO `model_has_roles` VALUES (2, 'App\\User', 8);
INSERT INTO `model_has_roles` VALUES (2, 'App\\User', 9);
INSERT INTO `model_has_roles` VALUES (2, 'App\\User', 10);
INSERT INTO `model_has_roles` VALUES (2, 'App\\User', 11);

-- ----------------------------
-- Table structure for notes
-- ----------------------------
DROP TABLE IF EXISTS `notes`;
CREATE TABLE `notes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `applies_to_date` date NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notes
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'browse bread 1', 'web', '2020-07-25 17:10:19', '2020-07-25 17:10:19');
INSERT INTO `permissions` VALUES (2, 'read bread 1', 'web', '2020-07-25 17:10:19', '2020-07-25 17:10:19');
INSERT INTO `permissions` VALUES (3, 'edit bread 1', 'web', '2020-07-25 17:10:19', '2020-07-25 17:10:19');
INSERT INTO `permissions` VALUES (4, 'add bread 1', 'web', '2020-07-25 17:10:19', '2020-07-25 17:10:19');
INSERT INTO `permissions` VALUES (5, 'delete bread 1', 'web', '2020-07-25 17:10:19', '2020-07-25 17:10:19');

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id`) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` VALUES (1, 3);
INSERT INTO `role_has_permissions` VALUES (2, 3);
INSERT INTO `role_has_permissions` VALUES (3, 3);
INSERT INTO `role_has_permissions` VALUES (4, 3);
INSERT INTO `role_has_permissions` VALUES (5, 3);

-- ----------------------------
-- Table structure for role_hierarchy
-- ----------------------------
DROP TABLE IF EXISTS `role_hierarchy`;
CREATE TABLE `role_hierarchy`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `hierarchy` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_hierarchy
-- ----------------------------
INSERT INTO `role_hierarchy` VALUES (1, 1, 1);
INSERT INTO `role_hierarchy` VALUES (2, 2, 2);
INSERT INTO `role_hierarchy` VALUES (3, 3, 3);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'admin', 'web', '2020-07-25 17:10:17', '2020-07-25 17:10:17');
INSERT INTO `roles` VALUES (2, 'user', 'web', '2020-07-25 17:10:17', '2020-07-25 17:10:17');
INSERT INTO `roles` VALUES (3, 'guest', 'web', '2020-07-25 17:10:17', '2020-07-25 17:10:17');

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES (1, 'ongoing', 'badge badge-pill badge-primary');
INSERT INTO `status` VALUES (2, 'stopped', 'badge badge-pill badge-secondary');
INSERT INTO `status` VALUES (3, 'completed', 'badge badge-pill badge-success');
INSERT INTO `status` VALUES (4, 'expired', 'badge badge-pill badge-warning');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menuroles` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Admin', 'admin@admin.com', '2020-07-25 17:10:17', '$2y$12$Ri9te1TjJYGp.VM.e/zy6.QRdAQet6TDr5who6hF1cXN6Td/vEa/G', 'user,admin', '4FtRJYh9Ikl4blj30Woorkl7IwNCLf5WHz9z1ctsZEQTczMSC5vsFifAhEbU', '2020-07-25 17:10:17', '2020-07-25 17:11:36', NULL);

SET FOREIGN_KEY_CHECKS = 1;
