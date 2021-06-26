-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 16-06-2021 a las 13:57:29
-- Versión del servidor: 5.7.23-23
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `onebeyrc_modx`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_access_actiondom`
--

CREATE TABLE `modx_access_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_access_actions`
--

CREATE TABLE `modx_access_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_access_category`
--

CREATE TABLE `modx_access_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_access_context`
--

CREATE TABLE `modx_access_context` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_access_context`
--

INSERT INTO `modx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES
(1, 'web', 'modUserGroup', 0, 9999, 3),
(2, 'mgr', 'modUserGroup', 1, 0, 2),
(3, 'web', 'modUserGroup', 1, 0, 2),
(4, 'web', 'modUserGroup', 2, 9999, 11),
(5, 'mgr', 'modUserGroup', 2, 9999, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_access_elements`
--

CREATE TABLE `modx_access_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_access_media_source`
--

CREATE TABLE `modx_access_media_source` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_access_media_source`
--

INSERT INTO `modx_access_media_source` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`, `context_key`) VALUES
(1, '1', 'modUserGroup', 1, 0, 8, ''),
(4, '2', 'modUserGroup', 2, 9999, 8, 'mgr');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_access_menus`
--

CREATE TABLE `modx_access_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_access_namespace`
--

CREATE TABLE `modx_access_namespace` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_access_permissions`
--

CREATE TABLE `modx_access_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_access_permissions`
--

INSERT INTO `modx_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'dashboards', 'perm.dashboards_desc', 1),
(15, 1, 'database', 'perm.database_desc', 1),
(16, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(17, 1, 'delete_category', 'perm.delete_category_desc', 1),
(18, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(19, 1, 'delete_context', 'perm.delete_context_desc', 1),
(20, 1, 'delete_document', 'perm.delete_document_desc', 1),
(21, 1, 'delete_weblink', 'perm.delete_weblink_desc', 1),
(22, 1, 'delete_symlink', 'perm.delete_symlink_desc', 1),
(23, 1, 'delete_static_resource', 'perm.delete_static_resource_desc', 1),
(24, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(25, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(26, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(27, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(28, 1, 'delete_template', 'perm.delete_template_desc', 1),
(29, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(30, 1, 'delete_role', 'perm.delete_role_desc', 1),
(31, 1, 'delete_user', 'perm.delete_user_desc', 1),
(32, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(33, 1, 'directory_create', 'perm.directory_create_desc', 1),
(34, 1, 'directory_list', 'perm.directory_list_desc', 1),
(35, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(36, 1, 'directory_update', 'perm.directory_update_desc', 1),
(37, 1, 'edit_category', 'perm.edit_category_desc', 1),
(38, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(39, 1, 'edit_context', 'perm.edit_context_desc', 1),
(40, 1, 'edit_document', 'perm.edit_document_desc', 1),
(41, 1, 'edit_weblink', 'perm.edit_weblink_desc', 1),
(42, 1, 'edit_symlink', 'perm.edit_symlink_desc', 1),
(43, 1, 'edit_static_resource', 'perm.edit_static_resource_desc', 1),
(44, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(45, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(46, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(47, 1, 'edit_role', 'perm.edit_role_desc', 1),
(48, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(49, 1, 'edit_template', 'perm.edit_template_desc', 1),
(50, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(51, 1, 'edit_user', 'perm.edit_user_desc', 1),
(52, 1, 'element_tree', 'perm.element_tree_desc', 1),
(53, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(54, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(55, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(56, 1, 'export_static', 'perm.export_static_desc', 1),
(57, 1, 'file_create', 'perm.file_create_desc', 1),
(58, 1, 'file_list', 'perm.file_list_desc', 1),
(59, 1, 'file_manager', 'perm.file_manager_desc', 1),
(60, 1, 'file_remove', 'perm.file_remove_desc', 1),
(61, 1, 'file_tree', 'perm.file_tree_desc', 1),
(62, 1, 'file_update', 'perm.file_update_desc', 1),
(63, 1, 'file_upload', 'perm.file_upload_desc', 1),
(64, 1, 'file_unpack', 'perm.file_unpack_desc', 1),
(65, 1, 'file_view', 'perm.file_view_desc', 1),
(66, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(67, 1, 'frames', 'perm.frames_desc', 1),
(68, 1, 'help', 'perm.help_desc', 1),
(69, 1, 'home', 'perm.home_desc', 1),
(70, 1, 'import_static', 'perm.import_static_desc', 1),
(71, 1, 'languages', 'perm.languages_desc', 1),
(72, 1, 'lexicons', 'perm.lexicons_desc', 1),
(73, 1, 'list', 'perm.list_desc', 1),
(74, 1, 'load', 'perm.load_desc', 1),
(75, 1, 'logout', 'perm.logout_desc', 1),
(76, 1, 'logs', 'perm.logs_desc', 1),
(77, 1, 'menu_reports', 'perm.menu_reports_desc', 1),
(78, 1, 'menu_security', 'perm.menu_security_desc', 1),
(79, 1, 'menu_site', 'perm.menu_site_desc', 1),
(80, 1, 'menu_support', 'perm.menu_support_desc', 1),
(81, 1, 'menu_system', 'perm.menu_system_desc', 1),
(82, 1, 'menu_tools', 'perm.menu_tools_desc', 1),
(83, 1, 'menu_trash', 'perm.menu_trash_desc', 1),
(84, 1, 'menu_user', 'perm.menu_user_desc', 1),
(85, 1, 'menus', 'perm.menus_desc', 1),
(86, 1, 'messages', 'perm.messages_desc', 1),
(87, 1, 'namespaces', 'perm.namespaces_desc', 1),
(88, 1, 'new_category', 'perm.new_category_desc', 1),
(89, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(90, 1, 'new_context', 'perm.new_context_desc', 1),
(91, 1, 'new_document', 'perm.new_document_desc', 1),
(92, 1, 'new_static_resource', 'perm.new_static_resource_desc', 1),
(93, 1, 'new_symlink', 'perm.new_symlink_desc', 1),
(94, 1, 'new_weblink', 'perm.new_weblink_desc', 1),
(95, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(96, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(97, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(98, 1, 'new_role', 'perm.new_role_desc', 1),
(99, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(100, 1, 'new_template', 'perm.new_template_desc', 1),
(101, 1, 'new_tv', 'perm.new_tv_desc', 1),
(102, 1, 'new_user', 'perm.new_user_desc', 1),
(103, 1, 'packages', 'perm.packages_desc', 1),
(104, 1, 'policy_delete', 'perm.policy_delete_desc', 1),
(105, 1, 'policy_edit', 'perm.policy_edit_desc', 1),
(106, 1, 'policy_new', 'perm.policy_new_desc', 1),
(107, 1, 'policy_save', 'perm.policy_save_desc', 1),
(108, 1, 'policy_view', 'perm.policy_view_desc', 1),
(109, 1, 'policy_template_delete', 'perm.policy_template_delete_desc', 1),
(110, 1, 'policy_template_edit', 'perm.policy_template_edit_desc', 1),
(111, 1, 'policy_template_new', 'perm.policy_template_new_desc', 1),
(112, 1, 'policy_template_save', 'perm.policy_template_save_desc', 1),
(113, 1, 'policy_template_view', 'perm.policy_template_view_desc', 1),
(114, 1, 'property_sets', 'perm.property_sets_desc', 1),
(115, 1, 'providers', 'perm.providers_desc', 1),
(116, 1, 'publish_document', 'perm.publish_document_desc', 1),
(117, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(118, 1, 'remove', 'perm.remove_desc', 1),
(119, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(120, 1, 'resource_duplicate', 'perm.resource_duplicate_desc', 1),
(121, 1, 'resourcegroup_delete', 'perm.resourcegroup_delete_desc', 1),
(122, 1, 'resourcegroup_edit', 'perm.resourcegroup_edit_desc', 1),
(123, 1, 'resourcegroup_new', 'perm.resourcegroup_new_desc', 1),
(124, 1, 'resourcegroup_resource_edit', 'perm.resourcegroup_resource_edit_desc', 1),
(125, 1, 'resourcegroup_resource_list', 'perm.resourcegroup_resource_list_desc', 1),
(126, 1, 'resourcegroup_save', 'perm.resourcegroup_save_desc', 1),
(127, 1, 'resourcegroup_view', 'perm.resourcegroup_view_desc', 1),
(128, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(129, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(130, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(131, 1, 'save', 'perm.save_desc', 1),
(132, 1, 'save_category', 'perm.save_category_desc', 1),
(133, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(134, 1, 'save_context', 'perm.save_context_desc', 1),
(135, 1, 'save_document', 'perm.save_document_desc', 1),
(136, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(137, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(138, 1, 'save_role', 'perm.save_role_desc', 1),
(139, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(140, 1, 'save_template', 'perm.save_template_desc', 1),
(141, 1, 'save_tv', 'perm.save_tv_desc', 1),
(142, 1, 'save_user', 'perm.save_user_desc', 1),
(143, 1, 'search', 'perm.search_desc', 1),
(144, 1, 'set_sudo', 'perm.set_sudo_desc', 1),
(145, 1, 'settings', 'perm.settings_desc', 1),
(146, 1, 'events', 'perm.events_desc', 1),
(147, 1, 'source_save', 'perm.source_save_desc', 1),
(148, 1, 'source_delete', 'perm.source_delete_desc', 1),
(149, 1, 'source_edit', 'perm.source_edit_desc', 1),
(150, 1, 'source_view', 'perm.source_view_desc', 1),
(151, 1, 'sources', 'perm.sources_desc', 1),
(152, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(153, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(154, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(155, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(156, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(157, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(158, 1, 'usergroup_delete', 'perm.usergroup_delete_desc', 1),
(159, 1, 'usergroup_edit', 'perm.usergroup_edit_desc', 1),
(160, 1, 'usergroup_new', 'perm.usergroup_new_desc', 1),
(161, 1, 'usergroup_save', 'perm.usergroup_save_desc', 1),
(162, 1, 'usergroup_user_edit', 'perm.usergroup_user_edit_desc', 1),
(163, 1, 'usergroup_user_list', 'perm.usergroup_user_list_desc', 1),
(164, 1, 'usergroup_view', 'perm.usergroup_view_desc', 1),
(165, 1, 'view', 'perm.view_desc', 1),
(166, 1, 'view_category', 'perm.view_category_desc', 1),
(167, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(168, 1, 'view_context', 'perm.view_context_desc', 1),
(169, 1, 'view_document', 'perm.view_document_desc', 1),
(170, 1, 'view_element', 'perm.view_element_desc', 1),
(171, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(172, 1, 'view_offline', 'perm.view_offline_desc', 1),
(173, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(174, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(175, 1, 'view_role', 'perm.view_role_desc', 1),
(176, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(177, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(178, 1, 'view_template', 'perm.view_template_desc', 1),
(179, 1, 'view_tv', 'perm.view_tv_desc', 1),
(180, 1, 'view_user', 'perm.view_user_desc', 1),
(181, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(182, 1, 'workspaces', 'perm.workspaces_desc', 1),
(183, 2, 'add_children', 'perm.add_children_desc', 1),
(184, 2, 'copy', 'perm.copy_desc', 1),
(185, 2, 'create', 'perm.create_desc', 1),
(186, 2, 'delete', 'perm.delete_desc', 1),
(187, 2, 'list', 'perm.list_desc', 1),
(188, 2, 'load', 'perm.load_desc', 1),
(189, 2, 'move', 'perm.move_desc', 1),
(190, 2, 'publish', 'perm.publish_desc', 1),
(191, 2, 'remove', 'perm.remove_desc', 1),
(192, 2, 'save', 'perm.save_desc', 1),
(193, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(194, 2, 'undelete', 'perm.undelete_desc', 1),
(195, 2, 'unpublish', 'perm.unpublish_desc', 1),
(196, 2, 'view', 'perm.view_desc', 1),
(197, 3, 'load', 'perm.load_desc', 1),
(198, 3, 'list', 'perm.list_desc', 1),
(199, 3, 'view', 'perm.view_desc', 1),
(200, 3, 'save', 'perm.save_desc', 1),
(201, 3, 'remove', 'perm.remove_desc', 1),
(202, 4, 'add_children', 'perm.add_children_desc', 1),
(203, 4, 'create', 'perm.create_desc', 1),
(204, 4, 'copy', 'perm.copy_desc', 1),
(205, 4, 'delete', 'perm.delete_desc', 1),
(206, 4, 'list', 'perm.list_desc', 1),
(207, 4, 'load', 'perm.load_desc', 1),
(208, 4, 'remove', 'perm.remove_desc', 1),
(209, 4, 'save', 'perm.save_desc', 1),
(210, 4, 'view', 'perm.view_desc', 1),
(211, 5, 'create', 'perm.create_desc', 1),
(212, 5, 'copy', 'perm.copy_desc', 1),
(213, 5, 'list', 'perm.list_desc', 1),
(214, 5, 'load', 'perm.load_desc', 1),
(215, 5, 'remove', 'perm.remove_desc', 1),
(216, 5, 'save', 'perm.save_desc', 1),
(217, 5, 'view', 'perm.view_desc', 1),
(218, 6, 'load', 'perm.load_desc', 1),
(219, 6, 'list', 'perm.list_desc', 1),
(220, 6, 'view', 'perm.view_desc', 1),
(221, 6, 'save', 'perm.save_desc', 1),
(222, 6, 'remove', 'perm.remove_desc', 1),
(223, 6, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(224, 6, 'copy', 'perm.copy_desc', 1),
(225, 7, 'list', 'perm.list_desc', 1),
(226, 7, 'load', 'perm.load_desc', 1),
(227, 7, 'view', 'perm.view_desc', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_access_policies`
--

CREATE TABLE `modx_access_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `template` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `class` varchar(191) NOT NULL DEFAULT '',
  `data` text,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_access_policies`
--

INSERT INTO `modx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES
(1, 'Resource', 'MODX Resource Policy with all attributes.', 0, 2, '', '{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true}', 'permissions'),
(2, 'Administrator', 'Context administration policy with all permissions.', 0, 1, '', '{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_weblink\":true,\"delete_symlink\":true,\"delete_static_resource\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_weblink\":true,\"edit_symlink\":true,\"edit_static_resource\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"events\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menus\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"set_sudo\":true,\"settings\":true,\"sources\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}', 'permissions'),
(3, 'Load Only', 'A minimal policy with permission to load an object.', 0, 3, '', '{\"load\":true}', 'permissions'),
(4, 'Load, List and View', 'Provides load, list and view permissions only.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(5, 'Object', 'An Object policy with all permissions.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true}', 'permissions'),
(6, 'Element', 'MODX Element policy with all attributes.', 0, 4, '', '{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true}', 'permissions'),
(7, 'Content Editor', 'Context administration policy with limited, content-editing related Permissions, but no publishing.', 0, 1, '', '{\"about\":false,\"access_permissions\":false,\"actions\":false,\"change_password\":false,\"change_profile\":true,\"charsets\":false,\"class_map\":true,\"components\":false,\"content_types\":false,\"countries\":true,\"create\":false,\"credits\":false,\"customize_forms\":false,\"dashboards\":false,\"database\":false,\"database_truncate\":false,\"delete_category\":false,\"delete_chunk\":false,\"delete_context\":false,\"delete_document\":true,\"delete_eventlog\":false,\"delete_plugin\":false,\"delete_propertyset\":false,\"delete_role\":false,\"delete_snippet\":false,\"delete_static_resource\":true,\"delete_symlink\":true,\"delete_template\":false,\"delete_tv\":false,\"delete_user\":false,\"delete_weblink\":true,\"directory_chmod\":false,\"directory_create\":false,\"directory_list\":true,\"directory_remove\":false,\"directory_update\":false,\"edit_category\":false,\"edit_chunk\":false,\"edit_context\":false,\"edit_document\":true,\"edit_locked\":false,\"edit_plugin\":false,\"edit_propertyset\":false,\"edit_role\":false,\"edit_snippet\":false,\"edit_static_resource\":true,\"edit_symlink\":true,\"edit_template\":false,\"edit_tv\":false,\"edit_user\":false,\"edit_weblink\":true,\"element_tree\":false,\"empty_cache\":false,\"error_log_erase\":false,\"error_log_view\":false,\"events\":false,\"export_static\":false,\"file_create\":false,\"file_list\":true,\"file_manager\":true,\"file_remove\":false,\"file_tree\":true,\"file_unpack\":false,\"file_update\":true,\"file_upload\":false,\"file_view\":true,\"flush_sessions\":false,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":false,\"languages\":false,\"lexicons\":false,\"list\":true,\"load\":true,\"logout\":true,\"logs\":false,\"menus\":false,\"menu_reports\":true,\"menu_security\":false,\"menu_site\":true,\"menu_support\":true,\"menu_system\":false,\"menu_tools\":true,\"menu_trash\":false,\"menu_user\":true,\"messages\":false,\"namespaces\":false,\"new_category\":false,\"new_chunk\":false,\"new_context\":false,\"new_document\":true,\"new_document_in_root\":false,\"new_plugin\":false,\"new_propertyset\":false,\"new_role\":false,\"new_snippet\":false,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":false,\"new_tv\":false,\"new_user\":false,\"new_weblink\":true,\"packages\":false,\"policy_delete\":false,\"policy_edit\":false,\"policy_new\":false,\"policy_save\":false,\"policy_template_delete\":false,\"policy_template_edit\":false,\"policy_template_new\":false,\"policy_template_save\":false,\"policy_template_view\":false,\"policy_view\":false,\"property_sets\":false,\"providers\":false,\"publish_document\":false,\"purge_deleted\":false,\"remove\":false,\"remove_locks\":false,\"resourcegroup_delete\":false,\"resourcegroup_edit\":false,\"resourcegroup_new\":false,\"resourcegroup_resource_edit\":false,\"resourcegroup_resource_list\":false,\"resourcegroup_save\":false,\"resourcegroup_view\":false,\"resource_duplicate\":true,\"resource_quick_create\":false,\"resource_quick_update\":false,\"resource_tree\":true,\"save\":false,\"save_category\":false,\"save_chunk\":false,\"save_context\":false,\"save_document\":true,\"save_plugin\":false,\"save_propertyset\":false,\"save_role\":false,\"save_snippet\":false,\"save_template\":false,\"save_tv\":false,\"save_user\":false,\"search\":false,\"settings\":false,\"set_sudo\":false,\"sources\":false,\"source_delete\":false,\"source_edit\":false,\"source_save\":false,\"source_view\":true,\"steal_locks\":false,\"tree_show_element_ids\":false,\"tree_show_resource_ids\":true,\"undelete_document\":false,\"unlock_element_properties\":false,\"unpublish_document\":false,\"usergroup_delete\":false,\"usergroup_edit\":false,\"usergroup_new\":false,\"usergroup_save\":false,\"usergroup_user_edit\":false,\"usergroup_user_list\":false,\"usergroup_view\":false,\"view\":true,\"view_category\":false,\"view_chunk\":false,\"view_context\":false,\"view_document\":true,\"view_element\":false,\"view_eventlog\":false,\"view_offline\":false,\"view_plugin\":false,\"view_propertyset\":false,\"view_role\":false,\"view_snippet\":false,\"view_sysinfo\":false,\"view_template\":true,\"view_tv\":false,\"view_unpublished\":false,\"view_user\":false,\"workspaces\":false}', 'permissions'),
(8, 'Media Source Admin', 'Media Source administration policy.', 0, 5, '', '{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true}', 'permissions'),
(9, 'Media Source User', 'Media Source user policy, with basic viewing and using - but no editing - of Media Sources.', 0, 5, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(10, 'Developer', 'Context administration policy with most Permissions except Administrator and Security functions.', 0, 0, '', '{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_role\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_weblink\":true,\"edit_symlink\":true,\"edit_static_resource\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unpublish_document\":true,\"unlock_element_properties\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_user\":true,\"view_unpublished\":true,\"workspaces\":true}', 'permissions'),
(11, 'Context', 'A standard Context policy that you can apply when creating Context ACLs for basic read/write and view_unpublished access within a Context.', 0, 6, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"copy\":true,\"view_unpublished\":true}', 'permissions'),
(12, 'Hidden Namespace', 'Hidden Namespace policy, will not show Namespace in lists.', 0, 7, '', '{\"load\":false,\"list\":false,\"view\":true}', 'permissions');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_access_policy_templates`
--

CREATE TABLE `modx_access_policy_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_access_policy_templates`
--

INSERT INTO `modx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES
(1, 1, 'AdministratorTemplate', 'Context administration policy template with all permissions.', 'permissions'),
(2, 3, 'ResourceTemplate', 'Resource Policy Template with all attributes.', 'permissions'),
(3, 2, 'ObjectTemplate', 'Object Policy Template with all attributes.', 'permissions'),
(4, 4, 'ElementTemplate', 'Element Policy Template with all attributes.', 'permissions'),
(5, 5, 'MediaSourceTemplate', 'Media Source Policy Template with all attributes.', 'permissions'),
(6, 2, 'ContextTemplate', 'Context Policy Template with all attributes.', 'permissions'),
(7, 6, 'NamespaceTemplate', 'Namespace Policy Template with all attributes.', 'permissions');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_access_policy_template_groups`
--

CREATE TABLE `modx_access_policy_template_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_access_policy_template_groups`
--

INSERT INTO `modx_access_policy_template_groups` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'All admin policy templates.'),
(2, 'Object', 'All Object-based policy templates.'),
(3, 'Resource', 'All Resource-based policy templates.'),
(4, 'Element', 'All Element-based policy templates.'),
(5, 'MediaSource', 'All Media Source-based policy templates.'),
(6, 'Namespace', 'All Namespace based policy templates.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_access_resources`
--

CREATE TABLE `modx_access_resources` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_access_resource_groups`
--

CREATE TABLE `modx_access_resource_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_access_templatevars`
--

CREATE TABLE `modx_access_templatevars` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_actiondom`
--

CREATE TABLE `modx_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `set` int(11) NOT NULL DEFAULT '0',
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(191) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `for_parent` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_actions`
--

CREATE TABLE `modx_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `controller` varchar(191) NOT NULL,
  `haslayout` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_actions`
--

INSERT INTO `modx_actions` (`id`, `namespace`, `controller`, `haslayout`, `lang_topics`, `assets`, `help_url`) VALUES
(1, 'cmpgenerator', 'controllers/index', 1, 'cmpgenerator:default', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_actions_fields`
--

CREATE TABLE `modx_actions_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(191) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(191) NOT NULL DEFAULT '',
  `form` varchar(191) NOT NULL DEFAULT '',
  `other` varchar(191) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_actions_fields`
--

INSERT INTO `modx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES
(1, 'resource/update', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(2, 'resource/update', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(3, 'resource/update', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(4, 'resource/update', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(5, 'resource/update', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(6, 'resource/update', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(7, 'resource/update', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(8, 'resource/update', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(9, 'resource/update', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(10, 'resource/update', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(11, 'resource/update', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(12, 'resource/update', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(13, 'resource/update', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(14, 'resource/update', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(15, 'resource/update', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(16, 'resource/update', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(17, 'resource/update', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(18, 'resource/update', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(19, 'resource/update', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(20, 'resource/update', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(21, 'resource/update', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(22, 'resource/update', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(23, 'resource/update', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(24, 'resource/update', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(25, 'resource/update', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(26, 'resource/update', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(27, 'resource/update', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(28, 'resource/update', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(29, 'resource/update', 'alias_visible', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(30, 'resource/update', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(31, 'resource/update', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(32, 'resource/update', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 5),
(33, 'resource/update', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(34, 'resource/update', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(35, 'resource/update', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(36, 'resource/update', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(37, 'resource/update', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(38, 'resource/update', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(39, 'resource/update', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(40, 'resource/update', 'modx-symlink-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 1),
(41, 'resource/update', 'modx-weblink-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 2),
(42, 'resource/create', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(43, 'resource/create', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(44, 'resource/create', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(45, 'resource/create', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(46, 'resource/create', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(47, 'resource/create', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(48, 'resource/create', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(49, 'resource/create', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(50, 'resource/create', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(51, 'resource/create', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(52, 'resource/create', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(53, 'resource/create', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(54, 'resource/create', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(55, 'resource/create', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(56, 'resource/create', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(57, 'resource/create', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(58, 'resource/create', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(59, 'resource/create', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(60, 'resource/create', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(61, 'resource/create', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(62, 'resource/create', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(63, 'resource/create', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(64, 'resource/create', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(65, 'resource/create', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(66, 'resource/create', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(67, 'resource/create', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(68, 'resource/create', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(69, 'resource/create', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(70, 'resource/create', 'alias_visible', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(71, 'resource/create', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(72, 'resource/create', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(73, 'resource/create', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 5),
(74, 'resource/create', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(75, 'resource/create', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(76, 'resource/create', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(77, 'resource/create', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(78, 'resource/create', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(79, 'resource/create', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(80, 'resource/create', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_active_users`
--

CREATE TABLE `modx_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `action` varchar(191) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_categories`
--

CREATE TABLE `modx_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(10) UNSIGNED DEFAULT '0',
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_categories`
--

INSERT INTO `modx_categories` (`id`, `parent`, `category`, `rank`) VALUES
(1, 0, 'Layouts', 0),
(2, 0, 'Shared', 0),
(3, 0, 'TinyMCE Rich Text Editor', 0),
(4, 0, 'Detail', 0),
(5, 0, 'MIGX', 0),
(6, 0, 'CMPGenerator', 0),
(7, 0, 'UICMPGenerator', 0),
(8, 0, 'pdoTools', 0),
(9, 0, 'modJWT', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_categories_closure`
--

CREATE TABLE `modx_categories_closure` (
  `ancestor` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `descendant` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `depth` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_categories_closure`
--

INSERT INTO `modx_categories_closure` (`ancestor`, `descendant`, `depth`) VALUES
(0, 1, 0),
(0, 2, 0),
(0, 3, 0),
(0, 4, 0),
(0, 5, 0),
(0, 6, 0),
(0, 7, 0),
(0, 8, 0),
(0, 9, 0),
(1, 1, 0),
(2, 2, 0),
(3, 3, 0),
(4, 4, 0),
(5, 5, 0),
(6, 6, 0),
(7, 7, 0),
(8, 8, 0),
(9, 9, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_class_map`
--

CREATE TABLE `modx_class_map` (
  `id` int(10) UNSIGNED NOT NULL,
  `class` varchar(120) NOT NULL DEFAULT '',
  `parent_class` varchar(120) NOT NULL DEFAULT '',
  `name_field` varchar(191) NOT NULL DEFAULT 'name',
  `path` tinytext,
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:resource'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_class_map`
--

INSERT INTO `modx_class_map` (`id`, `class`, `parent_class`, `name_field`, `path`, `lexicon`) VALUES
(1, 'modDocument', 'modResource', 'pagetitle', '', 'core:resource'),
(2, 'modWebLink', 'modResource', 'pagetitle', '', 'core:resource'),
(3, 'modSymLink', 'modResource', 'pagetitle', '', 'core:resource'),
(4, 'modStaticResource', 'modResource', 'pagetitle', '', 'core:resource'),
(5, 'modTemplate', 'modElement', 'templatename', '', 'core:resource'),
(6, 'modTemplateVar', 'modElement', 'name', '', 'core:resource'),
(7, 'modChunk', 'modElement', 'name', '', 'core:resource'),
(8, 'modSnippet', 'modElement', 'name', '', 'core:resource'),
(9, 'modPlugin', 'modElement', 'name', '', 'core:resource');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_cmpgenerator`
--

CREATE TABLE `modx_cmpgenerator` (
  `id` int(10) UNSIGNED NOT NULL,
  `package` varchar(255) DEFAULT '',
  `database` varchar(128) DEFAULT '',
  `tables` text,
  `table_prefix` varchar(255) DEFAULT '',
  `build_scheme` int(1) DEFAULT '1',
  `build_package` int(1) DEFAULT '1',
  `create_date` datetime DEFAULT NULL,
  `last_ran` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_cmpgenerator`
--

INSERT INTO `modx_cmpgenerator` (`id`, `package`, `database`, `tables`, `table_prefix`, `build_scheme`, `build_package`, `create_date`, `last_ran`) VALUES
(1, 'pkgorder', 'db_orders_app', 'order,order_detail', 'modx_', 0, 1, '2021-06-11 09:08:01', '2021-06-11 11:24:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_content_type`
--

CREATE TABLE `modx_content_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` tinytext,
  `mime_type` tinytext,
  `file_extensions` tinytext,
  `headers` mediumtext,
  `binary` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_content_type`
--

INSERT INTO `modx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `headers`, `binary`) VALUES
(1, 'HTML', 'HTML content', 'text/html', '.html', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', NULL, 0),
(3, 'text', 'plain text content', 'text/plain', '.txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', NULL, 0),
(5, 'javascript', 'javascript content', 'text/javascript', '.js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', NULL, 0),
(7, 'JSON', 'JSON', 'application/json', '.json', NULL, 0),
(8, 'PDF', 'PDF Files', 'application/pdf', '.pdf', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_context`
--

CREATE TABLE `modx_context` (
  `key` varchar(100) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` tinytext,
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_context`
--

INSERT INTO `modx_context` (`key`, `name`, `description`, `rank`) VALUES
('mgr', 'Manager', 'The default manager or administration context for content management activity.', 0),
('web', 'Website', 'The default front-end context for your web site.', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_context_resource`
--

CREATE TABLE `modx_context_resource` (
  `context_key` varchar(191) NOT NULL,
  `resource` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_context_setting`
--

CREATE TABLE `modx_context_setting` (
  `context_key` varchar(191) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_context_setting`
--

INSERT INTO `modx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', NULL),
('mgr', 'modRequest.class', 'modManagerRequest', 'textfield', 'core', 'system', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_dashboard`
--

CREATE TABLE `modx_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `hide_trees` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_dashboard`
--

INSERT INTO `modx_dashboard` (`id`, `name`, `description`, `hide_trees`) VALUES
(1, 'Default', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_dashboard_widget`
--

CREATE TABLE `modx_dashboard_widget` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(100) NOT NULL,
  `content` mediumtext,
  `namespace` varchar(191) NOT NULL DEFAULT '',
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(191) NOT NULL DEFAULT 'half'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_dashboard_widget`
--

INSERT INTO `modx_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `namespace`, `lexicon`, `size`) VALUES
(1, 'w_newsfeed', 'w_newsfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-news.php', 'core', 'core:dashboards', 'half'),
(2, 'w_securityfeed', 'w_securityfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-security.php', 'core', 'core:dashboards', 'half'),
(3, 'w_whosonline', 'w_whosonline_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-online.php', 'core', 'core:dashboards', 'half'),
(4, 'w_recentlyeditedresources', 'w_recentlyeditedresources_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php', 'core', 'core:dashboards', 'half'),
(5, 'w_configcheck', 'w_configcheck_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.configcheck.php', 'core', 'core:dashboards', 'full');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_dashboard_widget_placement`
--

CREATE TABLE `modx_dashboard_widget_placement` (
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `widget` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_dashboard_widget_placement`
--

INSERT INTO `modx_dashboard_widget_placement` (`dashboard`, `widget`, `rank`) VALUES
(1, 5, 0),
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_documentgroup_names`
--

CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `private_webgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_document_groups`
--

CREATE TABLE `modx_document_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_element_property_sets`
--

CREATE TABLE `modx_element_property_sets` (
  `element` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_element_property_sets`
--

INSERT INTO `modx_element_property_sets` (`element`, `element_class`, `property_set`) VALUES
(7, 'modPlugin', 2),
(32, 'modSnippet', 1),
(33, 'modSnippet', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_extension_packages`
--

CREATE TABLE `modx_extension_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT 'core',
  `path` text,
  `table_prefix` varchar(191) NOT NULL DEFAULT '',
  `service_class` varchar(191) NOT NULL DEFAULT '',
  `service_name` varchar(191) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_fc_profiles`
--

CREATE TABLE `modx_fc_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_fc_profiles_usergroups`
--

CREATE TABLE `modx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT '0',
  `profile` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_fc_sets`
--

CREATE TABLE `modx_fc_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile` int(11) NOT NULL DEFAULT '0',
  `action` varchar(191) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_lexicon_entries`
--

CREATE TABLE `modx_lexicon_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(191) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_lexicon_entries`
--

INSERT INTO `modx_lexicon_entries` (`id`, `name`, `value`, `topic`, `namespace`, `language`, `createdon`, `editedon`) VALUES
(1, 'setting_extension_packages', 'Extension Packages', 'default', 'core', 'en', '2021-06-11 11:02:36', NULL),
(2, 'setting_extension_packages_desc', 'setting_extension_packages_desc', 'default', 'core', 'en', '2021-06-11 11:02:36', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_manager_log`
--

CREATE TABLE `modx_manager_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `occurred` datetime DEFAULT NULL,
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(191) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_manager_log`
--

INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1, 1, '2021-06-08 15:35:19', 'login', 'modContext', 'mgr'),
(2, 1, '2021-06-08 15:35:31', 'clear_cache', '', 'mgr'),
(3, 1, '2021-06-08 15:35:37', 'clear_cache', '', 'mgr'),
(4, 1, '2021-06-08 15:36:47', 'clear_cache', '', 'mgr'),
(5, 1, '2021-06-08 15:38:01', 'clear_cache', '', 'mgr'),
(6, 1, '2021-06-08 15:38:40', 'clear_cache', '', 'mgr'),
(7, 1, '2021-06-08 15:39:42', 'setting_update', 'modSystemSetting', 'friendly_urls'),
(8, 1, '2021-06-08 15:39:48', 'clear_cache', '', 'mgr'),
(9, 1, '2021-06-08 15:48:10', 'category_create', 'modCategory', '1'),
(10, 1, '2021-06-08 15:49:10', 'template_create', 'modTemplate', '2'),
(11, 1, '2021-06-08 15:49:44', 'template_create', 'modTemplate', '3'),
(12, 1, '2021-06-08 15:50:18', 'template_update', 'modTemplate', '2'),
(13, 1, '2021-06-08 15:50:26', 'template_update', 'modTemplate', '3'),
(14, 1, '2021-06-08 15:51:06', 'category_update', 'modCategory', '1'),
(15, 1, '2021-06-08 15:51:43', 'category_create', 'modCategory', '2'),
(16, 1, '2021-06-08 15:52:10', 'template_create', 'modTemplate', '4'),
(17, 1, '2021-06-08 15:53:01', 'template_update', 'modTemplate', '4'),
(18, 1, '2021-06-08 15:53:21', 'chunk_create', 'modChunk', '1'),
(19, 1, '2021-06-08 15:53:33', 'chunk_create', 'modChunk', '2'),
(20, 1, '2021-06-08 15:54:38', 'template_create', 'modTemplate', '5'),
(21, 1, '2021-06-08 15:54:59', 'template_create', 'modTemplate', '6'),
(22, 1, '2021-06-08 15:56:04', 'resource_create', 'modDocument', '2'),
(23, 1, '2021-06-08 15:56:28', 'resource_update', 'modResource', '1'),
(24, 1, '2021-06-08 15:57:04', 'resource_create', 'modDocument', '3'),
(25, 1, '2021-06-08 15:57:34', 'resource_update', 'modResource', '3'),
(26, 1, '2021-06-08 15:57:47', 'resource_update', 'modResource', '2'),
(27, 1, '2021-06-08 15:59:37', 'resource_create', 'modDocument', '4'),
(28, 1, '2021-06-08 15:59:48', 'resource_update', 'modResource', '4'),
(29, 1, '2021-06-08 16:01:06', 'resource_create', 'modDocument', '5'),
(30, 1, '2021-06-08 16:01:21', 'resource_update', 'modResource', '5'),
(31, 1, '2021-06-08 16:01:26', 'resource_sort', '', 'unknown'),
(32, 1, '2021-06-08 16:02:47', 'resource_create', 'modDocument', '6'),
(33, 1, '2021-06-08 16:03:04', 'duplicate_resource', 'modDocument', '7'),
(34, 1, '2021-06-08 16:03:07', 'resource_sort', '', 'unknown'),
(35, 1, '2021-06-08 16:03:10', 'resource_sort', '', 'unknown'),
(36, 1, '2021-06-08 16:03:19', 'resource_update', 'modResource', '7'),
(37, 1, '2021-06-08 16:04:20', 'resource_create', 'modDocument', '8'),
(38, 1, '2021-06-08 16:04:29', 'resource_update', 'modResource', '8'),
(39, 1, '2021-06-08 16:05:05', 'resource_create', 'modDocument', '9'),
(40, 1, '2021-06-08 16:05:42', 'resource_create', 'modDocument', '10'),
(41, 1, '2021-06-08 16:05:57', 'resource_update', 'modResource', '9'),
(42, 1, '2021-06-08 16:06:05', 'resource_update', 'modResource', '10'),
(43, 1, '2021-06-08 16:06:41', 'resource_create', 'modDocument', '11'),
(44, 1, '2021-06-08 16:07:15', 'resource_create', 'modDocument', '12'),
(45, 1, '2021-06-08 16:07:22', 'resource_update', 'modResource', '11'),
(46, 1, '2021-06-08 16:07:30', 'resource_update', 'modResource', '12'),
(47, 1, '2021-06-08 16:07:52', 'clear_cache', '', 'mgr'),
(48, 1, '2021-06-08 16:11:50', 'directory_create', '', 'C:/xampp/htdocs/figma-project/Backend/Manager/assets/layout'),
(49, 1, '2021-06-08 16:13:43', 'clear_cache', '', 'mgr'),
(50, 1, '2021-06-08 16:14:07', 'setting_update', 'modSystemSetting', 'ace.font_size'),
(51, 1, '2021-06-08 16:14:54', 'setting_update', 'modSystemSetting', 'ace.theme'),
(52, 1, '2021-06-08 16:14:55', 'setting_update', 'modSystemSetting', 'ace.word_wrap'),
(53, 1, '2021-06-08 16:14:58', 'clear_cache', '', 'mgr'),
(54, 1, '2021-06-08 16:15:57', 'template_update', 'modTemplate', '2'),
(55, 1, '2021-06-08 16:15:58', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 2 Default'),
(56, 1, '2021-06-08 16:18:07', 'template_update', 'modTemplate', '2'),
(57, 1, '2021-06-08 16:18:08', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 2 Default'),
(58, 1, '2021-06-08 16:25:43', 'clear_cache', '', 'mgr'),
(59, 1, '2021-06-08 16:32:38', 'clear_cache', '', 'mgr'),
(60, 1, '2021-06-08 16:43:41', 'clear_cache', '', 'mgr'),
(61, 1, '2021-06-08 19:58:49', 'template_update', 'modTemplate', '3'),
(62, 1, '2021-06-08 19:58:49', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 3 Default'),
(63, 1, '2021-06-08 19:59:23', 'template_update', 'modTemplate', '3'),
(64, 1, '2021-06-08 19:59:24', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 3 Default'),
(65, 1, '2021-06-08 19:59:38', 'template_update', 'modTemplate', '3'),
(66, 1, '2021-06-08 19:59:39', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 3 Default'),
(67, 1, '2021-06-08 19:59:54', 'template_update', 'modTemplate', '3'),
(68, 1, '2021-06-08 19:59:55', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 3 Default'),
(69, 1, '2021-06-08 20:00:01', 'template_update', 'modTemplate', '3'),
(70, 1, '2021-06-08 20:00:01', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 3 Default'),
(71, 1, '2021-06-08 20:00:42', 'template_update', 'modTemplate', '3'),
(72, 1, '2021-06-08 20:00:43', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 3 Default'),
(73, 1, '2021-06-08 20:01:29', 'template_update', 'modTemplate', '3'),
(74, 1, '2021-06-08 20:01:30', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 3 Default'),
(75, 1, '2021-06-08 20:02:15', 'template_update', 'modTemplate', '3'),
(76, 1, '2021-06-08 20:02:16', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 3 Default'),
(77, 1, '2021-06-08 20:03:26', 'template_update', 'modTemplate', '3'),
(78, 1, '2021-06-08 20:03:26', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 3 Default'),
(79, 1, '2021-06-08 20:03:48', 'template_update', 'modTemplate', '3'),
(80, 1, '2021-06-08 20:03:48', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 3 Default'),
(81, 1, '2021-06-08 20:04:04', 'template_update', 'modTemplate', '3'),
(82, 1, '2021-06-08 20:04:04', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 3 Default'),
(83, 1, '2021-06-09 05:32:59', 'template_update', 'modTemplate', '4'),
(84, 1, '2021-06-09 05:33:00', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 4 Default'),
(85, 1, '2021-06-09 05:33:07', 'template_update', 'modTemplate', '4'),
(86, 1, '2021-06-09 05:33:08', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 4 Default'),
(87, 1, '2021-06-09 05:33:27', 'template_update', 'modTemplate', '4'),
(88, 1, '2021-06-09 05:33:27', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 4 Default'),
(89, 1, '2021-06-09 05:34:16', 'template_update', 'modTemplate', '6'),
(90, 1, '2021-06-09 05:34:17', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 6 Default'),
(91, 1, '2021-06-09 05:34:49', 'template_update', 'modTemplate', '6'),
(92, 1, '2021-06-09 05:34:50', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 6 Default'),
(93, 1, '2021-06-09 05:35:45', 'template_update', 'modTemplate', '5'),
(94, 1, '2021-06-09 05:35:45', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(95, 1, '2021-06-09 05:35:49', 'template_update', 'modTemplate', '6'),
(96, 1, '2021-06-09 05:35:50', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 6 Default'),
(97, 1, '2021-06-09 05:36:26', 'template_update', 'modTemplate', '5'),
(98, 1, '2021-06-09 05:36:27', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(99, 1, '2021-06-09 05:36:42', 'clear_cache', '', 'mgr'),
(100, 1, '2021-06-09 05:38:33', 'clear_cache', '', 'mgr'),
(101, 1, '2021-06-09 05:42:31', 'clear_cache', '', 'mgr'),
(102, 1, '2021-06-09 05:43:23', 'chunk_update', 'modChunk', '1'),
(103, 1, '2021-06-09 05:43:23', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 1 Default'),
(104, 1, '2021-06-09 05:43:59', 'template_update', 'modTemplate', '4'),
(105, 1, '2021-06-09 05:44:00', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 4 Default'),
(106, 1, '2021-06-09 05:44:10', 'template_update', 'modTemplate', '4'),
(107, 1, '2021-06-09 05:44:10', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 4 Default'),
(108, 1, '2021-06-09 05:45:11', 'chunk_update', 'modChunk', '1'),
(109, 1, '2021-06-09 05:45:11', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 1 Default'),
(110, 1, '2021-06-09 05:45:14', 'chunk_update', 'modChunk', '1'),
(111, 1, '2021-06-09 05:45:14', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 1 Default'),
(112, 1, '2021-06-09 05:45:29', 'chunk_update', 'modChunk', '2'),
(113, 1, '2021-06-09 05:45:29', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(114, 1, '2021-06-09 05:45:50', 'template_update', 'modTemplate', '4'),
(115, 1, '2021-06-09 05:45:50', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 4 Default'),
(116, 1, '2021-06-09 05:45:56', 'template_update', 'modTemplate', '4'),
(117, 1, '2021-06-09 05:45:56', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 4 Default'),
(118, 1, '2021-06-09 05:46:44', 'chunk_update', 'modChunk', '2'),
(119, 1, '2021-06-09 05:46:45', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(120, 1, '2021-06-09 05:46:48', 'chunk_update', 'modChunk', '2'),
(121, 1, '2021-06-09 05:46:49', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(122, 1, '2021-06-09 05:46:51', 'chunk_update', 'modChunk', '2'),
(123, 1, '2021-06-09 05:46:51', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(124, 1, '2021-06-09 05:49:00', 'resource_update', 'modResource', '3'),
(125, 1, '2021-06-09 05:49:02', 'template_update', 'modTemplate', '4'),
(126, 1, '2021-06-09 05:49:02', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 4 Default'),
(127, 1, '2021-06-09 06:07:00', 'setting_update', 'modSystemSetting', 'which_editor'),
(128, 1, '2021-06-09 06:07:27', 'clear_cache', '', 'mgr'),
(129, 1, '2021-06-09 06:10:10', 'setting_update', 'modSystemSetting', 'which_editor'),
(130, 1, '2021-06-09 06:10:41', 'setting_update', 'modSystemSetting', 'use_editor'),
(131, 1, '2021-06-09 06:12:00', 'clear_cache', '', 'mgr'),
(132, 1, '2021-06-09 06:13:43', 'setting_update', 'modSystemSetting', 'use_editor'),
(133, 1, '2021-06-09 06:14:40', 'resource_update', 'modResource', '5'),
(134, 1, '2021-06-09 06:15:13', 'resource_update', 'modResource', '4'),
(135, 1, '2021-06-09 06:15:43', 'resource_update', 'modResource', '6'),
(136, 1, '2021-06-09 06:16:18', 'resource_update', 'modResource', '7'),
(137, 1, '2021-06-09 06:16:31', 'resource_update', 'modResource', '8'),
(138, 1, '2021-06-09 06:16:44', 'clear_cache', '', 'mgr'),
(139, 1, '2021-06-09 06:18:46', 'resource_update', 'modResource', '6'),
(140, 1, '2021-06-09 06:19:01', 'resource_update', 'modResource', '6'),
(141, 1, '2021-06-09 06:19:05', 'resource_update', 'modResource', '6'),
(142, 1, '2021-06-09 06:19:07', 'resource_update', 'modResource', '6'),
(143, 1, '2021-06-09 06:19:55', 'resource_update', 'modResource', '6'),
(144, 1, '2021-06-09 06:21:01', 'resource_update', 'modResource', '6'),
(145, 1, '2021-06-09 06:21:26', 'file_update', '', 'C:/xampp/htdocs/figma-project/Backend/Manager/assets/layout/css/style.css'),
(146, 1, '2021-06-09 06:22:04', 'file_update', '', 'C:/xampp/htdocs/figma-project/Backend/Manager/assets/layout/css/style.css'),
(147, 1, '2021-06-09 06:22:53', 'file_update', '', 'C:/xampp/htdocs/figma-project/Backend/Manager/assets/layout/css/style.css'),
(148, 1, '2021-06-09 06:23:19', 'clear_cache', '', 'mgr'),
(149, 1, '2021-06-09 06:25:08', 'template_update', 'modTemplate', '6'),
(150, 1, '2021-06-09 06:25:09', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 6 Default'),
(151, 1, '2021-06-09 06:25:23', 'clear_cache', '', 'mgr'),
(152, 1, '2021-06-09 06:27:13', 'template_update', 'modTemplate', '5'),
(153, 1, '2021-06-09 06:27:13', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(154, 1, '2021-06-09 06:27:22', 'file_update', '', 'C:/xampp/htdocs/figma-project/Backend/Manager/assets/layout/js/main.js'),
(155, 1, '2021-06-09 06:28:56', 'template_update', 'modTemplate', '4'),
(156, 1, '2021-06-09 06:28:57', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 4 Default'),
(157, 1, '2021-06-09 06:29:04', 'template_update', 'modTemplate', '2'),
(158, 1, '2021-06-09 06:29:04', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 2 Default'),
(159, 1, '2021-06-09 06:29:10', 'template_update', 'modTemplate', '3'),
(160, 1, '2021-06-09 06:29:10', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 3 Default'),
(161, 1, '2021-06-09 06:29:17', 'template_update', 'modTemplate', '5'),
(162, 1, '2021-06-09 06:29:17', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(163, 1, '2021-06-09 06:29:22', 'template_update', 'modTemplate', '6'),
(164, 1, '2021-06-09 06:29:22', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 6 Default'),
(165, 1, '2021-06-09 06:29:26', 'clear_cache', '', 'mgr'),
(166, 1, '2021-06-09 06:29:45', 'template_update', 'modTemplate', '6'),
(167, 1, '2021-06-09 06:29:45', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 6 Default'),
(168, 1, '2021-06-09 06:30:06', 'template_update', 'modTemplate', '5'),
(169, 1, '2021-06-09 06:30:07', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(170, 1, '2021-06-09 06:30:42', 'chunk_create', 'modChunk', '3'),
(171, 1, '2021-06-09 06:32:55', 'template_update', 'modTemplate', '4'),
(172, 1, '2021-06-09 06:32:55', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 4 Default'),
(173, 1, '2021-06-09 06:32:56', 'chunk_update', 'modChunk', '3'),
(174, 1, '2021-06-09 06:32:57', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(175, 1, '2021-06-09 06:33:09', 'chunk_create', 'modChunk', '4'),
(176, 1, '2021-06-09 06:33:27', 'template_update', 'modTemplate', '4'),
(177, 1, '2021-06-09 06:33:27', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 4 Default'),
(178, 1, '2021-06-09 06:33:29', 'chunk_update', 'modChunk', '4'),
(179, 1, '2021-06-09 06:33:29', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 4 Default'),
(180, 1, '2021-06-09 06:33:49', 'template_update', 'modTemplate', '4'),
(181, 1, '2021-06-09 06:33:50', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 4 Default'),
(182, 1, '2021-06-09 06:34:38', 'chunk_update', 'modChunk', '3'),
(183, 1, '2021-06-09 06:34:39', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(184, 1, '2021-06-09 06:34:46', 'template_update', 'modTemplate', '2'),
(185, 1, '2021-06-09 06:34:46', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 2 Default'),
(186, 1, '2021-06-09 06:35:05', 'template_update', 'modTemplate', '3'),
(187, 1, '2021-06-09 06:35:06', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 3 Default'),
(188, 1, '2021-06-09 06:35:55', 'chunk_update', 'modChunk', '4'),
(189, 1, '2021-06-09 06:35:55', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 4 Default'),
(190, 1, '2021-06-09 06:36:09', 'template_update', 'modTemplate', '5'),
(191, 1, '2021-06-09 06:36:09', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(192, 1, '2021-06-09 06:36:11', 'chunk_update', 'modChunk', '3'),
(193, 1, '2021-06-09 06:36:12', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(194, 1, '2021-06-09 06:36:42', 'template_update', 'modTemplate', '6'),
(195, 1, '2021-06-09 06:36:43', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 6 Default'),
(196, 1, '2021-06-09 06:38:38', 'file_update', '', 'C:/xampp/htdocs/figma-project/Backend/Manager/assets/layout/js/main.js'),
(197, 1, '2021-06-09 06:40:14', 'resource_update', 'modResource', '11'),
(198, 1, '2021-06-09 06:40:25', 'resource_update', 'modResource', '11'),
(199, 1, '2021-06-09 06:41:15', 'resource_update', 'modResource', '11'),
(200, 1, '2021-06-09 06:41:58', 'resource_update', 'modResource', '11'),
(201, 1, '2021-06-09 06:42:22', 'resource_update', 'modResource', '12'),
(202, 1, '2021-06-09 06:42:37', 'clear_cache', '', 'mgr'),
(203, 1, '2021-06-09 06:43:21', 'resource_update', 'modResource', '12'),
(204, 1, '2021-06-09 06:44:36', 'chunk_update', 'modChunk', '3'),
(205, 1, '2021-06-09 06:44:36', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(206, 1, '2021-06-09 06:44:47', 'chunk_update', 'modChunk', '3'),
(207, 1, '2021-06-09 06:44:48', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(208, 1, '2021-06-09 06:44:59', 'chunk_update', 'modChunk', '3'),
(209, 1, '2021-06-09 06:44:59', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(210, 1, '2021-06-09 06:45:25', 'chunk_update', 'modChunk', '3'),
(211, 1, '2021-06-09 06:45:25', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(212, 1, '2021-06-09 06:45:58', 'chunk_update', 'modChunk', '3'),
(213, 1, '2021-06-09 06:45:58', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(214, 1, '2021-06-09 06:47:43', 'chunk_update', 'modChunk', '1'),
(215, 1, '2021-06-09 06:47:43', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 1 Default'),
(216, 1, '2021-06-09 06:48:09', 'clear_cache', '', 'mgr'),
(217, 1, '2021-06-09 15:11:44', 'tv_create', 'modTemplateVar', '1'),
(218, 1, '2021-06-09 15:13:15', 'tv_create', 'modTemplateVar', '2'),
(219, 1, '2021-06-09 15:14:20', 'tv_create', 'modTemplateVar', '3'),
(220, 1, '2021-06-09 15:16:40', 'tv_update', 'modTemplateVar', '2'),
(221, 1, '2021-06-09 15:16:40', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 2 Default'),
(222, 1, '2021-06-09 15:16:47', 'tv_update', 'modTemplateVar', '1'),
(223, 1, '2021-06-09 15:16:47', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 1 Default'),
(224, 1, '2021-06-09 15:16:53', 'tv_update', 'modTemplateVar', '3'),
(225, 1, '2021-06-09 15:16:53', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 3 Default'),
(226, 1, '2021-06-09 15:17:23', 'category_create', 'modCategory', '4'),
(227, 1, '2021-06-09 15:17:35', 'tv_update', 'modTemplateVar', '2'),
(228, 1, '2021-06-09 15:21:25', 'resource_update', 'modResource', '10'),
(229, 1, '2021-06-09 15:24:48', 'template_update', 'modTemplate', '5'),
(230, 1, '2021-06-09 15:24:48', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(231, 1, '2021-06-09 15:25:23', 'tv_update', 'modTemplateVar', '3'),
(232, 1, '2021-06-09 15:25:24', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 3 Default'),
(233, 1, '2021-06-09 15:25:31', 'tv_update', 'modTemplateVar', '2'),
(234, 1, '2021-06-09 15:25:31', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 2 Default'),
(235, 1, '2021-06-09 15:27:00', 'tv_create', 'modTemplateVar', '4'),
(236, 1, '2021-06-09 15:27:08', 'tv_update', 'modTemplateVar', '4'),
(237, 1, '2021-06-09 15:27:08', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 4 Default'),
(238, 1, '2021-06-09 15:28:20', 'template_update', 'modTemplate', '5'),
(239, 1, '2021-06-09 15:28:20', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(240, 1, '2021-06-09 15:28:50', 'template_update', 'modTemplate', '5'),
(241, 1, '2021-06-09 15:28:50', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(242, 1, '2021-06-09 15:29:01', 'resource_update', 'modResource', '10'),
(243, 1, '2021-06-09 15:29:38', 'tv_update', 'modTemplateVar', '4'),
(244, 1, '2021-06-09 15:29:49', 'tv_update', 'modTemplateVar', '4'),
(245, 1, '2021-06-09 15:35:30', 'tv_create', 'modTemplateVar', '5'),
(246, 1, '2021-06-09 15:52:06', 'tv_update', 'modTemplateVar', '5'),
(247, 1, '2021-06-09 15:52:06', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 5 Default'),
(248, 1, '2021-06-09 15:52:13', 'tv_update', 'modTemplateVar', '5'),
(249, 1, '2021-06-09 15:52:14', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 5 Default'),
(250, 1, '2021-06-09 15:52:23', 'tv_update', 'modTemplateVar', '5'),
(251, 1, '2021-06-09 15:53:25', 'template_update', 'modTemplate', '5'),
(252, 1, '2021-06-09 15:53:25', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(253, 1, '2021-06-09 15:59:12', 'tv_update', 'modTemplateVar', '5'),
(254, 1, '2021-06-09 15:59:12', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 5 Default'),
(255, 1, '2021-06-09 16:00:22', 'directory_create', '', 'C:/xampp/htdocs/figma-project/Backend/Manager/assets/gallery'),
(256, 1, '2021-06-09 16:00:32', 'file_upload', '', 'C:/xampp/htdocs/figma-project/Backend/Manager/assets/gallery/'),
(257, 1, '2021-06-09 16:00:32', 'file_upload', '', 'C:/xampp/htdocs/figma-project/Backend/Manager/assets/gallery/'),
(258, 1, '2021-06-09 16:01:02', 'resource_update', 'modResource', '10'),
(259, 1, '2021-06-09 16:01:06', 'tv_update', 'modTemplateVar', '5'),
(260, 1, '2021-06-09 16:01:08', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 5 Default'),
(261, 1, '2021-06-09 16:01:50', 'tv_update', 'modTemplateVar', '5'),
(262, 1, '2021-06-09 16:01:51', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 5 Default'),
(263, 1, '2021-06-09 16:01:56', 'tv_update', 'modTemplateVar', '5'),
(264, 1, '2021-06-09 16:01:57', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 5 Default'),
(265, 1, '2021-06-09 16:01:59', 'tv_update', 'modTemplateVar', '5'),
(266, 1, '2021-06-09 16:01:59', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 5 Default'),
(267, 1, '2021-06-09 16:06:33', 'template_update', 'modTemplate', '5'),
(268, 1, '2021-06-09 16:06:33', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(269, 1, '2021-06-09 16:07:46', 'template_update', 'modTemplate', '5'),
(270, 1, '2021-06-09 16:07:46', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(271, 1, '2021-06-09 16:08:00', 'template_update', 'modTemplate', '5'),
(272, 1, '2021-06-09 16:08:00', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(273, 1, '2021-06-09 16:09:39', 'template_update', 'modTemplate', '5'),
(274, 1, '2021-06-09 16:09:41', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(275, 1, '2021-06-09 16:11:02', 'template_update', 'modTemplate', '5'),
(276, 1, '2021-06-09 16:11:02', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(277, 1, '2021-06-09 16:11:21', 'resource_update', 'modResource', '10'),
(278, 1, '2021-06-09 16:11:54', 'template_update', 'modTemplate', '5'),
(279, 1, '2021-06-09 16:11:55', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(280, 1, '2021-06-09 16:12:15', 'template_update', 'modTemplate', '5'),
(281, 1, '2021-06-09 16:12:16', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(282, 1, '2021-06-09 16:12:19', 'clear_cache', '', 'mgr'),
(283, 1, '2021-06-09 22:04:40', 'resource_update', 'modResource', '10'),
(284, 1, '2021-06-09 22:06:50', 'resource_update', 'modResource', '10'),
(285, 1, '2021-06-09 22:07:05', 'resource_update', 'modResource', '10'),
(286, 1, '2021-06-09 22:07:18', 'resource_update', 'modResource', '10'),
(287, 1, '2021-06-09 22:07:24', 'clear_cache', '', 'mgr'),
(288, 1, '2021-06-09 22:07:56', 'resource_update', 'modResource', '10'),
(289, 1, '2021-06-09 22:08:10', 'resource_update', 'modResource', '10'),
(290, 1, '2021-06-09 22:09:30', 'template_update', 'modTemplate', '5'),
(291, 1, '2021-06-09 22:09:31', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(292, 1, '2021-06-09 22:09:36', 'clear_cache', '', 'mgr'),
(293, 1, '2021-06-09 22:10:50', 'setting_update', 'modSystemSetting', 'use_alias_path'),
(294, 1, '2021-06-09 22:10:56', 'setting_update', 'modSystemSetting', 'use_frozen_parent_uris'),
(295, 1, '2021-06-09 22:11:00', 'clear_cache', '', 'mgr'),
(296, 1, '2021-06-09 22:11:05', 'clear_cache', '', 'mgr'),
(297, 1, '2021-06-09 22:11:19', 'resource_update', 'modResource', '10'),
(298, 1, '2021-06-09 22:11:26', 'resource_update', 'modResource', '10'),
(299, 1, '2021-06-09 22:11:42', 'resource_update', 'modResource', '10'),
(300, 1, '2021-06-09 22:12:02', 'resource_update', 'modResource', '10'),
(301, 1, '2021-06-09 22:12:15', 'resource_update', 'modResource', '10'),
(302, 1, '2021-06-09 22:13:09', 'resource_update', 'modResource', '10'),
(303, 1, '2021-06-09 22:13:18', 'resource_update', 'modResource', '10'),
(304, 1, '2021-06-09 22:13:22', 'clear_cache', '', 'mgr'),
(305, 1, '2021-06-09 22:13:48', 'resource_update', 'modResource', '10'),
(306, 1, '2021-06-09 22:13:49', 'resource_update', 'modResource', '10'),
(307, 1, '2021-06-09 22:14:13', 'resource_update', 'modResource', '10'),
(308, 1, '2021-06-09 22:14:21', 'resource_update', 'modResource', '10'),
(309, 1, '2021-06-09 22:14:27', 'resource_update', 'modResource', '10'),
(310, 1, '2021-06-09 22:15:12', 'setting_update', 'modSystemSetting', 'friendly_urls_strict'),
(311, 1, '2021-06-09 22:15:19', 'clear_cache', '', 'mgr'),
(312, 1, '2021-06-09 22:15:34', 'resource_update', 'modResource', '10'),
(313, 1, '2021-06-09 22:15:43', 'resource_update', 'modResource', '10'),
(314, 1, '2021-06-09 22:16:33', 'setting_update', 'modSystemSetting', 'friendly_urls_strict'),
(315, 1, '2021-06-09 22:17:07', 'setting_update', 'modSystemSetting', 'use_alias_path'),
(316, 1, '2021-06-09 22:17:15', 'clear_cache', '', 'mgr'),
(317, 1, '2021-06-09 22:17:27', 'resource_update', 'modResource', '10'),
(318, 1, '2021-06-09 22:18:11', 'setting_update', 'modSystemSetting', 'use_frozen_parent_uris'),
(319, 1, '2021-06-09 22:18:14', 'clear_cache', '', 'mgr'),
(320, 1, '2021-06-09 22:18:53', 'resource_update', 'modResource', '10'),
(321, 1, '2021-06-09 22:19:16', 'resource_update', 'modResource', '10'),
(322, 1, '2021-06-09 22:19:31', 'resource_update', 'modResource', '10'),
(323, 1, '2021-06-09 22:19:37', 'resource_update', 'modResource', '10'),
(324, 1, '2021-06-09 22:19:42', 'resource_update', 'modResource', '10'),
(325, 1, '2021-06-09 22:20:55', 'setting_update', 'modSystemSetting', 'use_frozen_parent_uris'),
(326, 1, '2021-06-09 22:21:38', 'setting_update', 'modSystemSetting', 'use_alias_path'),
(327, 1, '2021-06-09 22:22:27', 'clear_cache', '', 'mgr'),
(328, 1, '2021-06-09 22:23:17', 'setting_update', 'modSystemSetting', 'xhtml_urls'),
(329, 1, '2021-06-09 22:24:07', 'resource_update', 'modResource', '10'),
(330, 1, '2021-06-09 22:24:16', 'resource_update', 'modResource', '10'),
(331, 1, '2021-06-09 22:24:36', 'duplicate_resource', 'modDocument', '13'),
(332, 1, '2021-06-09 22:24:48', 'resource_update', 'modResource', '13'),
(333, 1, '2021-06-09 22:25:04', 'setting_update', 'modSystemSetting', 'xhtml_urls'),
(334, 1, '2021-06-09 22:25:51', 'resource_update', 'modResource', '13'),
(335, 1, '2021-06-09 22:26:08', 'resource_update', 'modResource', '10'),
(336, 1, '2021-06-09 22:26:17', 'resource_update', 'modResource', '10'),
(337, 1, '2021-06-10 03:49:37', 'clear_cache', '', 'mgr'),
(338, 1, '2021-06-10 05:23:24', 'clear_cache', '', 'mgr'),
(339, 1, '2021-06-10 05:23:38', 'clear_cache', '', 'mgr'),
(340, 1, '2021-06-10 08:10:50', 'file_update', '', 'C:/xampp/htdocs/figma-project/Backend/Manager/assets/layout/js/main.js'),
(341, 1, '2021-06-10 08:11:33', 'template_update', 'modTemplate', '5'),
(342, 1, '2021-06-10 08:11:34', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(343, 1, '2021-06-10 08:11:45', 'template_update', 'modTemplate', '5'),
(344, 1, '2021-06-10 08:11:46', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(345, 1, '2021-06-10 08:12:09', 'template_update', 'modTemplate', '5'),
(346, 1, '2021-06-10 08:12:10', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(347, 1, '2021-06-10 08:12:21', 'template_update', 'modTemplate', '5'),
(348, 1, '2021-06-10 08:12:21', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(349, 1, '2021-06-10 08:14:00', 'resource_update', 'modResource', '11'),
(350, 1, '2021-06-10 08:14:37', 'template_update', 'modTemplate', '5'),
(351, 1, '2021-06-10 08:14:38', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(352, 1, '2021-06-10 08:15:04', 'file_update', '', 'C:/xampp/htdocs/figma-project/Backend/Manager/assets/layout/js/main.js'),
(353, 1, '2021-06-10 08:15:42', 'template_update', 'modTemplate', '5'),
(354, 1, '2021-06-10 08:15:43', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(355, 1, '2021-06-10 08:15:45', 'template_update', 'modTemplate', '5'),
(356, 1, '2021-06-10 08:15:45', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(357, 1, '2021-06-10 08:15:48', 'template_update', 'modTemplate', '5'),
(358, 1, '2021-06-10 08:15:48', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(359, 1, '2021-06-10 08:15:53', 'template_update', 'modTemplate', '5'),
(360, 1, '2021-06-10 08:15:53', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(361, 1, '2021-06-10 08:16:24', 'file_update', '', 'C:/xampp/htdocs/figma-project/Backend/Manager/assets/layout/css/style.css'),
(362, 1, '2021-06-10 08:17:34', 'file_update', '', 'C:/xampp/htdocs/figma-project/Backend/Manager/assets/layout/js/main.js'),
(363, 1, '2021-06-10 20:59:42', 'clear_cache', '', 'mgr'),
(364, 1, '2021-06-10 21:04:27', 'resource_update', 'modResource', '11'),
(365, 1, '2021-06-10 21:07:09', 'resource_update', 'modResource', '11'),
(366, 1, '2021-06-11 05:23:51', 'template_update', 'modTemplate', '5'),
(367, 1, '2021-06-11 05:23:51', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(368, 1, '2021-06-11 05:24:41', 'template_update', 'modTemplate', '5'),
(369, 1, '2021-06-11 05:24:41', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(370, 1, '2021-06-11 05:26:45', 'template_update', 'modTemplate', '5'),
(371, 1, '2021-06-11 05:26:45', 'template_update', 'modTemplate', '5'),
(372, 1, '2021-06-11 05:26:45', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(373, 1, '2021-06-11 05:26:45', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(374, 1, '2021-06-11 05:28:18', 'template_update', 'modTemplate', '5'),
(375, 1, '2021-06-11 05:28:19', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(376, 1, '2021-06-11 05:32:45', 'template_update', 'modTemplate', '5'),
(377, 1, '2021-06-11 05:32:45', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(378, 1, '2021-06-11 05:34:12', 'resource_update', 'modResource', '13'),
(379, 1, '2021-06-11 05:34:14', 'resource_update', 'modResource', '13'),
(380, 1, '2021-06-11 05:43:07', 'resource_update', 'modResource', '11'),
(381, 1, '2021-06-11 05:44:23', 'resource_update', 'modResource', '11'),
(382, 1, '2021-06-11 05:46:03', 'chunk_update', 'modChunk', '3'),
(383, 1, '2021-06-11 05:46:04', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(384, 1, '2021-06-11 05:47:28', 'resource_update', 'modResource', '13'),
(385, 1, '2021-06-11 05:48:14', 'clear_cache', '', 'mgr'),
(386, 1, '2021-06-11 05:51:15', 'chunk_update', 'modChunk', '4'),
(387, 1, '2021-06-11 05:51:18', 'clear_cache', '', 'mgr'),
(388, 1, '2021-06-11 07:21:20', 'template_update', 'modTemplate', '5'),
(389, 1, '2021-06-11 07:21:21', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(390, 1, '2021-06-11 07:21:29', 'template_update', 'modTemplate', '5'),
(391, 1, '2021-06-11 07:21:30', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(392, 1, '2021-06-11 07:25:58', 'chunk_update', 'modChunk', '2'),
(393, 1, '2021-06-11 07:25:59', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(394, 1, '2021-06-11 08:41:22', 'clear_cache', '', 'mgr'),
(395, 1, '2021-06-11 08:55:00', 'directory_remove', '', 'C:/xampp/htdocs/figma-project/Backend/Manager/core/components/packageOrder/'),
(396, 1, '2021-06-11 09:23:25', 'menu_create', 'modMenu', 'Products Orders'),
(397, 1, '2021-06-11 09:24:24', 'menu_create', 'modMenu', 'Reports Orders'),
(398, 1, '2021-06-11 09:24:41', 'menu_update', 'modMenu', 'Products Orders'),
(399, 1, '2021-06-11 09:25:02', 'menu_update', 'modMenu', 'Products Orders'),
(400, 1, '2021-06-11 09:25:26', 'menu_update', 'modMenu', 'Reports Orders'),
(401, 1, '2021-06-11 09:26:11', 'menu_update', 'modMenu', 'Reports Orders'),
(402, 1, '2021-06-11 09:26:26', 'menu_update', 'modMenu', 'Reports Orders'),
(403, 1, '2021-06-11 09:57:12', 'clear_cache', '', 'mgr'),
(404, 1, '2021-06-11 10:01:41', 'clear_cache', '', 'mgr'),
(405, 1, '2021-06-11 10:04:12', 'clear_cache', '', 'mgr'),
(406, 1, '2021-06-11 10:06:49', 'clear_cache', '', 'mgr'),
(407, 1, '2021-06-11 10:21:32', 'directory_remove', '', 'C:/xampp/htdocs/figma-project/Backend/Manager/core/cache/'),
(408, 1, '2021-06-11 10:21:37', 'clear_cache', '', 'mgr'),
(409, 1, '2021-06-11 10:21:43', 'clear_cache', '', 'mgr'),
(410, 1, '2021-06-11 10:28:07', 'clear_cache', '', 'mgr'),
(411, 1, '2021-06-11 10:28:36', 'menu_update', 'modMenu', 'Reports Orders'),
(412, 1, '2021-06-11 10:44:32', 'clear_cache', '', 'mgr'),
(413, 1, '2021-06-11 10:50:45', 'clear_cache', '', 'mgr'),
(414, 1, '2021-06-11 10:59:27', 'namespace_create', 'modNamespace', 'pkgorder'),
(415, 1, '2021-06-11 10:59:32', 'clear_cache', '', 'mgr'),
(416, 1, '2021-06-11 11:00:43', 'clear_cache', '', 'mgr'),
(417, 1, '2021-06-11 11:02:37', 'setting_create', 'modSystemSetting', 'extension_packages'),
(418, 1, '2021-06-11 11:02:43', 'clear_cache', '', 'mgr'),
(419, 1, '2021-06-11 11:02:58', 'clear_cache', '', 'mgr'),
(420, 1, '2021-06-11 11:23:56', 'clear_cache', '', 'mgr'),
(421, 1, '2021-06-11 11:24:16', 'clear_cache', '', 'mgr'),
(422, 1, '2021-06-12 07:12:55', 'clear_cache', '', 'mgr'),
(423, 1, '2021-06-12 07:24:13', 'clear_cache', '', 'mgr'),
(424, 1, '2021-06-12 07:26:59', 'clear_cache', '', 'mgr'),
(425, 1, '2021-06-12 07:43:43', 'clear_cache', '', 'mgr'),
(426, 1, '2021-06-12 08:43:28', 'clear_cache', '', 'mgr'),
(427, 1, '2021-06-12 09:24:14', 'resource_update', 'modResource', '13'),
(428, 1, '2021-06-12 09:31:54', 'clear_cache', '', 'mgr'),
(429, 1, '2021-06-12 09:44:10', 'login', 'modContext', 'mgr'),
(430, 1, '2021-06-12 09:47:43', 'login', 'modContext', 'web'),
(431, 1, '2021-06-12 09:48:30', 'login', 'modContext', 'web'),
(432, 1, '2021-06-12 09:55:36', 'login', 'modContext', 'web'),
(433, 1, '2021-06-12 09:56:48', 'login', 'modContext', 'web'),
(434, 1, '2021-06-12 10:01:34', 'login', 'modContext', 'web'),
(435, 1, '2021-06-12 10:02:39', 'login', 'modContext', 'web'),
(436, 1, '2021-06-12 10:03:29', 'login', 'modContext', 'web'),
(437, 1, '2021-06-12 10:05:58', 'login', 'modContext', 'web'),
(438, 1, '2021-06-12 10:08:44', 'login', 'modContext', 'web'),
(439, 1, '2021-06-12 10:09:10', 'login', 'modContext', 'web'),
(440, 1, '2021-06-12 10:10:54', 'login', 'modContext', 'web'),
(441, 1, '2021-06-12 10:15:33', 'login', 'modContext', 'web'),
(442, 1, '2021-06-12 10:19:52', 'login', 'modContext', 'web'),
(443, 1, '2021-06-12 10:22:18', 'login', 'modContext', 'web'),
(444, 1, '2021-06-12 10:24:02', 'login', 'modContext', 'web'),
(445, 1, '2021-06-12 10:26:35', 'login', 'modContext', 'web'),
(446, 1, '2021-06-12 10:26:56', 'login', 'modContext', 'web'),
(447, 1, '2021-06-12 10:27:55', 'login', 'modContext', 'web'),
(448, 1, '2021-06-12 10:32:56', 'login', 'modContext', 'web'),
(449, 1, '2021-06-13 00:33:04', 'user_create', 'modUser', '2'),
(450, 1, '2021-06-13 00:33:29', 'login', 'modContext', 'mgr'),
(451, 1, '2021-06-13 00:34:05', 'user_update', 'modUser', '2'),
(452, 2, '2021-06-13 00:34:15', 'login', 'modContext', 'mgr'),
(453, 2, '2021-06-13 00:44:27', 'user_group_create', 'modUserGroup', '2'),
(454, 2, '2021-06-13 00:44:54', 'user_group_update', 'modUserGroup', '2'),
(455, 2, '2021-06-13 00:45:46', 'access_context_create', 'modAccessContext', '5'),
(456, 1, '2021-06-13 00:46:30', 'login', 'modContext', 'mgr'),
(457, 2, '2021-06-13 00:49:20', 'login', 'modContext', 'mgr'),
(458, 1, '2021-06-13 01:09:48', 'login', 'modContext', 'mgr'),
(459, 1, '2021-06-13 01:11:12', 'template_update', 'modTemplate', '3'),
(460, 1, '2021-06-13 01:11:12', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 3 Default'),
(461, 1, '2021-06-13 01:11:24', 'resource_update', 'modResource', '2'),
(462, 1, '2021-06-13 01:11:32', 'resource_update', 'modResource', '2'),
(463, 1, '2021-06-13 01:11:36', 'resource_update', 'modResource', '2'),
(464, 1, '2021-06-12 23:14:24', 'login', 'modContext', 'mgr'),
(465, 1, '2021-06-12 23:14:38', 'clear_cache', '', 'mgr'),
(466, 1, '2021-06-12 23:14:47', 'clear_cache', '', 'mgr'),
(467, 1, '2021-06-12 23:14:50', 'clear_cache', '', 'mgr'),
(468, 2, '2021-06-12 23:15:17', 'login', 'modContext', 'mgr'),
(469, 2, '2021-06-12 23:18:06', 'login', 'modContext', 'mgr'),
(470, 1, '2021-06-12 23:19:48', 'login', 'modContext', 'mgr'),
(471, 1, '2021-06-12 23:20:06', 'template_update', 'modTemplate', '2'),
(472, 1, '2021-06-12 23:20:07', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 2 Default'),
(473, 1, '2021-06-12 23:20:13', 'resource_update', 'modResource', '1'),
(474, 2, '2021-06-12 23:20:36', 'login', 'modContext', 'mgr'),
(475, 2, '2021-06-12 23:24:38', 'resource_update', 'modResource', '13'),
(476, 1, '2021-06-12 23:25:28', 'login', 'modContext', 'mgr'),
(477, 1, '2021-06-12 23:26:47', 'template_update', 'modTemplate', '5'),
(478, 1, '2021-06-12 23:26:48', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(479, 1, '2021-06-12 23:27:15', 'resource_update', 'modResource', '10'),
(480, 1, '2021-06-12 23:27:32', 'resource_update', 'modResource', '10'),
(481, 1, '2021-06-12 23:29:04', 'resource_update', 'modResource', '13'),
(482, 1, '2021-06-12 23:29:30', 'resource_update', 'modResource', '13'),
(483, 1, '2021-06-12 23:30:07', 'resource_update', 'modResource', '13'),
(484, 1, '2021-06-12 23:30:16', 'resource_update', 'modResource', '13'),
(485, 1, '2021-06-12 23:30:53', 'resource_update', 'modResource', '13'),
(486, 1, '2021-06-12 23:31:11', 'resource_update', 'modResource', '13'),
(487, 1, '2021-06-12 23:32:31', 'setting_update', 'modSystemSetting', 'use_editor'),
(488, 1, '2021-06-12 23:32:43', 'resource_update', 'modResource', '13'),
(489, 2, '2021-06-13 00:41:00', 'login', 'modContext', 'mgr'),
(490, 1, '2021-06-13 00:41:37', 'login', 'modContext', 'mgr'),
(491, 2, '2021-06-13 01:04:12', 'login', 'modContext', 'mgr'),
(492, 1, '2021-06-13 01:15:36', 'source_create', 'sources.modMediaSource', '2'),
(493, 1, '2021-06-13 01:15:53', 'source_update', 'sources.modMediaSource', '1'),
(494, 1, '2021-06-13 01:16:12', 'source_create', 'sources.modAccessMediaSource', '2'),
(495, 1, '2021-06-13 01:18:25', 'policy_update', 'modAccessPolicy', '7'),
(496, 2, '2021-06-13 01:18:53', 'login', 'modContext', 'mgr'),
(497, 1, '2021-06-13 01:19:21', 'login', 'modContext', 'mgr'),
(498, 2, '2021-06-13 01:19:39', 'login', 'modContext', 'mgr'),
(499, 1, '2021-06-13 01:20:41', 'source_update', 'sources.modMediaSource', '2'),
(500, 1, '2021-06-13 01:24:53', 'source_update', 'sources.modMediaSource', '2'),
(501, 1, '2021-06-13 01:31:26', 'policy_update', 'modAccessPolicy', '7'),
(502, 2, '2021-06-13 01:33:56', 'login', 'modContext', 'mgr'),
(503, 1, '2021-06-13 01:34:59', 'login', 'modContext', 'mgr'),
(504, 1, '2021-06-13 01:38:15', 'policy_update', 'modAccessPolicy', '7'),
(505, 2, '2021-06-13 01:52:31', 'duplicate_resource', 'modDocument', '18'),
(506, 2, '2021-06-13 01:52:38', 'resource_update', 'modResource', '18'),
(507, 1, '2021-06-13 01:55:02', 'user_update', 'modUser', '1'),
(508, 1, '2021-06-13 01:55:11', 'clear_cache', '', 'mgr'),
(509, 2, '2021-06-13 02:00:09', 'resource_update', 'modResource', '1'),
(510, 2, '2021-06-13 02:01:11', 'resource_update', 'modResource', '1'),
(511, 2, '2021-06-13 02:07:41', 'resource_update', 'modResource', '10'),
(512, 2, '2021-06-13 02:07:51', 'resource_update', 'modResource', '10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_media_sources`
--

CREATE TABLE `modx_media_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `class_key` varchar(100) NOT NULL DEFAULT 'sources.modFileMediaSource',
  `properties` mediumtext,
  `is_stream` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_media_sources`
--

INSERT INTO `modx_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES
(1, 'Filesystem', '', 'sources.modFileMediaSource', 'a:0:{}', 1),
(2, 'Frontend', '', 'sources.modFileMediaSource', 'a:1:{s:8:\"basePath\";a:6:{s:4:\"name\";s:8:\"basePath\";s:4:\"desc\";s:23:\"prop_file.basePath_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:6:\"assets\";s:7:\"lexicon\";s:11:\"core:source\";}}', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_media_sources_contexts`
--

CREATE TABLE `modx_media_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_media_sources_elements`
--

CREATE TABLE `modx_media_sources_elements` (
  `source` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `object_class` varchar(100) NOT NULL DEFAULT 'modTemplateVar',
  `object` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_media_sources_elements`
--

INSERT INTO `modx_media_sources_elements` (`source`, `object_class`, `object`, `context_key`) VALUES
(1, 'modTemplateVar', 1, 'web'),
(1, 'modTemplateVar', 2, 'web'),
(1, 'modTemplateVar', 3, 'web'),
(1, 'modTemplateVar', 4, 'web'),
(1, 'modTemplateVar', 5, 'web');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_membergroup_names`
--

CREATE TABLE `modx_membergroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_membergroup_names`
--

INSERT INTO `modx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES
(1, 'Administrator', NULL, 0, 0, 1),
(2, 'EditContent', 'Edit website', 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_member_groups`
--

CREATE TABLE `modx_member_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `member` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `role` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_member_groups`
--

INSERT INTO `modx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES
(1, 1, 1, 2, 0),
(3, 2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_menus`
--

CREATE TABLE `modx_menus` (
  `text` varchar(191) NOT NULL DEFAULT '',
  `parent` varchar(191) NOT NULL DEFAULT '',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `menuindex` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_menus`
--

INSERT INTO `modx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`, `namespace`) VALUES
('about', 'usernav', 'help', '', '<i class=\"icon-question-circle icon icon-large\"></i>', 7, '', '', 'help', 'core'),
('acls', 'admin', 'security/permission', 'acls_desc', '', 5, '', '', 'access_permissions', 'core'),
('admin', 'usernav', '', '', '<i class=\"icon-gear icon icon-large\"></i>', 6, '', '', 'settings', 'core'),
('bespoke_manager', 'admin', 'security/forms', 'bespoke_manager_desc', '', 1, '', '', 'customize_forms', 'core'),
('cmpgenerator', 'components', '1', 'cmpgenerator.desc', '', 0, '', '', '', 'core'),
('components', 'topnav', '', '', '', 2, '', '', 'components', 'core'),
('content_types', 'site', 'system/contenttype', 'content_types_desc', '', 8, '', '', 'content_types', 'core'),
('contexts', 'admin', 'context', 'contexts_desc', '', 3, '', '', 'view_context', 'core'),
('dashboards', 'admin', 'system/dashboards', 'dashboards_desc', '', 2, '', '', 'dashboards', 'core'),
('edit_menu', 'admin', 'system/action', 'edit_menu_desc', '', 4, '', '', 'actions', 'core'),
('eventlog_viewer', 'reports', 'system/event', 'eventlog_viewer_desc', '', 2, '', '', 'view_eventlog', 'core'),
('file_browser', 'media', 'media/browser', 'file_browser_desc', '', 0, '', '', 'file_manager', 'core'),
('flush_access', 'manage', '', 'flush_access_desc', '', 3, '', 'MODx.msg.confirm({\n    title: _(\'flush_access\')\n    ,text: _(\'flush_access_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/access/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this},\n        \'failure\': {fn:function(response) { Ext.MessageBox.alert(\'failure\', response.responseText); },scope:this},\n    }\n});', 'access_permissions', 'core'),
('flush_sessions', 'manage', '', 'flush_sessions_desc', '', 4, '', 'MODx.msg.confirm({\n    title: _(\'flush_sessions\')\n    ,text: _(\'flush_sessions_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});', 'flush_sessions', 'core'),
('import_resources', 'site', 'system/import', 'import_resources_desc', '', 6, '', '', 'import_static', 'core'),
('import_site', 'site', 'system/import/html', 'import_site_desc', '', 5, '', '', 'import_static', 'core'),
('installer', 'components', 'workspaces', 'installer_desc', '', 0, '', '', 'packages', 'core'),
('lexicon_management', 'admin', 'workspaces/lexicon', 'lexicon_management_desc', '', 7, '', '', 'lexicons', 'core'),
('logout', 'user', 'security/logout', 'logout_desc', '', 2, '', 'MODx.logout(); return false;', 'logout', 'core'),
('manage', 'topnav', '', '', '', 3, '', '', 'menu_tools', 'core'),
('media', 'topnav', '', 'media_desc', '', 1, '', '', 'file_manager', 'core'),
('messages', 'user', 'security/message', 'messages_desc', '', 1, '', '', 'messages', 'core'),
('MIGX', 'components', 'index', '', '', 1, '&configs=migxconfigs||packagemanager', '', '', 'migx'),
('namespaces', 'admin', 'workspaces/namespace', 'namespaces_desc', '', 8, '', '', 'namespaces', 'core'),
('new_resource', 'site', 'resource/create', 'new_resource_desc', '', 0, '', '', 'new_document', 'core'),
('preview', 'site', '', 'preview_desc', '', 4, '', 'MODx.preview(); return false;', '', 'core'),
('Products Orders', 'topnav', '', '', '', 4, '', '', 'menu_products_orders', 'core'),
('profile', 'user', 'security/profile', 'profile_desc', '', 0, '', '', 'change_profile', 'core'),
('propertysets', 'admin', 'element/propertyset', 'propertysets_desc', '', 6, '', '', 'property_sets', 'core'),
('refreshuris', 'refresh_site', '', 'refreshuris_desc', '', 0, '', 'MODx.refreshURIs(); return false;', 'empty_cache', 'core'),
('refresh_site', 'manage', '', 'refresh_site_desc', '', 1, '', 'MODx.clearCache(); return false;', 'empty_cache', 'core'),
('remove_locks', 'manage', '', 'remove_locks_desc', '', 2, '', 'MODx.removeLocks();return false;', 'remove_locks', 'core'),
('reports', 'manage', '', 'reports_desc', '', 5, '', '', 'menu_reports', 'core'),
('Reports Orders', 'Products Orders', 'index', 'Reportería', '', 0, '&configs=migxorder', '', 'permissionMigxOrder', 'migx'),
('resource_groups', 'site', 'security/resourcegroup', 'resource_groups_desc', '', 7, '', '', 'access_permissions', 'core'),
('site', 'topnav', '', '', '', 0, '', '', 'menu_site', 'core'),
('site_schedule', 'reports', 'resource/site_schedule', 'site_schedule_desc', '', 0, '', '', 'view_document', 'core'),
('sources', 'media', 'source', 'sources_desc', '', 1, '', '', 'sources', 'core'),
('system_settings', 'admin', 'system/settings', 'system_settings_desc', '', 0, '', '', 'settings', 'core'),
('topnav', '', '', 'topnav_desc', '', 0, '', '', '', 'core'),
('uicmpgenerator', 'components', 'index', 'uicmpgenerator.desc', '', 0, '', '', 'uicmpgenerator', 'uicmpgenerator'),
('user', 'usernav', '', '', '<span id=\"user-avatar\">{$userImage}</span> <span id=\"user-username\">{$username}</span>', 5, '', '', 'menu_user', 'core'),
('usernav', '', '', 'usernav_desc', '', 1, '', '', '', 'core'),
('users', 'manage', 'security/user', 'user_management_desc', '', 0, '', '', 'view_user', 'core'),
('view_logging', 'reports', 'system/logs', 'view_logging_desc', '', 1, '', '', 'logs', 'core'),
('view_sysinfo', 'reports', 'system/info', 'view_sysinfo_desc', '', 3, '', '', 'view_sysinfo', 'core');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_migx_configs`
--

CREATE TABLE `modx_migx_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `formtabs` text NOT NULL,
  `contextmenus` text NOT NULL,
  `actionbuttons` text NOT NULL,
  `columnbuttons` text NOT NULL,
  `filters` text NOT NULL,
  `extended` text NOT NULL,
  `permissions` text NOT NULL,
  `fieldpermissions` text NOT NULL,
  `columns` text NOT NULL,
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` datetime DEFAULT NULL,
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` datetime DEFAULT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` datetime DEFAULT NULL,
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `publishedon` datetime DEFAULT NULL,
  `publishedby` int(10) NOT NULL DEFAULT '0',
  `category` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_migx_configs`
--

INSERT INTO `modx_migx_configs` (`id`, `name`, `formtabs`, `contextmenus`, `actionbuttons`, `columnbuttons`, `filters`, `extended`, `permissions`, `fieldpermissions`, `columns`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `published`, `publishedon`, `publishedby`, `category`) VALUES
(1, 'migxorder', '[{\"MIGX_id\":2,\"caption\":\"Detalle\",\"print_before_tabs\":\"0\",\"fields\":[{\"MIGX_id\":9,\"field\":\"id\",\"caption\":\"Detalle\",\"description\":\"\",\"description_is_code\":\"0\",\"inputTV\":\"\",\"inputTVtype\":\"migxdb\",\"validation\":\"\",\"configs\":\"migxorderdetail\",\"restrictive_condition\":\"\",\"display\":\"\",\"sourceFrom\":\"config\",\"sources\":\"\",\"inputOptionValues\":\"\",\"default\":\"\",\"useDefaultIfEmpty\":\"0\",\"pos\":1}],\"pos\":1},{\"MIGX_id\":1,\"caption\":\"Orden\",\"print_before_tabs\":\"0\",\"fields\":[{\"MIGX_id\":1,\"field\":\"Id\",\"caption\":\"id\",\"description\":\"\",\"description_is_code\":\"0\",\"inputTV\":\"\",\"inputTVtype\":\"\",\"validation\":\"\",\"configs\":\"\",\"restrictive_condition\":\"\",\"display\":\"none\",\"sourceFrom\":\"config\",\"sources\":\"\",\"inputOptionValues\":\"\",\"default\":\"\",\"useDefaultIfEmpty\":\"0\",\"pos\":1},{\"MIGX_id\":2,\"field\":\"order_uuid\",\"caption\":\"order_uuid\",\"description\":\"\",\"description_is_code\":\"0\",\"inputTV\":\"\",\"inputTVtype\":\"\",\"validation\":\"\",\"configs\":\"\",\"restrictive_condition\":\"\",\"display\":\"none\",\"sourceFrom\":\"config\",\"sources\":\"\",\"inputOptionValues\":\"\",\"default\":\"\",\"useDefaultIfEmpty\":\"0\",\"pos\":2},{\"MIGX_id\":3,\"field\":\"product_id\",\"caption\":\"Producto\",\"description\":\"\",\"description_is_code\":\"0\",\"inputTV\":\"\",\"inputTVtype\":\"\",\"validation\":\"\",\"configs\":\"\",\"restrictive_condition\":\"\",\"display\":\"none\",\"sourceFrom\":\"config\",\"sources\":\"\",\"inputOptionValues\":\"\",\"default\":\"\",\"useDefaultIfEmpty\":\"0\",\"pos\":3},{\"MIGX_id\":4,\"field\":\"order_quantity\",\"caption\":\"Cantidad\",\"description\":\"\",\"description_is_code\":\"0\",\"inputTV\":\"\",\"inputTVtype\":\"\",\"validation\":\"\",\"configs\":\"\",\"restrictive_condition\":\"\",\"display\":\"none\",\"sourceFrom\":\"config\",\"sources\":\"\",\"inputOptionValues\":\"\",\"default\":\"\",\"useDefaultIfEmpty\":\"0\",\"pos\":4},{\"MIGX_id\":5,\"field\":\"order_total\",\"caption\":\"Total\",\"description\":\"\",\"description_is_code\":\"0\",\"inputTV\":\"\",\"inputTVtype\":\"\",\"validation\":\"\",\"configs\":\"\",\"restrictive_condition\":\"\",\"display\":\"\",\"sourceFrom\":\"config\",\"sources\":\"\",\"inputOptionValues\":\"\",\"default\":\"\",\"useDefaultIfEmpty\":\"0\",\"pos\":5},{\"MIGX_id\":6,\"field\":\"order_timestamp\",\"caption\":\"order_timestamp\",\"description\":\"\",\"description_is_code\":\"0\",\"inputTV\":\"\",\"inputTVtype\":\"\",\"validation\":\"\",\"configs\":\"\",\"restrictive_condition\":\"\",\"display\":\"none\",\"sourceFrom\":\"config\",\"sources\":\"\",\"inputOptionValues\":\"\",\"default\":\"\",\"useDefaultIfEmpty\":\"0\",\"pos\":6},{\"MIGX_id\":7,\"field\":\"createdon\",\"caption\":\"createdon\",\"description\":\"\",\"description_is_code\":\"0\",\"inputTV\":\"\",\"inputTVtype\":\"\",\"validation\":\"\",\"configs\":\"\",\"restrictive_condition\":\"\",\"display\":\"none\",\"sourceFrom\":\"config\",\"sources\":\"\",\"inputOptionValues\":\"\",\"default\":\"\",\"useDefaultIfEmpty\":\"0\",\"pos\":7},{\"MIGX_id\":8,\"field\":\"createdby\",\"caption\":\"createdby\",\"description\":\"\",\"description_is_code\":\"0\",\"inputTV\":\"\",\"inputTVtype\":\"\",\"validation\":\"\",\"configs\":\"\",\"restrictive_condition\":\"\",\"display\":\"none\",\"sourceFrom\":\"config\",\"sources\":\"\",\"inputOptionValues\":\"\",\"default\":\"\",\"useDefaultIfEmpty\":\"0\",\"pos\":8}],\"pos\":2}]', 'update', 'exportview', '', '', '{\"migx_add\":\"\",\"disable_add_item\":\"\",\"add_items_directly\":\"\",\"formcaption\":\"\",\"update_win_title\":\"\",\"win_id\":\"migxorder\",\"maxRecords\":\"\",\"addNewItemAt\":\"bottom\",\"media_source_id\":\"\",\"multiple_formtabs\":\"\",\"multiple_formtabs_label\":\"\",\"multiple_formtabs_field\":\"\",\"multiple_formtabs_optionstext\":\"\",\"multiple_formtabs_optionsvalue\":\"\",\"actionbuttonsperrow\":\"4\",\"winbuttonslist\":\"\",\"extrahandlers\":\"\",\"filtersperrow\":\"4\",\"packageName\":\"pkgorder\",\"classname\":\"Order\",\"task\":\"\",\"getlistsort\":\"\",\"getlistsortdir\":\"\",\"sortconfig\":\"[{\\\"sortby\\\":\\\"id\\\",\\\"sortdir\\\":\\\"DESC\\\"}]\",\"gridpagesize\":\"\",\"use_custom_prefix\":\"0\",\"prefix\":\"\",\"grid\":\"\",\"gridload_mode\":\"1\",\"check_resid\":\"1\",\"check_resid_TV\":\"\",\"join_alias\":\"\",\"has_jointable\":\"yes\",\"getlistwhere\":\"\",\"joins\":\"\",\"hooksnippets\":\"\",\"cmpmaincaption\":\"Ordenes de Productos\",\"cmptabcaption\":\"Reporte\",\"cmptabdescription\":\"Listado de ordenes por producto\",\"cmptabcontroller\":\"Orders\",\"winbuttons\":\"\",\"onsubmitsuccess\":\"\",\"submitparams\":\"\"}', '{\"apiaccess\":\"\",\"view\":\"\",\"list\":\"\",\"save\":\"\",\"create\":\"\",\"remove\":\"\",\"delete\":\"\",\"publish\":\"\",\"unpublish\":\"\",\"viewdeleted\":\"\",\"viewunpublished\":\"\"}', '', '[{\"MIGX_id\":\"9\",\"header\":\"Id\",\"dataIndex\":\"id\",\"width\":\"5\",\"sortable\":\"true\",\"show_in_grid\":\"0\",\"customrenderer\":\"\",\"renderer\":\"\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"\",\"renderoptions\":\"\",\"editor\":\"\"},{\"MIGX_id\":\"2\",\"header\":\"N\\u00b0 Order\",\"dataIndex\":\"order_uuid\",\"width\":\"3\",\"sortable\":\"true\",\"show_in_grid\":\"1\",\"customrenderer\":\"\",\"renderer\":\"\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"\",\"renderoptions\":\"\",\"editor\":\"\"},{\"MIGX_id\":\"3\",\"header\":\"Producto\",\"dataIndex\":\"product_id\",\"width\":\"8\",\"sortable\":\"true\",\"show_in_grid\":\"1\",\"customrenderer\":\"\",\"renderer\":\"this.renderChunk\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"[[pdoField?\\n    &id=`[[+product_id]]`\\n    &field=`longtitle`\\n]]\",\"renderoptions\":\"\",\"editor\":\"\"},{\"MIGX_id\":\"4\",\"header\":\"Cantidad\",\"dataIndex\":\"order_quantity\",\"width\":\"2\",\"sortable\":\"true\",\"show_in_grid\":\"1\",\"customrenderer\":\"\",\"renderer\":\"\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"\",\"renderoptions\":\"\",\"editor\":\"\"},{\"MIGX_id\":\"5\",\"header\":\"Total\",\"dataIndex\":\"order_total\",\"width\":\"2\",\"sortable\":\"true\",\"show_in_grid\":\"1\",\"customrenderer\":\"\",\"renderer\":\"\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"\",\"renderoptions\":\"\",\"editor\":\"\"},{\"MIGX_id\":\"6\",\"header\":\"Fecha Registro\",\"dataIndex\":\"order_timestamp\",\"width\":\"5\",\"sortable\":\"true\",\"show_in_grid\":\"0\",\"customrenderer\":\"\",\"renderer\":\"\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"\",\"renderoptions\":\"\",\"editor\":\"\"},{\"MIGX_id\":\"7\",\"header\":\"Fecha Registro\",\"dataIndex\":\"createdon\",\"width\":\"5\",\"sortable\":\"true\",\"show_in_grid\":\"1\",\"customrenderer\":\"\",\"renderer\":\"\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"\",\"renderoptions\":\"\",\"editor\":\"\"},{\"MIGX_id\":\"8\",\"header\":\"Cliente\",\"dataIndex\":\"createdby\",\"width\":\"5\",\"sortable\":\"true\",\"show_in_grid\":\"1\",\"customrenderer\":\"\",\"renderer\":\"this.renderChunk\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"[[!pdoUsers?\\n    &users=`[[+createdby]]`\\n    &tpl=`@INLINE [[+fullname]]<\\/p>`\\n    &sortby=`id`\\n    &sortdir=`asc`\\n]]\",\"renderoptions\":\"\",\"editor\":\"\"}]', 0, '2021-06-11 09:13:37', 1, '2021-06-12 09:31:37', 0, NULL, 0, 1, NULL, 0, ''),
(2, 'migxorderdetail', '', '', '', '', '', '{\"migx_add\":\"\",\"disable_add_item\":\"\",\"add_items_directly\":\"\",\"formcaption\":\"\",\"update_win_title\":\"\",\"win_id\":\"migxorderdetail\",\"maxRecords\":\"\",\"addNewItemAt\":\"bottom\",\"media_source_id\":\"\",\"multiple_formtabs\":\"\",\"multiple_formtabs_label\":\"\",\"multiple_formtabs_field\":\"\",\"multiple_formtabs_optionstext\":\"\",\"multiple_formtabs_optionsvalue\":\"\",\"actionbuttonsperrow\":\"4\",\"winbuttonslist\":\"\",\"extrahandlers\":\"\",\"filtersperrow\":\"4\",\"packageName\":\"pkgorder\",\"classname\":\"OrderDetail\",\"task\":\"\",\"getlistsort\":\"\",\"getlistsortdir\":\"\",\"sortconfig\":\"[{\\\"sortby\\\":\\\"id\\\",\\\"sortdir\\\":\\\"DESC\\\"}]\",\"gridpagesize\":\"\",\"use_custom_prefix\":\"0\",\"prefix\":\"\",\"grid\":\"\",\"gridload_mode\":\"2\",\"check_resid\":\"1\",\"check_resid_TV\":\"\",\"join_alias\":\"Order\",\"has_jointable\":\"yes\",\"getlistwhere\":\"\",\"joins\":\"\",\"hooksnippets\":\"\",\"cmpmaincaption\":\"Order Detail\",\"cmptabcaption\":\"View\",\"cmptabdescription\":\"\",\"cmptabcontroller\":\"\",\"winbuttons\":\"\",\"onsubmitsuccess\":\"\",\"submitparams\":\"\"}', '{\"apiaccess\":\"\",\"view\":\"\",\"list\":\"\",\"save\":\"\",\"create\":\"\",\"remove\":\"\",\"delete\":\"\",\"publish\":\"\",\"unpublish\":\"\",\"viewdeleted\":\"\",\"viewunpublished\":\"\"}', '', '[{\"MIGX_id\":\"2\",\"header\":\"id\",\"dataIndex\":\"id\",\"width\":\"\",\"sortable\":\"true\",\"show_in_grid\":\"0\",\"customrenderer\":\"\",\"renderer\":\"\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"\",\"renderoptions\":\"\",\"editor\":\"\"},{\"MIGX_id\":\"3\",\"header\":\"order_id\",\"dataIndex\":\"order_id\",\"width\":\"\",\"sortable\":\"true\",\"show_in_grid\":\"0\",\"customrenderer\":\"\",\"renderer\":\"\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"\",\"renderoptions\":\"\",\"editor\":\"\"},{\"MIGX_id\":\"4\",\"header\":\"oder_detail_uuid\",\"dataIndex\":\"oder_detail_uuid\",\"width\":\"\",\"sortable\":\"true\",\"show_in_grid\":\"0\",\"customrenderer\":\"\",\"renderer\":\"\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"\",\"renderoptions\":\"\",\"editor\":\"\"},{\"MIGX_id\":\"5\",\"header\":\"Talla\",\"dataIndex\":\"order_size\",\"width\":\"5\",\"sortable\":\"true\",\"show_in_grid\":\"1\",\"customrenderer\":\"\",\"renderer\":\"\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"\",\"renderoptions\":\"\",\"editor\":\"\"},{\"MIGX_id\":\"6\",\"header\":\"Color\",\"dataIndex\":\"order_color\",\"width\":\"5\",\"sortable\":\"true\",\"show_in_grid\":\"1\",\"customrenderer\":\"\",\"renderer\":\"\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"\",\"renderoptions\":\"\",\"editor\":\"\"},{\"MIGX_id\":\"7\",\"header\":\"Precio\",\"dataIndex\":\"order_price\",\"width\":\"5\",\"sortable\":\"true\",\"show_in_grid\":\"1\",\"customrenderer\":\"\",\"renderer\":\"\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"\",\"renderoptions\":\"\",\"editor\":\"\"},{\"MIGX_id\":\"8\",\"header\":\"Cantidad\",\"dataIndex\":\"order_quantity\",\"width\":\"5\",\"sortable\":\"true\",\"show_in_grid\":\"1\",\"customrenderer\":\"\",\"renderer\":\"\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"\",\"renderoptions\":\"\",\"editor\":\"\"},{\"MIGX_id\":\"9\",\"header\":\"Subtotal\",\"dataIndex\":\"order_subtotal\",\"width\":\"5\",\"sortable\":\"true\",\"show_in_grid\":\"1\",\"customrenderer\":\"\",\"renderer\":\"\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"\",\"renderoptions\":\"\",\"editor\":\"\"}]', 1, '2021-06-12 07:10:21', 1, '2021-06-12 08:58:22', 0, NULL, 0, 1, NULL, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_migx_config_elements`
--

CREATE TABLE `modx_migx_config_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `config_id` int(10) NOT NULL DEFAULT '0',
  `element_id` int(10) NOT NULL DEFAULT '0',
  `rank` int(10) NOT NULL DEFAULT '0',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` datetime NOT NULL,
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` datetime NOT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` datetime NOT NULL,
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `publishedon` datetime NOT NULL,
  `publishedby` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_migx_elements`
--

CREATE TABLE `modx_migx_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` datetime NOT NULL,
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` datetime NOT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` datetime NOT NULL,
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `publishedon` datetime NOT NULL,
  `publishedby` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_migx_formtabs`
--

CREATE TABLE `modx_migx_formtabs` (
  `id` int(10) UNSIGNED NOT NULL,
  `config_id` int(10) NOT NULL DEFAULT '0',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `pos` int(10) NOT NULL DEFAULT '0',
  `print_before_tabs` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `extended` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_migx_formtabs`
--

INSERT INTO `modx_migx_formtabs` (`id`, `config_id`, `caption`, `pos`, `print_before_tabs`, `extended`) VALUES
(1, 1, 'Orden', 2, 0, ''),
(2, 1, 'Detalle', 1, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_migx_formtab_fields`
--

CREATE TABLE `modx_migx_formtab_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `config_id` int(10) NOT NULL DEFAULT '0',
  `formtab_id` int(10) NOT NULL DEFAULT '0',
  `field` varchar(191) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `pos` int(10) NOT NULL DEFAULT '0',
  `description_is_code` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `inputTV` varchar(255) NOT NULL DEFAULT '',
  `inputTVtype` varchar(255) NOT NULL DEFAULT '',
  `validation` text NOT NULL,
  `configs` varchar(255) NOT NULL DEFAULT '',
  `restrictive_condition` text NOT NULL,
  `display` varchar(255) NOT NULL DEFAULT '',
  `sourceFrom` varchar(255) NOT NULL DEFAULT '',
  `sources` varchar(255) NOT NULL DEFAULT '',
  `inputOptionValues` text NOT NULL,
  `default` text NOT NULL,
  `extended` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_migx_formtab_fields`
--

INSERT INTO `modx_migx_formtab_fields` (`id`, `config_id`, `formtab_id`, `field`, `caption`, `description`, `pos`, `description_is_code`, `inputTV`, `inputTVtype`, `validation`, `configs`, `restrictive_condition`, `display`, `sourceFrom`, `sources`, `inputOptionValues`, `default`, `extended`) VALUES
(1, 1, 1, 'Id', 'id', '', 1, 0, '', '', '', '', '', 'none', 'config', '', '', '', ''),
(2, 1, 1, 'order_uuid', 'order_uuid', '', 2, 0, '', '', '', '', '', 'none', 'config', '', '', '', ''),
(3, 1, 1, 'product_id', 'Producto', '', 3, 0, '', '', '', '', '', 'none', 'config', '', '', '', ''),
(4, 1, 1, 'order_quantity', 'Cantidad', '', 4, 0, '', '', '', '', '', 'none', 'config', '', '', '', ''),
(5, 1, 1, 'order_total', 'Total', '', 5, 0, '', '', '', '', '', '', 'config', '', '', '', ''),
(6, 1, 1, 'order_timestamp', 'order_timestamp', '', 6, 0, '', '', '', '', '', 'none', 'config', '', '', '', ''),
(7, 1, 1, 'createdon', 'createdon', '', 7, 0, '', '', '', '', '', 'none', 'config', '', '', '', ''),
(8, 1, 1, 'createdby', 'createdby', '', 8, 0, '', '', '', '', '', 'none', 'config', '', '', '', ''),
(9, 1, 2, 'id', 'Detalle', '', 1, 0, '', 'migxdb', '', 'migxorderdetail', '', '', 'config', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_namespaces`
--

CREATE TABLE `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text,
  `assets_path` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_namespaces`
--

INSERT INTO `modx_namespaces` (`name`, `path`, `assets_path`) VALUES
('ace', '{core_path}components/ace/', ''),
('cmpgenerator', '{core_path}components/cmpgenerator/', NULL),
('core', '{core_path}', '{assets_path}'),
('migx', '{core_path}components/migx/', '{assets_path}components/migx/'),
('modjwt', '{core_path}components/modjwt/', ''),
('pdotools', '{core_path}components/pdotools/', ''),
('pkgorder', '{core_path}components/pkgorder/', '{assets_path}components/pkgorder/'),
('tinymcerte', '{core_path}components/tinymcerte/', '{assets_path}components/tinymcerte/'),
('uicmpgenerator', '{core_path}components/uicmpgenerator/', '{assets_path}components/uicmpgenerator/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_order`
--

CREATE TABLE `modx_order` (
  `id` int(10) NOT NULL,
  `order_uuid` varchar(150) DEFAULT NULL,
  `product_id` int(10) DEFAULT NULL,
  `order_quantity` int(10) DEFAULT NULL,
  `order_total` decimal(13,2) DEFAULT NULL,
  `order_timestamp` varchar(45) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `createdby` int(10) DEFAULT NULL,
  `editedon` datetime DEFAULT NULL,
  `editedby` int(10) DEFAULT NULL,
  `deletedon` datetime DEFAULT NULL,
  `deletedby` int(10) DEFAULT NULL,
  `publishedon` datetime DEFAULT NULL,
  `publishedby` int(10) DEFAULT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_order`
--

INSERT INTO `modx_order` (`id`, `order_uuid`, `product_id`, `order_quantity`, `order_total`, `order_timestamp`, `createdon`, `createdby`, `editedon`, `editedby`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `published`, `active`) VALUES
(14, '20210612081116', 10, 24, 717.60, '1623383285459', '2021-06-12 08:11:16', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '20210612081231', 10, 24, 717.60, '1623383285459', '2021-06-12 08:12:31', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '20210612082018', 10, 24, 717.60, '1623383285459', '2021-06-12 08:20:18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '20210612083234', 10, 24, 717.60, '1623383285459', '2021-06-12 08:32:34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '20210612083432', 13, 24, 717.60, '1623383285459', '2021-06-12 08:34:32', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '20210612083629', 13, 24, 717.60, '1623383285459', '2021-06-12 08:36:29', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '20210612083937', 13, 24, 717.60, '1623383285459', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '20210612084118', 10, 24, 717.60, '1623383285459', '2021-06-12 08:41:18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_order_detail`
--

CREATE TABLE `modx_order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `oder_detail_uuid` varchar(150) DEFAULT NULL,
  `order_size` varchar(45) DEFAULT NULL,
  `order_color` varchar(45) DEFAULT NULL,
  `order_price` decimal(13,2) DEFAULT NULL,
  `order_quantity` int(11) DEFAULT NULL,
  `order_subtotal` decimal(13,2) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `createdby` int(10) DEFAULT NULL,
  `editedon` datetime DEFAULT NULL,
  `editedby` int(10) DEFAULT NULL,
  `deletedon` datetime DEFAULT NULL,
  `deletedby` int(10) DEFAULT NULL,
  `publishedon` datetime DEFAULT NULL,
  `publishedby` int(10) DEFAULT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_order_detail`
--

INSERT INTO `modx_order_detail` (`id`, `order_id`, `oder_detail_uuid`, `order_size`, `order_color`, `order_price`, `order_quantity`, `order_subtotal`, `createdon`, `createdby`, `editedon`, `editedby`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `published`, `active`) VALUES
(1, 17, '11039fb1-6bd3-4020-9ecd-74fcc4a16671', 'S', 'MENTA', 29.90, 2, NULL, '2021-06-12 08:32:34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 17, '11039fb1-6bd3-4020-9ecd-74fcc4a16671', 'S', 'MENTA', 29.90, 2, NULL, '2021-06-12 08:32:34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 18, '11039fb1-6bd3-4020-9ecd-74fcc4a16671', 'S', 'MENTA', 29.90, 2, NULL, '2021-06-12 08:34:32', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 18, '11039fb1-6bd3-4020-9ecd-74fcc4a16671', 'S', 'MENTA', 29.90, 2, NULL, '2021-06-12 08:34:32', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 19, '11039fb1-6bd3-4020-9ecd-74fcc4a16671', 'S', 'MENTA', 29.90, 2, NULL, '2021-06-12 08:36:29', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 19, '11039fb1-6bd3-4020-9ecd-74fcc4a16671', 'S', 'MENTA', 29.90, 2, NULL, '2021-06-12 08:36:29', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 20, '11039fb1-6bd3-4020-9ecd-74fcc4a16671', 'S', 'MENTA', 29.90, 2, 59.80, '2021-06-12 08:39:37', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 20, '11039fb1-6bd3-4020-9ecd-74fcc4a16671', 'S', 'MENTA', 29.90, 2, 59.80, '2021-06-12 08:39:37', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 21, '11039fb1-6bd3-4020-9ecd-74fcc4a16671', 'S', 'MENTA', 29.90, 2, 59.80, '2021-06-12 08:41:18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 21, '11039fb1-6bd3-4020-9ecd-74fcc4a16671', 'S', 'MENTA', 29.90, 2, 59.80, '2021-06-12 08:41:18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_property_set`
--

CREATE TABLE `modx_property_set` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT '0',
  `description` varchar(191) NOT NULL DEFAULT '',
  `properties` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_property_set`
--

INSERT INTO `modx_property_set` (`id`, `name`, `category`, `description`, `properties`) VALUES
(1, 'jwtdecodeprops', 9, 'jwtDecode properties', 'a:18:{s:3:\"aud\";a:7:{s:4:\"name\";s:3:\"aud\";s:4:\"desc\";s:49:\"URI of the audience/server (default: your domain)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"iss\";a:7:{s:4:\"name\";s:3:\"iss\";s:4:\"desc\";s:40:\"URI of JWT issuer (default: your domain)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"jti\";a:7:{s:4:\"name\";s:3:\"jti\";s:4:\"desc\";s:53:\"Default: false (if true, auto-populated by sessionid)\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"sub\";a:7:{s:4:\"name\";s:3:\"sub\";s:4:\"desc\";s:79:\"Subject or user that use the Token. If empty, auto-populated by subField value.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:8:\"validAlg\";a:7:{s:4:\"name\";s:8:\"validAlg\";s:4:\"desc\";s:17:\"Alternate to &alg\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:6:\"leeway\";a:7:{s:4:\"name\";s:6:\"leeway\";s:4:\"desc\";s:48:\"Timestamp leeway synchronization between servers\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:6:\"expAge\";a:7:{s:4:\"name\";s:6:\"expAge\";s:4:\"desc\";s:33:\"Expire age. Default: 3600 seconds\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"3600\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"alg\";a:7:{s:4:\"name\";s:3:\"alg\";s:4:\"desc\";s:71:\"JWT algorithm. Default `HS256` (options: HS256, HS384, HS512 and RS256)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"HS256\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"typ\";a:7:{s:4:\"name\";s:3:\"typ\";s:4:\"desc\";s:45:\"JSON Type. Default: `JWT` (options: JWT, JWS)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"JWT\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:8:\"subField\";a:7:{s:4:\"name\";s:8:\"subField\";s:4:\"desc\";s:103:\"User variable to use for \"sub\" as subject. Default: email (options: username, email, userid, sessionid)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"email\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:10:\"publicFile\";a:7:{s:4:\"name\";s:10:\"publicFile\";s:4:\"desc\";s:133:\"Absolute path to file PUBLIC KEY. Required for asymetric algorithm, like RS256. Default: `[[++modjwt.publickey]]` from configuration.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:4:\"keys\";}s:9:\"secretKey\";a:7:{s:4:\"name\";s:9:\"secretKey\";s:4:\"desc\";s:116:\"Secret key for symetric algorithm, like HS256, HS384 or HS512. Default: `[[++modjwt.secretkey]]` from configuration.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:4:\"keys\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:42:\"Default: null (if null mean direct output)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}s:10:\"redirectTo\";a:7:{s:4:\"name\";s:10:\"redirectTo\";s:4:\"desc\";s:54:\"Default: 0; otherwise will be redirected to given uri.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}s:6:\"method\";a:7:{s:4:\"name\";s:6:\"method\";s:4:\"desc\";s:78:\"How to get the Token? Default: `HEADER,GET` (options: HEADER, JSON, POST, GET)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:10:\"HEADER,GET\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}s:8:\"mimeType\";a:7:{s:4:\"name\";s:8:\"mimeType\";s:4:\"desc\";s:61:\"Output as json or text. Default: `json` (options: json, text)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"json\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}s:16:\"debugPlaceholder\";a:7:{s:4:\"name\";s:16:\"debugPlaceholder\";s:4:\"desc\";s:49:\"Placeholder for debuging JWT. Default: `jwtDebug`\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"jwtDebug\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}s:9:\"httpQuery\";a:7:{s:4:\"name\";s:9:\"httpQuery\";s:4:\"desc\";s:55:\"Required if using method POST or GET. Default: `token`.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"token\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}}'),
(2, 'jwtpluginprops', 9, 'JWT plugin propertis', 'a:1:{s:10:\"redirectTo\";a:7:{s:4:\"name\";s:10:\"redirectTo\";s:4:\"desc\";s:33:\"Redirect on success authorization\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}}'),
(3, 'jwtencodeprops', 9, 'jwtEncode properties', 'a:19:{s:3:\"aud\";a:7:{s:4:\"name\";s:3:\"aud\";s:4:\"desc\";s:49:\"URI of the audience/server (default: your domain)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"exp\";a:7:{s:4:\"name\";s:3:\"exp\";s:4:\"desc\";s:42:\"Auto-populated: current timestamp + expAge\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"iat\";a:7:{s:4:\"name\";s:3:\"iat\";s:4:\"desc\";s:33:\"Auto-populated: current timestamp\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"iss\";a:7:{s:4:\"name\";s:3:\"iss\";s:4:\"desc\";s:40:\"URI of JWT issuer (default: your domain)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"nbf\";a:7:{s:4:\"name\";s:3:\"nbf\";s:4:\"desc\";s:42:\"Auto-populated: current timestamp + nbfAge\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"sub\";a:7:{s:4:\"name\";s:3:\"sub\";s:4:\"desc\";s:79:\"Subject or user that use the Token. If empty, auto-populated by subField value.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:6:\"leeway\";a:7:{s:4:\"name\";s:6:\"leeway\";s:4:\"desc\";s:48:\"Timestamp leeway synchronization between servers\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:6:\"nbfAge\";a:7:{s:4:\"name\";s:6:\"nbfAge\";s:4:\"desc\";s:57:\"Default: 0; if greater than 0 than &nbf will be populated\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:6:\"expAge\";a:7:{s:4:\"name\";s:6:\"expAge\";s:4:\"desc\";s:33:\"Expire age. Default: 3600 seconds\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"3600\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"alg\";a:7:{s:4:\"name\";s:3:\"alg\";s:4:\"desc\";s:71:\"JWT algorithm. Default `HS256` (options: HS256, HS384, HS512 and RS256)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"HS256\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"jti\";a:7:{s:4:\"name\";s:3:\"jti\";s:4:\"desc\";s:53:\"Default: false (if true, auto-populated by sessionid)\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"typ\";a:7:{s:4:\"name\";s:3:\"typ\";s:4:\"desc\";s:45:\"JSON Type. Default: `JWT` (options: JWT, JWS)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"JWT\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:8:\"subField\";a:7:{s:4:\"name\";s:8:\"subField\";s:4:\"desc\";s:103:\"User variable to use for \"sub\" as subject. Default: email (options: username, email, userid, sessionid)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"email\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:11:\"payloadData\";a:7:{s:4:\"name\";s:11:\"payloadData\";s:4:\"desc\";s:20:\"Data of JWT Payload \";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:4:\"keys\";}s:11:\"privateFile\";a:7:{s:4:\"name\";s:11:\"privateFile\";s:4:\"desc\";s:135:\"Absolute path to file PRIVATE KEY. Required for asymetric algorithm, like RS256. Default: `[[++modjwt.privatekey]]` from configuration.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:4:\"keys\";}s:9:\"secretKey\";a:7:{s:4:\"name\";s:9:\"secretKey\";s:4:\"desc\";s:116:\"Secret key for symetric algorithm, like HS256, HS384 or HS512. Default: `[[++modjwt.secretkey]]` from configuration.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:4:\"keys\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:42:\"Default: null (if null mean direct output)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}s:8:\"mimeType\";a:7:{s:4:\"name\";s:8:\"mimeType\";s:4:\"desc\";s:61:\"Output as json or text. Default: `json` (options: json, text)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"json\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}s:16:\"debugPlaceholder\";a:7:{s:4:\"name\";s:16:\"debugPlaceholder\";s:4:\"desc\";s:49:\"Placeholder for debuging JWT. Default: `jwtDebug`\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"jwtDebug\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_register_messages`
--

CREATE TABLE `modx_register_messages` (
  `topic` int(10) UNSIGNED NOT NULL,
  `id` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `accesses` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `expires` int(20) NOT NULL DEFAULT '0',
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_register_queues`
--

CREATE TABLE `modx_register_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `options` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_register_queues`
--

INSERT INTO `modx_register_queues` (`id`, `name`, `options`) VALUES
(1, 'locks', 'a:1:{s:9:\"directory\";s:5:\"locks\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_register_topics`
--

CREATE TABLE `modx_register_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `queue` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `options` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_register_topics`
--

INSERT INTO `modx_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES
(1, 1, '/resource/', '2021-06-08 15:56:04', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_session`
--

CREATE TABLE `modx_session` (
  `id` varchar(191) NOT NULL DEFAULT '',
  `access` int(20) UNSIGNED NOT NULL,
  `data` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_session`
--

INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('01e24760c6a6f6b787fc97024a8184dc', 1623591489, 'modx.user.contextTokens|a:0:{}'),
('0231f6a26379ba073747cd5eb26d455e', 1623552174, 'modx.user.contextTokens|a:0:{}'),
('04350d675f04a2f07a087f53dc85d24b', 1623749047, 'modx.user.contextTokens|a:0:{}'),
('04adcb80cdc53254ed51b9408501167c', 1623802120, 'modx.user.contextTokens|a:0:{}'),
('065b06a60b86a7b1b695fb222b41e195', 1623599616, 'modx.user.contextTokens|a:0:{}'),
('07e67c159097484b75651dab4e917576', 1623548853, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.mgr.user.token|s:52:\"modx60bf71dbdbfb71.21022057_160c560c3c6e9e5.69874360\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}migxWorkingObjectid|i:21;'),
('09ddcaa85fcecc81fe313df61700a4cf', 1623702665, 'modx.user.contextTokens|a:0:{}'),
('0c47f71bee5d3d921346280213d87156', 1623621303, 'modx.user.contextTokens|a:0:{}'),
('0d8a4c7bdbbe8ec5306d1374969de766', 1623761436, 'modx.user.contextTokens|a:0:{}'),
('0e2c18d022b6ce7baddcecab51e39669', 1623705506, 'modx.user.contextTokens|a:0:{}'),
('0e961f0d93570f7bc85c2fe72713ed4d', 1623840402, 'modx.user.contextTokens|a:0:{}'),
('0f1983a17f8a6c4d0d81d946e87d29df', 1623842971, 'modx.user.contextTokens|a:0:{}'),
('0f97f65dd58403445c08955947428b18', 1623759629, 'modx.user.contextTokens|a:0:{}'),
('16ipcptvvaj3s27ht626esv0oh', 1623244731, 'modx.user.contextTokens|a:0:{}'),
('17e7ca0fb1a51e8027d1839c8be1475c', 1623544645, 'modx.user.contextTokens|a:0:{}'),
('19a31d63b07ad0513c999eb713b63a94', 1623539853, 'modx.user.contextTokens|a:0:{}'),
('1a282cd308de6acfd93e7732360cba07', 1623614220, 'modx.user.contextTokens|a:0:{}'),
('1b63403588ebba1485da80fbec02600b', 1623838938, 'modx.user.contextTokens|a:0:{}'),
('1baeba9903ac8bc441f86822e79bd180', 1623701560, 'modx.user.contextTokens|a:0:{}'),
('1bd01ac552d359a13afdbaed0ca30df4', 1623618025, 'modx.user.contextTokens|a:0:{}'),
('1c12a1870d5c19810ff39d59cadee80e', 1623612113, 'modx.user.contextTokens|a:0:{}'),
('1c4b46f77b1324fd155f7f836920ab74', 1623687084, 'modx.user.contextTokens|a:0:{}'),
('20d15fe6a4577c24e3034fed0ad3c4ec', 1623663131, 'modx.user.contextTokens|a:0:{}'),
('22d187232cdee72900fbd7a199fb336b', 1623548301, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}modx.mgr.user.token|s:52:\"modx60bf71dbdbfb71.21022057_260c56084262d97.74466641\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}modx.user.2.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.2.attributes|a:1:{s:3:\"mgr\";a:5:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"2\";s:9:\"authority\";s:4:\"9999\";s:6:\"policy\";a:182:{s:5:\"about\";b:0;s:18:\"access_permissions\";b:0;s:7:\"actions\";b:0;s:15:\"change_password\";b:0;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:0;s:9:\"class_map\";b:1;s:10:\"components\";b:0;s:13:\"content_types\";b:0;s:9:\"countries\";b:1;s:6:\"create\";b:0;s:7:\"credits\";b:0;s:15:\"customize_forms\";b:0;s:10:\"dashboards\";b:0;s:8:\"database\";b:0;s:17:\"database_truncate\";b:0;s:15:\"delete_category\";b:0;s:12:\"delete_chunk\";b:0;s:14:\"delete_context\";b:0;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:0;s:13:\"delete_plugin\";b:0;s:18:\"delete_propertyset\";b:0;s:11:\"delete_role\";b:0;s:14:\"delete_snippet\";b:0;s:22:\"delete_static_resource\";b:1;s:14:\"delete_symlink\";b:1;s:15:\"delete_template\";b:0;s:9:\"delete_tv\";b:0;s:11:\"delete_user\";b:0;s:14:\"delete_weblink\";b:1;s:15:\"directory_chmod\";b:0;s:16:\"directory_create\";b:0;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:0;s:16:\"directory_update\";b:0;s:13:\"edit_category\";b:0;s:10:\"edit_chunk\";b:0;s:12:\"edit_context\";b:0;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:0;s:11:\"edit_plugin\";b:0;s:16:\"edit_propertyset\";b:0;s:9:\"edit_role\";b:0;s:12:\"edit_snippet\";b:0;s:20:\"edit_static_resource\";b:1;s:12:\"edit_symlink\";b:1;s:13:\"edit_template\";b:0;s:7:\"edit_tv\";b:0;s:9:\"edit_user\";b:0;s:12:\"edit_weblink\";b:1;s:12:\"element_tree\";b:0;s:11:\"empty_cache\";b:0;s:15:\"error_log_erase\";b:0;s:14:\"error_log_view\";b:0;s:6:\"events\";b:0;s:13:\"export_static\";b:0;s:11:\"file_create\";b:0;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:0;s:9:\"file_tree\";b:1;s:11:\"file_unpack\";b:0;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:0;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:0;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:0;s:9:\"languages\";b:0;s:8:\"lexicons\";b:0;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:0;s:5:\"menus\";b:0;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:0;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:0;s:10:\"menu_tools\";b:1;s:10:\"menu_trash\";b:0;s:9:\"menu_user\";b:1;s:8:\"messages\";b:0;s:10:\"namespaces\";b:0;s:12:\"new_category\";b:0;s:9:\"new_chunk\";b:0;s:11:\"new_context\";b:0;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:0;s:10:\"new_plugin\";b:0;s:15:\"new_propertyset\";b:0;s:8:\"new_role\";b:0;s:11:\"new_snippet\";b:0;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:0;s:6:\"new_tv\";b:0;s:8:\"new_user\";b:0;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:0;s:13:\"policy_delete\";b:0;s:11:\"policy_edit\";b:0;s:10:\"policy_new\";b:0;s:11:\"policy_save\";b:0;s:22:\"policy_template_delete\";b:0;s:20:\"policy_template_edit\";b:0;s:19:\"policy_template_new\";b:0;s:20:\"policy_template_save\";b:0;s:20:\"policy_template_view\";b:0;s:11:\"policy_view\";b:0;s:13:\"property_sets\";b:0;s:9:\"providers\";b:0;s:16:\"publish_document\";b:0;s:13:\"purge_deleted\";b:0;s:6:\"remove\";b:0;s:12:\"remove_locks\";b:0;s:20:\"resourcegroup_delete\";b:0;s:18:\"resourcegroup_edit\";b:0;s:17:\"resourcegroup_new\";b:0;s:27:\"resourcegroup_resource_edit\";b:0;s:27:\"resourcegroup_resource_list\";b:0;s:18:\"resourcegroup_save\";b:0;s:18:\"resourcegroup_view\";b:0;s:18:\"resource_duplicate\";b:1;s:21:\"resource_quick_create\";b:0;s:21:\"resource_quick_update\";b:0;s:13:\"resource_tree\";b:1;s:4:\"save\";b:0;s:13:\"save_category\";b:0;s:10:\"save_chunk\";b:0;s:12:\"save_context\";b:0;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:0;s:16:\"save_propertyset\";b:0;s:9:\"save_role\";b:0;s:12:\"save_snippet\";b:0;s:13:\"save_template\";b:0;s:7:\"save_tv\";b:0;s:9:\"save_user\";b:0;s:6:\"search\";b:0;s:8:\"settings\";b:0;s:8:\"set_sudo\";b:0;s:7:\"sources\";b:0;s:13:\"source_delete\";b:0;s:11:\"source_edit\";b:0;s:11:\"source_save\";b:0;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:0;s:21:\"tree_show_element_ids\";b:0;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:0;s:25:\"unlock_element_properties\";b:0;s:18:\"unpublish_document\";b:0;s:16:\"usergroup_delete\";b:0;s:14:\"usergroup_edit\";b:0;s:13:\"usergroup_new\";b:0;s:14:\"usergroup_save\";b:0;s:19:\"usergroup_user_edit\";b:0;s:19:\"usergroup_user_list\";b:0;s:14:\"usergroup_view\";b:0;s:4:\"view\";b:1;s:13:\"view_category\";b:0;s:10:\"view_chunk\";b:0;s:12:\"view_context\";b:0;s:13:\"view_document\";b:1;s:12:\"view_element\";b:0;s:13:\"view_eventlog\";b:0;s:12:\"view_offline\";b:0;s:11:\"view_plugin\";b:0;s:16:\"view_propertyset\";b:0;s:9:\"view_role\";b:0;s:12:\"view_snippet\";b:0;s:12:\"view_sysinfo\";b:0;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:0;s:16:\"view_unpublished\";b:0;s:9:\"view_user\";b:0;s:10:\"workspaces\";b:0;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"2\";s:9:\"authority\";s:4:\"9999\";s:6:\"policy\";a:7:{s:4:\"load\";b:1;s:4:\"list\";b:1;s:4:\"view\";b:1;s:4:\"save\";b:1;s:6:\"remove\";b:1;s:4:\"copy\";b:1;s:16:\"view_unpublished\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:1:{i:2;a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"2\";s:9:\"authority\";s:4:\"9999\";s:6:\"policy\";a:7:{s:6:\"create\";b:1;s:4:\"copy\";b:1;s:4:\"load\";b:1;s:4:\"list\";b:1;s:4:\"save\";b:1;s:6:\"remove\";b:1;s:4:\"view\";b:1;}}}}s:18:\"modAccessNamespace\";a:0:{}}}'),
('2341571e981789f96d2334fe7521cd5a', 1623707899, 'modx.user.contextTokens|a:0:{}'),
('2348b05c4b6a7363207e49e52cf47577', 1623586470, 'modx.user.contextTokens|a:0:{}'),
('23dc7a69995eaa16a9b2621cc20e4df2', 1623686357, 'modx.user.contextTokens|a:0:{}'),
('2884eccdb4e2772ae7fb0888c187479b', 1623841363, 'modx.user.contextTokens|a:0:{}'),
('29d3172dbad06e5bb60b35acacdecbee', 1623748048, 'modx.user.contextTokens|a:0:{}'),
('29dc2c3f9e64e3ec1720845dcde60abc', 1623657520, 'modx.user.contextTokens|a:0:{}'),
('2d25757ddfe35530b60d7269426bf19c', 1623597129, 'modx.user.contextTokens|a:0:{}'),
('2d6060809ac46dd067159c51f76992e1', 1623719793, 'modx.user.contextTokens|a:0:{}'),
('2dcab73c2e714aca17c2af770017a89c', 1623593207, 'modx.user.contextTokens|a:0:{}'),
('2f826151c0cb24057583acbe624a4f4c', 1623811112, 'modx.user.contextTokens|a:0:{}'),
('31078f4d78ec66ac807b60b7fe6816e7', 1623657521, 'modx.user.contextTokens|a:0:{}'),
('3160040665c37fdcbb65a23eb8235b54', 1623715286, 'modx.user.contextTokens|a:0:{}'),
('321e06cee8fee1bcb54cd1d92c94a274', 1623728444, 'modx.user.contextTokens|a:0:{}'),
('33b928ed65603f6bfe44ad34e8d81ba6', 1623849818, 'modx.user.contextTokens|a:0:{}'),
('33fc1243ba95c2c55c83d84be3acf523', 1623719793, 'modx.user.contextTokens|a:0:{}'),
('34321f8b5778328d5b4fda0c82f7cf40', 1623784802, 'modx.user.contextTokens|a:0:{}'),
('35fe45ca1bba83b17f5eaea72e1b2acf', 1623539764, 'modx.user.contextTokens|a:0:{}'),
('393afb67ce486f7864824d115ce2cb0c', 1623644356, 'modx.user.contextTokens|a:0:{}'),
('398a437beec1d0616df7dbfba98f4714', 1623697388, 'modx.user.contextTokens|a:0:{}'),
('3a19776afbe8cb02be5f569e6c83ccd5', 1623713599, 'modx.user.contextTokens|a:0:{}'),
('3d2c6d09c22e0556b3d45ded3cd1c0b8', 1623713998, 'modx.user.contextTokens|a:0:{}'),
('3ef4edf18cfa7f72fd88cd2717010e2c', 1623636554, 'modx.user.contextTokens|a:0:{}'),
('42d21ee48890e04c918d6fbfc751aea2', 1623649091, 'modx.user.contextTokens|a:0:{}'),
('452789ab4046f156eb02b7578ba6bd6e', 1623748593, 'modx.user.contextTokens|a:0:{}'),
('481d1d9cc01f54cc70f418c92e35dba3', 1623787234, 'modx.user.contextTokens|a:0:{}'),
('49e5accaf39e48631516f72aea676c7c', 1623681407, 'modx.user.contextTokens|a:0:{}'),
('4ad8eabea8f445ae51636fd5106f92d8', 1623705757, 'modx.user.contextTokens|a:0:{}'),
('4c8d14cdc1dcf036aa0774030f9d29f4', 1623728371, 'modx.user.contextTokens|a:0:{}'),
('4cc203b180f497db4148d0215b517de9', 1623573841, 'modx.user.contextTokens|a:0:{}'),
('4f83ef44b92f1b809355ed1d5454254c', 1623664248, 'modx.user.contextTokens|a:0:{}'),
('511f072acea3368930b97095208c9cb3', 1623573838, 'modx.user.contextTokens|a:0:{}'),
('55624a35a5a88a6a9170a2fc121b4745', 1623673978, 'modx.user.contextTokens|a:0:{}'),
('577fd5720e6cbaea455258645eade5ce', 1623794628, 'modx.user.contextTokens|a:0:{}'),
('5aa74c1232c5239d9002676a4d402d65', 1623550702, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}modx.mgr.user.token|s:52:\"modx60bf71dbdbfb71.21022057_260c5598c19e616.30150258\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}modx.user.2.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}newResourceTokens|a:26:{i:0;s:23:\"60c55c258a7751.82571412\";i:1;s:23:\"60c55c527ba0e3.50388489\";i:2;s:23:\"60c55c678a4931.72827504\";i:3;s:23:\"60c55d0316d634.64627980\";i:4;s:23:\"60c55d2458e6d1.06674071\";i:5;s:23:\"60c563cb2d2390.52547141\";i:6;s:23:\"60c563d4ac0358.99984897\";i:7;s:23:\"60c563d94e3830.62057386\";i:8;s:23:\"60c563edccede8.24637775\";i:9;s:23:\"60c5640d291c78.93169745\";i:10;s:23:\"60c5641177ae25.98042584\";i:11;s:23:\"60c564da7d0d56.30334669\";i:12;s:23:\"60c564dfe250e8.69501173\";i:13;s:23:\"60c565855f9580.35745052\";i:14;s:23:\"60c565ddd4a307.37376330\";i:15;s:23:\"60c56683e46136.45642115\";i:16;s:23:\"60c566c96083c7.79699927\";i:17;s:23:\"60c566d7e1bd69.34188906\";i:18;s:23:\"60c5678253d3d6.18343865\";i:19;s:23:\"60c5683460c3e9.36735834\";i:20;s:23:\"60c5684097efc1.39426650\";i:21;s:23:\"60c568442eaf32.33273543\";i:22;s:23:\"60c5684a2b7425.69135497\";i:23;s:23:\"60c568ee69a471.55231569\";i:24;s:23:\"60c5690ea7e891.47721967\";i:25;s:23:\"60c56aee203681.47807532\";}modx.user.2.userGroups|a:1:{i:0;i:2;}modx.user.2.attributes|a:2:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"2\";s:9:\"authority\";s:4:\"9999\";s:6:\"policy\";a:182:{s:5:\"about\";b:0;s:18:\"access_permissions\";b:0;s:7:\"actions\";b:0;s:15:\"change_password\";b:0;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:0;s:9:\"class_map\";b:1;s:10:\"components\";b:0;s:13:\"content_types\";b:0;s:9:\"countries\";b:1;s:6:\"create\";b:0;s:7:\"credits\";b:0;s:15:\"customize_forms\";b:0;s:10:\"dashboards\";b:0;s:8:\"database\";b:0;s:17:\"database_truncate\";b:0;s:15:\"delete_category\";b:0;s:12:\"delete_chunk\";b:0;s:14:\"delete_context\";b:0;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:0;s:13:\"delete_plugin\";b:0;s:18:\"delete_propertyset\";b:0;s:11:\"delete_role\";b:0;s:14:\"delete_snippet\";b:0;s:22:\"delete_static_resource\";b:1;s:14:\"delete_symlink\";b:1;s:15:\"delete_template\";b:0;s:9:\"delete_tv\";b:0;s:11:\"delete_user\";b:0;s:14:\"delete_weblink\";b:1;s:15:\"directory_chmod\";b:0;s:16:\"directory_create\";b:0;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:0;s:16:\"directory_update\";b:0;s:13:\"edit_category\";b:0;s:10:\"edit_chunk\";b:0;s:12:\"edit_context\";b:0;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:0;s:11:\"edit_plugin\";b:0;s:16:\"edit_propertyset\";b:0;s:9:\"edit_role\";b:0;s:12:\"edit_snippet\";b:0;s:20:\"edit_static_resource\";b:1;s:12:\"edit_symlink\";b:1;s:13:\"edit_template\";b:0;s:7:\"edit_tv\";b:0;s:9:\"edit_user\";b:0;s:12:\"edit_weblink\";b:1;s:12:\"element_tree\";b:0;s:11:\"empty_cache\";b:0;s:15:\"error_log_erase\";b:0;s:14:\"error_log_view\";b:0;s:6:\"events\";b:0;s:13:\"export_static\";b:0;s:11:\"file_create\";b:0;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:0;s:9:\"file_tree\";b:1;s:11:\"file_unpack\";b:0;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:0;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:0;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:0;s:9:\"languages\";b:0;s:8:\"lexicons\";b:0;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:0;s:5:\"menus\";b:0;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:0;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:0;s:10:\"menu_tools\";b:1;s:10:\"menu_trash\";b:0;s:9:\"menu_user\";b:1;s:8:\"messages\";b:0;s:10:\"namespaces\";b:0;s:12:\"new_category\";b:0;s:9:\"new_chunk\";b:0;s:11:\"new_context\";b:0;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:0;s:10:\"new_plugin\";b:0;s:15:\"new_propertyset\";b:0;s:8:\"new_role\";b:0;s:11:\"new_snippet\";b:0;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:0;s:6:\"new_tv\";b:0;s:8:\"new_user\";b:0;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:0;s:13:\"policy_delete\";b:0;s:11:\"policy_edit\";b:0;s:10:\"policy_new\";b:0;s:11:\"policy_save\";b:0;s:22:\"policy_template_delete\";b:0;s:20:\"policy_template_edit\";b:0;s:19:\"policy_template_new\";b:0;s:20:\"policy_template_save\";b:0;s:20:\"policy_template_view\";b:0;s:11:\"policy_view\";b:0;s:13:\"property_sets\";b:0;s:9:\"providers\";b:0;s:16:\"publish_document\";b:0;s:13:\"purge_deleted\";b:0;s:6:\"remove\";b:0;s:12:\"remove_locks\";b:0;s:20:\"resourcegroup_delete\";b:0;s:18:\"resourcegroup_edit\";b:0;s:17:\"resourcegroup_new\";b:0;s:27:\"resourcegroup_resource_edit\";b:0;s:27:\"resourcegroup_resource_list\";b:0;s:18:\"resourcegroup_save\";b:0;s:18:\"resourcegroup_view\";b:0;s:18:\"resource_duplicate\";b:1;s:21:\"resource_quick_create\";b:0;s:21:\"resource_quick_update\";b:0;s:13:\"resource_tree\";b:1;s:4:\"save\";b:0;s:13:\"save_category\";b:0;s:10:\"save_chunk\";b:0;s:12:\"save_context\";b:0;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:0;s:16:\"save_propertyset\";b:0;s:9:\"save_role\";b:0;s:12:\"save_snippet\";b:0;s:13:\"save_template\";b:0;s:7:\"save_tv\";b:0;s:9:\"save_user\";b:0;s:6:\"search\";b:0;s:8:\"settings\";b:0;s:8:\"set_sudo\";b:0;s:7:\"sources\";b:0;s:13:\"source_delete\";b:0;s:11:\"source_edit\";b:0;s:11:\"source_save\";b:0;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:0;s:21:\"tree_show_element_ids\";b:0;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:0;s:25:\"unlock_element_properties\";b:0;s:18:\"unpublish_document\";b:0;s:16:\"usergroup_delete\";b:0;s:14:\"usergroup_edit\";b:0;s:13:\"usergroup_new\";b:0;s:14:\"usergroup_save\";b:0;s:19:\"usergroup_user_edit\";b:0;s:19:\"usergroup_user_list\";b:0;s:14:\"usergroup_view\";b:0;s:4:\"view\";b:1;s:13:\"view_category\";b:0;s:10:\"view_chunk\";b:0;s:12:\"view_context\";b:0;s:13:\"view_document\";b:1;s:12:\"view_element\";b:0;s:13:\"view_eventlog\";b:0;s:12:\"view_offline\";b:0;s:11:\"view_plugin\";b:0;s:16:\"view_propertyset\";b:0;s:9:\"view_role\";b:0;s:12:\"view_snippet\";b:0;s:12:\"view_sysinfo\";b:0;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:0;s:16:\"view_unpublished\";b:0;s:9:\"view_user\";b:0;s:10:\"workspaces\";b:0;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"2\";s:9:\"authority\";s:4:\"9999\";s:6:\"policy\";a:7:{s:4:\"load\";b:1;s:4:\"list\";b:1;s:4:\"view\";b:1;s:4:\"save\";b:1;s:6:\"remove\";b:1;s:4:\"copy\";b:1;s:16:\"view_unpublished\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:1:{i:2;a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"2\";s:9:\"authority\";s:4:\"9999\";s:6:\"policy\";a:7:{s:6:\"create\";b:1;s:4:\"copy\";b:1;s:4:\"load\";b:1;s:4:\"list\";b:1;s:4:\"save\";b:1;s:6:\"remove\";b:1;s:4:\"view\";b:1;}}}}s:18:\"modAccessNamespace\";a:0:{}}s:3:\"mgr\";a:5:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"2\";s:9:\"authority\";s:4:\"9999\";s:6:\"policy\";a:182:{s:5:\"about\";b:0;s:18:\"access_permissions\";b:0;s:7:\"actions\";b:0;s:15:\"change_password\";b:0;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:0;s:9:\"class_map\";b:1;s:10:\"components\";b:0;s:13:\"content_types\";b:0;s:9:\"countries\";b:1;s:6:\"create\";b:0;s:7:\"credits\";b:0;s:15:\"customize_forms\";b:0;s:10:\"dashboards\";b:0;s:8:\"database\";b:0;s:17:\"database_truncate\";b:0;s:15:\"delete_category\";b:0;s:12:\"delete_chunk\";b:0;s:14:\"delete_context\";b:0;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:0;s:13:\"delete_plugin\";b:0;s:18:\"delete_propertyset\";b:0;s:11:\"delete_role\";b:0;s:14:\"delete_snippet\";b:0;s:22:\"delete_static_resource\";b:1;s:14:\"delete_symlink\";b:1;s:15:\"delete_template\";b:0;s:9:\"delete_tv\";b:0;s:11:\"delete_user\";b:0;s:14:\"delete_weblink\";b:1;s:15:\"directory_chmod\";b:0;s:16:\"directory_create\";b:0;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:0;s:16:\"directory_update\";b:0;s:13:\"edit_category\";b:0;s:10:\"edit_chunk\";b:0;s:12:\"edit_context\";b:0;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:0;s:11:\"edit_plugin\";b:0;s:16:\"edit_propertyset\";b:0;s:9:\"edit_role\";b:0;s:12:\"edit_snippet\";b:0;s:20:\"edit_static_resource\";b:1;s:12:\"edit_symlink\";b:1;s:13:\"edit_template\";b:0;s:7:\"edit_tv\";b:0;s:9:\"edit_user\";b:0;s:12:\"edit_weblink\";b:1;s:12:\"element_tree\";b:0;s:11:\"empty_cache\";b:0;s:15:\"error_log_erase\";b:0;s:14:\"error_log_view\";b:0;s:6:\"events\";b:0;s:13:\"export_static\";b:0;s:11:\"file_create\";b:0;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:0;s:9:\"file_tree\";b:1;s:11:\"file_unpack\";b:0;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:0;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:0;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:0;s:9:\"languages\";b:0;s:8:\"lexicons\";b:0;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:0;s:5:\"menus\";b:0;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:0;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:0;s:10:\"menu_tools\";b:1;s:10:\"menu_trash\";b:0;s:9:\"menu_user\";b:1;s:8:\"messages\";b:0;s:10:\"namespaces\";b:0;s:12:\"new_category\";b:0;s:9:\"new_chunk\";b:0;s:11:\"new_context\";b:0;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:0;s:10:\"new_plugin\";b:0;s:15:\"new_propertyset\";b:0;s:8:\"new_role\";b:0;s:11:\"new_snippet\";b:0;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:0;s:6:\"new_tv\";b:0;s:8:\"new_user\";b:0;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:0;s:13:\"policy_delete\";b:0;s:11:\"policy_edit\";b:0;s:10:\"policy_new\";b:0;s:11:\"policy_save\";b:0;s:22:\"policy_template_delete\";b:0;s:20:\"policy_template_edit\";b:0;s:19:\"policy_template_new\";b:0;s:20:\"policy_template_save\";b:0;s:20:\"policy_template_view\";b:0;s:11:\"policy_view\";b:0;s:13:\"property_sets\";b:0;s:9:\"providers\";b:0;s:16:\"publish_document\";b:0;s:13:\"purge_deleted\";b:0;s:6:\"remove\";b:0;s:12:\"remove_locks\";b:0;s:20:\"resourcegroup_delete\";b:0;s:18:\"resourcegroup_edit\";b:0;s:17:\"resourcegroup_new\";b:0;s:27:\"resourcegroup_resource_edit\";b:0;s:27:\"resourcegroup_resource_list\";b:0;s:18:\"resourcegroup_save\";b:0;s:18:\"resourcegroup_view\";b:0;s:18:\"resource_duplicate\";b:1;s:21:\"resource_quick_create\";b:0;s:21:\"resource_quick_update\";b:0;s:13:\"resource_tree\";b:1;s:4:\"save\";b:0;s:13:\"save_category\";b:0;s:10:\"save_chunk\";b:0;s:12:\"save_context\";b:0;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:0;s:16:\"save_propertyset\";b:0;s:9:\"save_role\";b:0;s:12:\"save_snippet\";b:0;s:13:\"save_template\";b:0;s:7:\"save_tv\";b:0;s:9:\"save_user\";b:0;s:6:\"search\";b:0;s:8:\"settings\";b:0;s:8:\"set_sudo\";b:0;s:7:\"sources\";b:0;s:13:\"source_delete\";b:0;s:11:\"source_edit\";b:0;s:11:\"source_save\";b:0;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:0;s:21:\"tree_show_element_ids\";b:0;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:0;s:25:\"unlock_element_properties\";b:0;s:18:\"unpublish_document\";b:0;s:16:\"usergroup_delete\";b:0;s:14:\"usergroup_edit\";b:0;s:13:\"usergroup_new\";b:0;s:14:\"usergroup_save\";b:0;s:19:\"usergroup_user_edit\";b:0;s:19:\"usergroup_user_list\";b:0;s:14:\"usergroup_view\";b:0;s:4:\"view\";b:1;s:13:\"view_category\";b:0;s:10:\"view_chunk\";b:0;s:12:\"view_context\";b:0;s:13:\"view_document\";b:1;s:12:\"view_element\";b:0;s:13:\"view_eventlog\";b:0;s:12:\"view_offline\";b:0;s:11:\"view_plugin\";b:0;s:16:\"view_propertyset\";b:0;s:9:\"view_role\";b:0;s:12:\"view_snippet\";b:0;s:12:\"view_sysinfo\";b:0;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:0;s:16:\"view_unpublished\";b:0;s:9:\"view_user\";b:0;s:10:\"workspaces\";b:0;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"2\";s:9:\"authority\";s:4:\"9999\";s:6:\"policy\";a:7:{s:4:\"load\";b:1;s:4:\"list\";b:1;s:4:\"view\";b:1;s:4:\"save\";b:1;s:6:\"remove\";b:1;s:4:\"copy\";b:1;s:16:\"view_unpublished\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:1:{i:2;a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"2\";s:9:\"authority\";s:4:\"9999\";s:6:\"policy\";a:7:{s:6:\"create\";b:1;s:4:\"copy\";b:1;s:4:\"load\";b:1;s:4:\"list\";b:1;s:4:\"save\";b:1;s:6:\"remove\";b:1;s:4:\"view\";b:1;}}}}s:18:\"modAccessNamespace\";a:0:{}}}'),
('5tl4krqgsal4jeub3u6ctvjl3p', 1623212360, 'modx.user.contextTokens|a:0:{}'),
('61812a64a4a6ca808b3958b7ecfe7507', 1623788951, 'modx.user.contextTokens|a:0:{}'),
('644069ee187f60bb0f02fc897193a2d0', 1623706919, 'modx.user.contextTokens|a:0:{}'),
('660e485c50c8885a2c1307b79f98b748', 1623837920, 'modx.user.contextTokens|a:0:{}'),
('66255fa80af223e79ce714aa3fb45788', 1623706791, 'modx.user.contextTokens|a:0:{}'),
('67032db2aabdd5f62cb4562768c93b4e', 1623674043, 'modx.user.contextTokens|a:0:{}'),
('679dc3eefb1672bca872712a77e6733c', 1623826947, 'modx.user.contextTokens|a:0:{}'),
('6a73ccd7436651d381db30c31b5102a2', 1623670103, 'modx.user.contextTokens|a:0:{}'),
('6aodv9ta9mrc3mulpml5jakb4n', 1623289123, 'modx.user.contextTokens|a:0:{}'),
('6d41f6d65b45b55935362b97693d3cd1', 1623724297, 'modx.user.contextTokens|a:0:{}'),
('6e787a39e7212108767bc7ed21098cea', 1623709598, 'modx.user.contextTokens|a:0:{}'),
('71714d13b0535661f6b4084f052a29b9', 1623726507, 'modx.user.contextTokens|a:0:{}'),
('73132c7c05909626890c663fc881300c', 1623703468, 'modx.user.contextTokens|a:0:{}'),
('74de8a4b83e4dfcf2eed578c9f5462e4', 1623715353, 'modx.user.contextTokens|a:0:{}'),
('75d67c6a9ec898b09a54bc7695abba8c', 1623660642, 'modx.user.contextTokens|a:0:{}'),
('76278f54488a2834b30d47cecb1b1f1d', 1623719794, 'modx.user.contextTokens|a:0:{}'),
('778d6d6f012a7302fa6d8cd7c8623903', 1623630521, 'modx.user.contextTokens|a:0:{}'),
('79e0694a3c40042f93ecd067eb43e2bd', 1623639028, 'modx.user.contextTokens|a:0:{}'),
('7e2dbad8806e672a1caf8a7d9e5867f1', 1623810899, 'modx.user.contextTokens|a:0:{}'),
('7f0ca8529b5d368c8274d737bfb62d89', 1623791380, 'modx.user.contextTokens|a:0:{}'),
('7f1f2707231217463a34aec2cbb581b0', 1623829407, 'modx.user.contextTokens|a:0:{}'),
('808876e8307003c44a64fba33f33de38', 1623657518, 'modx.user.contextTokens|a:0:{}'),
('809f48f5112d4db1e8055f0691dcb240', 1623649091, 'modx.user.contextTokens|a:0:{}'),
('8119fff929821bb14c3e733f74b0003e', 1623680196, 'modx.user.contextTokens|a:0:{}'),
('8130622bf2a1dd53aab3cf859bb80624', 1623715353, 'modx.user.contextTokens|a:0:{}'),
('81af50f539c4cced166983ed9c4164dc', 1623728241, 'modx.user.contextTokens|a:0:{}'),
('84678f8cc5b38a2057201542460bdeac', 1623706039, 'modx.user.contextTokens|a:0:{}'),
('8475e17b371b63dcacfe11872c383532', 1623629006, 'modx.user.contextTokens|a:0:{}'),
('85bccd66c1db886da72d8196f0105699', 1623810899, 'modx.user.contextTokens|a:0:{}'),
('860f20eb74ce71d1105bac6ecbfdf68c', 1623808707, 'modx.user.contextTokens|a:0:{}'),
('88827618932e6c7dc1096814f856b5e3', 1623573840, 'modx.user.contextTokens|a:0:{}'),
('8999d04e386c1ee62efb812cb47b578f', 1623594393, 'modx.user.contextTokens|a:0:{}'),
('8b40cb2cd1ad043d5e5423d684e89d91', 1623790220, 'modx.user.contextTokens|a:0:{}'),
('8c73009716ca9fae55bd2b4e30fccf7e', 1623644402, 'modx.user.contextTokens|a:0:{}'),
('8e74b2be59caa39cb7d9c140c765ae14', 1623746564, 'modx.user.contextTokens|a:0:{}'),
('8e9d34f62fd7ff1575fe6764779d9a50', 1623656465, 'modx.user.contextTokens|a:0:{}'),
('8ff47d18b213c03cbfa793aadc40075f', 1623544511, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('8hr7pcrjko6cldbtp8di4at1i3', 1623394229, 'modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}'),
('93d9bb3c579031d893d7a6361fe61095', 1623597141, 'modx.user.contextTokens|a:0:{}'),
('95e0f429e4304d0dbd4a819f9269986d', 1623656269, 'modx.user.contextTokens|a:0:{}'),
('9981b81ccb3d531cd9768c10b38d4767', 1623719792, 'modx.user.contextTokens|a:0:{}'),
('99e7ffc5db8629c7fc5f322ac60d1a0f', 1623834744, 'modx.user.contextTokens|a:0:{}'),
('9ab8fa0bf4ddca6c7b36aca2c5d2bfc5', 1623696898, 'modx.user.contextTokens|a:0:{}'),
('9bf1135f72260c6a31291487721119fa', 1623823661, 'modx.user.contextTokens|a:0:{}'),
('9c9914a2c0053551626d81d110a9cdbf', 1623851010, 'modx.user.contextTokens|a:0:{}'),
('9da3462cf3b9ff9cd0d339f6bf057c41', 1623682838, 'modx.user.contextTokens|a:0:{}'),
('9f911ed838ed0a91229ea96659fca8fb', 1623573839, 'modx.user.contextTokens|a:0:{}'),
('9fa6e27a07bd0701642c41554b786ba3', 1623801800, 'modx.user.contextTokens|a:0:{}'),
('a376fcfc9f54abf952f4f4c76aeb89ff', 1623619560, 'modx.user.contextTokens|a:0:{}'),
('a3e2c517cea90ef2a644cda252a1738e', 1623677636, 'modx.user.contextTokens|a:0:{}'),
('a68693013271a381186cc786f8bddd15', 1623640323, 'modx.user.contextTokens|a:0:{}'),
('a95a3bd8748b19ed4040c0464a010bd0', 1623690684, 'modx.user.contextTokens|a:0:{}'),
('aa6612a5079e7aa3310d286562a9461e', 1623621421, 'modx.user.contextTokens|a:0:{}'),
('aa9d76c6ec0d8581e5250ad75b61cfec', 1623615284, 'modx.user.contextTokens|a:0:{}'),
('acbb9b3ea3d48e4a9911b97c64aac588', 1623706790, 'modx.user.contextTokens|a:0:{}'),
('acde46f400ccae63ca77242c10f4538a', 1623715372, 'modx.user.contextTokens|a:0:{}'),
('ad3eb7c71ff97fa56a32c531dc76ce5d', 1623746563, 'modx.user.contextTokens|a:0:{}'),
('ade87c97d47fc36405750abeef7c9619', 1623706921, 'modx.user.contextTokens|a:0:{}'),
('af560151d637b9176d2b3f8dd4d0ff81', 1623715372, 'modx.user.contextTokens|a:0:{}'),
('ak1s6cit3o1c7lpn98dmgv7h7h', 1623382713, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('b02318c1663bad5e9aef78315d8ad061', 1623706811, 'modx.user.contextTokens|a:0:{}'),
('b2d518d6f61d1d1ce092d7950ef926d4', 1623660643, 'modx.user.contextTokens|a:0:{}'),
('b31931f799508b263b83b84f377203a4', 1623662442, 'modx.user.contextTokens|a:0:{}'),
('b349c69d4de0a7b70cb958eaa8b86c4f', 1623699638, 'modx.user.contextTokens|a:0:{}'),
('b4faa39fd43ca5ec7d57fb4a75944fd4', 1623551894, 'modx.user.contextTokens|a:0:{}'),
('b54d80fc49f8987264c13935a3a4484c', 1623704957, 'modx.user.contextTokens|a:0:{}'),
('b5ebed21d817d64bd908353765e1fee1', 1623544801, 'modx.user.contextTokens|a:0:{}'),
('b64c4a55e511c38a8dbd065e1a5dd780', 1623623592, 'modx.user.contextTokens|a:0:{}'),
('bce4e42cbe372480466658df0d61372b', 1623707873, 'modx.user.contextTokens|a:0:{}'),
('bd6b44194077a3f619f3355fd7efaf2c', 1623590557, 'modx.user.contextTokens|a:0:{}'),
('bf9ba664f2d454144caad58fe41c2dbc', 1623657519, 'modx.user.contextTokens|a:0:{}'),
('c0d44ef3efd37c3269926835513bb813', 1623787518, 'modx.user.contextTokens|a:0:{}'),
('c20e350ee433cbf5fdceae64ab77bf7b', 1623621207, 'modx.user.contextTokens|a:0:{}'),
('c251eedc1246325f4b326845de710bcb', 1623714710, 'modx.user.contextTokens|a:0:{}'),
('c2ed0ffe447484662579595c071398ea', 1623847586, 'modx.user.contextTokens|a:0:{}'),
('c3f02450004bfac1978faa60b4b102cc', 1623623593, 'modx.user.contextTokens|a:0:{}'),
('c5aae2f2c214723c38e84aca20657075', 1623707753, 'modx.user.contextTokens|a:0:{}'),
('c5c3f95ee90a03eee8203295f70ca745', 1623705471, 'modx.user.contextTokens|a:0:{}'),
('c5d6cb18151939e5d03ddd70dd4ec691', 1623660042, 'modx.user.contextTokens|a:0:{}'),
('c72ef1adf64723ca8fe20f3d755b1b78', 1623661075, 'modx.user.contextTokens|a:0:{}'),
('c903f7276046a2585b12ea0a7c16f175', 1623549425, 'modx.user.contextTokens|a:0:{}modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}'),
('ca172d98657343f93af54e9c1c110fc4', 1623719792, 'modx.user.contextTokens|a:0:{}'),
('cb6fe853647aa1122c581cee5d136446', 1623788122, 'modx.user.contextTokens|a:0:{}'),
('cb8c2a5dc661b3e98b1350ade7c229fb', 1623620795, 'modx.user.contextTokens|a:0:{}'),
('cc7287d3ee428efcee04a6a65c804403', 1623719794, 'modx.user.contextTokens|a:0:{}'),
('cpdalq4864e2hokoq0lg403kt1', 1623289124, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('cu5ckmqppfa5cl8qn61e77hkkc', 1623382714, 'modx.user.contextTokens|a:0:{}'),
('d1d82fcef698ff009d42cd371be0a553', 1623746565, 'modx.user.contextTokens|a:0:{}'),
('d4e2afb85fa4b05e85dfdff01c2e38a3', 1623605985, 'modx.user.contextTokens|a:0:{}'),
('d58606f4800f1d63dc4765ee6af949be', 1623575069, 'modx.user.contextTokens|a:0:{}'),
('d602cd12b990e129b84eff3e6c41585e', 1623806799, 'modx.user.contextTokens|a:0:{}'),
('d7742620dd2946bed7a65c3c0ad5f411', 1623629006, 'modx.user.contextTokens|a:0:{}'),
('d8d275266b632f9ccd8ea9f5e64c9746', 1623841468, 'modx.user.contextTokens|a:0:{}'),
('d8d94a36e55d42e94b74f72d5a4fdc17', 1623801801, 'modx.user.contextTokens|a:0:{}'),
('d9a6e9884d06f6a8d2604d73bd2c4724', 1623549940, 'modx.user.contextTokens|a:0:{}'),
('da3aeea79af4a61e2c78414a0dfa9d46', 1623763890, 'modx.user.contextTokens|a:0:{}'),
('daa446baf744b7b019d2e87ee3dac3a1', 1623841468, 'modx.user.contextTokens|a:0:{}'),
('db5b25932ac35748aabc5dcf126509d9', 1623552853, 'modx.user.contextTokens|a:0:{}'),
('db651434c1cd772543cec0d9073ea18c', 1623802058, 'modx.user.contextTokens|a:0:{}'),
('dd946236e14453b41efed22414903947', 1623842847, 'modx.user.contextTokens|a:0:{}'),
('dff7aef635cb131c2fcccae493b4e486', 1623764177, 'modx.user.contextTokens|a:0:{}'),
('e11975f5f55e6a619dce6f3bcebf46c1', 1623784801, 'modx.user.contextTokens|a:0:{}'),
('e5ccc7ee8db20fc8986f7882a56858dc', 1623637899, 'modx.user.contextTokens|a:0:{}'),
('e640b60af66d76bb9be3418412b58b15', 1623844780, 'modx.user.contextTokens|a:0:{}'),
('ea9315d0e0543975ca217a73003a1553', 1623710805, 'modx.user.contextTokens|a:0:{}'),
('ebc76e3b084b59a8cb8e1adf423641cc', 1623705475, 'modx.user.contextTokens|a:0:{}'),
('eec6e1bef78e7b835651130f3d4adecb', 1623549950, 'modx.user.contextTokens|a:0:{}'),
('ef1c6c97260c2043b81990110d9b1805', 1623661857, 'modx.user.contextTokens|a:0:{}'),
('f1460bbb5cf4926e7a8758c8dd1288ed', 1623720368, 'modx.user.contextTokens|a:0:{}'),
('f2c532995293b7c191913acb2974b297', 1623674877, 'modx.user.contextTokens|a:0:{}'),
('f2eeae08665f981ce3d5cadb4c940c10', 1623660928, 'modx.user.contextTokens|a:0:{}'),
('f3e69fcce0c5a642f6a9e82f3fb263d3', 1623544568, 'modx.user.contextTokens|a:0:{}'),
('f4297ea2c6793a18f815f15edb88b6f1', 1623600490, 'modx.user.contextTokens|a:0:{}'),
('f6665d0f2626fe46113ef3ee66a65bd5', 1623547161, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.mgr.user.token|s:52:\"modx60bf71dbdbfb71.21022057_160c55d196a4079.70759682\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('f82383df6a0c86f3dc67c7d732903053', 1623787518, 'modx.user.contextTokens|a:0:{}'),
('f8a8c54cbdbf434e3eabe470d19e511d', 1623692629, 'modx.user.contextTokens|a:0:{}'),
('f8a96e4fd84318230dbc64ab3722de2a', 1623810652, 'modx.user.contextTokens|a:0:{}'),
('f8d998d134e9458dc4f3d8f733b4814f', 1623715286, 'modx.user.contextTokens|a:0:{}'),
('fa42fcab70079c0df80a7f2479ef6363', 1623712855, 'modx.user.contextTokens|a:0:{}'),
('fb853e53e5cc75341f69ec4bfd3dc08d', 1623634932, 'modx.user.contextTokens|a:0:{}'),
('fd0f1c9d408cb9082521596d90893549', 1623746564, 'modx.user.contextTokens|a:0:{}'),
('fe92580da25e962545204fe2bdba7950', 1623640111, 'modx.user.contextTokens|a:0:{}'),
('fff2332546dd99d55d0b0a657c67aa9f', 1623644400, 'modx.user.contextTokens|a:0:{}'),
('flgsh95fooejfdo4s465rs7blt', 1623539530, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.mgr.user.token|s:52:\"modx60bf71dbdbfb71.21022057_160c53ebc319fb7.57422298\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:7:{i:0;s:23:\"60c53f16543228.23042385\";i:1;s:23:\"60c53f2b524579.54309849\";i:2;s:23:\"60c53f377bc5e9.15903102\";i:3;s:23:\"60c53f3ca84281.08404165\";i:4;s:23:\"60c53f401cf239.40036807\";i:5;s:23:\"60c53f43c27f78.63397720\";i:6;s:23:\"60c53f4ad87210.42554789\";}'),
('k5pjhqaorcdst05c4abh13m4tu', 1623352923, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('mglm7tqmpka8unr5e9sv0tjj2d', 1623212870, 'modx.user.contextTokens|a:0:{}modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}'),
('mq3q0gcuokgku2582e2er05v0v', 1623486782, 'modx.user.contextTokens|a:1:{s:3:\"web\";i:1;}modx.web.user.token|s:52:\"modx60bf71dbdbfb71.21022057_160c4669f8ed3a2.92267823\";modx.web.session.cookie.lifetime|i:0;modx.web.user.config|a:0:{}'),
('o4tcn5301uhm3ikhkvghk3r0d7', 1623394230, 'modx.user.contextTokens|a:0:{}'),
('o7rti7r3nn7345emsq85dpschv', 1623269755, 'modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}'),
('pok98fb2ld24h5i0l5lckcfh4c', 1623384321, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('v6oqlf7fauvp1iq70nq1mkcm5f', 1623269756, 'modx.user.contextTokens|a:0:{}'),
('v7s4o56gphv3k70ah5tmro1lep', 1623352017, 'modx.user.contextTokens|a:0:{}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_site_content`
--

CREATE TABLE `modx_site_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(191) NOT NULL DEFAULT '',
  `longtitle` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `alias` varchar(191) DEFAULT '',
  `alias_visible` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `link_attributes` varchar(191) NOT NULL DEFAULT '',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `introtext` text,
  `content` mediumtext,
  `richtext` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `cacheable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0',
  `publishedby` int(10) NOT NULL DEFAULT '0',
  `menutitle` varchar(191) NOT NULL DEFAULT '',
  `donthit` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `privateweb` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `privatemgr` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0',
  `hidemenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `class_key` varchar(100) NOT NULL DEFAULT 'modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `uri` text,
  `uri_override` tinyint(1) NOT NULL DEFAULT '0',
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_tree` tinyint(1) NOT NULL DEFAULT '1',
  `properties` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_site_content`
--

INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `alias_visible`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`) VALUES
(1, 'document', 'text/html', 'Home', 'Congratulations!', '', 'index', 1, '', 1, 0, 0, 0, 0, '', '<head class=\"header\">\r\n        <div class=\"logo-home\">\r\n          <a class=\"logo\" href=\"#\">ONE BERRY</a>\r\n        </div>\r\n    </head>\r\n    <div class=\"container-fluid pr-0 pl-0 home-section\">\r\n        <div class=\"home-title\">Bienvenidos</div>\r\n        <div class=\"home-content\">\r\n          <div class=\"intro\">\r\n            <p class=\"info\">MI PROPIO<br><span>NEGOCIO</span></p>\r\n            <a class=\"btn\" href=\"./products.html\">ENTRAR</a>\r\n            <p class=\"phrase\">Descúbrelo</p>\r\n          </div>\r\n          <div class=\"intro\">\r\n            <p class=\"info\">LO QUIERO<br><span>PARA MÍ</span></p>\r\n            <a class=\"btn\" href=\"./products.html\">ENTRAR</a>\r\n            <p class=\"phrase\">Siéntete única</p>\r\n          </div>\r\n        </div>\r\n    </div>\r\n    <footer class=\"footer-home\">\r\n        <div>\r\n          <ul class=\"social-red\">\r\n            <li><a href=\"#\"><img src=\"./assets/layout/images/svgs/home-fb.svg\"></a></li>\r\n            <li><a href=\"#\"><img src=\"./assets/layout/images/svgs/home-ig.svg\"></a></li>\r\n            <li><a href=\"#\"><img src=\"./assets/layout/images/svgs/home-tik.svg\"></a></li>\r\n            <li><a href=\"#\"><img src=\"./assets/layout/images/svgs/home-wp.svg\"></a></li>\r\n          </ul>\r\n        </div>\r\n        <div class=\"copyright\">\r\n            <a href=\"#\" class=\"rs\">ONE BERRY <span>Copyright 2021</span></a>\r\n        </div>\r\n    </footer>', 1, 2, 0, 1, 1, 1, 1623159278, 2, 1623549671, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'index.html', 0, 0, 1, NULL),
(2, 'document', 'text/html', 'Login', 'login', '', 'login', 1, '', 1, 0, 0, 0, 0, '', '    <header class=\"header header-login\">\r\n        <div class=\"block-header\">\r\n            <div class=\"block-logo\"><a class=\"logo\" href=\"#\">Logotipo</a></div>\r\n            <div class=\"menu-toggler-button\">\r\n                <div class=\"toggler-wrapper-button\">\r\n                    <span class=\"toggler-icon\"></span>\r\n                </div>\r\n            </div>\r\n            <div class=\"navbar-collapsex\">\r\n                <div class=\"wrapper-menubar\">\r\n                    <ul>\r\n                        <li >\r\n                            <a href=\"./index.html\">Inicio</a>\r\n                        </li>\r\n                        <li >\r\n                            <a href=\"./us.html\">Nosotros</a>\r\n                        </li>\r\n                        <li >\r\n                            <a href=\"./products.html\">Lo nuevo</a>\r\n                        </li>\r\n                        <li >\r\n                            <a href=\"./products.html\">Otros</a>\r\n                        </li>\r\n                    </ul>\r\n                    \r\n                </div>\r\n            </div>\r\n        </div>\r\n    </header>\r\n    <div class=\"container-fluid pr-0 pl-0 home-section\">\r\n        <div class=\"wrapper-login\">\r\n            <div class=\"wrapper-login-title\">\r\n                <div class=\"title-type-i\">\r\n                    <span>DESCUBRE </span>UN MUNDO LLENO DE OPORTUNIDADES\r\n                </div>\r\n            </div>\r\n            \r\n            <div class=\"wrapper-login-form\">\r\n                <p class=\"text-type-f\">Inicia sesión con tu cuenta</p>\r\n                <form class=\"form-login\">\r\n                    <div class=\"form-group\">\r\n                        <input type=\"email\" class=\"form-control form-input form-input-b\" placeholder=\"Ingrese su E-mail\">  \r\n                    </div>\r\n                    <div class=\"form-group\">\r\n                        <input type=\"password\" class=\"form-control form-input form-input-b\" placeholder=\"Ingrese su contraseña\">  \r\n                    </div>\r\n                    <div class=\"form-group\">\r\n                        <label class=\"radio radio-gradient radio-type\">\r\n                            <span class=\"radio__input\">\r\n                                <input type=\"radio\" name=\"radio-color\">\r\n                                <span class=\"radio__control radio__control6\">\r\n                                    <img src=\"./assets/layout/images/svgs/check-talla.svg\">\r\n                                </span>\r\n                            </span>\r\n                            <span class=\"radio__label title-type-d title-type-d-d\">Recordar</span>\r\n                        </label>\r\n                    </div>\r\n                    <button type=\"button\" class=\"type-button-form type-button-form-b text-aling-center\">ENTRAR</button>\r\n                </form>\r\n                <div class=\"wrapper-buttons-login\">\r\n                    <a href=\"#\" class=\"title-type-k\">Registrate</a>\r\n                    <a href=\"#\" class=\"title-type-j\">Olvidaste tu contraseña</a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n    <footer class=\"footer-home\">\r\n        <div>\r\n          <ul class=\"social-red\">\r\n            <li><a href=\"#\"><img src=\"./assets/layout/images/svgs/home-fb.svg\"></a></li>\r\n            <li><a href=\"#\"><img src=\"./assets/layout/images/svgs/home-ig.svg\"></a></li>\r\n            <li><a href=\"#\"><img src=\"./assets/layout/images/svgs/home-tik.svg\"></a></li>\r\n            <li><a href=\"#\"><img src=\"./assets/layout/images/svgs/home-wp.svg\"></a></li>\r\n          </ul>\r\n        </div>\r\n        <div class=\"copyright\">\r\n            <a href=\"#\" class=\"rs\">MARCA <span>Copyright 2021</span></a>\r\n        </div>\r\n    </footer>', 1, 3, 1, 1, 1, 1, 1623160563, 1, 1623539496, 0, 0, 0, 1623160560, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'login', 1, 0, 1, NULL),
(3, 'document', 'text/html', 'Register', 'register', '', 'register', 1, '', 1, 0, 0, 0, 0, '', '<div class=\"wrapper-container-main wrapper-container-register\">\r\n        <h4 class=\"title-type-h text-aling-center\">QUEREMOS CONOCERTE</h4>\r\n        <p class=\"text-type-e\">..Déjanos tus datos!</p>\r\n        <form class=\"form\">\r\n            <div class=\"form-group\">\r\n                <label for=\"\" class=\"label label-a\">NOMBRE</label>\r\n                <input type=\"text\" class=\"form-control form-input form-input-a\">\r\n            </div>\r\n            <div class=\"form-group\">\r\n                <label for=\"\" class=\"label label-a\">CIUDAD</label>\r\n                <input type=\"text\" class=\"form-control form-input form-input-a\">\r\n            </div>\r\n            <div class=\"form-group\">\r\n                <label for=\"\" class=\"label label-a\">TELÉFONO</label>\r\n                <input type=\"text\" class=\"form-control form-input form-input-a\">\r\n            </div>\r\n            <div class=\"form-group\">\r\n                <label for=\"\" class=\"label label-a\">CORREO</label>\r\n                <input type=\"text\" class=\"form-control form-input form-input-a\">  \r\n            </div>\r\n            \r\n            <div class=\"wrapper-hr\">\r\n                <hr>\r\n            </div>\r\n            <div class=\"form-group\">\r\n                <label for=\"\" class=\"label-a\">INGRESA TU CONTRASEÑA</label>\r\n                <input type=\"password\" class=\"form-control form-input form-input-a\">  \r\n            </div>\r\n            <div class=\"form-group\">\r\n                <label for=\"\" class=\"label-a\">CONFIRMAR CONTRASEÑA</label>\r\n                <input type=\"password\" class=\"form-control form-input form-input-a\">  \r\n            </div>\r\n            <div class=\"btn-form\">\r\n                <button type=\"button\" class=\"type-button-form type-button-form-a text-aling-center\">REGISTRAR</button>\r\n            </div>\r\n            \r\n        </form>\r\n    </div>', 1, 4, 2, 1, 1, 1, 1623160624, 1, 1623210540, 0, 0, 0, 1623160620, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'register', 1, 0, 1, NULL),
(4, 'document', 'text/html', 'About', 'About', '', 'about', 1, '', 1, 0, 0, 0, 0, '', '    <div class=\"wrapper-container-main wrapper-container-us\">\r\n        <!-- <div class=\"info\"> -->\r\n            <h4 class=\"title-type-h text-aling-left\">nosotros</h4>\r\n            <!-- <p>...Déjanos tus datos!</p> -->\r\n        <!-- </div> -->\r\n        <div class=\"wrapper-us\">\r\n            <p>\r\n                Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.                                                                                            Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. \r\n            </p>\r\n        </div>\r\n    </div>', 1, 4, 3, 1, 1, 1, 1623160777, 1, 1623212113, 0, 0, 0, 1623160740, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'about', 1, 0, 1, NULL),
(5, 'document', 'text/html', 'Register Thank You', 'Register Thank You', '', 'register-thank-you', 1, '', 1, 0, 0, 3, 0, '', '    <div class=\"wrapper-container-main wrapper-container-contact\">\r\n        <div class=\"wrapper-thank-you\">\r\n            <h2 class=\"title-type-h\">GRACIAS</h2>\r\n            <!-- <h2 class=\"title-type-h title-capitalize\">fernanda</h2> -->\r\n            <p class=\"text-type-b\">\r\n                Tu pedido fue enviado correctamente,\r\n                en breve nos pondremos en contacto.\r\n                <br>\r\n                No olvides enviar realizar el pago y enviar\r\n                tu voucher por via whatsapp con una foto\r\n                de tu  lista de pedido.\r\n            </p>\r\n        </div>\r\n    </div>', 1, 4, 0, 1, 1, 1, 1623160866, 1, 1623212080, 0, 0, 0, 1623160860, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'register-thank-you', 1, 0, 1, NULL),
(6, 'document', 'text/html', 'Contact', 'Contact', '', 'contact', 1, '', 1, 0, 0, 0, 0, '', '    <div class=\"wrapper-container-main wrapper-container-register\">\r\n        <h4 class=\"title-type-h text-aling-center\">QUEREMOS CONOCERTE</h4>\r\n        <p class=\"text-type-e\">..Déjanos tus datos!</p>\r\n        <form class=\"form\">\r\n            <div class=\"form-group\">\r\n                <label for=\"\" class=\"label label-a\">NOMBRE</label>\r\n                <input type=\"text\" class=\"form-control form-input form-input-a\">\r\n            </div>\r\n            <div class=\"form-group\">\r\n                <label for=\"\" class=\"label label-a\">CIUDAD</label>\r\n                <input type=\"text\" class=\"form-control form-input form-input-a\">\r\n            </div>\r\n            <div class=\"form-group\">\r\n                <label for=\"\" class=\"label label-a\">TELÉFONO</label>\r\n                <input type=\"text\" class=\"form-control form-input form-input-a\">\r\n            </div>\r\n            <div class=\"form-group\">\r\n                <label for=\"\" class=\"label label-a\">INGRESA EL LINK DE TUS REDES</label>\r\n                <input type=\"text\" class=\"form-control form-input form-input-a\">  \r\n            </div>\r\n            <div class=\"form-group\">\r\n                <label for=\"\" class=\"label label-a\">CUÉNTANOS SOBRE TI</label>\r\n                <textarea row=\"4\" class=\"form-control form-input form-input-a form-input-text-area\"></textarea>\r\n            </div>\r\n            <div class=\"form-group\">\r\n                <label for=\"\" class=\"label label-a\">CUENTANOS TU EXP. SOBRE VENTAS</label>\r\n                <textarea row=\"4\" class=\"form-control form-input form-input-a form-input-text-area\"></textarea>\r\n            </div>\r\n            <div class=\"btn-form\">\r\n                <button type=\"button\" class=\"type-button-form type-button-form-a text-aling-center\">REGISTRAR</button>\r\n            </div>\r\n            \r\n        </form>\r\n    </div>', 1, 4, 4, 1, 1, 1, 1623160967, 1, 1623212461, 0, 0, 0, 1623160920, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'contact', 1, 0, 1, NULL),
(7, 'document', 'text/html', 'Contact Thank You', 'Register Thank You', '', 'contact-thank-you', 1, '', 1, 0, 0, 6, 0, '', '   <div class=\"wrapper-container-main wrapper-container-contact\">\r\n        <div class=\"wrapper-thank-you\">\r\n            <h2 class=\"title-type-h\">GRACIAS</h2>\r\n            <!-- <h2 class=\"title-type-h title-capitalize\">fernanda</h2> -->\r\n            <p class=\"text-type-b\">\r\n                Gracias por enviar tu mensaje\r\n            </p>\r\n        </div>\r\n    </div>', 1, 4, 0, 1, 1, 1, 1623160984, 1, 1623212178, 0, 0, 0, 1623160860, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'contact-thank-you', 1, 0, 1, NULL),
(8, 'document', 'text/html', 'WelcomeUser', 'WelcomeUser', '', 'welcome-user', 1, '', 1, 0, 0, 0, 0, '', '    <div class=\"wrapper-container-main wrapper-container-welcome\">\r\n        <!-- <div class=\"info\"> -->\r\n            <h4 class=\"title-type-h text-aling-center\">bienvenido<br>fanny</h4>\r\n        <!-- </div> -->\r\n        <div class=\"wrapper-welcome\">\r\n            <p>\r\n                Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.                                                                                            Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. \r\n            </p>\r\n            <p>\r\n                Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.                                                                                            Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. \r\n            </p>\r\n        </div>\r\n    </div>', 1, 4, 5, 1, 1, 1, 1623161060, 1, 1623212191, 0, 0, 0, 1623161040, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'welcome-user', 1, 0, 1, NULL),
(9, 'document', 'text/html', 'Products', 'Products', '', 'products', 1, '', 1, 0, 0, 0, 1, '', '', 1, 6, 6, 1, 1, 1, 1623161105, 1, 1623161157, 0, 0, 0, 1623161105, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'products', 1, 0, 1, NULL),
(10, 'document', 'text/html', 'BLAZER EMMA', 'BLAZER EMMA', '', 'blazer-emma', 1, '', 1, 0, 0, 9, 0, '', '', 1, 5, 0, 1, 1, 1, 1623161141, 2, 1623550071, 0, 0, 0, 1623161100, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'products/blazer-emma.html', 0, 0, 1, NULL),
(11, 'document', 'text/html', 'Orders', 'Orders', '', 'orders', 1, '', 1, 0, 0, 0, 1, '', '    <div <div class=\"wrapper-container-main wrapper-container-resumen\">\r\n        <h4 class=\"layout-title layout-type-title-a text-aling-center\">resumen pedido</h4>\r\n\r\n        <div class=\"wrapper-resumen\">\r\n            <div class=\"wrapper-detail-resume\">\r\n                <div class=\"product-title\">MODELO</div>\r\n                <h2 class=\"product-title\" id=\"product-name\">BLAZER <span>EMMA</span></h2>\r\n                <h4 class=\"title-type-g text-aling-center time-register\" id=\"product-time-register\">Fecha: 02/05/2020 Hora: 16:35 hrs</h4>\r\n                <div class=\"wrapper-cart-detail\">\r\n                    <table id=\"orders-table-resume\">\r\n                        <tr>\r\n                            <th align=\"center\">Talla</th>\r\n                            <th align=\"center\">Color</th>\r\n                            <th align=\"center\">Cantidad</th>\r\n                            <th align=\"right\">Precio</th>\r\n                            <th align=\"right\">Total</th>\r\n                        </tr>\r\n                    </table>\r\n                    <div class=\"wrapper-cart-btns\">\r\n                        <button class=\"type-button type-button-b\" id=\"btn-confirm-order\">REALIZAR PEDIDO</button>\r\n                        <button class=\"type-button type-button-a\" id=\"btn-edit-order\">MODIFICAR PEDIDO</button>\r\n                    </div>\r\n                </div>\r\n                <div class=\"item-description\">\r\n                    <h5 class=\"title-type-b text-uppercase\">medios de pago</h5>\r\n                    <p class=\"text-type-b\">\r\n                        Transferencias \r\n                    </p>\r\n                </div>\r\n                <div class=\"item-description\">\r\n                    <h5 class=\"title-type-b text-uppercase\">yape</h5>\r\n                    <p class=\"text-type-a\">\r\n                        000000000\r\n                    </p>\r\n                </div>\r\n                <div class=\"item-description\">\r\n                    <h5 class=\"title-type-b text-uppercase\">Tiempo de entrega</h5>\r\n                    <p class=\"text-type-b\">\r\n                        15 días\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n\r\n    </div>', 1, 4, 7, 1, 1, 1, 1623161201, 1, 1623383063, 0, 0, 0, 1623161160, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'orders', 1, 0, 1, NULL),
(12, 'document', 'text/html', 'Orders Thank You', 'Orders Thank You', '', 'orders-thank-you', 1, '', 1, 0, 0, 11, 0, '', '    <div class=\"wrapper-container-main wrapper-container-contact\">\r\n        <div class=\"wrapper-thank-you\">\r\n            <h2 class=\"title-type-h\">GRACIAS</h2>\r\n            <p class=\"text-type-b\">\r\n                Gracias por enviar tu mensaje\r\n            </p>\r\n        </div>\r\n    </div>', 1, 4, 0, 1, 1, 1, 1623161235, 1, 1623213801, 0, 0, 0, 1623161220, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'orders-thank-you', 1, 0, 1, NULL),
(13, 'document', 'text/html', 'PRODUCTO 1', 'PRODUCTO 1', '', 'producto-1', 1, '', 1, 0, 0, 9, 0, '', '', 1, 5, 0, 1, 1, 1, 1623270276, 1, 1623540763, 0, 0, 0, 1623161100, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'products/producto-1.html', 0, 0, 1, NULL),
(14, 'document', 'text/html', 'ModJWT', 'ModJWT Sample Page', 'Sample page for modJWT a MODx Extra', 'modjwt', 1, '', 1, 0, 0, 0, 1, '', '<!doctype html>\r\n<html lang=\"en\">\r\n<head>\r\n  <meta charset=\"utf-8\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n  <title>[[*longtitle:default=`[[*pagetitle]]`]]</title>\r\n  <meta name=\"description\" content=\"[[*description]]\">\r\n  <meta name=\"author\" content=\"Zaenal [zaenal # lokamaya.com]\">\r\n  <!-- Bootstrap CSS -->\r\n  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\">\r\n\r\n  <!-- jQuery -->\r\n  <script src=\"https://code.jquery.com/jquery-3.3.1.min.js\"></script>\r\n  <script>var pageID = [[*id]];</script>\r\n\r\n[[$modjwtCssSample]]\r\n\r\n</head>\r\n\r\n<body>\r\n<div class=\"container\" style=\"width:100%; padding:20px 0;\">\r\n    <div class=\"row\">\r\n        <div class=\"col-md-6 offset-md-3\">\r\n            <h3 class=\"text-center\">ModJWT</h3>\r\n            <p class=\"text-center\"  style=\"padding:0 8%\"><small class=\"line-height-small\"><samp>Make sure you have edited the <mark>formaction</mark>\'s url of [create&nbsp;token] and [validate&nbsp;token] below!</samp></small></p>\r\n            <form name=\"modJWTForm\" id=\"modJWTForm\" action=\"#self\">\r\n                <br />\r\n                <div class=\"text-center\" style=\"border:1px solid #ddd; background:#eee;\">\r\n\r\n                  <!-- change #index.php?id=OfToken to the valid resourceid or URL /-->\r\n                  <button id=\"getToken\" type=\"button\" class=\"btn btn-link\" value=\"create\" formaction=\"index.php?id=OfToken\" title=\"Get a new Token\">[create]</button>\r\n\r\n                  <!-- change #index.php?id=OfValidate to the valid resourceid or URL /-->\r\n                  <button id=\"valToken\" type=\"button\" class=\"btn btn-link\" value=\"validate\" formaction=\"index.php?id=OfValidate\" title=\"Validating Token\">[validate]</button>\r\n                  \r\n                  <!-- change #index.php?id=OfCustom  to the valid resourceid or URL /-->\r\n                  <button id=\"cusToken\" type=\"button\" class=\"btn btn-link\" value=\"custom\" formaction=\"index.php?id=OfCustom\" title=\"Get custom value\">[custom]</button>\r\n\r\n                  <button id=\"remToken\" type=\"button\" class=\"btn btn-link\" value=\"destroy\" formaction=\"#self\" title=\"Destroying Token\" style=\"color:red\">[destroy]</button>\r\n                </div>\r\n                <br />\r\n                <div class=\"form-group\">\r\n                    <label for=\"tokenVal\">Data:</label>\r\n                    <textarea id=\"loggerData\" name=\"loggerData\" cols=\"50\" class=\"form-control\" rows=\"5\" style=\"font-size:smaller\"></textarea>\r\n                </div>\r\n                <div class=\"form-group\">\r\n                    <textarea id=\"logger\" name=\"logger\" cols=\"50\" class=\"form-control\" rows=\"8\" style=\"font-size:smaller\" readonly>#Logger</textarea>\r\n                </div>\r\n                <div class=\"form-group text-right\">\r\n                    <!-- input type=\"submit\" class=\"btn btn-primary\" value=\"Log in\" /-->\r\n                    <input id=\"resetForm\" type=\"reset\" value=\"Reset\" formaction=\'#reset\' class=\"btn btn-warning\" />\r\n                </div>\r\n            </form><hr/>\r\n            <p class=\"text-left\"  style=\"padding:0 8%\"><small class=\"line-height-small\"><samp>\r\n                       <div><strong>HTTP Status:</strong> {status, statusText} <em><a href=\"https://en.wikipedia.org/wiki/List_of_HTTP_status_codes\" target=\"_blank\">see here</a></em></div>\r\n                       <div><strong>JSON Output:</strong><pre>\r\n<em>//success</em>\r\n  {\r\n    _valid: 1,\r\n    status: 200,\r\n    statusText: \"OK\",\r\n    payload: string or null,\r\n    token: string or null,\r\n  }\r\n  \r\n<em>//error</em>\r\n  {\r\n    _valid: 0 \r\n    status: 4xx-5xx <em>//http status code</em>\r\n    statusText: string\r\n    errorLog: string\r\n  }\r\n  </pre></div></samp></small>\r\n            </p><hr/>\r\n            <p class=\"text-center\"  style=\"padding:0 8%\"><small class=\"line-height-small\"><samp>More on <a href=\"https://github.com/lokamaya/modJWT\" target=\"_blank\">https://github.com/lokamaya/modJWT</a></samp></small></p>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n[[$modjwtScriptSample]]\r\n\r\n</body>\r\n</html>', 0, 0, 2, 0, 1, 1, 1623483417, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'modjwt/', 0, 0, 1, NULL),
(15, 'document', 'application/json', 'Token', 'Issuing Token - JSON', 'Make sure content type is JSON', 'token', 1, '', 1, 0, 0, 14, 0, '', '[[!jwtEncode]]', 0, 0, 0, 0, 0, 1, 1623483417, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 7, 'modjwt/token.json', 0, 0, 1, NULL),
(16, 'document', 'application/json', 'Validate', 'Validating Token - JSON', 'Make sure content type is JSON', 'validate', 1, '', 1, 0, 0, 14, 0, '', '[[!jwtDecode]]', 0, 0, 1, 0, 0, 1, 1623483417, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 7, 'modjwt/validate.json', 0, 0, 1, NULL),
(17, 'document', 'application/json', 'Custom', 'Validating Token & output custom value', 'Make sure content type is JSON', 'custom', 1, '', 1, 0, 0, 14, 0, '', '[[!jwtDecodeRunSnippet? &retval=`https://domain/mysecreturl-nobodyknow`]]', 0, 0, 1, 0, 0, 1, 1623483417, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 7, 'modjwt/custom.json', 0, 0, 1, NULL),
(18, 'document', 'text/html', 'BLAZER EMMA 2', 'BLAZER EMMA', '', 'blazer-emma-2', 1, '', 1, 0, 0, 9, 0, '', '', 1, 5, 0, 1, 1, 2, 1623549151, 2, 1623549158, 0, 0, 0, 1623161100, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'products/blazer-emma-2.html', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_site_htmlsnippets`
--

CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_site_htmlsnippets`
--

INSERT INTO `modx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 0, 0, 'ChunkHeader', '', 0, 2, 0, '<header class=\"header\">\n    <div class=\"block-header\">\n        <div class=\"block-logo\">\n            <a class=\"logo\" href=\"#\">Logotipo</a>\n        </div>\n        <div class=\"menu-toggler-button\">\n            <div class=\"toggler-wrapper-button\">\n                <span class=\"toggler-icon\"></span>\n            </div>\n        </div>\n        <div class=\"navbar-collapsex\">\n            <div class=\"wrapper-menubar\">\n                <ul>\n                    <li >\n                        <a href=\"/\">Inicio</a>\n                    </li>\n                    <li >\n                        <a href=\"/about\">Nosotros</a>\n                    </li>\n                    <li >\n                        <a href=\"/products\">Lo nuevo</a>\n                    </li>\n                    <li >\n                        <a href=\"/products\">Otros</a>\n                    </li>\n                </ul>\n                \n            </div>\n        </div>\n    </div>\n</header>', 0, 'a:0:{}', 0, ''),
(2, 0, 0, 'ChunkFooter', '', 0, 2, 0, '    <footer class=\"footer\">\n        <div>\n            <a href=\"#\" class=\"menu-item\">Chat</a>\n            <a href=\"#\" class=\"menu-item\">Nosotros</a>\n            <a href=\"#\" class=\"menu-item\">Reserva tu pedido</a>\n        </div>\n        <div>\n            <ul class=\"social-red\">\n                <li><a href=\"#\"><img src=\"./assets/layout/images/svgs/Vector-1.svg\"></a></li>\n                <li><a href=\"#\"><img src=\"./assets/layout/images/svgs/Vector-2.svg\"></a></li>\n                <li><a href=\"#\"><img src=\"./assets/layout/images/svgs/Vector-3.svg\"></a></li>\n                <li><a href=\"#\"><img src=\"./assets/layout/images/svgs/Vector-4.svg\"></a></li>\n            </ul>\n        </div>\n        <div class=\"copyright\">\n            <a href=\"#\" class=\"menu-item\">ONE BERRY <span>Copyright 2021</span></a>\n        </div>\n    </footer>\n    <script type=\"text/javascript\" src=\"./assets/layout/js/service.js\"></script>\n    <script type=\"text/javascript\" src=\"./assets/layout/js/main.js\"></script>', 0, 'a:0:{}', 0, ''),
(3, 0, 0, 'ChunkHeaderScripts', '', 0, 2, 0, '<script type=\"text/javascript\" src=\"./assets/layout/js/jquery-1.12.4.min.js\" integrity=\"sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ\" crossorigin=\"anonymous\"></script>\n<script type=\"text/javascript\" src=\"./assets/layout/js/xzoom.min.js\"></script>\n<script type=\"text/javascript\">\n    (function() {\n      var h, a, f;\n      a = document.getElementsByTagName(\'link\');\n      for (h = 0; h < a.length; h++) {\n          f = a[h];\n          if (f.rel.toLowerCase().match(/stylesheet/) && f.href) {\n          var g = f.href.replace(/(&|\\?)rnd=\\d+/, \'\');\n          f.href = g + (g.match(/\\?/) ? \'&\' : \'?\');\n          f.href += \'rnd=\' + (new Date().valueOf());\n          }\n      } // for\n    })()   \n</script>', 0, 'a:0:{}', 0, ''),
(4, 0, 0, 'ChunkHeaderCss', '', 0, 2, 0, '<link href=\"./assets/layout/css/xzoom.css\" rel=\"stylesheet\" type=\"text/css\"/>\n<link rel=\"stylesheet\" href=\"./assets/layout/css/fonts.css\">\n<link rel=\"stylesheet\" href=\"./assets/layout/css/style.css\">', 0, 'a:0:{}', 0, ''),
(5, 0, 0, 'modjwtCssSample', 'Sample CSS for modJWT', 0, 9, 0, '<style>\npre {color:#777777;}\n</style>', 0, 'a:0:{}', 0, ''),
(6, 0, 0, 'modjwtScriptSample', 'Sample script for modJWT', 0, 9, 0, '<script>\nvar _countClick = 0;\nvar _actionVal = \'\';\nvar L = window.location.href.split(\'#\')[0]; \n\n$(document).ready(function() {\n    if (!window.localStorage) {\n         _loggerJWT(\"Sorry, \'window.localStorage\' not supported on your browser.\");\n        _disableForm(\'modJWTForm\', true);\n        return;\n    }\n\n    $(function () {\n        var msgs = \'\', data = \'\'; \n        \n        $(\'#getToken\').on(\'click\', function(e){\n            if (localStorage.getItem(\"token\")) {\n                alert(\"You already have Token on your localStorage.\\nRemove it before creating a new one.\");\n                return false;\n            } else {\n                var _token = null; msgs=\'\'; data = {};\n\n                _countClick++;\n                _actionVal = this.formAction;\n                window.location.assign(L + \"#\" + _countClick + \"~create\");               \n                \n                $(\'#loggerData\').text(\"\");\n                $.ajax({\n                    url: _actionVal,\n                    crossDomain: false,  //remove this line if not needed or set to false\n                    type: \'GET\',         //GET or POST get same result\n                    success: function (data) {\n                        msgs = JSON.stringify(data);\n                        if (data && typeof data._valid !== \'undefined\') {\n                            if (data._valid === 1 && data.token !== null) { //here we check the Token\n                                _token = data.token;\n                                localStorage.setItem(\"token\", _token);\n                                $(\'#loggerData\').text(\"Token:\\n\" + _token);\n                            } else {\n                                msgs +=  \" \\n - Verify URL: \" + _actionVal;\n                                msgs +=  \" \\n - Go to manager: edit the \'formaction\' of blue link above!\";\n                            }\n                        } else {\n                            msgs +=  \" \\n - unknown error\";\n                        }\n                        _loggerJWT(msgs);\n                    },\n                    error: function (_request, _error, _text) {\n                        //console.log(arguments);\n                        $(\'#loggerData\').text(_request.status + \" \" + _text);\n                        _loggerJWT(_request.status + \" \" + _text + \"\\nRequest: - \" + _actionVal);\n                    }\n                });\n            }\n            event.preventDefault();\n        });    \n            \n        $(\'#valToken\').on(\'click\', function(e){\n            if (_token = localStorage.getItem(\"token\")) {\n                _countClick++; _actionVal = this.formAction; msgs=\'\'; data = \'\'; \n                window.location.assign(L + \"#\" + _countClick + \"~validate\");\n                \n                $(\'#loggerData\').text(\"\");\n                \n                $.ajax({\n                    url: _actionVal,\n                    headers: {\n                        \'Authorization\': \"Bearer \" + _token        //important! pass token here\n                    },\n                    crossDomain: true,                             //remove this line if not needed or set to false\n                    type: \'GET\',                                   //we dont need to post data, set Token in the header\n                    success: function (data) {\n                        msgs = JSON.stringify(data);\n                        if (data && typeof data._valid !== \'undefined\') {\n                            if (data._valid === 1 && data.payload !== null) { //here we check the Payload\n                                $(\'#loggerData\').text(\"Payload:\\n\" + JSON.stringify(data.payload));\n                            } else {\n                                msgs +=  \" \\n - seems you went to the wrong page\";\n                            }\n                        } else {\n                            msgs +=  \" \\n - unknown error\";\n                        }\n                        _loggerJWT(msgs);\n                    },\n                    error: function (_request, _error, _text) {\n                        //console.log(arguments);\n                        $(\'#loggerData\').text(_request.status + \" \" + _text);\n                        _loggerJWT(_request.status + \" \" + _text + \"\\nRequest: - \" + _actionVal);\n                    }\n                });\n            } else {\n                alert(\"There is no Token in your localStorage\");\n                return false;\n            }\n            \n            $(\'#loggerData\').text(\'\');\n            _loggerJWT(msgs);\n            \n            event.preventDefault();\n        });    \n        \n        $(\'#cusToken\').on(\'click\', function(e){\n            if (_token = localStorage.getItem(\"token\")) {\n                _countClick++; _actionVal = this.formAction; msgs=\'\'; data = \'\'; \n                window.location.assign(L + \"#\" + _countClick + \"~custom\");\n                \n                $(\'#loggerData\').text(\"\");\n                \n                $.ajax({\n                    url: _actionVal,\n                    headers: {\n                        \'Authorization\': \"Bearer \" + _token        //pass token here\n                    },\n                    crossDomain: true,                             //remove this line if not needed or set to false\n                    type: \'GET\',                                   //we dont need to post data, set Token in the header\n                    success: function (data) {\n                        msgs = JSON.stringify(data);\n                        if (data && typeof data._valid !== \'undefined\') {\n                            if (data._valid === 1 && data.retval !== null) { //here we check the retval\n                                $(\'#loggerData\').text(\"Custom output (see jwtDecodeRunSnippet):\\n\" + JSON.stringify(data.retval));\n                            } else {\n                                msgs +=  \" \\n - seems you went to the wrong page\";\n                            }\n                        } else {\n                            msgs +=  \" \\n - unknown error\";\n                        }\n                        _loggerJWT(msgs);\n                    },\n                    error: function (_request, _error, _text) {\n                        //console.log(arguments);\n                        $(\'#loggerData\').text(_request.status + \" \" + _text);\n                        _loggerJWT(_request.status + \" \" + _text + \"\\nRequest: - \" + _actionVal);\n                    }\n                });\n            } else {\n                alert(\"Custom? Have you create the Token?\");\n                return false;\n            }\n            \n            $(\'#loggerData\').text(\'\');\n            _loggerJWT(msgs);\n            \n            event.preventDefault();\n        });  \n        \n        $(\'#remToken\').on(\'click\', function(e){\n            if (_token = localStorage.getItem(\"token\")) {\n                _countClick++;_actionVal = this.formAction; msgs=\'\'; data = \'\'; \n                window.location.assign(L + \"#\" + _countClick + \"~remove\");\n                \n                localStorage.removeItem(\"token\");\n                msgs=\"Token removed from your localStorage\";\n            } else {\n                alert(\"No Token. No, no...\");\n                return false;\n            }\n            \n            $(\'#loggerData\').text(\'\');\n            _loggerJWT(msgs);\n            \n            event.preventDefault();\n        });\n        \n        $(\'#resetForm\').on(\'click\', function(e){\n            _countClick=0;_actionVal = \'reset\'; msgs=\'\'; data = \'\'; \n            $(\'#logger\').text(\'\');\n            localStorage.removeItem(\"token\");\n            window.location.assign(L+\'#Logger\');\n            \n            $(\'#loggerData\').text(\'\');\n            $(\'#logger\').text(\'#Logger\');\n        });\n    });\n});\n\n$(window).bind(\'beforeunload\', function (event) { //detect hash change\n    localStorage.removeItem(\"token\");\n});\n\nfunction _loggerJWT(val) {\n    var hash = window.location.hash.slice(1);\n    var Logs = \"#\" + hash;\n    if ((val).length>0) Logs += \"\\n\" + val;\n    Logs += \"\\n\\n\" + $(\'#logger\').val();\n    $(\'#logger\').text(Logs);\n}\n\nfunction _disableForm(formId, yesNo) {\n   var f = document.getElementById(formId), s, opacity;\n   s = f.style; opacity = yesNo? \'65\' : \'100\'; \n   s.opacity = s.MozOpacity = s.KhtmlOpacity = opacity/100; s.filter = \'alpha(opacity=\'+opacity+\')\';\n   for(var i=0; i<f.length; i++) f[i].disabled = yesNo;\n}\n</script>', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_site_plugins`
--

CREATE TABLE `modx_site_plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_site_plugins`
--

INSERT INTO `modx_site_plugins` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`, `static`, `static_file`) VALUES
(1, 0, 0, 'Ace', 'Ace code editor plugin for MODx Revolution', 0, 0, 0, '/**\n * Ace Source Editor Plugin\n *\n * Events: OnManagerPageBeforeRender, OnRichTextEditorRegister, OnSnipFormPrerender,\n * OnTempFormPrerender, OnChunkFormPrerender, OnPluginFormPrerender,\n * OnFileCreateFormPrerender, OnFileEditFormPrerender, OnDocFormPrerender\n *\n * @author Danil Kostin <danya.postfactum(at)gmail.com>\n *\n * @package ace\n *\n * @var array $scriptProperties\n * @var Ace $ace\n */\nif ($modx->event->name == \'OnRichTextEditorRegister\') {\n    $modx->event->output(\'Ace\');\n    return;\n}\n\nif ($modx->getOption(\'which_element_editor\', null, \'Ace\') !== \'Ace\') {\n    return;\n}\n\n$ace = $modx->getService(\'ace\', \'Ace\', $modx->getOption(\'ace.core_path\', null, $modx->getOption(\'core_path\').\'components/ace/\').\'model/ace/\');\n$ace->initialize();\n\n$extensionMap = array(\n    \'tpl\'   => \'text/x-smarty\',\n    \'htm\'   => \'text/html\',\n    \'html\'  => \'text/html\',\n    \'css\'   => \'text/css\',\n    \'scss\'  => \'text/x-scss\',\n    \'less\'  => \'text/x-less\',\n    \'svg\'   => \'image/svg+xml\',\n    \'xml\'   => \'application/xml\',\n    \'xsl\'   => \'application/xml\',\n    \'js\'    => \'application/javascript\',\n    \'json\'  => \'application/json\',\n    \'php\'   => \'application/x-php\',\n    \'sql\'   => \'text/x-sql\',\n    \'md\'    => \'text/x-markdown\',\n    \'txt\'   => \'text/plain\',\n    \'twig\'  => \'text/x-twig\'\n);\n\n// Define default mime for html elements(templates, chunks and html resources)\n$html_elements_mime=$modx->getOption(\'ace.html_elements_mime\',null,false);\nif(!$html_elements_mime){\n    // this may deprecated in future because components may set ace.html_elements_mime option now\n    switch (true) {\n        case $modx->getOption(\'twiggy_class\'):\n            $html_elements_mime = \'text/x-twig\';\n            break;\n        case $modx->getOption(\'pdotools_fenom_parser\'):\n            $html_elements_mime = \'text/x-smarty\';\n            break;\n        default:\n            $html_elements_mime = \'text/html\';\n    }\n}\n\n// Defines wether we should highlight modx tags\n$modxTags = false;\nswitch ($modx->event->name) {\n    case \'OnSnipFormPrerender\':\n        $field = \'modx-snippet-snippet\';\n        $mimeType = \'application/x-php\';\n        break;\n    case \'OnTempFormPrerender\':\n        $field = \'modx-template-content\';\n        $modxTags = true;\n        $mimeType = $html_elements_mime;\n        break;\n    case \'OnChunkFormPrerender\':\n        $field = \'modx-chunk-snippet\';\n        if ($modx->controller->chunk && $modx->controller->chunk->isStatic()) {\n            $extension = pathinfo($modx->controller->chunk->name, PATHINFO_EXTENSION);\n            if(!$extension||!isset($extensionMap[$extension])){\n                $extension = pathinfo($modx->controller->chunk->getSourceFile(), PATHINFO_EXTENSION);\n            }\n            $mimeType = isset($extensionMap[$extension]) ? $extensionMap[$extension] : \'text/plain\';\n        } else {\n            $mimeType = $html_elements_mime;\n        }\n        $modxTags = true;\n        break;\n    case \'OnPluginFormPrerender\':\n        $field = \'modx-plugin-plugincode\';\n        $mimeType = \'application/x-php\';\n        break;\n    case \'OnFileCreateFormPrerender\':\n        $field = \'modx-file-content\';\n        $mimeType = \'text/plain\';\n        break;\n    case \'OnFileEditFormPrerender\':\n        $field = \'modx-file-content\';\n        $extension = pathinfo($scriptProperties[\'file\'], PATHINFO_EXTENSION);\n        $mimeType = isset($extensionMap[$extension])\n            ? $extensionMap[$extension]\n            : (\'@FILE:\'.pathinfo($scriptProperties[\'file\'], PATHINFO_BASENAME));\n        $modxTags = $extension == \'tpl\';\n        break;\n    case \'OnDocFormPrerender\':\n        if (!$modx->controller->resourceArray) {\n            return;\n        }\n        $field = \'ta\';\n        $mimeType = $modx->getObject(\'modContentType\', $modx->controller->resourceArray[\'content_type\'])->get(\'mime_type\');\n\n        if($mimeType == \'text/html\')$mimeType = $html_elements_mime;\n\n        if ($modx->getOption(\'use_editor\')){\n            $richText = $modx->controller->resourceArray[\'richtext\'];\n            $classKey = $modx->controller->resourceArray[\'class_key\'];\n            if ($richText || in_array($classKey, array(\'modStaticResource\',\'modSymLink\',\'modWebLink\',\'modXMLRPCResource\'))) {\n                $field = false;\n            }\n        }\n        $modxTags = true;\n        break;\n    default:\n        return;\n}\n\n$modxTags = (int) $modxTags;\n$script = \'\';\nif ($field) {\n    $script .= \"MODx.ux.Ace.replaceComponent(\'$field\', \'$mimeType\', $modxTags);\";\n}\n\nif ($modx->event->name == \'OnDocFormPrerender\' && !$modx->getOption(\'use_editor\')) {\n    $script .= \"MODx.ux.Ace.replaceTextAreas(Ext.query(\'.modx-richtext\'));\";\n}\n\nif ($script) {\n    $modx->controller->addHtml(\'<script>Ext.onReady(function() {\' . $script . \'});</script>\');\n}', 0, NULL, 0, '', 0, 'ace/elements/plugins/ace.plugin.php'),
(2, 0, 0, 'TinyMCE Rich Text Editor', '', 0, 3, 0, '/**\n * TinyMCE Rich Tech Editor Plugin\n *\n * @package tinymcerte\n * @subpackage pluginfile\n *\n * @var modX $modx\n * @var array $scriptProperties\n */\n\n$className = \'TinyMCERTE\\Plugins\\Events\\\\\' . $modx->event->name;\n\n$corePath = $modx->getOption(\'tinymcerte.core_path\', null, $modx->getOption(\'core_path\') . \'components/tinymcerte/\');\n/** @var TinyMCERTE $tinymcerte */\n$tinymcerte = $modx->getService(\'tinymcerte\', \'TinyMCERTE\', $corePath . \'model/tinymcerte/\', [\n    \'core_path\' => $corePath\n]);\n\nif ($tinymcerte) {\n    if (class_exists($className)) {\n        $handler = new $className($modx, $scriptProperties);\n        if (get_class($handler) == $className) {\n            $handler->run();\n        } else {\n            $modx->log(xPDO::LOG_LEVEL_ERROR, $className. \' could not be initialized!\', \'\', \'TinyMCE RTE Plugin\');\n        }\n    } else {\n        $modx->log(xPDO::LOG_LEVEL_ERROR, $className. \' was not found!\', \'\', \'TinyMCE RTE Plugin\');\n    }\n}\n\nreturn;', 0, 'a:0:{}', 0, '', 0, ''),
(3, 0, 0, 'MIGX', '', 0, 5, 0, '$corePath = $modx->getOption(\'migx.core_path\',null,$modx->getOption(\'core_path\').\'components/migx/\');\n$assetsUrl = $modx->getOption(\'migx.assets_url\', null, $modx->getOption(\'assets_url\') . \'components/migx/\');\nswitch ($modx->event->name) {\n    case \'OnTVInputRenderList\':\n        $modx->event->output($corePath.\'elements/tv/input/\');\n        break;\n    case \'OnTVInputPropertiesList\':\n        $modx->event->output($corePath.\'elements/tv/inputoptions/\');\n        break;\n\n        case \'OnDocFormPrerender\':\n        $modx->controller->addCss($assetsUrl.\'css/mgr.css\');\n        break; \n \n    /*          \n    case \'OnTVOutputRenderList\':\n        $modx->event->output($corePath.\'elements/tv/output/\');\n        break;\n    case \'OnTVOutputRenderPropertiesList\':\n        $modx->event->output($corePath.\'elements/tv/properties/\');\n        break;\n    \n    case \'OnDocFormPrerender\':\n        $assetsUrl = $modx->getOption(\'colorpicker.assets_url\',null,$modx->getOption(\'assets_url\').\'components/colorpicker/\'); \n        $modx->regClientStartupHTMLBlock(\'<script type=\"text/javascript\">\n        Ext.onReady(function() {\n            \n        });\n        </script>\');\n        $modx->regClientStartupScript($assetsUrl.\'sources/ColorPicker.js\');\n        $modx->regClientStartupScript($assetsUrl.\'sources/ColorMenu.js\');\n        $modx->regClientStartupScript($assetsUrl.\'sources/ColorPickerField.js\');		\n        $modx->regClientCSS($assetsUrl.\'resources/css/colorpicker.css\');\n        break;\n     */\n}\nreturn;', 0, 'a:0:{}', 0, '', 0, ''),
(4, 0, 0, 'MIGXquip', '', 0, 5, 0, '$quipCorePath = $modx->getOption(\'quip.core_path\', null, $modx->getOption(\'core_path\') . \'components/quip/\');\n//$assetsUrl = $modx->getOption(\'migx.assets_url\', null, $modx->getOption(\'assets_url\') . \'components/migx/\');\nswitch ($modx->event->name)\n{\n\n    case \'OnDocFormPrerender\':\n\n        \n        require_once $quipCorePath . \'model/quip/quip.class.php\';\n        $modx->quip = new Quip($modx);\n\n        $modx->lexicon->load(\'quip:default\');\n        $quipconfig = $modx->toJson($modx->quip->config);\n        \n        $js = \"\n        Quip.config = Ext.util.JSON.decode(\'{$quipconfig}\');\n        console.log(Quip);\";\n\n        //$modx->controller->addCss($assetsUrl . \'css/mgr.css\');\n        $modx->controller->addJavascript($modx->quip->config[\'jsUrl\'].\'quip.js\');\n        $modx->controller->addHtml(\'<script type=\"text/javascript\">\' . $js . \'</script>\');\n        break;\n\n}\nreturn;', 0, 'a:0:{}', 1, '', 0, ''),
(5, 0, 0, 'migxResizeOnUpload', '', 0, 5, 0, '/**\n * migxResizeOnUpload Plugin\n *\n * Events: OnFileManagerUpload\n * Author: Bruno Perner <b.perner@gmx.de>\n * Modified to read multiple configs from mediasource-property\n * \n * First Author: Vasiliy Naumkin <bezumkin@yandex.ru>\n * Required: PhpThumbOf snippet for resizing images\n * \n * Example: mediasource - property \'resizeConfig\':\n * [{\"alias\":\"origin\",\"w\":\"500\",\"h\":\"500\",\"far\":1},{\"alias\":\"thumb\",\"w\":\"150\",\"h\":\"150\",\"far\":1}]\n */\n\nif ($modx->event->name != \'OnFileManagerUpload\') {\n    return;\n}\n\n\n$file = $modx->event->params[\'files\'][\'file\'];\n$directory = $modx->event->params[\'directory\'];\n\nif ($file[\'error\'] != 0) {\n    return;\n}\n\n$name = $file[\'name\'];\n//$extensions = explode(\',\', $modx->getOption(\'upload_images\'));\n\n$source = $modx->event->params[\'source\'];\n\nif ($source instanceof modMediaSource) {\n    //$dirTree = $modx->getOption(\'dirtree\', $_REQUEST, \'\');\n    //$modx->setPlaceholder(\'docid\', $resource_id);\n    $source->initialize();\n    $basePath = str_replace(\'/./\', \'/\', $source->getBasePath());\n    //$cachepath = $cachepath . $dirTree;\n    $baseUrl = $modx->getOption(\'site_url\') . $source->getBaseUrl();\n    //$baseUrl = $baseUrl . $dirTree;\n    $sourceProperties = $source->getPropertyList();\n\n    //echo \'<pre>\' . print_r($sourceProperties, 1) . \'</pre>\';\n    //$allowedExtensions = $modx->getOption(\'allowedFileTypes\', $sourceProperties, \'\');\n    //$allowedExtensions = empty($allowedExtensions) ? \'jpg,jpeg,png,gif\' : $allowedExtensions;\n    //$maxFilesizeMb = $modx->getOption(\'maxFilesizeMb\', $sourceProperties, \'8\');\n    //$maxFiles = $modx->getOption(\'maxFiles\', $sourceProperties, \'0\');\n    //$thumbX = $modx->getOption(\'thumbX\', $sourceProperties, \'100\');\n    //$thumbY = $modx->getOption(\'thumbY\', $sourceProperties, \'100\');\n    $resizeConfigs = $modx->getOption(\'resizeConfigs\', $sourceProperties, \'\');\n    $resizeConfigs = $modx->fromJson($resizeConfigs);\n    $thumbscontainer = $modx->getOption(\'thumbscontainer\', $sourceProperties, \'thumbs/\');\n    $imageExtensions = $modx->getOption(\'imageExtensions\', $sourceProperties, \'jpg,jpeg,png,gif,JPG\');\n    $imageExtensions = explode(\',\', $imageExtensions);\n    //$uniqueFilenames = $modx->getOption(\'uniqueFilenames\', $sourceProperties, false);\n    //$onImageUpload = $modx->getOption(\'onImageUpload\', $sourceProperties, \'\');\n    //$onImageRemove = $modx->getOption(\'onImageRemove\', $sourceProperties, \'\');\n    $cleanalias = $modx->getOption(\'cleanFilename\', $sourceProperties, false);\n\n}\n\nif (is_array($resizeConfigs) && count($resizeConfigs) > 0) {\n    foreach ($resizeConfigs as $rc) {\n        if (isset($rc[\'alias\'])) {\n            $filePath = $basePath . $directory;\n            $filePath = str_replace(\'//\',\'/\',$filePath);\n            if ($rc[\'alias\'] == \'origin\') {\n                $thumbPath = $filePath;\n            } else {\n                $thumbPath = $filePath . $rc[\'alias\'] . \'/\';\n                $permissions = octdec(\'0\' . (int)($modx->getOption(\'new_folder_permissions\', null, \'755\', true)));\n                if (!@mkdir($thumbPath, $permissions, true)) {\n                    $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: could not create directory %s).\', $thumbPath));\n                } else {\n                    chmod($thumbPath, $permissions);\n                }\n\n            }\n\n\n            $filename = $filePath . $name;\n            $thumbname = $thumbPath . $name;\n            $ext = substr(strrchr($name, \'.\'), 1);\n            if (in_array($ext, $imageExtensions)) {\n                $sizes = getimagesize($filename);\n                echo $sizes[0]; \n                //$format = substr($sizes[\'mime\'], 6);\n                if ($sizes[0] > $rc[\'w\'] || $sizes[1] > $rc[\'h\']) {\n                    if ($sizes[0] < $rc[\'w\']) {\n                        $rc[\'w\'] = $sizes[0];\n                    }\n                    if ($sizes[1] < $rc[\'h\']) {\n                        $rc[\'h\'] = $sizes[1];\n                    }\n                    $type = $sizes[0] > $sizes[1] ? \'landscape\' : \'portrait\';\n                    if (isset($rc[\'far\']) && $rc[\'far\'] == \'1\' && isset($rc[\'w\']) && isset($rc[\'h\'])) {\n                        if ($type = \'landscape\') {\n                            unset($rc[\'h\']);\n                        }else {\n                            unset($rc[\'w\']);\n                        }\n                    }\n\n                    $options = \'\';\n                    foreach ($rc as $k => $v) {\n                        if ($k != \'alias\') {\n                            $options .= \'&\' . $k . \'=\' . $v;\n                        }\n                    }\n                    $resized = $modx->runSnippet(\'phpthumbof\', array(\'input\' => $filePath . $name, \'options\' => $options));\n                    rename(MODX_BASE_PATH . substr($resized, 1), $thumbname);\n                }\n            }\n\n\n        }\n    }\n}', 0, 'a:0:{}', 0, '', 0, ''),
(6, 1, 0, 'pdoTools', '', 0, 8, 0, '/** @var modX $modx */\nswitch ($modx->event->name) {\n\n    case \'OnMODXInit\':\n        $fqn = $modx->getOption(\'pdoTools.class\', null, \'pdotools.pdotools\', true);\n        $path = $modx->getOption(\'pdotools_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\n        $modx->loadClass($fqn, $path, false, true);\n\n        $fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n        $path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\n        $modx->loadClass($fqn, $path, false, true);\n        break;\n\n    case \'OnSiteRefresh\':\n        /** @var pdoTools $pdoTools */\n        if ($pdoTools = $modx->getService(\'pdoTools\')) {\n            if ($pdoTools->clearFileCache()) {\n                $modx->log(modX::LOG_LEVEL_INFO, $modx->lexicon(\'refresh_default\') . \': pdoTools\');\n            }\n        }\n        break;\n\n    case \'OnWebPagePrerender\':\n        $parser = $modx->getParser();\n        if ($parser instanceof pdoParser) {\n            foreach ($parser->pdoTools->ignores as $key => $val) {\n                $modx->resource->_output = str_replace($key, $val, $modx->resource->_output);\n            }\n        }\n        break;\n}', 0, NULL, 0, '', 0, 'core/components/pdotools/elements/plugins/plugin.pdotools.php'),
(7, 0, 0, 'jwtOnAuthorization', 'Not used. Reserved for further development.', 0, 9, 0, '/**\n * jwtOnAuthorization plugin for modJWT extra\n *\n * NOT USED. Reserved for further development.\n *\n * @package modjwt\n */', 0, 'a:0:{}', 1, '', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_site_plugin_events`
--

CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT '0',
  `event` varchar(191) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT '0',
  `propertyset` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_site_plugin_events`
--

INSERT INTO `modx_site_plugin_events` (`pluginid`, `event`, `priority`, `propertyset`) VALUES
(1, 'OnChunkFormPrerender', 0, 0),
(1, 'OnDocFormPrerender', 0, 0),
(1, 'OnFileCreateFormPrerender', 0, 0),
(1, 'OnFileEditFormPrerender', 0, 0),
(1, 'OnManagerPageBeforeRender', 0, 0),
(1, 'OnPluginFormPrerender', 0, 0),
(1, 'OnRichTextEditorRegister', 0, 0),
(1, 'OnSnipFormPrerender', 0, 0),
(1, 'OnTempFormPrerender', 0, 0),
(2, 'OnManagerPageBeforeRender', 0, 0),
(2, 'OnRichTextBrowserInit', 0, 0),
(2, 'OnRichTextEditorInit', 0, 0),
(2, 'OnRichTextEditorRegister', 0, 0),
(3, 'OnDocFormPrerender', 0, 0),
(3, 'OnTVInputPropertiesList', 0, 0),
(3, 'OnTVInputRenderList', 0, 0),
(4, 'OnDocFormPrerender', 0, 0),
(5, 'OnFileManagerUpload', 0, 0),
(6, 'OnMODXInit', -100, 0),
(6, 'OnSiteRefresh', 0, 0),
(6, 'OnWebPagePrerender', -100, 0),
(7, 'OnJWTAuthenticated', 0, 0),
(7, 'OnJWTBeforeFire', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_site_snippets`
--

CREATE TABLE `modx_site_snippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_site_snippets`
--

INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(1, 0, 0, 'getImageList', '', 0, 5, 0, '/**\n * getImageList\n *\n * Copyright 2009-2014 by Bruno Perner <b.perner@gmx.de>\n *\n * getImageList is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * getImageList is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * getImageList; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * getImageList\n *\n * display Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string for MODx Revolution \n *\n * @version 1.4\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2009-2014\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n/*example: <ul>[[!getImageList? &tvname=`myTV`&tpl=`@CODE:<li>[[+idx]]<img src=\"[[+imageURL]]\"/><p>[[+imageAlt]]</p></li>`]]</ul>*/\n/* get default properties */\n\n$allow_request = (bool)$modx->getOption(\'allowRequest\', $scriptProperties, false);\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n$inherit_children_tvname = $modx->getOption(\'inherit_children_tvname\', $scriptProperties, \'\');\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'\');\n$wrapperTpl = $modx->getOption(\'wrapperTpl\', $scriptProperties, \'\');\n$emptyTpl = $modx->getOption(\'emptyTpl\', $scriptProperties, \'\'); \n$limit = $modx->getOption(\'limit\', $scriptProperties, \'0\');\n$offset = $modx->getOption(\'offset\', $scriptProperties, 0);\n$totalVar = $modx->getOption(\'totalVar\', $scriptProperties, \'total\');\n$randomize = $modx->getOption(\'randomize\', $scriptProperties, false);\n$preselectLimit = $modx->getOption(\'preselectLimit\', $scriptProperties, 0); // when random preselect important images\n$where = $modx->getOption(\'where\', $scriptProperties, \'\');\n$where = !empty($where) ? $modx->fromJSON($where) : array();\n$sort = $modx->getOption(\'sort\', $scriptProperties, \'\');\n$sort = !empty($sort) ? $modx->fromJSON($sort) : array();\n$toSeparatePlaceholders = $modx->getOption(\'toSeparatePlaceholders\', $scriptProperties, false);\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, false);\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \'\');\n$splitSeparator = $modx->getOption(\'splitSeparator\', $scriptProperties, \'\');\n$placeholdersKeyField = $modx->getOption(\'placeholdersKeyField\', $scriptProperties, \'MIGX_id\');\n$toJsonPlaceholder = $modx->getOption(\'toJsonPlaceholder\', $scriptProperties, false);\n$jsonVarKey = $modx->getOption(\'jsonVarKey\', $scriptProperties, \'migx_outputvalue\');\n$outputvalue = $modx->getOption(\'value\', $scriptProperties, \'\');\nif ($allow_request) {\n    $outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n}\n$docidVarKey = $modx->getOption(\'docidVarKey\', $scriptProperties, \'migx_docid\');\n$docid = $modx->getOption(\'docid\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : 1));\nif ($allow_request) {\n    $docid = isset($_REQUEST[$docidVarKey]) ? $_REQUEST[$docidVarKey] : $docid;\n}\n$processTVs = $modx->getOption(\'processTVs\', $scriptProperties, \'1\');\n$reverse = $modx->getOption(\'reverse\', $scriptProperties, \'0\');\n$sumFields = $modx->getOption(\'sumFields\', $scriptProperties, \'\');\n$sumPrefix = $modx->getOption(\'sumPrefix\', $scriptProperties, \'summary_\');\n$addfields = $modx->getOption(\'addfields\', $scriptProperties, \'\');\n$addfields = !empty($addfields) ? explode(\',\', $addfields) : null;\n//split json into parts\n$splits = $modx->fromJson($modx->getOption(\'splits\', $scriptProperties, 0));\n$splitTpl = $modx->getOption(\'splitTpl\', $scriptProperties, \'\');\n$splitSeparator = $modx->getOption(\'splitSeparator\', $scriptProperties, \'\');\n$inheritFrom = $modx->getOption(\'inheritFrom\', $scriptProperties, \'\'); //commaseparated list of resource-ids or/and the keyword \'parents\' where to inherit from\n$inheritFrom = !empty($inheritFrom) ? explode(\',\', $inheritFrom) : \'\';\n\n$modx->setPlaceholder(\'docid\', $docid);\n\n$base_path = $modx->getOption(\'base_path\', null, MODX_BASE_PATH);\n$base_url = $modx->getOption(\'base_url\', null, MODX_BASE_URL);\n\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\nif (!($migx instanceof Migx))\n    return \'\';\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : \'web\';\n\nif (!empty($tvname)) {\n    if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname))) {\n\n        /*\n        *   get inputProperties\n        */\n\n\n        $properties = $tv->get(\'input_properties\');\n        $properties = isset($properties[\'formtabs\']) ? $properties : $tv->getProperties();\n\n        $migx->config[\'configs\'] = $modx->getOption(\'configs\', $properties, \'\');\n        if (!empty($migx->config[\'configs\'])) {\n            $migx->loadConfigs();\n            // get tabs from file or migx-config-table\n            $formtabs = $migx->getTabs();\n        }\n        if (empty($formtabs) && isset($properties[\'formtabs\'])) {\n            //try to get formtabs and its fields from properties\n            $formtabs = $modx->fromJSON($properties[\'formtabs\']);\n        }\n\n        if (!empty($properties[\'basePath\'])) {\n            if ($properties[\'autoResourceFolders\'] == \'true\') {\n                $scriptProperties[\'base_path\'] = $base_path . $properties[\'basePath\'] . $docid . \'/\';\n                $scriptProperties[\'base_url\'] = $base_url . $properties[\'basePath\'] . $docid . \'/\';\n            } else {\n                $scriptProperties[\'base_path\'] = $base_path . $properties[\'base_path\'];\n                $scriptProperties[\'base_url\'] = $base_url . $properties[\'basePath\'];\n            }\n        }\n        if ($jsonVarKey == \'migx_outputvalue\' && !empty($properties[\'jsonvarkey\'])) {\n            $jsonVarKey = $properties[\'jsonvarkey\'];\n            $outputvalue = $allow_request && isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n        }\n\n        if (empty($outputvalue)) {\n            $outputvalue = $tv->renderOutput($docid);\n            if (empty($outputvalue) && !empty($inheritFrom)) {\n                foreach ($inheritFrom as $from) {\n                    if ($from == \'parents\') {\n                        if (!empty($inherit_children_tvname)){\n                            //try to get items from optional MIGX-TV for children\n                            if ($inh_tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inherit_children_tvname))) {\n                                $outputvalue = $inh_tv->processInheritBinding(\'\', $docid);    \n                            }\n                        }\n                        $outputvalue = empty($outputvalue) ? $tv->processInheritBinding(\'\', $docid) : $outputvalue;\n                    } else {\n                        $outputvalue = $tv->renderOutput($from);\n                    }\n                    if (!empty($outputvalue)) {\n                        break;\n                    }\n                }\n            }\n        }\n\n\n        /*\n        *   get inputTvs \n        */\n        $inputTvs = array();\n        if (is_array($formtabs)) {\n\n            //multiple different Forms\n            // Note: use same field-names and inputTVs in all forms\n            $inputTvs = $migx->extractInputTvs($formtabs);\n        }\n        if ($migx->source = $tv->getSource($migx->working_context, false)) {\n            $migx->source->initialize();\n        }\n\n    }\n\n\n}\n\nif (empty($outputvalue)) {\n    $modx->setPlaceholder($totalVar, 0);\n    return \'\';\n}\n\n//echo $outputvalue.\'<br/><br/>\';\n\n$items = $modx->fromJSON($outputvalue);\n\n// where filter\nif (is_array($where) && count($where) > 0) {\n    $items = $migx->filterItems($where, $items);\n}\n$modx->setPlaceholder($totalVar, count($items));\n\nif (!empty($reverse)) {\n    $items = array_reverse($items);\n}\n\n// sort items\nif (is_array($sort) && count($sort) > 0) {\n    $items = $migx->sortDbResult($items, $sort);\n}\n\n$summaries = array();\n$output = \'\';\n$items = $offset > 0 ? array_slice($items, $offset) : $items;\n$count = count($items);\n\nif ($count > 0) {\n    $limit = $limit == 0 || $limit > $count ? $count : $limit;\n    $preselectLimit = $preselectLimit > $count ? $count : $preselectLimit;\n    //preselect important items\n    $preitems = array();\n    if ($randomize && $preselectLimit > 0) {\n        for ($i = 0; $i < $preselectLimit; $i++) {\n            $preitems[] = $items[$i];\n            unset($items[$i]);\n        }\n        $limit = $limit - count($preitems);\n    }\n\n    //shuffle items\n    if ($randomize) {\n        shuffle($items);\n    }\n\n    //limit items\n    $count = count($items);\n    $tempitems = array();\n\n    for ($i = 0; $i < $limit; $i++) {\n        if ($i >= $count) {\n            break;\n        }\n        $tempitems[] = $items[$i];\n    }\n    $items = $tempitems;\n\n    //add preselected items and schuffle again\n    if ($randomize && $preselectLimit > 0) {\n        $items = array_merge($preitems, $items);\n        shuffle($items);\n    }\n\n    $properties = array();\n    foreach ($scriptProperties as $property => $value) {\n        $properties[\'property.\' . $property] = $value;\n    }\n\n    $idx = 0;\n    $output = array();\n    $template = array();\n    $count = count($items);\n\n    foreach ($items as $key => $item) {\n        $formname = isset($item[\'MIGX_formname\']) ? $item[\'MIGX_formname\'] . \'_\' : \'\';\n        $fields = array();\n        foreach ($item as $field => $value) {\n            if (is_array($value)) {\n                if (is_array($value[0])) {\n                    //nested array - convert to json\n                    $value = $modx->toJson($value);\n                } else {\n                    $value = implode(\'||\', $value); //handle arrays (checkboxes, multiselects)\n                }\n            }\n\n\n            $inputTVkey = $formname . $field;\n\n            if ($processTVs && isset($inputTvs[$inputTVkey])) {\n                if (isset($inputTvs[$inputTVkey][\'inputTV\']) && $tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inputTvs[$inputTVkey][\'inputTV\']))) {\n\n                } else {\n                    $tv = $modx->newObject(\'modTemplateVar\');\n                    $tv->set(\'type\', $inputTvs[$inputTVkey][\'inputTVtype\']);\n                }\n                $inputTV = $inputTvs[$inputTVkey];\n\n                $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\', null, \'image,file\');\n                //don\'t manipulate any urls here\n                $modx->setOption(\'manipulatable_url_tv_output_types\', \'\');\n                $tv->set(\'default_text\', $value);\n\n                // $value = $tv->renderOutput($docid); breaks if the TV used in MIGX is also assigned to this Template,\n                // example tv: imageLogo is assigned to the template and imageLogo is assigned to the MIGX TV as a result\n                // only the value of the imageLogo is returned for the MIGX TV instance\n                // need to override default MODX method: $value = $tv->renderOutput($docid);\n                /* process any TV commands in value */\n                $tv_value = $tv->processBindings($value, $docid);\n                $params = $tv->get(\'output_properties\');\n                if (empty($params) || $params === null) {\n                    $params = [];\n                }\n                /* run prepareOutput to allow for custom overriding */\n                $tv_value = $tv->prepareOutput($tv_value, $docid);\n                /* find the render */\n                $outputRenderPaths = $tv->getRenderDirectories(\'OnTVOutputRenderList\',\'output\');\n                $value = $tv->getRender($params, $tv_value, $outputRenderPaths, \'output\', $docid, $tv->get(\'display\'));\n                // End override of $value = $tv->renderOutput($docid);\n				\n                //set option back\n                $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);\n                //now manipulate urls\n                if ($mediasource = $migx->getFieldSource($inputTV, $tv)) {\n                    $mTypes = explode(\',\', $mTypes);\n                    if (!empty($value) && in_array($tv->get(\'type\'), $mTypes)) {\n                        //$value = $mediasource->prepareOutputUrl($value);\n                        $value = str_replace(\'/./\', \'/\', $mediasource->prepareOutputUrl($value));\n                    }\n                }\n\n            }\n            $fields[$field] = $value;\n\n        }\n\n        if (!empty($addfields)) {\n            foreach ($addfields as $addfield) {\n                $addfield = explode(\':\', $addfield);\n                $addname = $addfield[0];\n                $adddefault = isset($addfield[1]) ? $addfield[1] : \'\';\n                $fields[$addname] = $adddefault;\n            }\n        }\n\n        if (!empty($sumFields)) {\n            $sumFields = is_array($sumFields) ? $sumFields : explode(\',\', $sumFields);\n            foreach ($sumFields as $sumField) {\n                if (isset($fields[$sumField])) {\n                    $summaries[$sumPrefix . $sumField] = $summaries[$sumPrefix . $sumField] + $fields[$sumField];\n                    $fields[$sumPrefix . $sumField] = $summaries[$sumPrefix . $sumField];\n                }\n            }\n        }\n\n\n        if ($toJsonPlaceholder) {\n            $output[] = $fields;\n        } else {\n            $fields[\'_alt\'] = $idx % 2;\n            $idx++;\n            $fields[\'_first\'] = $idx == 1 ? true : \'\';\n            $fields[\'_last\'] = $idx == $limit ? true : \'\';\n            $fields[\'idx\'] = $idx;\n            $rowtpl = \'\';\n            //get changing tpls from field\n            if (substr($tpl, 0, 7) == \"@FIELD:\") {\n                $tplField = substr($tpl, 7);\n                $rowtpl = $fields[$tplField];\n            }\n\n            if ($fields[\'_first\'] && !empty($tplFirst)) {\n                $rowtpl = $tplFirst;\n            }\n            if ($fields[\'_last\'] && empty($rowtpl) && !empty($tplLast)) {\n                $rowtpl = $tplLast;\n            }\n            $tplidx = \'tpl_\' . $idx;\n            if (empty($rowtpl) && !empty($$tplidx)) {\n                $rowtpl = $$tplidx;\n            }\n            if ($idx > 1 && empty($rowtpl)) {\n                $divisors = $migx->getDivisors($idx);\n                if (!empty($divisors)) {\n                    foreach ($divisors as $divisor) {\n                        $tplnth = \'tpl_n\' . $divisor;\n                        if (!empty($$tplnth)) {\n                            $rowtpl = $$tplnth;\n                            if (!empty($rowtpl)) {\n                                break;\n                            }\n                        }\n                    }\n                }\n            }\n\n            if ($count == 1 && isset($tpl_oneresult)) {\n                $rowtpl = $tpl_oneresult;\n            }\n\n            $fields = array_merge($fields, $properties);\n\n            if (!empty($rowtpl)) {\n                $template = $migx->getTemplate($tpl, $template);\n                $fields[\'_tpl\'] = $template[$tpl];\n            } else {\n                $rowtpl = $tpl;\n\n            }\n            $template = $migx->getTemplate($rowtpl, $template);\n\n\n            if ($template[$rowtpl]) {\n                $chunk = $modx->newObject(\'modChunk\');\n                $chunk->setCacheable(false);\n                $chunk->setContent($template[$rowtpl]);\n\n\n                if (!empty($placeholdersKeyField) && isset($fields[$placeholdersKeyField])) {\n                    $output[$fields[$placeholdersKeyField]] = $chunk->process($fields);\n                } else {\n                    $output[] = $chunk->process($fields);\n                }\n            } else {\n                if (!empty($placeholdersKeyField)) {\n                    $output[$fields[$placeholdersKeyField]] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n                } else {\n                    $output[] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n                }\n            }\n        }\n\n\n    }\n}\n\nif (count($summaries) > 0) {\n    $modx->toPlaceholders($summaries);\n}\n\n\nif ($toJsonPlaceholder) {\n    $modx->setPlaceholder($toJsonPlaceholder, $modx->toJson($output));\n    return \'\';\n}\n\nif (!empty($toSeparatePlaceholders)) {\n    $modx->toPlaceholders($output, $toSeparatePlaceholders);\n    return \'\';\n}\n/*\nif (!empty($outerTpl))\n$o = parseTpl($outerTpl, array(\'output\'=>implode($outputSeparator, $output)));\nelse \n*/\n\nif ($count > 0 && $splits > 0) {\n    $size = ceil($count / $splits);\n    $chunks = array_chunk($output, $size);\n    $output = array();\n    foreach ($chunks as $chunk) {\n        $o = implode($outputSeparator, $chunk);\n        $output[] = $modx->getChunk($splitTpl, array(\'output\' => $o));\n    }\n    $outputSeparator = $splitSeparator;\n}\n\nif (is_array($output)) {\n    $o = implode($outputSeparator, $output);\n} else {\n    $o = $output;\n}\n\nif (!empty($o) && !empty($wrapperTpl)) {\n    $template = $migx->getTemplate($wrapperTpl);\n    if ($template[$wrapperTpl]) {\n        $chunk = $modx->newObject(\'modChunk\');\n        $chunk->setCacheable(false);\n        $chunk->setContent($template[$wrapperTpl]);\n        $properties[\'output\'] = $o;\n        $o = $chunk->process($properties);\n    }\n}\n\nif (empty($o) && !empty($emptyTpl)) {\n    $template = $migx->getTemplate($emptyTpl);\n    if ($template[$emptyTpl]) {\n        $chunk = $modx->newObject(\'modChunk\');\n        $chunk->setCacheable(false);\n        $chunk->setContent($template[$emptyTpl]);\n        $o = $chunk->process($properties);\n    }\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $o);\n    return \'\';\n}\n\nreturn $o;', 0, 'a:0:{}', '', 0, ''),
(2, 0, 0, 'migxGetRelations', '', 0, 5, 0, '$id = $modx->getOption(\'id\', $scriptProperties, $modx->resource->get(\'id\'));\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, \'\');\n$element = $modx->getOption(\'element\', $scriptProperties, \'getResources\');\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \',\');\n$sourceWhere = $modx->getOption(\'sourceWhere\', $scriptProperties, \'\');\n$ignoreRelationIfEmpty = $modx->getOption(\'ignoreRelationIfEmpty\', $scriptProperties, false);\n$inheritFromParents = $modx->getOption(\'inheritFromParents\', $scriptProperties, false);\n$parentIDs = $inheritFromParents ? array_merge(array($id), $modx->getParentIds($id)) : array($id);\n\n$packageName = \'resourcerelations\';\n\n$packagepath = $modx->getOption(\'core_path\') . \'components/\' . $packageName . \'/\';\n$modelpath = $packagepath . \'model/\';\n\n$modx->addPackage($packageName, $modelpath, $prefix);\n$classname = \'rrResourceRelation\';\n$output = \'\';\n\nforeach ($parentIDs as $id) {\n    if (!empty($id)) {\n        $output = \'\';\n                \n        $c = $modx->newQuery($classname, array(\'target_id\' => $id, \'published\' => \'1\'));\n        $c->select($modx->getSelectColumns($classname, $classname));\n\n        if (!empty($sourceWhere)) {\n            $sourceWhere_ar = $modx->fromJson($sourceWhere);\n            if (is_array($sourceWhere_ar)) {\n                $where = array();\n                foreach ($sourceWhere_ar as $key => $value) {\n                    $where[\'Source.\' . $key] = $value;\n                }\n                $joinclass = \'modResource\';\n                $joinalias = \'Source\';\n                $selectfields = \'id\';\n                $selectfields = !empty($selectfields) ? explode(\',\', $selectfields) : null;\n                $c->leftjoin($joinclass, $joinalias);\n                $c->select($modx->getSelectColumns($joinclass, $joinalias, $joinalias . \'_\', $selectfields));\n                $c->where($where);\n            }\n        }\n\n        //$c->prepare(); echo $c->toSql();\n        if ($c->prepare() && $c->stmt->execute()) {\n            $collection = $c->stmt->fetchAll(PDO::FETCH_ASSOC);\n        }\n        \n        foreach ($collection as $row) {\n            $ids[] = $row[\'source_id\'];\n        }\n        $output = implode($outputSeparator, $ids);\n    }\n    if (!empty($output)){\n        break;\n    }\n}\n\n\nif (!empty($element)) {\n    if (empty($output) && $ignoreRelationIfEmpty) {\n        return $modx->runSnippet($element, $scriptProperties);\n    } else {\n        $scriptProperties[\'resources\'] = $output;\n        $scriptProperties[\'parents\'] = \'9999999\';\n        return $modx->runSnippet($element, $scriptProperties);\n    }\n\n\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n    return \'\';\n}\n\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(3, 0, 0, 'migx', '', 0, 5, 0, '$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'\');\n$limit = $modx->getOption(\'limit\', $scriptProperties, \'0\');\n$offset = $modx->getOption(\'offset\', $scriptProperties, 0);\n$totalVar = $modx->getOption(\'totalVar\', $scriptProperties, \'total\');\n$randomize = $modx->getOption(\'randomize\', $scriptProperties, false);\n$preselectLimit = $modx->getOption(\'preselectLimit\', $scriptProperties, 0); // when random preselect important images\n$where = $modx->getOption(\'where\', $scriptProperties, \'\');\n$where = !empty($where) ? $modx->fromJSON($where) : array();\n$sortConfig = $modx->getOption(\'sortConfig\', $scriptProperties, \'\');\n$sortConfig = !empty($sortConfig) ? $modx->fromJSON($sortConfig) : array();\n$configs = $modx->getOption(\'configs\', $scriptProperties, \'\');\n$configs = !empty($configs) ? explode(\',\',$configs):array();\n$toSeparatePlaceholders = $modx->getOption(\'toSeparatePlaceholders\', $scriptProperties, false);\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, false);\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \'\');\n//$placeholdersKeyField = $modx->getOption(\'placeholdersKeyField\', $scriptProperties, \'MIGX_id\');\n$placeholdersKeyField = $modx->getOption(\'placeholdersKeyField\', $scriptProperties, \'id\');\n$toJsonPlaceholder = $modx->getOption(\'toJsonPlaceholder\', $scriptProperties, false);\n$jsonVarKey = $modx->getOption(\'jsonVarKey\', $scriptProperties, \'migx_outputvalue\');\n$outputvalue = $modx->getOption(\'value\', $scriptProperties, \'\');\n$outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n$docidVarKey = $modx->getOption(\'docidVarKey\', $scriptProperties, \'migx_docid\');\n$docid = $modx->getOption(\'docid\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : 1));\n$docid = isset($_REQUEST[$docidVarKey]) ? $_REQUEST[$docidVarKey] : $docid;\n$processTVs = $modx->getOption(\'processTVs\', $scriptProperties, \'1\');\n\n$base_path = $modx->getOption(\'base_path\', null, MODX_BASE_PATH);\n$base_url = $modx->getOption(\'base_url\', null, MODX_BASE_URL);\n\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\nif (!($migx instanceof Migx))\n    return \'\';\n//$modx->migx = &$migx;\n$defaultcontext = \'web\';\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\n\nif (!empty($tvname))\n{\n    if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname)))\n    {\n\n        /*\n        *   get inputProperties\n        */\n\n\n        $properties = $tv->get(\'input_properties\');\n        $properties = isset($properties[\'configs\']) ? $properties : $tv->getProperties();\n        $cfgs = $modx->getOption(\'configs\',$properties,\'\');\n        if (!empty($cfgs)){\n            $cfgs = explode(\',\',$cfgs);\n            $configs = array_merge($configs,$cfgs);\n           \n        }\n        \n    }\n}\n\n\n\n//$migx->config[\'configs\'] = implode(\',\',$configs);\n$migx->loadConfigs(false,true,array(\'configs\'=>implode(\',\',$configs)));\n$migx->customconfigs = array_merge($migx->customconfigs,$scriptProperties);\n\n\n\n// get tabs from file or migx-config-table\n$formtabs = $migx->getTabs();\nif (empty($formtabs))\n{\n    //try to get formtabs and its fields from properties\n    $formtabs = $modx->fromJSON($properties[\'formtabs\']);\n}\n\nif ($jsonVarKey == \'migx_outputvalue\' && !empty($properties[\'jsonvarkey\']))\n{\n    $jsonVarKey = $properties[\'jsonvarkey\'];\n    $outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n}\n\n$outputvalue = $tv && empty($outputvalue) ? $tv->renderOutput($docid) : $outputvalue;\n/*\n*   get inputTvs \n*/\n$inputTvs = array();\nif (is_array($formtabs))\n{\n\n    //multiple different Forms\n    // Note: use same field-names and inputTVs in all forms\n    $inputTvs = $migx->extractInputTvs($formtabs);\n}\n\nif ($tv)\n{\n    $migx->source = $tv->getSource($migx->working_context, false);\n}\n\n//$task = $modx->migx->getTask();\n$filename = \'getlist.php\';\n$processorspath = $migx->config[\'processorsPath\'] . \'mgr/\';\n$filenames = array();\n$scriptProperties[\'start\'] = $modx->getOption(\'offset\', $scriptProperties, 0);\nif ($processor_file = $migx->findProcessor($processorspath, $filename, $filenames))\n{\n    include ($processor_file);\n    //todo: add getlist-processor for default-MIGX-TV\n}\n\n$items = isset($rows) && is_array($rows) ? $rows : array();\n$modx->setPlaceholder($totalVar, isset($count) ? $count : 0);\n\n$properties = array();\nforeach ($scriptProperties as $property => $value)\n{\n    $properties[\'property.\' . $property] = $value;\n}\n\n$idx = 0;\n$output = array();\nforeach ($items as $key => $item)\n{\n\n    $fields = array();\n    foreach ($item as $field => $value)\n    {\n        $value = is_array($value) ? implode(\'||\', $value) : $value; //handle arrays (checkboxes, multiselects)\n        if ($processTVs && isset($inputTvs[$field]))\n        {\n            if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inputTvs[$field][\'inputTV\'])))\n            {\n\n            } else\n            {\n                $tv = $modx->newObject(\'modTemplateVar\');\n                $tv->set(\'type\', $inputTvs[$field][\'inputTVtype\']);\n            }\n            $inputTV = $inputTvs[$field];\n\n            $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\', null, \'image,file\');\n            //don\'t manipulate any urls here\n            $modx->setOption(\'manipulatable_url_tv_output_types\', \'\');\n            $tv->set(\'default_text\', $value);\n            $value = $tv->renderOutput($docid);\n            //set option back\n            $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);\n            //now manipulate urls\n            if ($mediasource = $migx->getFieldSource($inputTV, $tv))\n            {\n                $mTypes = explode(\',\', $mTypes);\n                if (!empty($value) && in_array($tv->get(\'type\'), $mTypes))\n                {\n                    //$value = $mediasource->prepareOutputUrl($value);\n                    $value = str_replace(\'/./\', \'/\', $mediasource->prepareOutputUrl($value));\n                }\n            }\n\n        }\n        $fields[$field] = $value;\n\n    }\n    if ($toJsonPlaceholder)\n    {\n        $output[] = $fields;\n    } else\n    {\n        $fields[\'_alt\'] = $idx % 2;\n        $idx++;\n        $fields[\'_first\'] = $idx == 1 ? true : \'\';\n        $fields[\'_last\'] = $idx == $limit ? true : \'\';\n        $fields[\'idx\'] = $idx;\n        $rowtpl = $tpl;\n        //get changing tpls from field\n        if (substr($tpl, 0, 7) == \"@FIELD:\")\n        {\n            $tplField = substr($tpl, 7);\n            $rowtpl = $fields[$tplField];\n        }\n\n        if (!isset($template[$rowtpl]))\n        {\n            if (substr($rowtpl, 0, 6) == \"@FILE:\")\n            {\n                $template[$rowtpl] = file_get_contents($modx->config[\'base_path\'] . substr($rowtpl, 6));\n            } elseif (substr($rowtpl, 0, 6) == \"@CODE:\")\n            {\n                $template[$rowtpl] = substr($tpl, 6);\n            } elseif ($chunk = $modx->getObject(\'modChunk\', array(\'name\' => $rowtpl), true))\n            {\n                $template[$rowtpl] = $chunk->getContent();\n            } else\n            {\n                $template[$rowtpl] = false;\n            }\n        }\n\n        $fields = array_merge($fields, $properties);\n\n        if ($template[$rowtpl])\n        {\n            $chunk = $modx->newObject(\'modChunk\');\n            $chunk->setCacheable(false);\n            $chunk->setContent($template[$rowtpl]);\n            if (!empty($placeholdersKeyField) && isset($fields[$placeholdersKeyField]))\n            {\n                $output[$fields[$placeholdersKeyField]] = $chunk->process($fields);\n            } else\n            {\n                $output[] = $chunk->process($fields);\n            }\n        } else\n        {\n            if (!empty($placeholdersKeyField))\n            {\n                $output[$fields[$placeholdersKeyField]] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n            } else\n            {\n                $output[] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n            }\n        }\n    }\n\n\n}\n\n\nif ($toJsonPlaceholder)\n{\n    $modx->setPlaceholder($toJsonPlaceholder, $modx->toJson($output));\n    return \'\';\n}\n\nif (!empty($toSeparatePlaceholders))\n{\n    $modx->toPlaceholders($output, $toSeparatePlaceholders);\n    return \'\';\n}\n/*\nif (!empty($outerTpl))\n$o = parseTpl($outerTpl, array(\'output\'=>implode($outputSeparator, $output)));\nelse \n*/\nif (is_array($output))\n{\n    $o = implode($outputSeparator, $output);\n} else\n{\n    $o = $output;\n}\n\nif (!empty($toPlaceholder))\n{\n    $modx->setPlaceholder($toPlaceholder, $o);\n    return \'\';\n}\n\nreturn $o;', 0, 'a:0:{}', '', 0, ''),
(4, 0, 0, 'migxLoopCollection', '', 0, 5, 0, '/*\ngetXpdoInstanceAndAddPackage - properties\n\n$prefix\n$usecustomprefix\n$packageName\n\n\nprepareQuery - properties:\n\n$limit\n$offset\n$totalVar\n$where\n$queries\n$sortConfig\n$groupby\n$joins\n$selectfields\n$classname\n$debug\n\nrenderOutput - properties:\n\n$tpl\n$wrapperTpl\n$toSeparatePlaceholders\n$toPlaceholder\n$outputSeparator\n$placeholdersKeyField\n$toJsonPlaceholder\n$jsonVarKey\n$addfields\n\n*/\n\n\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\nif (!($migx instanceof Migx))\n    return \'\';\n//$modx->migx = &$migx;\n\n$xpdo = $migx->getXpdoInstanceAndAddPackage($scriptProperties);\n\n$defaultcontext = \'web\';\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\n\n$c = $migx->prepareQuery($xpdo,$scriptProperties);\n$rows = $migx->getCollection($c);\n\n$output = $migx->renderOutput($rows,$scriptProperties);\n\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(5, 0, 0, 'migxResourceMediaPath', '', 0, 5, 0, '/**\n * @name migxResourceMediaPath\n * @description Dynamically calculates the upload path for a given resource\n * \n * This Snippet is meant to dynamically calculate your baseBath attribute\n * for custom Media Sources.  This is useful if you wish to shepard uploaded\n * images to a folder dedicated to a given resource.  E.g. page 123 would \n * have its own images that page 456 could not reference.\n *\n * USAGE:\n * [[migxResourceMediaPath? &pathTpl=`assets/businesses/{id}/`]]\n * [[migxResourceMediaPath? &pathTpl=`assets/test/{breadcrumb}`]]\n * [[migxResourceMediaPath? &pathTpl=`assets/test/{breadcrumb}` &breadcrumbdepth=`2`]]\n *\n * PARAMETERS\n * &pathTpl string formatting string specifying the file path. \n *		Relative to MODX base_path\n *		Available placeholders: {id}, {pagetitle}, {parent}\n * &docid (optional) integer page id\n * &createFolder (optional) boolean whether or not to create\n */\n$pathTpl = $modx->getOption(\'pathTpl\', $scriptProperties, \'\');\n$docid = $modx->getOption(\'docid\', $scriptProperties, \'\');\n$createfolder = $modx->getOption(\'createFolder\', $scriptProperties, false);\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n\n$path = \'\';\n$createpath = false;\n\nif (empty($pathTpl)) {\n    $modx->log(MODX_LOG_LEVEL_ERROR, \'[migxResourceMediaPath]: pathTpl not specified.\');\n    return;\n}\n\nif (empty($docid) && $modx->getPlaceholder(\'mediasource_docid\')) {\n    // placeholder was set by some script\n    // warning: the parser may not render placeholders, e.g. &docid=`[[*parent]]` may fail\n    $docid = $modx->getPlaceholder(\'mediasource_docid\');\n}\n\nif (empty($docid) && $modx->getPlaceholder(\'docid\')) {\n    // placeholder was set by some script\n    // warning: the parser may not render placeholders, e.g. &docid=`[[*parent]]` may fail\n    $docid = $modx->getPlaceholder(\'docid\');\n}\nif (empty($docid)) {\n\n    //on frontend\n    if (is_object($modx->resource)) {\n        $docid = $modx->resource->get(\'id\');\n    }\n    //on backend\n    else {\n        $createpath = $createfolder;\n        // We do this to read the &id param from an Ajax request\n        $parsedUrl = parse_url($_SERVER[\'HTTP_REFERER\']);\n        parse_str($parsedUrl[\'query\'], $parsedQuery);\n\n        if (isset($parsedQuery[\'amp;id\'])) {\n            $docid = (int)$parsedQuery[\'amp;id\'];\n        } elseif (isset($parsedQuery[\'id\'])) {\n            $docid = (int)$parsedQuery[\'id\'];\n        }\n    }\n}\n\nif (empty($docid)) {\n    $modx->log(MODX_LOG_LEVEL_ERROR, \'[migxResourceMediaPath]: docid could not be determined.\');\n    return;\n}\n\nif ($resource = $modx->getObject(\'modResource\', $docid)) {\n    $path = $pathTpl;\n    $ultimateParent = \'\';\n    if (strstr($path, \'{breadcrumb}\') || strstr($path, \'{ultimateparent}\')) {\n        $depth = $modx->getOption(\'breadcrumbdepth\', $scriptProperties, 10);\n        $ctx = $resource->get(\'context_key\');\n        $parentids = $modx->getParentIds($docid, $depth, array(\'context\' => $ctx));\n        $breadcrumbdepth = $modx->getOption(\'breadcrumbdepth\', $scriptProperties, count($parentids));\n        $breadcrumbdepth = $breadcrumbdepth > count($parentids) ? count($parentids) : $breadcrumbdepth;\n        if (count($parentids) > 1) {\n            $parentids = array_reverse($parentids);\n            $parentids[] = $docid;\n            $ultimateParent = $parentids[1];\n        } else {\n            $ultimateParent = $docid;\n            $parentids = array();\n            $parentids[] = $docid;\n        }\n    }\n\n    if (strstr($path, \'{breadcrumb}\')) {\n        $breadcrumbpath = \'\';\n        for ($i = 1; $i <= $breadcrumbdepth; $i++) {\n            $breadcrumbpath .= $parentids[$i] . \'/\';\n        }\n        $path = str_replace(\'{breadcrumb}\', $breadcrumbpath, $path);\n    }\n    \n    if (!empty($tvname)){\n        $path = str_replace(\'{tv_value}\', $resource->getTVValue($tvname), $path);    \n    }\n    $path = str_replace(\'{id}\', $docid, $path);\n    $path = str_replace(\'{pagetitle}\', $resource->get(\'pagetitle\'), $path);\n    $path = str_replace(\'{alias}\', $resource->get(\'alias\'), $path);\n    $path = str_replace(\'{parent}\', $resource->get(\'parent\'), $path);\n    $path = str_replace(\'{context_key}\', $resource->get(\'context_key\'), $path);\n    $path = str_replace(\'{ultimateparent}\', $ultimateParent, $path);\n    if ($template = $resource->getOne(\'Template\')) {\n        $path = str_replace(\'{templatename}\', $template->get(\'templatename\'), $path);\n    }\n    if ($user = $modx->user) {\n        $path = str_replace(\'{username}\', $modx->user->get(\'username\'), $path);\n        $path = str_replace(\'{userid}\', $modx->user->get(\'id\'), $path);\n    }\n\n    $fullpath = $modx->getOption(\'base_path\') . $path;\n\n    if ($createpath && !file_exists($fullpath)) {\n\n        $permissions = octdec(\'0\' . (int)($modx->getOption(\'new_folder_permissions\', null, \'755\', true)));\n        if (!@mkdir($fullpath, $permissions, true)) {\n            $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: could not create directory %s).\', $fullpath));\n        } else {\n            chmod($fullpath, $permissions);\n        }\n    }\n\n    return $path;\n} else {\n    $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: resource not found (page id %s).\', $docid));\n    return;\n}', 0, 'a:0:{}', '', 0, ''),
(6, 0, 0, 'migxImageUpload', '', 0, 5, 0, 'return include $modx->getOption(\'core_path\').\'components/migx/model/imageupload/imageupload.php\';', 0, 'a:0:{}', '', 0, ''),
(7, 0, 0, 'migxChunklistToJson', '', 0, 5, 0, '$category = $modx->getOption(\'category\', $scriptProperties, \'\');\n$format = $modx->getOption(\'format\', $scriptProperties, \'json\');\n\n$classname = \'modChunk\';\n$rows = array();\n$output = \'\';\n\n$c = $modx->newQuery($classname);\n$c->select($modx->getSelectColumns($classname, $classname, \'\', array(\'id\', \'name\')));\n$c->sortby(\'name\');\n\nif (!empty($category)) {\n    $c->where(array(\'category\' => $category));\n}\n//$c->prepare();echo $c->toSql();\nif ($collection = $modx->getCollection($classname, $c)) {\n    $i = 0;\n\n    switch ($format) {\n        case \'json\':\n            foreach ($collection as $object) {\n                $row[\'MIGX_id\'] = (string )$i;\n                $row[\'name\'] = $object->get(\'name\');\n                $row[\'selected\'] = \'0\';\n                $rows[] = $row;\n                $i++;\n            }\n            $output = $modx->toJson($rows);\n            break;\n        \n        case \'optionlist\':\n            foreach ($collection as $object) {\n                $rows[] = $object->get(\'name\');\n                $i++;\n            }\n            $output = implode(\'||\',$rows);      \n        break;\n            \n    }\n\n\n}\n\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(8, 0, 0, 'migxSwitchDetailChunk', '', 0, 5, 0, '//[[migxSwitchDetailChunk? &detailChunk=`detailChunk` &listingChunk=`listingChunk`]]\n\n\n$properties[\'migx_id\'] = $modx->getOption(\'migx_id\',$_GET,\'\');\n\nif (!empty($properties[\'migx_id\'])){\n    $output = $modx->getChunk($detailChunk,$properties);\n}\nelse{\n    $output = $modx->getChunk($listingChunk);\n}\n\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(9, 0, 0, 'getSwitchColumnCol', '', 0, 5, 0, '$scriptProperties = $_REQUEST;\n$col = \'\';\n// special actions, for example the showSelector - action\n$tempParams = $modx->getOption(\'tempParams\', $scriptProperties, \'\');\n\nif (!empty($tempParams)) {\n    $tempParams = $modx->fromJson($tempParams);\n    $col = $modx->getOption(\'col\', $tempParams, \'\');\n}\n\nreturn $col;', 0, 'a:0:{}', '', 0, '');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(10, 0, 0, 'getDayliMIGXrecord', '', 0, 5, 0, '/**\n * getDayliMIGXrecord\n *\n * Copyright 2009-2011 by Bruno Perner <b.perner@gmx.de>\n *\n * getDayliMIGXrecord is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * getDayliMIGXrecord is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * getDayliMIGXrecord; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * getDayliMIGXrecord\n *\n * display Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string for MODx Revolution \n *\n * @version 1.0\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2012\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n/*example: [[!getDayliMIGXrecord? &tvname=`myTV`&tpl=`@CODE:<img src=\"[[+image]]\"/>` &randomize=`1`]]*/\n/* get default properties */\n\n\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'\');\n$randomize = $modx->getOption(\'randomize\', $scriptProperties, false);\n$where = $modx->getOption(\'where\', $scriptProperties, \'\');\n$where = !empty($where) ? $modx->fromJSON($where) : array();\n$sort = $modx->getOption(\'sort\', $scriptProperties, \'\');\n$sort = !empty($sort) ? $modx->fromJSON($sort) : array();\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, false);\n$docid = $modx->getOption(\'docid\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : 1));\n$processTVs = $modx->getOption(\'processTVs\', $scriptProperties, \'1\');\n\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\nif (!($migx instanceof Migx))\n    return \'\';\n$migx->working_context = $modx->resource->get(\'context_key\');\n\nif (!empty($tvname)) {\n    if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname))) {\n\n        /*\n        *   get inputProperties\n        */\n\n\n        $properties = $tv->get(\'input_properties\');\n        $properties = isset($properties[\'formtabs\']) ? $properties : $tv->getProperties();\n\n        $migx->config[\'configs\'] = $properties[\'configs\'];\n        $migx->loadConfigs();\n        // get tabs from file or migx-config-table\n        $formtabs = $migx->getTabs();\n        if (empty($formtabs)) {\n            //try to get formtabs and its fields from properties\n            $formtabs = $modx->fromJSON($properties[\'formtabs\']);\n        }\n\n        //$tv->setCacheable(false);\n        //$outputvalue = $tv->renderOutput($docid);\n        \n        $tvresource = $modx->getObject(\'modTemplateVarResource\', array(\n            \'tmplvarid\' => $tv->get(\'id\'),\n            \'contentid\' => $docid,\n            ));\n\n\n        $outputvalue = $tvresource->get(\'value\');\n        \n        /*\n        *   get inputTvs \n        */\n        $inputTvs = array();\n        if (is_array($formtabs)) {\n\n            //multiple different Forms\n            // Note: use same field-names and inputTVs in all forms\n            $inputTvs = $migx->extractInputTvs($formtabs);\n        }\n        $migx->source = $tv->getSource($migx->working_context, false);\n\n        if (empty($outputvalue)) {\n            return \'\';\n        }\n\n        $items = $modx->fromJSON($outputvalue);\n\n\n        //is there an active item for the current date?\n        $activedate = $modx->getOption(\'activedate\', $scriptProperties, strftime(\'%Y/%m/%d\'));\n        //$activedate = $modx->getOption(\'activedate\', $_GET, strftime(\'%Y/%m/%d\'));\n        $activewhere = array();\n        $activewhere[\'activedate\'] = $activedate;\n        $activewhere[\'activated\'] = \'1\';\n        $activeitems = $migx->filterItems($activewhere, $items);\n\n        if (count($activeitems) == 0) {\n\n            $activeitems = array();\n            // where filter\n            if (is_array($where) && count($where) > 0) {\n                $items = $migx->filterItems($where, $items);\n            }\n\n            $tempitems = array();\n            $count = count($items);\n            $emptycount = 0;\n            $latestdate = $activedate;\n            $nextdate = strtotime($latestdate);\n            foreach ($items as $item) {\n                //empty all dates and active-states which are older than today\n                if (!empty($item[\'activedate\']) && $item[\'activedate\'] < $activedate) {\n                    $item[\'activated\'] = \'0\';\n                    $item[\'activedate\'] = \'\';\n                }\n                if (empty($item[\'activedate\'])) {\n                    $emptycount++;\n                }\n                if ($item[\'activedate\'] > $latestdate) {\n                    $latestdate = $item[\'activedate\'];\n                    $nextdate = strtotime($latestdate) + (24 * 60 * 60);\n                }\n                if ($item[\'activedate\'] == $activedate) {\n                    $item[\'activated\'] = \'1\';\n                    $activeitems[] = $item;\n                }\n                $tempitems[] = $item;\n            }\n\n            //echo \'<pre>\' . print_r($tempitems, 1) . \'</pre>\';\n\n            $items = $tempitems;\n\n\n            //are there more than half of all items with empty activedates\n\n            if ($emptycount >= $count / 2) {\n\n                // sort items\n                if (is_array($sort) && count($sort) > 0) {\n                    $items = $migx->sortDbResult($items, $sort);\n                }\n                if (count($items) > 0) {\n                    //shuffle items\n                    if ($randomize) {\n                        shuffle($items);\n                    }\n                }\n\n                $tempitems = array();\n                foreach ($items as $item) {\n                    if (empty($item[\'activedate\'])) {\n                        $item[\'activedate\'] = strftime(\'%Y/%m/%d\', $nextdate);\n                        $nextdate = $nextdate + (24 * 60 * 60);\n                        if ($item[\'activedate\'] == $activedate) {\n                            $item[\'activated\'] = \'1\';\n                            $activeitems[] = $item;\n                        }\n                    }\n\n                    $tempitems[] = $item;\n                }\n\n                $items = $tempitems;\n            }\n\n            //$resource = $modx->getObject(\'modResource\', $docid);\n            //echo $modx->toJson($items);\n            $sort = \'[{\"sortby\":\"activedate\"}]\';\n            $items = $migx->sortDbResult($items, $modx->fromJson($sort));\n\n            //echo \'<pre>\' . print_r($items, 1) . \'</pre>\';\n\n            $tv->setValue($docid, $modx->toJson($items));\n            $tv->save();\n\n        }\n    }\n\n}\n\n\n$properties = array();\nforeach ($scriptProperties as $property => $value) {\n    $properties[\'property.\' . $property] = $value;\n}\n\n$output = \'\';\n\nforeach ($activeitems as $key => $item) {\n\n    $fields = array();\n    foreach ($item as $field => $value) {\n        $value = is_array($value) ? implode(\'||\', $value) : $value; //handle arrays (checkboxes, multiselects)\n        if ($processTVs && isset($inputTvs[$field])) {\n            if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inputTvs[$field][\'inputTV\']))) {\n\n            } else {\n                $tv = $modx->newObject(\'modTemplateVar\');\n                $tv->set(\'type\', $inputTvs[$field][\'inputTVtype\']);\n            }\n            $inputTV = $inputTvs[$field];\n\n            $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\', null, \'image,file\');\n            //don\'t manipulate any urls here\n            $modx->setOption(\'manipulatable_url_tv_output_types\', \'\');\n            $tv->set(\'default_text\', $value);\n            $value = $tv->renderOutput($docid);\n            //set option back\n            $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);\n            //now manipulate urls\n            if ($mediasource = $migx->getFieldSource($inputTV, $tv)) {\n                $mTypes = explode(\',\', $mTypes);\n                if (!empty($value) && in_array($tv->get(\'type\'), $mTypes)) {\n                    //$value = $mediasource->prepareOutputUrl($value);\n                    $value = str_replace(\'/./\', \'/\', $mediasource->prepareOutputUrl($value));\n                }\n            }\n\n        }\n        $fields[$field] = $value;\n\n    }\n\n    $rowtpl = $tpl;\n    //get changing tpls from field\n    if (substr($tpl, 0, 7) == \"@FIELD:\") {\n        $tplField = substr($tpl, 7);\n        $rowtpl = $fields[$tplField];\n    }\n\n    if (!isset($template[$rowtpl])) {\n        if (substr($rowtpl, 0, 6) == \"@FILE:\") {\n            $template[$rowtpl] = file_get_contents($modx->config[\'base_path\'] . substr($rowtpl, 6));\n        } elseif (substr($rowtpl, 0, 6) == \"@CODE:\") {\n            $template[$rowtpl] = substr($tpl, 6);\n        } elseif ($chunk = $modx->getObject(\'modChunk\', array(\'name\' => $rowtpl), true)) {\n            $template[$rowtpl] = $chunk->getContent();\n        } else {\n            $template[$rowtpl] = false;\n        }\n    }\n\n    $fields = array_merge($fields, $properties);\n\n    if ($template[$rowtpl]) {\n        $chunk = $modx->newObject(\'modChunk\');\n        $chunk->setCacheable(false);\n        $chunk->setContent($template[$rowtpl]);\n        $output .= $chunk->process($fields);\n\n    } else {\n        $output .= \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n\n    }\n\n\n}\n\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n    return \'\';\n}\n\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(11, 0, 0, 'filterbytag', '', 0, 5, 0, 'if (!is_array($subject)) {\n    $subject = explode(\',\',str_replace(array(\'||\',\' \'),array(\',\',\'\'),$subject));\n}\n\nreturn (in_array($operand,$subject));', 0, 'a:0:{}', '', 0, ''),
(12, 0, 0, 'migxObjectMediaPath', '', 0, 5, 0, '$pathTpl = $modx->getOption(\'pathTpl\', $scriptProperties, \'\');\n$objectid = $modx->getOption(\'objectid\', $scriptProperties, \'\');\n$createfolder = $modx->getOption(\'createFolder\', $scriptProperties, \'1\');\n$path = \'\';\n$createpath = false;\nif (empty($objectid) && $modx->getPlaceholder(\'objectid\')) {\n    // placeholder was set by some script on frontend for example\n    $objectid = $modx->getPlaceholder(\'objectid\');\n}\nif (empty($objectid) && isset($_REQUEST[\'object_id\'])) {\n    $objectid = $_REQUEST[\'object_id\'];\n}\n\n\n\nif (empty($objectid)) {\n\n    //set Session - var in fields.php - processor\n    if (isset($_SESSION[\'migxWorkingObjectid\'])) {\n        $objectid = $_SESSION[\'migxWorkingObjectid\'];\n        $createpath = !empty($createfolder);\n    }\n\n}\n\n\n$path = str_replace(\'{id}\', $objectid, $pathTpl);\n\n$fullpath = $modx->getOption(\'base_path\') . $path;\n\nif ($createpath && !file_exists($fullpath)) {\n        $permissions = octdec(\'0\' . (int)($modx->getOption(\'new_folder_permissions\', null, \'755\', true)));\n        if (!@mkdir($fullpath, $permissions, true)) {\n            $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: could not create directory %s).\', $fullpath));\n        }\n        else{\n            chmod($fullpath, $permissions); \n        }\n}\n\nreturn $path;', 0, 'a:0:{}', '', 0, ''),
(13, 0, 0, 'exportMIGX2db', '', 0, 5, 0, '/**\n * exportMIGX2db\n *\n * Copyright 2014 by Bruno Perner <b.perner@gmx.de>\n * \n * Sponsored by Simon Wurster <info@wurster-medien.de>\n *\n * exportMIGX2db is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * exportMIGX2db is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * exportMIGX2db; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * exportMIGX2db\n *\n * export Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string to db-table \n *\n * @version 1.0\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2014\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n/*\n[[!exportMIGX2db? \n&tvname=`references` \n&resources=`25` \n&packageName=`projekte`\n&classname=`Projekt` \n&migx_id_field=`migx_id` \n&renamed_fields=`{\"Firmen-URL\":\"Firmen_url\",\"Projekt-URL\":\"Projekt_URL\",\"main-image\":\"main_image\"}`\n]]\n*/\n\n\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n$resources = $modx->getOption(\'resources\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : \'\'));\n$resources = explode(\',\', $resources);\n$prefix = isset($scriptProperties[\'prefix\']) ? $scriptProperties[\'prefix\'] : null;\n$packageName = $modx->getOption(\'packageName\', $scriptProperties, \'\');\n$classname = $modx->getOption(\'classname\', $scriptProperties, \'\');\n$value = $modx->getOption(\'value\', $scriptProperties, \'\');\n$migx_id_field = $modx->getOption(\'migx_id_field\', $scriptProperties, \'\');\n$pos_field = $modx->getOption(\'pos_field\', $scriptProperties, \'\');\n$renamed_fields = $modx->getOption(\'renamed_fields\', $scriptProperties, \'\');\n\n$packagepath = $modx->getOption(\'core_path\') . \'components/\' . $packageName .\n    \'/\';\n$modelpath = $packagepath . \'model/\';\n\n$modx->addPackage($packageName, $modelpath, $prefix);\n$added = 0;\n$modified = 0;\n\nforeach ($resources as $docid) {\n    \n    $outputvalue = \'\';\n    if (count($resources)==1){\n        $outputvalue = $value;    \n    }\n    \n    if (!empty($tvname)) {\n        if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname))) {\n\n            $outputvalue = empty($outputvalue) ? $tv->renderOutput($docid) : $outputvalue;\n        }\n    }\n\n    if (!empty($outputvalue)) {\n        $renamed = !empty($renamed_fields) ? $modx->fromJson($renamed_fields) : array();\n\n        $items = $modx->fromJSON($outputvalue);\n        $pos = 1;\n        $searchfields = array();\n        if (is_array($items)) {\n            foreach ($items as $fields) {\n                $search = array();\n                if (!empty($migx_id_field)) {\n                    $search[$migx_id_field] = $fields[\'MIGX_id\'];\n                }\n                if (!empty($resource_id_field)) {\n                    $search[$resource_id_field] = $docid;\n                }\n                if (!empty($migx_id_field) && $object = $modx->getObject($classname, $search)) {\n                    $mode = \'mod\';\n                } else {\n                    $object = $modx->newObject($classname);\n                    $object->fromArray($search);\n                    $mode = \'add\';\n                }\n                foreach ($fields as $field => $value) {\n                    $fieldname = array_key_exists($field, $renamed) ? $renamed[$field] : $field;\n                    $object->set($fieldname, $value);\n                }\n                if (!empty($pos_field)) {\n                    $object->set($pos_field,$pos) ;\n                }                \n                if ($object->save()) {\n                    if ($mode == \'add\') {\n                        $added++;\n                    } else {\n                        $modified++;\n                    }\n                }\n                $pos++;\n            }\n            \n        }\n    }\n}\n\n\nreturn $added . \' rows added to db, \' . $modified . \' existing rows actualized\';', 0, 'a:0:{}', '', 0, ''),
(14, 0, 0, 'preparedatewhere', '', 0, 5, 0, '$name = $modx->getOption(\'name\', $scriptProperties, \'\');\n$date = $modx->getOption($name . \'_date\', $_REQUEST, \'\');\n$dir = str_replace(\'T\', \' \', $modx->getOption($name . \'_dir\', $_REQUEST, \'\'));\n\nif (!empty($date) && !empty($dir) && $dir != \'all\') {\n    switch ($dir) {\n        case \'=\':\n            $where = array(\n            \'enddate:>=\' => strftime(\'%Y-%m-%d 00:00:00\',strtotime($date)),\n            \'startdate:<=\' => strftime(\'%Y-%m-%d 23:59:59\',strtotime($date))\n            );\n            break;\n        case \'>=\':\n            $where = array(\n            \'enddate:>=\' => strftime(\'%Y-%m-%d 00:00:00\',strtotime($date))\n            );\n            break;\n        case \'<=\':\n            $where = array(\n            \'startdate:<=\' => strftime(\'%Y-%m-%d 23:59:59\',strtotime($date))\n            );            \n            break;\n\n    }\n\n    return $modx->toJson($where);\n}', 0, 'a:0:{}', '', 0, ''),
(15, 0, 0, 'migxJsonToPlaceholders', '', 0, 5, 0, '$value = $modx->getOption(\'value\',$scriptProperties,\'\');\r\n$prefix = $modx->getOption(\'prefix\',$scriptProperties,\'\');\r\n\r\n//$modx->setPlaceholders($modx->fromJson($value),$prefix,\'\',true);\r\n\r\n$values = json_decode($value, true);\r\n\r\n$it = new RecursiveIteratorIterator(new RecursiveArrayIterator($values));\r\n\r\nif (is_array($values)){\r\n    foreach ($it as $key => $value){\r\n        $value = $value == null ? \'\' : $value;\r\n        $modx->setPlaceholder($prefix . $key, $value);\r\n    }\r\n}', 0, 'a:0:{}', '', 0, ''),
(16, 0, 0, 'migxGetCollectionTree', '', 0, 5, 0, '/**\n * migxGetCollectionTree\n *\n * Copyright 2014 by Bruno Perner <b.perner@gmx.de>\n *\n * migxGetCollectionTree is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * migxGetCollectionTree is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * migxGetCollectionTree; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * migxGetCollectionTree\n *\n *          display nested items from different objects. The tree-schema is defined by a json-property. \n *\n * @version 1.0.0\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2014\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n$treeSchema = $modx->getOption(\'treeSchema\', $scriptProperties, \'\');\n$treeSchema = $modx->fromJson($treeSchema);\n\n$scriptProperties[\'current\'] = $modx->getOption(\'current\', $scriptProperties, \'\');\n$scriptProperties[\'currentClassname\'] = $modx->getOption(\'currentClassname\', $scriptProperties, \'\');\n$scriptProperties[\'currentKeyField\'] = $modx->getOption(\'currentKeyField\', $scriptProperties, \'id\');\n$return = $modx->getOption(\'return\', $scriptProperties, \'parsed\'); //parsed,json,arrayprint\n\n/*\nExamples:\n\nGet Resource-Tree, 4 levels deep\n\n[[!migxGetCollectionTree?\n&current=`57`\n&currentClassname=`modResource`\n&treeSchema=`\n{\n\"classname\": \"modResource\",\n\"debug\": \"1\",\n\"tpl\": \"mgctResourceTree\",\n\"wrapperTpl\": \"@CODE:<ul>[[+output]]</ul>\",\n\"selectfields\": \"id,pagetitle\",\n\"where\": {\n\"parent\": \"0\",\n\"published\": \"1\",\n\"deleted\": \"0\"\n},\n\"_branches\": [{\n\"alias\": \"children\",\n\"classname\": \"modResource\",\n\"local\": \"parent\",\n\"foreign\": \"id\",\n\"tpl\": \"mgctResourceTree\",\n\"debug\": \"1\",\n\"selectfields\": \"id,pagetitle,parent\",\n\"_branches\": [{\n\"alias\": \"children\",\n\"classname\": \"modResource\",\n\"local\": \"parent\",\n\"foreign\": \"id\",\n\"tpl\": \"mgctResourceTree\",\n\"debug\": \"1\",\n\"selectfields\": \"id,pagetitle,parent\",\n\"where\": {\n\"published\": \"1\",\n\"deleted\": \"0\"\n},\n\"_branches\": [{\n\"alias\": \"children\",\n\"classname\": \"modResource\",\n\"local\": \"parent\",\n\"foreign\": \"id\",\n\"tpl\": \"mgctResourceTree\",\n\"debug\": \"1\",\n\"selectfields\": \"id,pagetitle,parent\",\n\"where\": {\n\"published\": \"1\",\n\"deleted\": \"0\"\n}\n}]\n}]\n}]\n}\n`]]\n\nthe chunk mgctResourceTree:\n<li class=\"[[+_activelabel]] [[+_currentlabel]]\" ><a href=\"[[~[[+id]]]]\">[[+pagetitle]]([[+id]])</a></li>\n[[+innercounts.children:gt=`0`:then=`\n<ul>[[+innerrows.children]]</ul>\n`:else=``]]\n\nget all Templates and its Resources:\n\n[[!migxGetCollectionTree?\n&treeSchema=`\n{\n\"classname\": \"modTemplate\",\n\"debug\": \"1\",\n\"tpl\": \"@CODE:<h3>[[+templatename]]</h3><ul>[[+innerrows.resource]]</ul>\",\n\"selectfields\": \"id,templatename\",\n\"_branches\": [{\n\"alias\": \"resource\",\n\"classname\": \"modResource\",\n\"local\": \"template\",\n\"foreign\": \"id\",\n\"tpl\": \"@CODE:<li>[[+pagetitle]]([[+id]])</li>\",\n\"debug\": \"1\",\n\"selectfields\": \"id,pagetitle,template\"\n}]\n}\n`]]\n*/\n\nif (!class_exists(\'MigxGetCollectionTree\')) {\n    class MigxGetCollectionTree\n    {\n        function __construct(modX & $modx, array $config = array())\n        {\n            $this->modx = &$modx;\n            $this->config = $config;\n        }\n\n        function getBranch($branch, $foreigns = array(), $level = 1)\n        {\n\n            $rows = array();\n\n            if (count($foreigns) > 0) {\n                $modx = &$this->modx;\n\n                $local = $modx->getOption(\'local\', $branch, \'\');\n                $where = $modx->getOption(\'where\', $branch, array());\n                $where = !empty($where) && !is_array($where) ? $modx->fromJSON($where) : $where;\n                $where[] = array($local . \':IN\' => $foreigns);\n\n                $branch[\'where\'] = $modx->toJson($where);\n\n                $level++;\n                /*\n                if ($levelFromCurrent > 0){\n                $levelFromCurrent++;    \n                }\n                */\n\n                $rows = $this->getRows($branch, $level);\n            }\n\n            return $rows;\n        }\n\n        function getRows($scriptProperties, $level)\n        {\n            $migx = &$this->migx;\n            $modx = &$this->modx;\n\n            $current = $modx->getOption(\'current\', $this->config, \'\');\n            $currentKeyField = $modx->getOption(\'currentKeyField\', $this->config, \'id\');\n            $currentlabel = $modx->getOption(\'currentlabel\', $this->config, \'current\');\n            $classname = $modx->getOption(\'classname\', $scriptProperties, \'\');\n			$sortResult = $modx->getOption(\'sortResult\', $scriptProperties, \'\');\n            $currentClassname = !empty($this->config[\'currentClassname\']) ? $this->config[\'currentClassname\'] : $classname;\n\n            $activelabel = $modx->getOption(\'activelabel\', $this->config, \'active\');\n            $return = $modx->getOption(\'return\', $this->config, \'parsed\');\n\n            $xpdo = $migx->getXpdoInstanceAndAddPackage($scriptProperties);\n            $c = $migx->prepareQuery($xpdo, $scriptProperties);\n            $rows = $migx->getCollection($c);\n\n            $branches = $modx->getOption(\'_branches\', $scriptProperties, array());\n\n            $collectedSubrows = array();\n            foreach ($branches as $branch) {\n                $foreign = $modx->getOption(\'foreign\', $branch, \'\');\n                $local = $modx->getOption(\'local\', $branch, \'\');\n                $alias = $modx->getOption(\'alias\', $branch, \'\');\n                //$activeonly = $modx->getOption(\'activeonly\', $branch, \'\');\n                $foreigns = array();\n                foreach ($rows as $row) {\n                    $foreigns[] = $row[$foreign];\n                }\n\n                $subrows = $this->getBranch($branch, $foreigns, $level);\n                foreach ($subrows as $subrow) {\n\n                    $collectedSubrows[$subrow[$local]][] = $subrow;\n                    $subrow[\'_active\'] = $modx->getOption(\'_active\', $subrow, \'0\');\n                    /*\n                    if (!empty($activeonly) && $subrow[\'_active\'] != \'1\') {\n                    $output = \'\';\n                    } else {\n                    $collectedSubrows[$subrow[$local]][] = $subrow;\n                    }\n                    */\n                    if ($subrow[\'_active\'] == \'1\') {\n                        //echo \'active subrow:<pre>\' . print_r($subrow,1) . \'</pre>\';\n                        $activesubrow[$subrow[$local]] = true;\n                    }\n                    if ($subrow[\'_current\'] == \'1\') {\n                        //echo \'active subrow:<pre>\' . print_r($subrow,1) . \'</pre>\';\n                        $currentsubrow[$subrow[$local]] = true;\n                    }\n\n\n                }\n                //insert subrows\n                $temprows = $rows;\n                $rows = array();\n                foreach ($temprows as $row) {\n                    if (isset($collectedSubrows[$row[$foreign]])) {\n                        $row[\'_active\'] = \'0\';\n                        $row[\'_currentparent\'] = \'0\';\n                        if (isset($activesubrow[$row[$foreign]]) && $activesubrow[$row[$foreign]]) {\n                            $row[\'_active\'] = \'1\';\n                            //echo \'active row:<pre>\' . print_r($row,1) . \'</pre>\';\n                        }\n                        if (isset($currentsubrow[$row[$foreign]]) && $currentsubrow[$row[$foreign]]) {\n                            $row[\'_currentparent\'] = \'1\';\n                            //echo \'active row:<pre>\' . print_r($row,1) . \'</pre>\';\n                        }\n\n                        //render innerrows\n                        //$output = $migx->renderOutput($collectedSubrows[$row[$foreign]],$scriptProperties);\n                        //$output = $collectedSubrows[$row[$foreign]];\n\n                        $row[\'innercounts.\' . $alias] = count($collectedSubrows[$row[$foreign]]);\n                        $row[\'_scriptProperties\'][$alias] = $branch;\n                        /*\n                        switch ($return) {\n                        case \'parsed\':\n                        $output = $migx->renderOutput($collectedSubrows[$row[$foreign]], $branch);\n                        //$subbranches = $modx->getOption(\'_branches\', $branch, array());\n                        //if there are any placeholders left with the same alias from subbranch, remove them\n                        $output = str_replace(\'[[+innerrows.\' . $alias . \']]\', \'\', $output);\n                        break;\n                        case \'json\':\n                        case \'arrayprint\':\n                        $output = $collectedSubrows[$row[$foreign]];\n                        break;\n                        }\n                        */\n                        $output = $collectedSubrows[$row[$foreign]];\n\n                        $row[\'innerrows.\' . $alias] = $output;\n\n                    }\n                    $rows[] = $row;\n                }\n\n            }\n\n            $temprows = $rows;\n            $rows = array();\n            foreach ($temprows as $row) {\n                //add additional placeholders\n                $row[\'_level\'] = $level;\n                $row[\'_active\'] = $modx->getOption(\'_active\', $row, \'0\');\n                if ($currentClassname == $classname && $row[$currentKeyField] == $current) {\n                    $row[\'_current\'] = \'1\';\n                    $row[\'_currentlabel\'] = $currentlabel;\n                    $row[\'_active\'] = \'1\';\n                } else {\n                    $row[\'_current\'] = \'0\';\n                    $row[\'_currentlabel\'] = \'\';\n                }\n                if ($row[\'_active\'] == \'1\') {\n                    $row[\'_activelabel\'] = $activelabel;\n                } else {\n                    $row[\'_activelabel\'] = \'\';\n                }\n                $rows[] = $row;\n            }\n\n            if (!empty($sortResult) && is_array($sortResult)){\n                $rows = $migx->sortDbResult($rows, $sortResult);\n			}\n\n            return $rows;\n        }\n\n        function renderRow($row, $levelFromCurrent = 0)\n        {\n            $migx = &$this->migx;\n            $modx = &$this->modx;\n            $return = $modx->getOption(\'return\', $this->config, \'parsed\');\n            $branchProperties = $modx->getOption(\'_scriptProperties\', $row, array());\n            $current = $modx->getOption(\'_current\', $row, \'0\');\n            $currentparent = $modx->getOption(\'_currentparent\', $row, \'0\');\n            $levelFromCurrent = $current == \'1\' ? 1 : $levelFromCurrent;\n            $row[\'_levelFromCurrent\'] = $levelFromCurrent;\n            foreach ($branchProperties as $alias => $properties) {\n                $innerrows = $modx->getOption(\'innerrows.\' . $alias, $row, array());\n                $subrows = $this->renderRows($innerrows, $properties, $levelFromCurrent, $currentparent);\n                if ($return == \'parsed\') {\n                    $subrows = $migx->renderOutput($subrows, $properties);\n                }\n                $row[\'innerrows.\' . $alias] = $subrows;\n            }\n\n            return $row;\n        }\n\n        function renderRows($rows, $scriptProperties, $levelFromCurrent = 0, $siblingOfCurrent = \'0\')\n        {\n\n            $modx = &$this->modx;\n            $temprows = $rows;\n            $rows = array();\n            if ($levelFromCurrent > 0) {\n                $levelFromCurrent++;\n            }\n            foreach ($temprows as $row) {\n                $row[\'_siblingOfCurrent\'] = $siblingOfCurrent;\n                $row = $this->renderRow($row, $levelFromCurrent);\n                $rows[] = $row;\n            }\n            return $rows;\n        }\n    }\n}\n\n$instance = new MigxGetCollectionTree($modx, $scriptProperties);\n\nif (is_array($treeSchema)) {\n    $scriptProperties = $treeSchema;\n\n    $migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\n    if (!($migx instanceof Migx))\n        return \'\';\n\n    $defaultcontext = \'web\';\n    $migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\n    $instance->migx = &$migx;\n\n    $level = 1;\n    $scriptProperties[\'alias\'] = \'row\';\n    $rows = $instance->getRows($scriptProperties, $level);\n\n    $row = array();\n    $row[\'innercounts.row\'] = count($rows);\n    $row[\'innerrows.row\'] = $rows;\n    $row[\'_scriptProperties\'][\'row\'] = $scriptProperties;\n\n    $rows = $instance->renderRow($row);\n\n    $output = \'\';\n    switch ($return) {\n        case \'parsed\':\n            $output = $modx->getOption(\'innerrows.row\', $rows, \'\');\n            break;\n        case \'json\':\n            $output = $modx->toJson($rows);\n            break;\n        case \'arrayprint\':\n            $output = \'<pre>\' . print_r($rows, 1) . \'</pre>\';\n            break;\n    }\n\n    return $output;\n\n}', 0, 'a:0:{}', '', 0, ''),
(17, 0, 0, 'migxIsNewObject', '', 0, 5, 0, 'if (isset($_REQUEST[\'object_id\']) && $_REQUEST[\'object_id\']==\'new\'){\n    return 1;\n}', 0, 'a:0:{}', '', 0, ''),
(18, 0, 0, 'migx_example_validate', '', 0, 5, 0, '$properties = &$modx->getOption(\'scriptProperties\', $scriptProperties, array());\n$object = &$modx->getOption(\'object\', $scriptProperties, null);\n$postvalues = &$modx->getOption(\'postvalues\', $scriptProperties, array());\n$form_field = $modx->getOption(\'form_field\', $scriptProperties, array());\n$value = $modx->getOption(\'value\', $scriptProperties, \'\');\n$validation_type = $modx->getOption(\'validation_type\', $scriptProperties, \'\');\n$result = \'\';\nswitch ($validation_type) {\n    case \'gt25\':\n        if ((int) $value > 25) {\n        } else {\n            $error_message = $validation_type; // may be custom validation message\n            $error[\'caption\'] = $form_field;\n            $error[\'validation_type\'] = $error_message;\n            $result[\'error\'] = $error;\n            $result = $modx->toJson($result);\n        }\n        break;\n}\nreturn $result;', 0, 'a:0:{}', '', 0, ''),
(19, 0, 0, 'migxHookAftercollectmigxitems', '', 0, 5, 0, '$configs = $modx->getOption(\'configs\', $_REQUEST, \'\');\n\n$rows = $modx->getOption(\'rows\', $scriptProperties, array());\n$newrows = array();\n\n\nif (is_array($rows)) {\n    $max_id = 0;\n    $dbfields = array();\n    $existing_dbfields = array();\n    foreach ($rows as $key => $row) {\n        if (isset($row[\'MIGX_id\']) && $row[\'MIGX_id\'] > $max_id) {\n            $max_id = $row[\'MIGX_id\'];\n        }\n        if (isset($row[\'selected_dbfields\']) && isset($row[\'existing_dbfields\'])) {\n            $dbfields = is_array($row[\'selected_dbfields\']) ? $row[\'selected_dbfields\'] : array($row[\'selected_dbfields\']);\n            \n            $existing_dbfields = explode(\'||\', $row[\'existing_dbfields\']);\n            //echo \'<pre>\' . print_r($existing_dbfields,1) . \'</pre>\';die();\n\n        } else {\n            $newrows[] = $row;\n        }\n\n    }\n\n    foreach ($dbfields as $dbfield) {\n        if (!empty($dbfield) && !in_array($dbfield, $existing_dbfields)) {\n            $max_id++;\n            $newrow = array();\n            $newrow[\'MIGX_id\'] = $max_id;\n\n            switch ($configs) {\n                case \'migxformtabfields\':\n                    $newrow[\'field\'] = $dbfield;\n                    $newrow[\'caption\'] = $dbfield;\n                    break;\n                case \'migxcolumns\':\n                    $newrow[\'dataIndex\'] = $dbfield;\n                    $newrow[\'header\'] = $dbfield;\n                    break;                    \n            }\n\n\n            $newrows[] = $newrow;\n        }\n    }\n\n\n}\n\n\nreturn json_encode($newrows);', 0, 'a:0:{}', '', 0, ''),
(20, 0, 0, 'migxAutoPublish', '', 0, 5, 0, '$classnames = explode(\',\', $modx->getOption(\'classnames\',$scriptProperties,\'\'));\n$packageName = $modx->getOption(\'packageName\',$scriptProperties,\'\');\n\nswitch ($mode) {\n    case \'datetime\' :\n        $timeNow = strftime(\'%Y-%m-%d %H:%M:%S\');\n        break;\n    case \'unixtime\' :\n        $timeNow = time();\n        break;\n    default :\n        $timeNow = strftime(\'%Y-%m-%d %H:%M:%S\');\n        break;\n}\n\n$modx->addPackage($packageName, $modx->getOption(\'core_path\') . \'components/\' . $packageName . \'/model/\');\n\nforeach ($classnames as $classname) {\n    if (!empty($classname)) {\n        $tblResource = $modx->getTableName($classname);\n        if (!$result = $modx->exec(\"UPDATE {$tblResource} SET published=1,publishedon=pub_date,pub_date=null WHERE pub_date < \'{$timeNow}\' AND pub_date > 0 AND published=0\")) {\n            $modx->log(modX::LOG_LEVEL_ERROR, \'Error while refreshing resource publishing data: \' . print_r($modx->errorInfo(), true));\n        }\n        if (!$result = $modx->exec(\"UPDATE $tblResource SET published=0,unpub_date=null WHERE unpub_date < \'{$timeNow}\' AND unpub_date IS NOT NULL AND unpub_date > 0 AND published=1\")) {\n            $modx->log(modX::LOG_LEVEL_ERROR, \'Error while refreshing resource unpublishing data: \' . print_r($modx->errorInfo(), true));\n        }\n    }\n\n}\n$modx->cacheManager->refresh();', 0, 'a:0:{}', '', 0, ''),
(21, 0, 0, 'migxGetObject', '', 0, 5, 0, '/*\ngetXpdoInstanceAndAddPackage - properties\n\n$prefix\n$usecustomprefix\n$packageName\n\n\nprepareQuery - properties:\n\n$limit\n$offset\n$totalVar\n$where\n$queries\n$sortConfig\n$groupby\n$joins\n$selectfields\n$classname\n$debug\n\nrenderOutput - properties:\n\n$tpl\n$wrapperTpl\n$toSeparatePlaceholders\n$toPlaceholder\n$outputSeparator\n$placeholdersKeyField\n$toJsonPlaceholder\n$jsonVarKey\n$addfields\n\nmigxGetObject - properties\n\n$id\n$toPlaceholders - if not empty, output to placeholders with specified prefix or print the array, if \'print_r\' is the property-value\n\n*/\n\n$id = $modx->getOption(\'id\',$scriptProperties,\'\');\n$scriptProperties[\'limit\'] = 1;\n\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\nif (!($migx instanceof Migx))\n    return \'\';\n//$modx->migx = &$migx;\n\n$xpdo = $migx->getXpdoInstanceAndAddPackage($scriptProperties);\n\n$defaultcontext = \'web\';\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\n\n$c = $migx->prepareQuery($xpdo,$scriptProperties);\nif (!empty($id)){\n    $c->where(array(\'id\'=>$id));\n	$c->prepare();\n}	\n$rows = $migx->getCollection($c);\n\n$output = $migx->renderOutput($rows,$scriptProperties);\n\nreturn $output;', 0, 'a:0:{}', '', 0, '');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(22, 1, 0, 'pdoResources', '', 0, 8, 0, '/** @var array $scriptProperties */\nif (isset($parents) && $parents === \'\') {\n    $scriptProperties[\'parents\'] = $modx->resource->id;\n}\nif (!empty($returnIds)) {\n    $scriptProperties[\'return\'] = \'ids\';\n}\n\n// Adding extra parameters into special place so we can put them in a results\n/** @var modSnippet $snippet */\n$additionalPlaceholders = $properties = array();\nif (isset($this) && $this instanceof modSnippet && $this->get(\'properties\')) {\n    $properties = $this->get(\'properties\');\n}\nelseif ($snippet = $modx->getObject(\'modSnippet\', array(\'name\' => \'pdoResources\'))) {\n    $properties = $snippet->get(\'properties\');\n}\nif (!empty($properties)) {\n    foreach ($scriptProperties as $k => $v) {\n        if (!isset($properties[$k])) {\n            $additionalPlaceholders[$k] = $v;\n        }\n    }\n}\n$scriptProperties[\'additionalPlaceholders\'] = $additionalPlaceholders;\n\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n$output = $pdoFetch->run();\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $log .= \'<pre class=\"pdoResourcesLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\n// Return output\nif (!empty($returnIds)) {\n    $modx->setPlaceholder(\'pdoResources.log\', $log);\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n} elseif (!empty($toSeparatePlaceholders)) {\n    $output[\'log\'] = $log;\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    $output .= $log;\n\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n        $output = $pdoFetch->getChunk($tplWrapper, array_merge($additionalPlaceholders, array(\'output\' => $output)),\n            $pdoFetch->config[\'fastMode\']);\n    }\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}', 0, 'a:47:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"returnIds\";a:7:{s:4:\"name\";s:9:\"returnIds\";s:4:\"desc\";s:23:\"pdotools_prop_returnIds\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:11:\"publishedon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"sortbyTV\";a:7:{s:4:\"name\";s:8:\"sortbyTV\";s:4:\"desc\";s:22:\"pdotools_prop_sortbyTV\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"sortbyTVType\";a:7:{s:4:\"name\";s:12:\"sortbyTVType\";s:4:\"desc\";s:26:\"pdotools_prop_sortbyTVType\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"sortdirTV\";a:7:{s:4:\"name\";s:9:\"sortdirTV\";s:4:\"desc\";s:23:\"pdotools_prop_sortdirTV\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"includeContent\";a:7:{s:4:\"name\";s:14:\"includeContent\";s:4:\"desc\";s:28:\"pdotools_prop_includeContent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"tvFilters\";a:7:{s:4:\"name\";s:9:\"tvFilters\";s:4:\"desc\";s:23:\"pdotools_prop_tvFilters\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:21:\"tvFiltersAndDelimiter\";a:7:{s:4:\"name\";s:21:\"tvFiltersAndDelimiter\";s:4:\"desc\";s:35:\"pdotools_prop_tvFiltersAndDelimiter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\",\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:20:\"tvFiltersOrDelimiter\";a:7:{s:4:\"name\";s:20:\"tvFiltersOrDelimiter\";s:4:\"desc\";s:34:\"pdotools_prop_tvFiltersOrDelimiter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:2:\"||\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"idx\";a:7:{s:4:\"name\";s:3:\"idx\";s:4:\"desc\";s:17:\"pdotools_prop_idx\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"first\";a:7:{s:4:\"name\";s:5:\"first\";s:4:\"desc\";s:19:\"pdotools_prop_first\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"last\";a:7:{s:4:\"name\";s:4:\"last\";s:4:\"desc\";s:18:\"pdotools_prop_last\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplFirst\";a:7:{s:4:\"name\";s:8:\"tplFirst\";s:4:\"desc\";s:22:\"pdotools_prop_tplFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplLast\";a:7:{s:4:\"name\";s:7:\"tplLast\";s:4:\"desc\";s:21:\"pdotools_prop_tplLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplOdd\";a:7:{s:4:\"name\";s:6:\"tplOdd\";s:4:\"desc\";s:20:\"pdotools_prop_tplOdd\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplCondition\";a:7:{s:4:\"name\";s:12:\"tplCondition\";s:4:\"desc\";s:26:\"pdotools_prop_tplCondition\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplOperator\";a:7:{s:4:\"name\";s:11:\"tplOperator\";s:4:\"desc\";s:25:\"pdotools_prop_tplOperator\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:10:{i:0;a:2:{s:4:\"text\";s:11:\"is equal to\";s:5:\"value\";s:2:\"==\";}i:1;a:2:{s:4:\"text\";s:15:\"is not equal to\";s:5:\"value\";s:2:\"!=\";}i:2;a:2:{s:4:\"text\";s:9:\"less than\";s:5:\"value\";s:1:\"<\";}i:3;a:2:{s:4:\"text\";s:21:\"less than or equal to\";s:5:\"value\";s:2:\"<=\";}i:4;a:2:{s:4:\"text\";s:24:\"greater than or equal to\";s:5:\"value\";s:2:\">=\";}i:5;a:2:{s:4:\"text\";s:8:\"is empty\";s:5:\"value\";s:5:\"empty\";}i:6;a:2:{s:4:\"text\";s:12:\"is not empty\";s:5:\"value\";s:6:\"!empty\";}i:7;a:2:{s:4:\"text\";s:7:\"is null\";s:5:\"value\";s:4:\"null\";}i:8;a:2:{s:4:\"text\";s:11:\"is in array\";s:5:\"value\";s:7:\"inarray\";}i:9;a:2:{s:4:\"text\";s:10:\"is between\";s:5:\"value\";s:7:\"between\";}}s:5:\"value\";s:2:\"==\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"conditionalTpls\";a:7:{s:4:\"name\";s:15:\"conditionalTpls\";s:4:\"desc\";s:29:\"pdotools_prop_conditionalTpls\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"loadModels\";a:7:{s:4:\"name\";s:10:\"loadModels\";s:4:\"desc\";s:24:\"pdotools_prop_loadModels\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoresources.php'),
(23, 1, 0, 'pdoUsers', '', 0, 8, 0, '/** @var array $scriptProperties */\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\n$class = \'modUser\';\n$profile = \'modUserProfile\';\n$member = \'modUserGroupMember\';\n\n// Start building \"Where\" expression\n$where = array();\nif (empty($showInactive)) {\n    $where[$class . \'.active\'] = 1;\n}\nif (empty($showBlocked)) {\n    $where[$profile . \'.blocked\'] = 0;\n}\n\n// Add users profiles and groups\n$innerJoin = array(\n    $profile => array(\'alias\' => $profile, \'on\' => \"$class.id = $profile.internalKey\"),\n);\n\n// Filter by users, groups and roles\n$tmp = array(\n    \'users\' => array(\n        \'class\' => $class,\n        \'name\' => \'username\',\n        \'join\' => $class . \'.id\',\n    ),\n    \'groups\' => array(\n        \'class\' => \'modUserGroup\',\n        \'name\' => \'name\',\n        \'join\' => $member . \'.user_group\',\n    ),\n    \'roles\' => array(\n        \'class\' => \'modUserGroupRole\',\n        \'name\' => \'name\',\n        \'join\' => $member . \'.role\',\n    ),\n);\nforeach ($tmp as $k => $p) {\n    if (!empty($$k)) {\n        $$k = array_map(\'trim\', explode(\',\', $$k));\n        ${$k . \'_in\'} = ${$k . \'_out\'} = $fetch_in = $fetch_out = array();\n        foreach ($$k as $v) {\n            if (is_numeric($v)) {\n                if ($v[0] == \'-\') {\n                    ${$k . \'_out\'}[] = abs($v);\n                } else {\n                    ${$k . \'_in\'}[] = abs($v);\n                }\n            } else {\n                if ($v[0] == \'-\') {\n                    $fetch_out[] = $v;\n                } else {\n                    $fetch_in[] = $v;\n                }\n            }\n        }\n\n        if (!empty($fetch_in) || !empty($fetch_out)) {\n            $q = $modx->newQuery($p[\'class\'], array($p[\'name\'] . \':IN\' => array_merge($fetch_in, $fetch_out)));\n            $q->select(\'id,\' . $p[\'name\']);\n            $tstart = microtime(true);\n            if ($q->prepare() && $q->stmt->execute()) {\n                $modx->queryTime += microtime(true) - $tstart;\n                $modx->executedQueries++;\n                while ($row = $q->stmt->fetch(PDO::FETCH_ASSOC)) {\n                    if (in_array($row[$p[\'name\']], $fetch_in)) {\n                        ${$k . \'_in\'}[] = $row[\'id\'];\n                    } else {\n                        ${$k . \'_out\'}[] = $row[\'id\'];\n                    }\n                }\n            }\n        }\n\n        if (!empty(${$k . \'_in\'})) {\n            $where[$p[\'join\'] . \':IN\'] = ${$k . \'_in\'};\n        }\n        if (!empty(${$k . \'_out\'})) {\n            $where[$p[\'join\'] . \':NOT IN\'] = ${$k . \'_out\'};\n        }\n    }\n}\n\nif (!empty($groups_in) || !empty($groups_out) || !empty($roles_in) || !empty($roles_out)) {\n    $innerJoin[$member] = array(\'alias\' => $member, \'on\' => \"$class.id = $member.member\");\n}\n\n// Fields to select\n$select = array(\n    $profile => implode(\',\', array_keys($modx->getFieldMeta($profile))),\n    $class => implode(\',\', array_keys($modx->getFieldMeta($class))),\n);\n\n// Add custom parameters\nforeach (array(\'where\', \'innerJoin\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n$default = array(\n    \'class\' => $class,\n    \'innerJoin\' => json_encode($innerJoin),\n    \'where\' => json_encode($where),\n    \'select\' => json_encode($select),\n    \'groupby\' => $class . \'.id\',\n    \'sortby\' => $class . \'.id\',\n    \'sortdir\' => \'ASC\',\n    \'fastMode\' => false,\n    \'return\' => !empty($returnIds) ? \'ids\' : \'chunks\',\n    \'disableConditions\' => true,\n);\n\nif (!empty($users_in) && (empty($scriptProperties[\'sortby\']) || $scriptProperties[\'sortby\'] == $class . \'.id\')) {\n    $scriptProperties[\'sortby\'] = \"find_in_set(`$class`.`id`,\'\" . implode(\',\', $users_in) . \"\')\";\n    $scriptProperties[\'sortdir\'] = \'\';\n}\n\n// Merge all properties and run!\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n$output = $pdoFetch->run();\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $log .= \'<pre class=\"pdoUsersLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\n// Return output\nif (!empty($returnIds)) {\n    $modx->setPlaceholder(\'pdoUsers.log\', $log);\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n} elseif (!empty($toSeparatePlaceholders)) {\n    $output[\'log\'] = $log;\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    $output .= $log;\n\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n        $output = $pdoFetch->getChunk($tplWrapper, array(\'output\' => $output), $pdoFetch->config[\'fastMode\']);\n    }\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}', 0, 'a:30:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"returnIds\";a:7:{s:4:\"name\";s:9:\"returnIds\";s:4:\"desc\";s:23:\"pdotools_prop_returnIds\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:10:\"modUser.id\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"groups\";a:7:{s:4:\"name\";s:6:\"groups\";s:4:\"desc\";s:20:\"pdotools_prop_groups\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"roles\";a:7:{s:4:\"name\";s:5:\"roles\";s:4:\"desc\";s:19:\"pdotools_prop_roles\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"users\";a:7:{s:4:\"name\";s:5:\"users\";s:4:\"desc\";s:19:\"pdotools_prop_users\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"showInactive\";a:7:{s:4:\"name\";s:12:\"showInactive\";s:4:\"desc\";s:26:\"pdotools_prop_showInactive\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showBlocked\";a:7:{s:4:\"name\";s:11:\"showBlocked\";s:4:\"desc\";s:25:\"pdotools_prop_showBlocked\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"idx\";a:7:{s:4:\"name\";s:3:\"idx\";s:4:\"desc\";s:17:\"pdotools_prop_idx\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"first\";a:7:{s:4:\"name\";s:5:\"first\";s:4:\"desc\";s:19:\"pdotools_prop_first\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"last\";a:7:{s:4:\"name\";s:4:\"last\";s:4:\"desc\";s:18:\"pdotools_prop_last\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplFirst\";a:7:{s:4:\"name\";s:8:\"tplFirst\";s:4:\"desc\";s:22:\"pdotools_prop_tplFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplLast\";a:7:{s:4:\"name\";s:7:\"tplLast\";s:4:\"desc\";s:21:\"pdotools_prop_tplLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplOdd\";a:7:{s:4:\"name\";s:6:\"tplOdd\";s:4:\"desc\";s:20:\"pdotools_prop_tplOdd\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplCondition\";a:7:{s:4:\"name\";s:12:\"tplCondition\";s:4:\"desc\";s:26:\"pdotools_prop_tplCondition\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplOperator\";a:7:{s:4:\"name\";s:11:\"tplOperator\";s:4:\"desc\";s:25:\"pdotools_prop_tplOperator\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:10:{i:0;a:2:{s:4:\"text\";s:11:\"is equal to\";s:5:\"value\";s:2:\"==\";}i:1;a:2:{s:4:\"text\";s:15:\"is not equal to\";s:5:\"value\";s:2:\"!=\";}i:2;a:2:{s:4:\"text\";s:9:\"less than\";s:5:\"value\";s:1:\"<\";}i:3;a:2:{s:4:\"text\";s:21:\"less than or equal to\";s:5:\"value\";s:2:\"<=\";}i:4;a:2:{s:4:\"text\";s:24:\"greater than or equal to\";s:5:\"value\";s:2:\">=\";}i:5;a:2:{s:4:\"text\";s:8:\"is empty\";s:5:\"value\";s:5:\"empty\";}i:6;a:2:{s:4:\"text\";s:12:\"is not empty\";s:5:\"value\";s:6:\"!empty\";}i:7;a:2:{s:4:\"text\";s:7:\"is null\";s:5:\"value\";s:4:\"null\";}i:8;a:2:{s:4:\"text\";s:11:\"is in array\";s:5:\"value\";s:7:\"inarray\";}i:9;a:2:{s:4:\"text\";s:10:\"is between\";s:5:\"value\";s:7:\"between\";}}s:5:\"value\";s:2:\"==\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"conditionalTpls\";a:7:{s:4:\"name\";s:15:\"conditionalTpls\";s:4:\"desc\";s:29:\"pdotools_prop_conditionalTpls\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdousers.php'),
(24, 1, 0, 'pdoCrumbs', '', 0, 8, 0, '/** @var array $scriptProperties */\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\nif (!isset($from) || $from == \'\') {\n    $from = 0;\n}\nif (empty($to)) {\n    $to = $modx->resource->id;\n}\nif (empty($direction)) {\n    $direction = \'ltr\';\n}\nif ($outputSeparator == \'&nbsp;&rarr;&nbsp;\' && $direction == \'rtl\') {\n    $outputSeparator = \'&nbsp;&larr;&nbsp;\';\n}\nif ($limit == \'\') {\n    $limit = 10;\n}\n// For compatibility with BreadCrumb\nif (!empty($maxCrumbs)) {\n    $limit = $maxCrumbs;\n}\nif (!empty($containerTpl)) {\n    $tplWrapper = $containerTpl;\n}\nif (!empty($currentCrumbTpl)) {\n    $tplCurrent = $currentCrumbTpl;\n}\nif (!empty($linkCrumbTpl)) {\n    $scriptProperties[\'tpl\'] = $linkCrumbTpl;\n}\nif (!empty($maxCrumbTpl)) {\n    $tplMax = $maxCrumbTpl;\n}\nif (isset($showBreadCrumbsAtHome)) {\n    $showAtHome = $showBreadCrumbsAtHome;\n}\nif (isset($showHomeCrumb)) {\n    $showHome = $showHomeCrumb;\n}\nif (isset($showCurrentCrumb)) {\n    $showCurrent = $showCurrentCrumb;\n}\n// --\n$fastMode = !empty($fastMode);\n$siteStart = $modx->getOption(\'siteStart\', $scriptProperties, $modx->getOption(\'site_start\'));\n\nif (empty($showAtHome) && $modx->resource->id == $siteStart) {\n    return \'\';\n}\n\n$class = $modx->getOption(\'class\', $scriptProperties, \'modResource\');\n// Start building \"Where\" expression\n$where = array();\nif (empty($showUnpublished) && empty($showUnPub)) {\n    $where[\'published\'] = 1;\n}\nif (empty($showHidden)) {\n    $where[\'hidemenu\'] = 0;\n}\nif (empty($showDeleted)) {\n    $where[\'deleted\'] = 0;\n}\nif (!empty($hideContainers) && empty($showContainer)) {\n    $where[\'isfolder\'] = 0;\n}\n\n$resource = ($to == $modx->resource->id)\n    ? $modx->resource\n    : $modx->getObject($class, $to);\n\nif (!$resource) {\n    $message = \'Could not build breadcrumbs to resource \"\' . $to . \'\"\';\n\n    return \'\';\n}\n\nif (!empty($customParents)) {\n    $customParents = is_array($customParents) ? $customParents : array_map(\'trim\', explode(\',\', $customParents));\n    $parents = is_array($customParents) ? array_reverse($customParents) : array();\n}\nif (empty($parents)) {\n    $parents = $modx->getParentIds($resource->id, $limit, array(\'context\' => $resource->get(\'context_key\')));\n}\nif (!empty($showHome)) {\n    $parents[] = $siteStart;\n}\n\n$ids = array($resource->id);\nforeach ($parents as $parent) {\n    if (!empty($parent)) {\n        $ids[] = $parent;\n    }\n    if (!empty($from) && $parent == $from) {\n        break;\n    }\n}\n$where[\'id:IN\'] = $ids;\n\nif (!empty($exclude)) {\n    $where[\'id:NOT IN\'] = array_map(\'trim\', explode(\',\', $exclude));\n}\n\n// Fields to select\n$resourceColumns = array_keys($modx->getFieldMeta($class));\n$select = array($class => implode(\',\', $resourceColumns));\n\n// Add custom parameters\nforeach (array(\'where\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Default parameters\n$default = array(\n    \'class\' => $class,\n    \'where\' => json_encode($where),\n    \'select\' => json_encode($select),\n    \'groupby\' => $class . \'.id\',\n    \'sortby\' => \"find_in_set(`$class`.`id`,\'\" . implode(\',\', $ids) . \"\')\",\n    \'sortdir\' => \'\',\n    \'return\' => \'data\',\n    \'totalVar\' => \'pdocrumbs.total\',\n    \'disableConditions\' => true,\n);\n\n// Merge all properties and run!\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n$rows = $pdoFetch->run();\n\n$output = array();\nif (!empty($rows) && is_array($rows)) {\n    if (strtolower($direction) == \'ltr\') {\n        $rows = array_reverse($rows);\n    }\n\n    foreach ($rows as $row) {\n        if (!empty($useWeblinkUrl) && $row[\'class_key\'] == \'modWebLink\') {\n            $row[\'link\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\n                ? $pdoFetch->makeUrl(intval(trim($row[\'content\'], \'[]~ \')), $row)\n                : $row[\'content\'];\n        } else {\n            $row[\'link\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\n        }\n\n        $row = array_merge(\n            $scriptProperties,\n            $row,\n            array(\'idx\' => $pdoFetch->idx++)\n        );\n        if (empty($row[\'menutitle\'])) {\n            $row[\'menutitle\'] = $row[\'pagetitle\'];\n        }\n\n        if ($row[\'id\'] == $resource->id && empty($showCurrent)) {\n            continue;\n        } elseif ($row[\'id\'] == $resource->id && !empty($tplCurrent)) {\n            $tpl = $tplCurrent;\n        } elseif ($row[\'id\'] == $siteStart && !empty($tplHome)) {\n            $tpl = $tplHome;\n        } else {\n            $tpl = $pdoFetch->defineChunk($row);\n        }\n        $output[] = empty($tpl)\n            ? \'<pre>\' . $pdoFetch->getChunk(\'\', $row) . \'</pre>\'\n            : $pdoFetch->getChunk($tpl, $row, $fastMode);\n    }\n}\n$pdoFetch->addTime(\'Chunks processed\');\n\nif (count($output) == 1 && !empty($hideSingle)) {\n    $pdoFetch->addTime(\'The only result was hidden, because the parameter \"hideSingle\" activated\');\n    $output = array();\n}\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $log .= \'<pre class=\"pdoCrumbsLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nif (!empty($toSeparatePlaceholders)) {\n    $output[\'log\'] = $log;\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    $output = implode($outputSeparator, $output);\n    if ($pdoFetch->idx >= $limit && !empty($tplMax) && !empty($output)) {\n        $output = ($direction == \'ltr\')\n            ? $pdoFetch->getChunk($tplMax, array(), $fastMode) . $output\n            : $output . $pdoFetch->getChunk($tplMax, array(), $fastMode);\n    }\n    $output .= $log;\n\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n        $output = $pdoFetch->getChunk($tplWrapper, array(\'output\' => $output, \'crumbs\' => $output), $fastMode);\n    }\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}', 0, 'a:31:{s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"from\";a:7:{s:4:\"name\";s:4:\"from\";s:4:\"desc\";s:18:\"pdotools_prop_from\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:2:\"to\";a:7:{s:4:\"name\";s:2:\"to\";s:4:\"desc\";s:16:\"pdotools_prop_to\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"customParents\";a:7:{s:4:\"name\";s:13:\"customParents\";s:4:\"desc\";s:27:\"pdotools_prop_customParents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"exclude\";a:7:{s:4:\"name\";s:7:\"exclude\";s:4:\"desc\";s:21:\"pdotools_prop_exclude\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:79:\"@INLINE <li class=\"breadcrumb-item\"><a href=\"[[+link]]\">[[+menutitle]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplCurrent\";a:7:{s:4:\"name\";s:10:\"tplCurrent\";s:4:\"desc\";s:24:\"pdotools_prop_tplCurrent\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:62:\"@INLINE <li class=\"breadcrumb-item active\">[[+menutitle]]</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplMax\";a:7:{s:4:\"name\";s:6:\"tplMax\";s:4:\"desc\";s:20:\"pdotools_prop_tplMax\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:65:\"@INLINE <li class=\"breadcrumb-item disabled\">&nbsp;...&nbsp;</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplHome\";a:7:{s:4:\"name\";s:7:\"tplHome\";s:4:\"desc\";s:21:\"pdotools_prop_tplHome\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:47:\"@INLINE <ol class=\"breadcrumb\">[[+output]]</ol>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showCurrent\";a:7:{s:4:\"name\";s:11:\"showCurrent\";s:4:\"desc\";s:25:\"pdotools_prop_showCurrent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"showHome\";a:7:{s:4:\"name\";s:8:\"showHome\";s:4:\"desc\";s:22:\"pdotools_prop_showHome\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showAtHome\";a:7:{s:4:\"name\";s:10:\"showAtHome\";s:4:\"desc\";s:24:\"pdotools_prop_showAtHome\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"hideSingle\";a:7:{s:4:\"name\";s:10:\"hideSingle\";s:4:\"desc\";s:24:\"pdotools_prop_hideSingle\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"direction\";a:7:{s:4:\"name\";s:9:\"direction\";s:4:\"desc\";s:23:\"pdotools_prop_direction\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"value\";s:3:\"ltr\";s:4:\"text\";s:19:\"Left To Right (ltr)\";}i:1;a:2:{s:5:\"value\";s:3:\"rtl\";s:4:\"text\";s:19:\"Right To Left (rtl)\";}}s:5:\"value\";s:3:\"ltr\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdocrumbs.php');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(25, 1, 0, 'pdoField', '', 0, 8, 0, '/** @var array $scriptProperties */\nif (!empty($input)) {\n    $id = $input;\n}\nif (!isset($default)) {\n    $default = \'\';\n}\nif (!isset($output)) {\n    $output = \'\';\n}\n$class = $modx->getOption(\'class\', $scriptProperties, \'modResource\', true);\n$isResource = $class == \'modResource\' || in_array($class, $modx->getDescendants(\'modResource\'));\n\nif (empty($field)) {\n    $field = \'pagetitle\';\n}\n$top = isset($top) ? intval($top) : 0;\n$topLevel = isset($topLevel) ? intval($topLevel) : 0;\nif (!empty($options)) {\n    $options = trim($options);\n    if ($options[0] == \'{\') {\n        $tmp = json_decode($options, true);\n        if (is_array($tmp)) {\n            extract($tmp);\n            $scriptProperties = array_merge($scriptProperties, $tmp);\n        }\n    } else {\n        $field = $options;\n    }\n}\nif (empty($id)) {\n    if (!empty($modx->resource)) {\n        $id = $modx->resource->id;\n    } else {\n        return \'You must specify an id of \' . $class;\n    }\n}\nif (!isset($context)) {\n    $context = \'\';\n}\n\n// Gets the parent from root of context, if specified\nif ($isResource && $id && ($top || $topLevel)) {\n    // Select needed context for parents functionality\n    if (empty($context)) {\n        $q = $modx->newQuery($class, $id);\n        $q->select(\'context_key\');\n        $tstart = microtime(true);\n        if ($q->prepare() && $q->stmt->execute()) {\n            $modx->queryTime += microtime(true) - $tstart;\n            $modx->executedQueries++;\n            $context = $q->stmt->fetch(PDO::FETCH_COLUMN);\n        }\n    }\n    // Original pdoField logic\n    if (empty($ultimate)) {\n        if ($topLevel) {\n            $pids = $modx->getChildIds(0, $topLevel, array(\'context\' => $context));\n            $pid = $id;\n            while (true) {\n                $tmp = $modx->getParentIds($pid, 1, array(\'context\' => $context));\n                if (!$pid = current($tmp)) {\n                    break;\n                } elseif (in_array($pid, $pids)) {\n                    $id = $pid;\n                    break;\n                }\n            }\n        } elseif ($top) {\n            $pid = $id;\n            for ($i = 1; $i <= $top; $i++) {\n                $tmp = $modx->getParentIds($pid, 1, array(\'context\' => $context));\n                if (!$pid = current($tmp)) {\n                    break;\n                }\n                $id = $pid;\n            }\n        }\n    }\n    // UltimateParent logic\n    // https://github.com/splittingred/UltimateParent/blob/develop/core/components/ultimateparent/snippet.ultimateparent.php\n    elseif ($id != $top) {\n        $pid = $id;\n        $pids = $modx->getParentIds($id, 10, array(\'context\' => $context));\n        if (!$topLevel || count($pids) >= $topLevel) {\n            while ($parentIds = $modx->getParentIds($id, 1, array(\'context\' => $context))) {\n                $pid = array_pop($parentIds);\n                if ($pid == $top) {\n                    break;\n                }\n                $id = $pid;\n                $parentIds = $modx->getParentIds($id, 10, array(\'context\' => $context));\n                if ($topLevel && count($parentIds) < $topLevel) {\n                    break;\n                }\n            }\n        }\n    }\n}\n\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\n$where = array($class . \'.id\' => $id);\n// Add custom parameters\nforeach (array(\'where\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Fields to select\n$resourceColumns = array_keys($modx->getFieldMeta($class));\n$field = strtolower($field);\nif (in_array($field, $resourceColumns)) {\n    $scriptProperties[\'select\'] = array($class => $field);\n    $scriptProperties[\'includeTVs\'] = \'\';\n} elseif ($isResource) {\n    $scriptProperties[\'select\'] = array($class => \'id\');\n    $scriptProperties[\'includeTVs\'] = $field;\n}\n// Additional default field\nif (!empty($default)) {\n    $default = strtolower($default);\n    if (in_array($default, $resourceColumns)) {\n        $scriptProperties[\'select\'][$class] .= \',\' . $default;\n    } elseif ($isResource) {\n        $scriptProperties[\'includeTVs\'] = empty($scriptProperties[\'includeTVs\'])\n            ? $default\n            : $scriptProperties[\'includeTVs\'] . \',\' . $default;\n    }\n}\n\n$scriptProperties[\'disableConditions\'] = true;\nif ($row = $pdoFetch->getObject($class, $where, $scriptProperties)) {\n    foreach ($row as $k => $v) {\n        if (strtolower($k) == $field && $v != \'\') {\n            $output = $v;\n            break;\n        }\n    }\n\n    if (empty($output) && !empty($default)) {\n        foreach ($row as $k => $v) {\n            if (strtolower($k) == $default && $v != \'\') {\n                $output = $v;\n                break;\n            }\n        }\n    }\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n} else {\n    return $output;\n}', 0, 'a:12:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"field\";a:7:{s:4:\"name\";s:5:\"field\";s:4:\"desc\";s:19:\"pdotools_prop_field\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"pagetitle\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:27:\"pdotools_prop_field_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"top\";a:7:{s:4:\"name\";s:3:\"top\";s:4:\"desc\";s:17:\"pdotools_prop_top\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"topLevel\";a:7:{s:4:\"name\";s:8:\"topLevel\";s:4:\"desc\";s:22:\"pdotools_prop_topLevel\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"default\";a:7:{s:4:\"name\";s:7:\"default\";s:4:\"desc\";s:27:\"pdotools_prop_field_default\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"output\";a:7:{s:4:\"name\";s:6:\"output\";s:4:\"desc\";s:26:\"pdotools_prop_field_output\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"ultimate\";a:7:{s:4:\"name\";s:8:\"ultimate\";s:4:\"desc\";s:22:\"pdotools_prop_ultimate\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdofield.php'),
(26, 1, 0, 'pdoSitemap', '', 0, 8, 0, '/** @var array $scriptProperties */\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\n// Default variables\nif (empty($tpl)) {\n    $tpl = \"@INLINE \\n<url>\\n\\t<loc>[[+url]]</loc>\\n\\t<lastmod>[[+date]]</lastmod>\\n\\t<changefreq>[[+update]]</changefreq>\\n\\t<priority>[[+priority]]</priority>\\n</url>\";\n}\nif (empty($tplWrapper)) {\n    $tplWrapper = \"@INLINE <?xml version=\\\"1.0\\\" encoding=\\\"[[++modx_charset]]\\\"?>\\n<urlset xmlns=\\\"[[+schema]]\\\">\\n[[+output]]\\n</urlset>\";\n}\nif (empty($sitemapSchema)) {\n    $sitemapSchema = \'http://www.sitemaps.org/schemas/sitemap/0.9\';\n}\nif (empty($outputSeparator)) {\n    $outputSeparator = \"\\n\";\n}\nif (empty($cacheKey)) {\n    $scriptProperties[\'cacheKey\'] = \'sitemap/\' . substr(md5(json_encode($scriptProperties)), 0, 6);\n}\n\n// Convert parameters from GoogleSiteMap if exists\nif (!empty($itemTpl)) {\n    $tpl = $itemTpl;\n}\nif (!empty($containerTpl)) {\n    $tplWrapper = $containerTpl;\n}\nif (!empty($allowedtemplates)) {\n    $scriptProperties[\'templates\'] = $allowedtemplates;\n}\nif (!empty($maxDepth)) {\n    $scriptProperties[\'depth\'] = $maxDepth;\n}\nif (isset($hideDeleted)) {\n    $scriptProperties[\'showDeleted\'] = !$hideDeleted;\n}\nif (isset($published)) {\n    $scriptProperties[\'showUnpublished\'] = !$published;\n}\nif (isset($searchable)) {\n    $scriptProperties[\'showUnsearchable\'] = !$searchable;\n}\nif (!empty($googleSchema)) {\n    $sitemapSchema = $googleSchema;\n}\nif (!empty($excludeResources)) {\n    $tmp = array_map(\'trim\', explode(\',\', $excludeResources));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'resources\'])) {\n            $scriptProperties[\'resources\'] .= \',-\' . $v;\n        } else {\n            $scriptProperties[\'resources\'] = \'-\' . $v;\n        }\n    }\n}\nif (!empty($excludeChildrenOf)) {\n    $tmp = array_map(\'trim\', explode(\',\', $excludeChildrenOf));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'parents\'])) {\n            $scriptProperties[\'parents\'] .= \',-\' . $v;\n        } else {\n            $scriptProperties[\'parents\'] = \'-\' . $v;\n        }\n    }\n}\nif (!empty($startId)) {\n    if (!empty($scriptProperties[\'parents\'])) {\n        $scriptProperties[\'parents\'] .= \',\' . $startId;\n    } else {\n        $scriptProperties[\'parents\'] = $startId;\n    }\n}\nif (!empty($sortBy)) {\n    $scriptProperties[\'sortby\'] = $sortBy;\n}\nif (!empty($sortDir)) {\n    $scriptProperties[\'sortdir\'] = $sortDir;\n}\nif (!empty($priorityTV)) {\n    if (!empty($scriptProperties[\'includeTVs\'])) {\n        $scriptProperties[\'includeTVs\'] .= \',\' . $priorityTV;\n    } else {\n        $scriptProperties[\'includeTVs\'] = $priorityTV;\n    }\n}\nif (!empty($itemSeparator)) {\n    $outputSeparator = $itemSeparator;\n}\n//---\n\n\n$class = \'modResource\';\n$where = array();\nif (empty($showHidden)) {\n    $where[] = array(\n        $class . \'.hidemenu\' => 0,\n        \'OR:\' . $class . \'.class_key:IN\' => array(\'Ticket\', \'Article\'),\n    );\n}\nif (empty($context)) {\n    $scriptProperties[\'context\'] = $modx->context->key;\n}\n\n$select = array($class => \'id,editedon,createdon,context_key,class_key,uri\');\nif (!empty($useWeblinkUrl)) {\n    $select[$class] .= \',content\';\n}\n// Add custom parameters\nforeach (array(\'where\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Default parameters\n$default = array(\n    \'class\' => $class,\n    \'where\' => json_encode($where),\n    \'select\' => json_encode($select),\n    \'sortby\' => \"{$class}.parent ASC, {$class}.menuindex\",\n    \'sortdir\' => \'ASC\',\n    \'return\' => \'data\',\n    \'scheme\' => \'full\',\n    \'limit\' => 0,\n);\n// Merge all properties and run!\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n\nif (!empty($cache)) {\n    $data = $pdoFetch->getCache($scriptProperties);\n}\nif (empty($data)) {\n    $now = time();\n    $data = $urls = array();\n    $rows = $pdoFetch->run();\n    foreach ($rows as $row) {\n        if (!empty($useWeblinkUrl) && $row[\'class_key\'] == \'modWebLink\') {\n            $row[\'url\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\n                ? $pdoFetch->makeUrl(intval(trim($row[\'content\'], \'[]~ \')), $row)\n                : $row[\'content\'];\n        } else {\n            $row[\'url\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\n        }\n\n        $time = !empty($row[\'editedon\'])\n            ? $row[\'editedon\']\n            : $row[\'createdon\'];\n        $row[\'date\'] = date(\'c\', $time);\n\n        $datediff = floor(($now - $time) / 86400);\n        if ($datediff <= 1) {\n            $row[\'priority\'] = \'1.0\';\n            $row[\'update\'] = \'daily\';\n        } elseif (($datediff > 1) && ($datediff <= 7)) {\n            $row[\'priority\'] = \'0.75\';\n            $row[\'update\'] = \'weekly\';\n        } elseif (($datediff > 7) && ($datediff <= 30)) {\n            $row[\'priority\'] = \'0.50\';\n            $row[\'update\'] = \'weekly\';\n        } else {\n            $row[\'priority\'] = \'0.25\';\n            $row[\'update\'] = \'monthly\';\n        }\n        if (!empty($priorityTV) && !empty($row[$priorityTV])) {\n            $row[\'priority\'] = $row[$priorityTV];\n        }\n\n        // Fix possible duplicates made by modWebLink\n        if (!empty($urls[$row[\'url\']])) {\n            if ($urls[$row[\'url\']] > $row[\'date\']) {\n                continue;\n            }\n        }\n        $urls[$row[\'url\']] = $row[\'date\'];\n\n        // Add item to output\n        $data[$row[\'url\']] = $pdoFetch->parseChunk($tpl, $row);\n        if (strpos($data[$row[\'url\']], \'[[\') !== false) {\n            $modx->parser->processElementTags(\'\', $data[$row[\'url\']], true, true, \'[[\', \']]\', array(), 10);\n        }\n    }\n    $pdoFetch->addTime(\'Rows processed\');\n    if (!empty($cache)) {\n        $pdoFetch->setCache($data, $scriptProperties);\n    }\n}\n\n$output = implode($outputSeparator, $data);\n$output = $pdoFetch->getChunk($tplWrapper, array(\n    \'schema\' => $sitemapSchema,\n    \'output\' => $output,\n    \'items\' => $output,\n));\n$pdoFetch->addTime(\'Rows wrapped\');\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $output .= \'<pre class=\"pdoSitemapLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nif (!empty($forceXML)) {\n    header(\"Content-Type:text/xml\");\n    @session_write_close();\n    exit($output);\n} else {\n    return $output;\n}', 0, 'a:24:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:145:\"@INLINE <url>\n	<loc>[[+url]]</loc>\n	<lastmod>[[+date]]</lastmod>\n	<changefreq>[[+update]]</changefreq>\n	<priority>[[+priority]]</priority>\n</url>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:110:\"@INLINE <?xml version=\"1.0\" encoding=\"[[++modx_charset]]\"?>\n<urlset xmlns=\"[[+schema]]\">\n[[+output]]\n</urlset>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"templates\";a:7:{s:4:\"name\";s:9:\"templates\";s:4:\"desc\";s:23:\"pdotools_prop_templates\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"sitemapSchema\";a:7:{s:4:\"name\";s:13:\"sitemapSchema\";s:4:\"desc\";s:27:\"pdotools_prop_sitemapSchema\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:43:\"http://www.sitemaps.org/schemas/sitemap/0.9\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"hideUnsearchable\";a:7:{s:4:\"name\";s:16:\"hideUnsearchable\";s:4:\"desc\";s:30:\"pdotools_prop_hideUnsearchable\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"asc\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"forceXML\";a:7:{s:4:\"name\";s:8:\"forceXML\";s:4:\"desc\";s:22:\"pdotools_prop_forceXML\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"cacheKey\";a:7:{s:4:\"name\";s:8:\"cacheKey\";s:4:\"desc\";s:22:\"pdotools_prop_cacheKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdositemap.php'),
(27, 1, 0, 'pdoNeighbors', '', 0, 8, 0, '/** @var array $scriptProperties */\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\nif (empty($id)) {\n    $id = $modx->resource->id;\n}\nif (empty($limit)) {\n    $limit = 1;\n}\nif (!isset($outputSeparator)) {\n    $outputSeparator = \"\\n\";\n}\n$fastMode = !empty($fastMode);\n\n$class = \'modResource\';\n$resource = ($id == $modx->resource->id)\n    ? $modx->resource\n    : $modx->getObject($class, $id);\nif (!$resource) {\n    return \'\';\n}\n\n// We need to determine ids of neighbors\n$params = $scriptProperties;\n$params[\'select\'] = \'id\';\n$params[\'limit\'] = 0;\nif (!empty($parents) && is_string($parents)) {\n    $parents = array_map(\'trim\', explode(\',\', $parents));\n    if (!in_array($resource->parent, $parents)) {\n        $parents[] = $resource->parent;\n    }\n    $key = array_search($resource->parent * -1, $parents);\n    if ($key !== false) {\n        unset($parents[$key]);\n    }\n    $params[\'parents\'] = implode(\',\', $parents);\n    $ids = $pdoFetch->getCollection(\'modResource\', array(), $params);\n    unset($scriptProperties[\'parents\']);\n} else {\n    $ids = $pdoFetch->getCollection(\'modResource\', array(\'parent\' => $resource->parent), $params);\n}\n\n$found = false;\n$prev = $next = array();\nforeach ($ids as $v) {\n    if ($v[\'id\'] == $id) {\n        $found = true;\n        continue;\n    } elseif (!$found) {\n        $prev[] = $v[\'id\'];\n    } else {\n        $next[] = $v[\'id\'];\n        if (count($next) >= $limit) {\n            break;\n        }\n    }\n}\n$prev = array_splice($prev, $limit * -1);\nif (!empty($loop)) {\n    if (!count($prev)) {\n        $v = end($ids);\n        $prev[] = $v[\'id\'];\n    } else {\n        if (!count($next)) {\n            $v = reset($ids);\n            $next[] = $v[\'id\'];\n        }\n    }\n}\n$ids = array_merge($prev, $next, array($resource->parent));\n$pdoFetch->addTime(\'Found ids of neighbors: \' . implode(\',\', $ids));\n\n// Query conditions\n$where = array($class . \'.id:IN\' => $ids);\n\n// Fields to select\n$resourceColumns = array_keys($modx->getFieldMeta($class));\nif (empty($includeContent) && empty($useWeblinkUrl)) {\n    $key = array_search(\'content\', $resourceColumns);\n    unset($resourceColumns[$key]);\n}\n$select = array($class => implode(\',\', $resourceColumns));\n\n// Add custom parameters\nforeach (array(\'where\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Default parameters\n$default = array(\n    \'class\' => $class,\n    \'where\' => json_encode($where),\n    \'select\' => json_encode($select),\n    //\'groupby\' => $class.\'.id\',\n    \'sortby\' => $class . \'.menuindex\',\n    \'sortdir\' => \'ASC\',\n    \'return\' => \'data\',\n    \'limit\' => 0,\n    \'totalVar\' => \'pdoneighbors.total\',\n);\n\n// Merge all properties and run!\nunset($scriptProperties[\'limit\']);\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n\n$rows = $pdoFetch->run();\n$prev = array_flip($prev);\n$next = array_flip($next);\n\n$output = array(\'prev\' => array(), \'up\' => array(), \'next\' => array());\nforeach ($rows as $row) {\n    if (empty($row[\'menutitle\'])) {\n        $row[\'menutitle\'] = $row[\'pagetitle\'];\n    }\n    if (!empty($useWeblinkUrl) && $row[\'class_key\'] == \'modWebLink\') {\n        $row[\'link\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\n            ? $pdoFetch->makeUrl(intval(trim($row[\'content\'], \'[]~ \')), $row)\n            : $row[\'content\'];\n    } else {\n        $row[\'link\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\n    }\n\n    if (isset($prev[$row[\'id\']])) {\n        $output[\'prev\'][] = !empty($tplPrev)\n            ? $pdoFetch->getChunk($tplPrev, $row, $fastMode)\n            : $pdoFetch->getChunk(\'\', $row);\n    } elseif (isset($next[$row[\'id\']])) {\n        $output[\'next\'][] = !empty($tplNext)\n            ? $pdoFetch->getChunk($tplNext, $row, $fastMode)\n            : $pdoFetch->getChunk(\'\', $row);\n    } else {\n        $output[\'up\'][] = !empty($tplUp)\n            ? $pdoFetch->getChunk($tplUp, $row, $fastMode)\n            : $pdoFetch->getChunk(\'\', $row);\n    }\n}\n$pdoFetch->addTime(\'Chunks processed\');\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $log .= \'<pre class=\"pdoNeighborsLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nforeach ($output as &$row) {\n    $row = implode($outputSeparator, $row);\n}\n\nif (!empty($toSeparatePlaceholders)) {\n    $output[\'log\'] = $log;\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    if (!empty($rows) || !empty($wrapIfEmpty)) {\n        $output = !empty($tplWrapper)\n            ? $pdoFetch->getChunk($tplWrapper, $output, $fastMode)\n            : $pdoFetch->getChunk(\'\', $output);\n    } else {\n        $output = \'\';\n    }\n    $output .= $log;\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}', 0, 'a:27:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:29:\"pdotools_prop_neighbors_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"asc\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplPrev\";a:7:{s:4:\"name\";s:7:\"tplPrev\";s:4:\"desc\";s:21:\"pdotools_prop_tplPrev\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:106:\"@INLINE <span class=\"link-prev\"><a href=\"[[+link]]\" class=\"btn btn-light\">&larr; [[+menutitle]]</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"tplUp\";a:7:{s:4:\"name\";s:5:\"tplUp\";s:4:\"desc\";s:19:\"pdotools_prop_tplUp\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:104:\"@INLINE <span class=\"link-up\"><a href=\"[[+link]]\" class=\"btn btn-light\">&uarr; [[+menutitle]]</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplNext\";a:7:{s:4:\"name\";s:7:\"tplNext\";s:4:\"desc\";s:21:\"pdotools_prop_tplNext\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:106:\"@INLINE <span class=\"link-next\"><a href=\"[[+link]]\" class=\"btn btn-light\">[[+menutitle]] &rarr;</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:34:\"pdotools_prop_neighbors_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:93:\"@INLINE <div class=\"neighbors d-flex justify-content-between\">[[+prev]][[+up]][[+next]]</div>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"loop\";a:7:{s:4:\"name\";s:4:\"loop\";s:4:\"desc\";s:18:\"pdotools_prop_loop\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoneighbors.php');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(28, 1, 0, 'pdoPage', '', 0, 8, 0, '/** @var array $scriptProperties */\n// Default variables\nif (empty($pageVarKey)) {\n    $pageVarKey = \'page\';\n}\nif (empty($pageNavVar)) {\n    $pageNavVar = \'page.nav\';\n}\nif (empty($pageCountVar)) {\n    $pageCountVar = \'pageCount\';\n}\nif (empty($totalVar)) {\n    $totalVar = \'total\';\n}\nif (empty($page)) {\n    $page = 1;\n}\nif (empty($pageLimit)) {\n    $pageLimit = 5;\n} else {\n    $pageLimit = (integer)$pageLimit;\n}\nif (!isset($plPrefix)) {\n    $plPrefix = \'\';\n}\nif (!empty($scriptProperties[\'ajaxMode\'])) {\n    $scriptProperties[\'ajax\'] = 1;\n}\n\n// Convert parameters from getPage if exists\nif (!empty($namespace)) {\n    $plPrefix = $namespace;\n}\nif (!empty($pageNavTpl)) {\n    $scriptProperties[\'tplPage\'] = $pageNavTpl;\n}\nif (!empty($pageNavOuterTpl)) {\n    $scriptProperties[\'tplPageWrapper\'] = $pageNavOuterTpl;\n}\nif (!empty($pageActiveTpl)) {\n    $scriptProperties[\'tplPageActive\'] = $pageActiveTpl;\n}\nif (!empty($pageFirstTpl)) {\n    $scriptProperties[\'tplPageFirst\'] = $pageFirstTpl;\n}\nif (!empty($pagePrevTpl)) {\n    $scriptProperties[\'tplPagePrev\'] = $pagePrevTpl;\n}\nif (!empty($pageNextTpl)) {\n    $scriptProperties[\'tplPageNext\'] = $pageNextTpl;\n}\nif (!empty($pageLastTpl)) {\n    $scriptProperties[\'tplPageLast\'] = $pageLastTpl;\n}\nif (!empty($pageSkipTpl)) {\n    $scriptProperties[\'tplPageSkip\'] = $pageSkipTpl;\n}\nif (!empty($pageNavScheme)) {\n    $scriptProperties[\'scheme\'] = $pageNavScheme;\n}\nif (!empty($cache_expires)) {\n    $scriptProperties[\'cacheTime\'] = $cache_expires;\n}\n//---\n$strictMode = !empty($strictMode);\n\n$isAjax = !empty($scriptProperties[\'ajax\']) && !empty($_SERVER[\'HTTP_X_REQUESTED_WITH\']) && $_SERVER[\'HTTP_X_REQUESTED_WITH\'] == \'XMLHttpRequest\';\nif ($isAjax && !isset($_REQUEST[$pageVarKey])) {\n    return;\n}\n\n/** @var pdoPage $pdoPage */\n$fqn = $modx->getOption(\'pdoPage.class\', null, \'pdotools.pdopage\', true);\n$path = $modx->getOption(\'pdopage_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoPage = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoPage->pdoTools->addTime(\'pdoTools loaded\');\n\n// Script and styles\nif (!$isAjax && !empty($scriptProperties[\'ajaxMode\'])) {\n    $pdoPage->loadJsCss();\n}\n// Removing of default scripts and styles so they do not overwrote nested snippet parameters\nif ($snippet = $modx->getObject(\'modSnippet\', array(\'name\' => \'pdoPage\'))) {\n    $properties = $snippet->get(\'properties\');\n    if ($scriptProperties[\'frontend_js\'] == $properties[\'frontend_js\'][\'value\']) {\n        unset($scriptProperties[\'frontend_js\']);\n    }\n    if ($scriptProperties[\'frontend_css\'] == $properties[\'frontend_css\'][\'value\']) {\n        unset($scriptProperties[\'frontend_css\']);\n    }\n}\n\n// Page\nif (isset($_REQUEST[$pageVarKey]) && $strictMode && (!is_numeric($_REQUEST[$pageVarKey]) || ($_REQUEST[$pageVarKey] <= 1 && !$isAjax))) {\n    return $pdoPage->redirectToFirst($isAjax);\n} elseif (!empty($_REQUEST[$pageVarKey])) {\n    $page = (integer)$_REQUEST[$pageVarKey];\n}\n$scriptProperties[\'page\'] = $page;\n$scriptProperties[\'request\'] = $_REQUEST;\n$scriptProperties[\'setTotal\'] = true;\n\n// Limit\nif (isset($_REQUEST[\'limit\'])) {\n    if (is_numeric($_REQUEST[\'limit\']) && abs($_REQUEST[\'limit\']) > 0) {\n        $scriptProperties[\'limit\'] = abs($_REQUEST[\'limit\']);\n    } elseif ($strictMode) {\n        unset($_GET[\'limit\']);\n\n        return $pdoPage->redirectToFirst($isAjax);\n    }\n}\nif (!empty($maxLimit) && !empty($scriptProperties[\'limit\']) && $scriptProperties[\'limit\'] > $maxLimit) {\n    $scriptProperties[\'limit\'] = $maxLimit;\n}\n\n// Offset\n$offset = !empty($scriptProperties[\'offset\']) && $scriptProperties[\'offset\'] > 0\n    ? (int)$scriptProperties[\'offset\']\n    : 0;\n$scriptProperties[\'offset\'] = $page > 1\n    ? $scriptProperties[\'limit\'] * ($page - 1) + $offset\n    : $offset;\nif (!empty($scriptProperties[\'offset\']) && empty($scriptProperties[\'limit\'])) {\n    $scriptProperties[\'limit\'] = 10000000;\n}\n\n$cache = !empty($cache) || (!$modx->user->id && !empty($cacheAnonymous));\n$url = $pdoPage->getBaseUrl();\n$output = $pagination = $total = $pageCount = \'\';\n\n$data = $cache\n    ? $pdoPage->pdoTools->getCache($scriptProperties)\n    : array();\n\nif (empty($data)) {\n    $output = $pdoPage->pdoTools->runSnippet($scriptProperties[\'element\'], $scriptProperties);\n    if ($output === false) {\n        return \'\';\n    } elseif (!empty($toPlaceholder)) {\n        $output = $modx->getPlaceholder($toPlaceholder);\n    }\n\n    // Pagination\n    $total = (int)$modx->getPlaceholder($totalVar);\n    $pageCount = !empty($scriptProperties[\'limit\']) && $total > $offset\n        ? ceil(($total - $offset) / $scriptProperties[\'limit\'])\n        : 0;\n\n    // Redirect to start if somebody specified incorrect page\n    if ($page > 1 && $page > $pageCount && $strictMode) {\n        return $pdoPage->redirectToFirst($isAjax);\n    }\n    if (!empty($pageCount) && $pageCount > 1) {\n        $pagination = array(\n            \'first\' => $page > 1 && !empty($tplPageFirst)\n                ? $pdoPage->makePageLink($url, 1, $tplPageFirst)\n                : \'\',\n            \'prev\' => $page > 1 && !empty($tplPagePrev)\n                ? $pdoPage->makePageLink($url, $page - 1, $tplPagePrev)\n                : \'\',\n            \'pages\' => $pageLimit >= 7 && empty($disableModernPagination)\n                ? $pdoPage->buildModernPagination($page, $pageCount, $url)\n                : $pdoPage->buildClassicPagination($page, $pageCount, $url),\n            \'next\' => $page < $pageCount && !empty($tplPageNext)\n                ? $pdoPage->makePageLink($url, $page + 1, $tplPageNext)\n                : \'\',\n            \'last\' => $page < $pageCount && !empty($tplPageLast)\n                ? $pdoPage->makePageLink($url, $pageCount, $tplPageLast)\n                : \'\',\n        );\n\n        if (!empty($pageCount)) {\n            foreach (array(\'first\', \'prev\', \'next\', \'last\') as $v) {\n                $tpl = \'tplPage\' . ucfirst($v) . \'Empty\';\n                if (!empty(${$tpl}) && empty($pagination[$v])) {\n                    $pagination[$v] = $pdoPage->pdoTools->getChunk(${$tpl});\n                }\n            }\n        }\n    } else {\n        $pagination = array(\n            \'first\' => \'\',\n            \'prev\' => \'\',\n            \'pages\' => \'\',\n            \'next\' => \'\',\n            \'last\' => \'\'\n        );\n    }\n\n    $data = array(\n        \'output\' => $output,\n        $pageVarKey => $page,\n        $pageCountVar => $pageCount,\n        $pageNavVar => !empty($tplPageWrapper)\n            ? $pdoPage->pdoTools->getChunk($tplPageWrapper, $pagination)\n            : $pdoPage->pdoTools->parseChunk(\'\', $pagination),\n        $totalVar => $total,\n    );\n    if ($cache) {\n        $pdoPage->pdoTools->setCache($data, $scriptProperties);\n    }\n}\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $data[\'output\'] .= \'<pre class=\"pdoPageLog\">\' . print_r($pdoPage->pdoTools->getTime(), 1) . \'</pre>\';\n}\n\nif ($isAjax) {\n    if ($pageNavVar != \'pagination\') {\n        $data[\'pagination\'] = $data[$pageNavVar];\n        unset($data[$pageNavVar]);\n    }\n    if ($pageCountVar != \'pages\') {\n        $data[\'pages\'] = (int)$data[$pageCountVar];\n        unset($data[$pageCountVar]);\n    }\n    if ($pageVarKey != \'page\') {\n        $data[\'page\'] = (int)$data[$pageVarKey];\n        unset($data[$pageVarKey]);\n    }\n    if ($totalVar != \'total\') {\n        $data[\'total\'] = (int)$data[$totalVar];\n        unset($data[$totalVar]);\n    }\n\n    $maxIterations = (integer)$modx->getOption(\'parser_max_iterations\', null, 10);\n    $modx->getParser()->processElementTags(\'\', $data[\'output\'], false, false, \'[[\', \']]\', array(), $maxIterations);\n    $modx->getParser()->processElementTags(\'\', $data[\'output\'], true, true, \'[[\', \']]\', array(), $maxIterations);\n\n    @session_write_close();\n    exit(json_encode($data));\n} else {\n    if (!empty($setMeta)) {\n        $charset = $modx->getOption(\'modx_charset\', null, \'UTF-8\');\n        $canurl = $pdoPage->pdoTools->config[\'scheme\'] !== \'full\'\n            ? rtrim($modx->getOption(\'site_url\'), \'/\') . \'/\' . ltrim($url, \'/\')\n            : $url;\n        $modx->regClientStartupHTMLBlock(\'<link rel=\"canonical\" href=\"\' . htmlentities($canurl, ENT_QUOTES, $charset) . \'\"/>\');\n        if ($data[$pageVarKey] > 1) {\n            $prevUrl = $pdoPage->makePageLink($canurl, $data[$pageVarKey] - 1);\n            $modx->regClientStartupHTMLBlock(\n                \'<link rel=\"prev\" href=\"\' . htmlentities($prevUrl, ENT_QUOTES, $charset) . \'\"/>\'\n            );\n        }\n        if ($data[$pageVarKey] < $data[$pageCountVar]) {\n            $nextUrl = $pdoPage->makePageLink($canurl, $data[$pageVarKey] + 1);\n            $modx->regClientStartupHTMLBlock(\n                \'<link rel=\"next\" href=\"\' . htmlentities($nextUrl, ENT_QUOTES, $charset) . \'\"/>\'\n            );\n        }\n    }\n\n    $modx->setPlaceholders($data, $plPrefix);\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $data[\'output\']);\n    } else {\n        return $data[\'output\'];\n    }\n}', 0, 'a:41:{s:8:\"plPrefix\";a:7:{s:4:\"name\";s:8:\"plPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_plPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"maxLimit\";a:7:{s:4:\"name\";s:8:\"maxLimit\";s:4:\"desc\";s:22:\"pdotools_prop_maxLimit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:100;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"page\";a:7:{s:4:\"name\";s:4:\"page\";s:4:\"desc\";s:18:\"pdotools_prop_page\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageVarKey\";a:7:{s:4:\"name\";s:10:\"pageVarKey\";s:4:\"desc\";s:24:\"pdotools_prop_pageVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"page\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:10:\"page.total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"pageLimit\";a:7:{s:4:\"name\";s:9:\"pageLimit\";s:4:\"desc\";s:23:\"pdotools_prop_pageLimit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:5;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"element\";a:7:{s:4:\"name\";s:7:\"element\";s:4:\"desc\";s:21:\"pdotools_prop_element\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:12:\"pdoResources\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageNavVar\";a:7:{s:4:\"name\";s:10:\"pageNavVar\";s:4:\"desc\";s:24:\"pdotools_prop_pageNavVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"page.nav\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"pageCountVar\";a:7:{s:4:\"name\";s:12:\"pageCountVar\";s:4:\"desc\";s:26:\"pdotools_prop_pageCountVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"pageCount\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"pageLinkScheme\";a:7:{s:4:\"name\";s:14:\"pageLinkScheme\";s:4:\"desc\";s:28:\"pdotools_prop_pageLinkScheme\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplPage\";a:7:{s:4:\"name\";s:7:\"tplPage\";s:4:\"desc\";s:21:\"pdotools_prop_tplPage\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:88:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">[[+pageNo]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"tplPageWrapper\";a:7:{s:4:\"name\";s:14:\"tplPageWrapper\";s:4:\"desc\";s:28:\"pdotools_prop_tplPageWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:83:\"@INLINE <ul class=\"pagination\">[[+first]][[+prev]][[+pages]][[+next]][[+last]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"tplPageActive\";a:7:{s:4:\"name\";s:13:\"tplPageActive\";s:4:\"desc\";s:27:\"pdotools_prop_tplPageActive\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li class=\"page-item active\"><a class=\"page-link\" href=\"[[+href]]\">[[+pageNo]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplPageFirst\";a:7:{s:4:\"name\";s:12:\"tplPageFirst\";s:4:\"desc\";s:26:\"pdotools_prop_tplPageFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">[[%pdopage_first]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageLast\";a:7:{s:4:\"name\";s:11:\"tplPageLast\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:94:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">[[%pdopage_last]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPagePrev\";a:7:{s:4:\"name\";s:11:\"tplPagePrev\";s:4:\"desc\";s:25:\"pdotools_prop_tplPagePrev\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:84:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">&laquo;</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageNext\";a:7:{s:4:\"name\";s:11:\"tplPageNext\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageNext\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:84:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">&raquo;</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageSkip\";a:7:{s:4:\"name\";s:11:\"tplPageSkip\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageSkip\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:81:\"@INLINE <li class=\"page-item disabled\"><a class=\"page-link\" href=\"#\">...</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:17:\"tplPageFirstEmpty\";a:7:{s:4:\"name\";s:17:\"tplPageFirstEmpty\";s:4:\"desc\";s:31:\"pdotools_prop_tplPageFirstEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:96:\"@INLINE <li class=\"page-item disabled\"><a class=\"page-link\" href=\"#\">[[%pdopage_first]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPageLastEmpty\";a:7:{s:4:\"name\";s:16:\"tplPageLastEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPageLastEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li class=\"page-item disabled\"><a class=\"page-link\" href=\"#\">[[%pdopage_last]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPagePrevEmpty\";a:7:{s:4:\"name\";s:16:\"tplPagePrevEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPagePrevEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:85:\"@INLINE <li class=\"page-item disabled\"><a class=\"page-link\" href=\"#\">&laquo;</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPageNextEmpty\";a:7:{s:4:\"name\";s:16:\"tplPageNextEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPageNextEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:85:\"@INLINE <li class=\"page-item disabled\"><a class=\"page-link\" href=\"#\">&raquo;</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"cacheAnonymous\";a:7:{s:4:\"name\";s:14:\"cacheAnonymous\";s:4:\"desc\";s:28:\"pdotools_prop_cacheAnonymous\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"ajax\";a:7:{s:4:\"name\";s:4:\"ajax\";s:4:\"desc\";s:18:\"pdotools_prop_ajax\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"ajaxMode\";a:7:{s:4:\"name\";s:8:\"ajaxMode\";s:4:\"desc\";s:22:\"pdotools_prop_ajaxMode\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:4:\"text\";s:4:\"None\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"text\";s:7:\"Default\";s:5:\"value\";s:7:\"default\";}i:2;a:2:{s:4:\"text\";s:6:\"Scroll\";s:5:\"value\";s:6:\"scroll\";}i:3;a:2:{s:4:\"text\";s:6:\"Button\";s:5:\"value\";s:6:\"button\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"ajaxElemWrapper\";a:7:{s:4:\"name\";s:15:\"ajaxElemWrapper\";s:4:\"desc\";s:29:\"pdotools_prop_ajaxElemWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"#pdopage\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemRows\";a:7:{s:4:\"name\";s:12:\"ajaxElemRows\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemRows\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:14:\"#pdopage .rows\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"ajaxElemPagination\";a:7:{s:4:\"name\";s:18:\"ajaxElemPagination\";s:4:\"desc\";s:32:\"pdotools_prop_ajaxElemPagination\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:20:\"#pdopage .pagination\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemLink\";a:7:{s:4:\"name\";s:12:\"ajaxElemLink\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemLink\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:22:\"#pdopage .pagination a\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemMore\";a:7:{s:4:\"name\";s:12:\"ajaxElemMore\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemMore\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:18:\"#pdopage .btn-more\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"ajaxTplMore\";a:7:{s:4:\"name\";s:11:\"ajaxTplMore\";s:4:\"desc\";s:25:\"pdotools_prop_ajaxTplMore\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:75:\"@INLINE <button class=\"btn btn-primary btn-more\">[[%pdopage_more]]</button>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"ajaxHistory\";a:7:{s:4:\"name\";s:11:\"ajaxHistory\";s:4:\"desc\";s:25:\"pdotools_prop_ajaxHistory\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:3:{i:0;a:2:{s:4:\"text\";s:4:\"Auto\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"text\";s:7:\"Enabled\";s:5:\"value\";i:1;}i:2;a:2:{s:4:\"text\";s:8:\"Disabled\";s:5:\"value\";i:0;}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"frontend_js\";a:7:{s:4:\"name\";s:11:\"frontend_js\";s:4:\"desc\";s:25:\"pdotools_prop_frontend_js\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:31:\"[[+assetsUrl]]js/pdopage.min.js\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"frontend_css\";a:7:{s:4:\"name\";s:12:\"frontend_css\";s:4:\"desc\";s:26:\"pdotools_prop_frontend_css\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:33:\"[[+assetsUrl]]css/pdopage.min.css\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"setMeta\";a:7:{s:4:\"name\";s:7:\"setMeta\";s:4:\"desc\";s:21:\"pdotools_prop_setMeta\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"strictMode\";a:7:{s:4:\"name\";s:10:\"strictMode\";s:4:\"desc\";s:24:\"pdotools_prop_strictMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdopage.php'),
(29, 1, 0, 'pdoMenu', '', 0, 8, 0, '/** @var array $scriptProperties */\n\n// Convert parameters from Wayfinder if exists\nif (isset($startId)) {\n    $scriptProperties[\'parents\'] = $startId;\n}\nif (!empty($includeDocs)) {\n    $tmp = array_map(\'trim\', explode(\',\', $includeDocs));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'resources\'])) {\n            $scriptProperties[\'resources\'] .= \',\' . $v;\n        } else {\n            $scriptProperties[\'resources\'] = $v;\n        }\n    }\n}\nif (!empty($excludeDocs)) {\n    $tmp = array_map(\'trim\', explode(\',\', $excludeDocs));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'resources\'])) {\n            $scriptProperties[\'resources\'] .= \',-\' . $v;\n        } else {\n            $scriptProperties[\'resources\'] = \'-\' . $v;\n        }\n    }\n}\n\nif (!empty($previewUnpublished) && $modx->hasPermission(\'view_unpublished\')) {\n    $scriptProperties[\'showUnpublished\'] = 1;\n}\n\n$scriptProperties[\'depth\'] = empty($level) ? 100 : abs($level) - 1;\nif (!empty($contexts)) {\n    $scriptProperties[\'context\'] = $contexts;\n}\nif (empty($scriptProperties[\'context\'])) {\n    $scriptProperties[\'context\'] = $modx->resource->context_key;\n}\n\n// Save original parents specified by user\n$specified_parents = array_map(\'trim\', explode(\',\', $scriptProperties[\'parents\']));\n\nif ($scriptProperties[\'parents\'] === \'\') {\n    $scriptProperties[\'parents\'] = $modx->resource->id;\n} elseif ($scriptProperties[\'parents\'] === 0 || $scriptProperties[\'parents\'] === \'0\') {\n    if ($scriptProperties[\'depth\'] !== \'\' && $scriptProperties[\'depth\'] !== 100) {\n        $contexts = array_map(\'trim\', explode(\',\', $scriptProperties[\'context\']));\n        $parents = array();\n        if (!empty($scriptProperties[\'showDeleted\'])) {\n            $pdoFetch = $modx->getService(\'pdoFetch\');\n            foreach ($contexts as $ctx) {\n                $parents = array_merge($parents,\n                    $pdoFetch->getChildIds(\'modResource\', 0, $scriptProperties[\'depth\'], array(\'context\' => $ctx)));\n            }\n        } else {\n            foreach ($contexts as $ctx) {\n                $parents = array_merge($parents,\n                    $modx->getChildIds(0, $scriptProperties[\'depth\'], array(\'context\' => $ctx)));\n            }\n        }\n        $scriptProperties[\'parents\'] = !empty($parents) ? implode(\',\', $parents) : \'+0\';\n        $scriptProperties[\'depth\'] = 0;\n    }\n    $scriptProperties[\'includeParents\'] = 1;\n    $scriptProperties[\'displayStart\'] = 0;\n} else {\n    $parents = array_map(\'trim\', explode(\',\', $scriptProperties[\'parents\']));\n    $parents_in = $parents_out = array();\n    foreach ($parents as $v) {\n        if (!is_numeric($v)) {\n            continue;\n        }\n        if ($v[0] == \'-\') {\n            $parents_out[] = abs($v);\n        } else {\n            $parents_in[] = abs($v);\n        }\n    }\n\n    if (empty($parents_in)) {\n        $scriptProperties[\'includeParents\'] = 1;\n        $scriptProperties[\'displayStart\'] = 0;\n    }\n}\n\nif (!empty($displayStart)) {\n    $scriptProperties[\'includeParents\'] = 1;\n}\nif (!empty($ph)) {\n    $toPlaceholder = $ph;\n}\nif (!empty($sortOrder)) {\n    $scriptProperties[\'sortdir\'] = $sortOrder;\n}\nif (!empty($sortBy)) {\n    $scriptProperties[\'sortby\'] = $sortBy;\n}\nif (!empty($permissions)) {\n    $scriptProperties[\'checkPermissions\'] = $permissions;\n}\nif (!empty($cacheResults)) {\n    $scriptProperties[\'cache\'] = $cacheResults;\n}\nif (!empty($ignoreHidden)) {\n    $scriptProperties[\'showHidden\'] = $ignoreHidden;\n}\n\n$wfTemplates = array(\n    \'outerTpl\' => \'tplOuter\',\n    \'rowTpl\' => \'tpl\',\n    \'parentRowTpl\' => \'tplParentRow\',\n    \'parentRowHereTpl\' => \'tplParentRowHere\',\n    \'hereTpl\' => \'tplHere\',\n    \'innerTpl\' => \'tplInner\',\n    \'innerRowTpl\' => \'tplInnerRow\',\n    \'innerHereTpl\' => \'tplInnerHere\',\n    \'activeParentRowTpl\' => \'tplParentRowActive\',\n    \'categoryFoldersTpl\' => \'tplCategoryFolder\',\n    \'startItemTpl\' => \'tplStart\',\n);\nforeach ($wfTemplates as $k => $v) {\n    if (isset(${$k})) {\n        $scriptProperties[$v] = ${$k};\n    }\n}\n//---\n\n/** @var pdoMenu $pdoMenu */\n$fqn = $modx->getOption(\'pdoMenu.class\', null, \'pdotools.pdomenu\', true);\n$path = $modx->getOption(\'pdomenu_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoMenu = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoMenu->pdoTools->addTime(\'pdoTools loaded\');\n\n$cache = !empty($cache) || (!$modx->user->id && !empty($cacheAnonymous));\nif (empty($scriptProperties[\'cache_key\'])) {\n    $scriptProperties[\'cache_key\'] = \'pdomenu/\' . sha1(serialize($scriptProperties));\n}\n\n$output = \'\';\n$tree = array();\nif ($cache) {\n    $tree = $pdoMenu->pdoTools->getCache($scriptProperties);\n}\nif (empty($tree)) {\n    $data = $pdoMenu->pdoTools->run();\n    $data = $pdoMenu->pdoTools->buildTree($data, \'id\', \'parent\', $specified_parents);\n    $tree = array();\n    foreach ($data as $k => $v) {\n        if (empty($v[\'id\'])) {\n            if (!in_array($k, $specified_parents) && !$pdoMenu->checkResource($k)) {\n                continue;\n            } else {\n                $tree = array_merge($tree, $v[\'children\']);\n            }\n        } else {\n            $tree[$k] = $v;\n        }\n    }\n    if ($cache) {\n        $pdoMenu->pdoTools->setCache($tree, $scriptProperties);\n    }\n}\nif (!empty($tree)) {\n    $output = $pdoMenu->templateTree($tree);\n}\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $output .= \'<pre class=\"pdoMenuLog\">\' . print_r($pdoMenu->pdoTools->getTime(), 1) . \'</pre>\';\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n} else {\n    return $output;\n}', 0, 'a:51:{s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"level\";a:7:{s:4:\"name\";s:5:\"level\";s:4:\"desc\";s:19:\"pdotools_prop_level\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"displayStart\";a:7:{s:4:\"name\";s:12:\"displayStart\";s:4:\"desc\";s:26:\"pdotools_prop_displayStart\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"templates\";a:7:{s:4:\"name\";s:9:\"templates\";s:4:\"desc\";s:23:\"pdotools_prop_templates\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"cacheAnonymous\";a:7:{s:4:\"name\";s:14:\"cacheAnonymous\";s:4:\"desc\";s:28:\"pdotools_prop_cacheAnonymous\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"plPrefix\";a:7:{s:4:\"name\";s:8:\"plPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_plPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"wf.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"previewUnpublished\";a:7:{s:4:\"name\";s:18:\"previewUnpublished\";s:4:\"desc\";s:32:\"pdotools_prop_previewUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"hideSubMenus\";a:7:{s:4:\"name\";s:12:\"hideSubMenus\";s:4:\"desc\";s:26:\"pdotools_prop_hideSubMenus\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"rowIdPrefix\";a:7:{s:4:\"name\";s:11:\"rowIdPrefix\";s:4:\"desc\";s:25:\"pdotools_prop_rowIdPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"firstClass\";a:7:{s:4:\"name\";s:10:\"firstClass\";s:4:\"desc\";s:24:\"pdotools_prop_firstClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"first\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"lastClass\";a:7:{s:4:\"name\";s:9:\"lastClass\";s:4:\"desc\";s:23:\"pdotools_prop_lastClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"last\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"hereClass\";a:7:{s:4:\"name\";s:9:\"hereClass\";s:4:\"desc\";s:23:\"pdotools_prop_hereClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:6:\"active\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"parentClass\";a:7:{s:4:\"name\";s:11:\"parentClass\";s:4:\"desc\";s:25:\"pdotools_prop_parentClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"rowClass\";a:7:{s:4:\"name\";s:8:\"rowClass\";s:4:\"desc\";s:22:\"pdotools_prop_rowClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"outerClass\";a:7:{s:4:\"name\";s:10:\"outerClass\";s:4:\"desc\";s:24:\"pdotools_prop_outerClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"innerClass\";a:7:{s:4:\"name\";s:10:\"innerClass\";s:4:\"desc\";s:24:\"pdotools_prop_innerClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"levelClass\";a:7:{s:4:\"name\";s:10:\"levelClass\";s:4:\"desc\";s:24:\"pdotools_prop_levelClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"selfClass\";a:7:{s:4:\"name\";s:9:\"selfClass\";s:4:\"desc\";s:23:\"pdotools_prop_selfClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"webLinkClass\";a:7:{s:4:\"name\";s:12:\"webLinkClass\";s:4:\"desc\";s:26:\"pdotools_prop_webLinkClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplOuter\";a:7:{s:4:\"name\";s:8:\"tplOuter\";s:4:\"desc\";s:22:\"pdotools_prop_tplOuter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:41:\"@INLINE <ul[[+classes]]>[[+wrapper]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li[[+classes]]><a href=\"[[+link]]\" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplParentRow\";a:7:{s:4:\"name\";s:12:\"tplParentRow\";s:4:\"desc\";s:26:\"pdotools_prop_tplParentRow\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplParentRowHere\";a:7:{s:4:\"name\";s:16:\"tplParentRowHere\";s:4:\"desc\";s:30:\"pdotools_prop_tplParentRowHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplHere\";a:7:{s:4:\"name\";s:7:\"tplHere\";s:4:\"desc\";s:21:\"pdotools_prop_tplHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplInner\";a:7:{s:4:\"name\";s:8:\"tplInner\";s:4:\"desc\";s:22:\"pdotools_prop_tplInner\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplInnerRow\";a:7:{s:4:\"name\";s:11:\"tplInnerRow\";s:4:\"desc\";s:25:\"pdotools_prop_tplInnerRow\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplInnerHere\";a:7:{s:4:\"name\";s:12:\"tplInnerHere\";s:4:\"desc\";s:26:\"pdotools_prop_tplInnerHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"tplParentRowActive\";a:7:{s:4:\"name\";s:18:\"tplParentRowActive\";s:4:\"desc\";s:32:\"pdotools_prop_tplParentRowActive\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:17:\"tplCategoryFolder\";a:7:{s:4:\"name\";s:17:\"tplCategoryFolder\";s:4:\"desc\";s:31:\"pdotools_prop_tplCategoryFolder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplStart\";a:7:{s:4:\"name\";s:8:\"tplStart\";s:4:\"desc\";s:22:\"pdotools_prop_tplStart\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:55:\"@INLINE <h2[[+classes]]>[[+menutitle]]</h2>[[+wrapper]]\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"checkPermissions\";a:7:{s:4:\"name\";s:16:\"checkPermissions\";s:4:\"desc\";s:30:\"pdotools_prop_checkPermissions\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"hereId\";a:7:{s:4:\"name\";s:6:\"hereId\";s:4:\"desc\";s:20:\"pdotools_prop_hereId\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"countChildren\";a:7:{s:4:\"name\";s:13:\"countChildren\";s:4:\"desc\";s:27:\"pdotools_prop_countChildren\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdomenu.php'),
(30, 1, 0, 'pdoTitle', '', 0, 8, 0, '/** @var array $scriptProperties */\nif (empty($outputSeparator)) {\n    $outputSeparator = \' / \';\n}\nif (empty($titleField)) {\n    $titleField = \'longtitle\';\n}\nif (!isset($pageVarKey)) {\n    $pageVarKey = \'page\';\n}\nif (!isset($queryVarKey)) {\n    $queryVarKey = \'query\';\n}\nif (empty($tplPages)) {\n    $tplPages = \'@INLINE [[%pdopage_page]] [[+page]] [[%pdopage_from]] [[+pageCount]]\';\n}\nif (empty($tplSearch)) {\n    $tplSearch = \'@INLINE «[[+mse2_query]]»\';\n}\nif (empty($minQuery)) {\n    $minQuery = 3;\n}\nif (empty($id)) {\n    $id = $modx->resource->id;\n}\nif (empty($cacheKey)) {\n    $cacheKey = \'title_crumbs\';\n}\nif (!isset($cacheTime)) {\n    $cacheTime = 0;\n}\n/** @var pdoTools $pdoTools */\n$fqn = $modx->getOption(\'pdoTools.class\', null, \'pdotools.pdotools\', true);\n$path = $modx->getOption(\'pdotools_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoTools = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$modx->lexicon->load(\'pdotools:pdopage\');\n\n/** @var modResource $resource */\n$resource = ($id == $modx->resource->id)\n    ? $modx->resource\n    : $modx->getObject(\'modResource\', $id);\nif (!$resource) {\n    return \'\';\n}\n\n$title = array();\n$pagetitle = trim($resource->get($titleField));\nif (empty($pagetitle)) {\n    $pagetitle = $resource->get(\'pagetitle\');\n}\n\n// Add search request if exists\nif (!empty($_GET[$queryVarKey]) && strlen($_GET[$queryVarKey]) >= $minQuery && !empty($tplSearch)) {\n    $pagetitle .= \' \' . $pdoTools->getChunk($tplSearch, array(\n            $queryVarKey => $modx->stripTags($_GET[$queryVarKey]),\n        ));\n}\n$title[] = $pagetitle;\n\n// Add pagination if exists\nif (!empty($_GET[$pageVarKey]) && !empty($tplPages)) {\n    $title[] = $pdoTools->getChunk($tplPages, array(\n        \'page\' => intval($_GET[$pageVarKey]),\n    ));\n}\n\n// Add parents\n$cacheKey = $resource->getCacheKey() . \'/\' . $cacheKey;\n$cacheOptions = array(\'cache_key\' => $modx->getOption(\'cache_resource_key\', null, \'resource\'));\n$crumbs = \'\';\nif (empty($cache) || !$crumbs = $modx->cacheManager->get($cacheKey, $cacheOptions)) {\n    $crumbs = $pdoTools->runSnippet(\'pdoCrumbs\', array_merge(\n        array(\n            \'to\' => $resource->id,\n            \'outputSeparator\' => $outputSeparator,\n            \'showHome\' => 0,\n            \'showAtHome\' => 0,\n            \'showCurrent\' => 0,\n            \'direction\' => \'rtl\',\n            \'tpl\' => \'@INLINE [[+menutitle]]\',\n            \'tplCurrent\' => \'@INLINE [[+menutitle]]\',\n            \'tplWrapper\' => \'@INLINE [[+output]]\',\n            \'tplMax\' => \'\',\n            \'tplHome\' => \'\',\n        ), $scriptProperties\n    ));\n}\nif (!empty($crumbs)) {\n    if (!empty($cache)) {\n        $modx->cacheManager->set($cacheKey, $crumbs, $cacheTime, $cacheOptions);\n    }\n    $title[] = $crumbs;\n}\n\nif (!empty($registerJs)) {\n    $config = array(\n        \'separator\' => $outputSeparator,\n        \'tpl\' => str_replace(array(\'[[+\', \']]\'), array(\'{\', \'}\'), $pdoTools->getChunk($tplPages)),\n    );\n    /** @noinspection Annotator */\n    $modx->regClientStartupScript(\'<script type=\"text/javascript\">pdoTitle = \' . json_encode($config) . \';</script>\',\n        true);\n}\n\nreturn implode($outputSeparator, $title);', 0, 'a:13:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"exclude\";a:7:{s:4:\"name\";s:7:\"exclude\";s:4:\"desc\";s:21:\"pdotools_prop_exclude\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:25:\"pdotools_prop_title_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"titleField\";a:7:{s:4:\"name\";s:10:\"titleField\";s:4:\"desc\";s:24:\"pdotools_prop_titleField\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"longtitle\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:25:\"pdotools_prop_title_cache\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplPages\";a:7:{s:4:\"name\";s:8:\"tplPages\";s:4:\"desc\";s:22:\"pdotools_prop_tplPages\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:68:\"@INLINE [[%pdopage_page]] [[+page]] [[%pdopage_from]] [[+pageCount]]\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageVarKey\";a:7:{s:4:\"name\";s:10:\"pageVarKey\";s:4:\"desc\";s:24:\"pdotools_prop_pageVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"page\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"tplSearch\";a:7:{s:4:\"name\";s:9:\"tplSearch\";s:4:\"desc\";s:23:\"pdotools_prop_tplSearch\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:27:\"@INLINE «[[+mse2_query]]»\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"queryVarKey\";a:7:{s:4:\"name\";s:11:\"queryVarKey\";s:4:\"desc\";s:25:\"pdotools_prop_queryVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"query\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"minQuery\";a:7:{s:4:\"name\";s:8:\"minQuery\";s:4:\"desc\";s:22:\"pdotools_prop_minQuery\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:35:\"pdotools_prop_title_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\" / \";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"registerJs\";a:7:{s:4:\"name\";s:10:\"registerJs\";s:4:\"desc\";s:24:\"pdotools_prop_registerJs\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdotitle.php');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(31, 1, 0, 'pdoArchive', '', 0, 8, 0, '$modx->lexicon->load(\'pdotools:pdoarchive\');\n\n/** @var array $scriptProperties */\n$tplWrapper = $modx->getOption(\'tplWrapper\', $scriptProperties);\n$tplYear = $modx->getOption(\'tplYear\', $scriptProperties);\n$tplMonth = $modx->getOption(\'tplMonth\', $scriptProperties);\n$tplDay = $modx->getOption(\'tplDay\', $scriptProperties);\n$tpl = $modx->getOption(\'tpl\', $scriptProperties);\n$dateField = $modx->getOption(\'dateField\', $scriptProperties, \'createdon\', true);\n$dateFormat = $modx->getOption(\'dateFormat\', $scriptProperties, \'H:i\', true);\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \"\\n\");\n\n// Adding extra parameters into special place so we can put them in a results\n/** @var modSnippet $snippet */\n$additionalPlaceholders = $properties = array();\nif (isset($this) && $this instanceof modSnippet) {\n    $properties = $this->get(\'properties\');\n} elseif ($snippet = $modx->getObject(\'modSnippet\', array(\'name\' => \'pdoResources\'))) {\n    $properties = $snippet->get(\'properties\');\n}\nif (!empty($properties)) {\n    foreach ($scriptProperties as $k => $v) {\n        if (!isset($properties[$k])) {\n            $additionalPlaceholders[$k] = $v;\n        }\n    }\n}\n$scriptProperties[\'additionalPlaceholders\'] = $additionalPlaceholders;\nif (isset($parents) && $parents === \'\') {\n    $scriptProperties[\'parents\'] = $modx->resource->id;\n}\n$scriptProperties[\'return\'] = \'data\';\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n$rows = $pdoFetch->run();\n\n// Process rows\n$tree = array();\nforeach ($rows as $row) {\n    $tmp = $row[$dateField];\n    if (!is_numeric($tmp)) {\n        $tmp = strtotime($tmp);\n    }\n    $year = date(\'Y\', $tmp);\n    $month = date(\'m\', $tmp);\n    $day = date(\'d\', $tmp);\n    $tree[$year][$month][$day][] = $row;\n}\n\n$output = \'\';\nforeach ($tree as $year => $months) {\n    $rows_year = \'\';\n    $count_year = 0;\n\n    foreach ($months as $month => $days) {\n        $rows_month = \'\';\n        $count_month = 0;\n\n        foreach ($days as $day => $resources) {\n            $rows_day = array();\n            $count_day = 0;\n            $idx = 1;\n\n            foreach ($resources as $resource) {\n                $resource[\'day\'] = $day;\n                $resource[\'month\'] = $month;\n                $resource[\'year\'] = $year;\n                $resource[\'date\'] = strftime($dateFormat, $resource[$dateField]);\n                $resource[\'idx\'] = $idx++;\n                $resource[\'menutitle\'] = !empty($resource[\'menutitle\'])\n                    ? $resource[\'menutitle\']\n                    : $resource[\'pagetitle\'];\n                // Add placeholder [[+link]] if specified\n                if (!empty($scriptProperties[\'useWeblinkUrl\'])) {\n                    if (!isset($resource[\'context_key\'])) {\n                        $resource[\'context_key\'] = \'\';\n                    }\n                    if (isset($resource[\'class_key\']) && ($resource[\'class_key\'] == \'modWebLink\')) {\n                        $resource[\'link\'] = isset($resource[\'content\']) && is_numeric(trim($resource[\'content\'], \'[]~ \'))\n                            ? $pdoFetch->makeUrl(intval(trim($resource[\'content\'], \'[]~ \')), $resource)\n                            : (isset($resource[\'content\']) ? $resource[\'content\'] : \'\');\n                    } else {\n                        $resource[\'link\'] = $pdoFetch->makeUrl($resource[\'id\'], $resource);\n                    }\n                } else {\n                    $resource[\'link\'] = \'\';\n                }\n                $tpl = $pdoFetch->defineChunk($resource);\n                $rows_day[] = $pdoFetch->getChunk($tpl, $resource);\n                $count_year++;\n                $count_month++;\n                $count_day++;\n            }\n\n            $rows_month .= !empty($tplDay)\n                ? $pdoFetch->getChunk($tplDay, array(\n                    \'day\' => $day,\n                    \'month\' => $month,\n                    \'year\' => $year,\n                    \'count\' => $count_day,\n                    \'wrapper\' => implode($outputSeparator, $rows_day),\n                ), $pdoFetch->config[\'fastMode\'])\n                : implode($outputSeparator, $rows_day);\n        }\n\n        $rows_year .= !empty($tplMonth)\n            ? $pdoFetch->getChunk($tplMonth, array(\n                \'month\' => $month,\n                \'month_name\' => $modx->lexicon(\'pdoarchive_month_\' . $month),\n                \'year\' => $year,\n                \'count\' => $count_month,\n                \'wrapper\' => $rows_month,\n            ), $pdoFetch->config[\'fastMode\'])\n            : $rows_month;\n    }\n\n    $output .= !empty($tplYear)\n        ? $pdoFetch->getChunk($tplYear, array(\n            \'year\' => $year,\n            \'count\' => $count_year,\n            \'wrapper\' => $rows_year,\n        ), $pdoFetch->config[\'fastMode\'])\n        : $rows_year;\n}\n$pdoFetch->addTime(\'Rows processed\');\n\n// Return output\nif (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n    $output = $pdoFetch->getChunk(\n        $tplWrapper,\n        array_merge($additionalPlaceholders, array(\'output\' => $output)),\n        $pdoFetch->config[\'fastMode\']\n    );\n    $pdoFetch->addTime(\'Rows wrapped\');\n}\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $output .= \'<pre class=\"pdoArchiveLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n} else {\n    return $output;\n}', 0, 'a:36:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:65:\"@INLINE <li>[[+date]] <a href=\"[[+link]]\">[[+menutitle]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplYear\";a:7:{s:4:\"name\";s:7:\"tplYear\";s:4:\"desc\";s:21:\"pdotools_prop_tplYear\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:71:\"@INLINE <h3>[[+year]] <sup>([[+count]])</sup></h3><ul>[[+wrapper]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplMonth\";a:7:{s:4:\"name\";s:8:\"tplMonth\";s:4:\"desc\";s:22:\"pdotools_prop_tplMonth\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:86:\"@INLINE <li><h4>[[+month_name]] <sup>([[+count]])</sup></h4><ul>[[+wrapper]]</ul></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplDay\";a:7:{s:4:\"name\";s:6:\"tplDay\";s:4:\"desc\";s:20:\"pdotools_prop_tplDay\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:79:\"@INLINE <li><h5>[[+day]] <sup>([[+count]])</sup></h5><ul>[[+wrapper]]</ul></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"dateField\";a:7:{s:4:\"name\";s:9:\"dateField\";s:4:\"desc\";s:23:\"pdotools_prop_dateField\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"createdon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"dateFormat\";a:7:{s:4:\"name\";s:10:\"dateFormat\";s:4:\"desc\";s:24:\"pdotools_prop_dateFormat\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"%H:%M\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"createdon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"sortbyTV\";a:7:{s:4:\"name\";s:8:\"sortbyTV\";s:4:\"desc\";s:22:\"pdotools_prop_sortbyTV\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"sortbyTVType\";a:7:{s:4:\"name\";s:12:\"sortbyTVType\";s:4:\"desc\";s:26:\"pdotools_prop_sortbyTVType\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"sortdirTV\";a:7:{s:4:\"name\";s:9:\"sortdirTV\";s:4:\"desc\";s:23:\"pdotools_prop_sortdirTV\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"includeContent\";a:7:{s:4:\"name\";s:14:\"includeContent\";s:4:\"desc\";s:28:\"pdotools_prop_includeContent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoarchive.php'),
(32, 0, 0, 'jwtDecode', 'Validating or encoding JWT Token, return Payload Data', 0, 9, 0, '/**\n * jwtDecode snippet for modJWT extra\n *\n * Copyright (C) 2019 by Zaenal <zaenal(#)lokamaya.com>\n * Created on 03-26-2019\n * \n * modJWT is free software; you can redistribute it and/or modify it under the\n * terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * modJWT is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * modJWT; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package modjwt\n */\n\n/**\n * jwtDecode\n *\n * DESCRIPTION\n *\n * Validating or encoding JWT Token, return Payload Data\n * You can output directly or to placeholder\n *\n *\n * PROPERTIES:\n * &method                  string     required    Default: `HEADER` (options: HEADER, JSON, POST, GET)\n * &httpQuery               string     required    required if using method JSON, POST, or GET. Default: token.\n * &redirectTo              mixed      optional    Default: null; otherwise will be redirected to given uri\n * &redirectScheme          string     optional    Default: `full` (modx->makeURL parameter)\n * -------\n * &typ                     string     optional    Default: `JWT` (options: JWT, JWS)\n * &alg                     string     required    Default: `HS256,HS384,HS512`; list of allowed alghoritms\n * &validAlg                string     optional    Alternate to &alg\n * -------\n * secretKey                string     required    Required for symetric algorithm, like HS256, HS384 or HS512.  \n *                                                 - using default modx setting: `[[++modjwt.secretkey]]`\n *                                                 - using custom secret key: `mysecretkey1234`\n * secretFile               string     required    Absolute path to file PUBLIC-KEY. Required for asymetric algorithm, like RS256.\n *                                                 - using default modx setting: `[[++modjwt.publickey]]`\n *                                                 - using custom file: `/var/www/modx/protectedfolder/mypublic.key`\n * -------\n * &mimeType                string     optional    Default: `JSON` (options: json, html)\n * &toPlaceholder           mixed      optional    Default: null (direct output), otherwise will be set to the &toPlaceholder\'s value.\n * &debugPlaceholder        string     optional    Default: `jwtDebug`\n * -------\n * &iss                     string     optional    URI of JWT issuer (default: your MODx URL) \n * &sub                     string     optional    If empty, auto-populated by subField value below\n * &subField                string     optional    Default: email of visitor/user (options: username, email, userid, sessionid)\n * &aud                     string     optional    URI of the audience/server \n * &jti                     bool       optional    Default: false (if true, auto-populated by sessionid)\n * &leeway                  integer    optional    Default: 0, the amount of seconds to move or act that is available; no need in same server\n *\n *\n * USAGE:\n *\n * [[jwtDecode]]\n * [[jwtDecode? &redirectTo=`50`]]                         //on success will be redirected to resourceid=10\n * [[jwtDecode? &redirectTo=`http://mydomain.com/video/`]] //on success will be redirected to this url\n * [[jwtDecode? &validAlg=`HS256,HS384`]]                  //only this algorithm allowed\n *\n * @var modX $modx\n * @var array $scriptProperties\n * @var modJWT $modJWT\n**/\n\n$output = \'\';\n\n/**\n * You can edit scriptProperties configurations below\n**/\n\n// Core path\n$corePath  = $modx->getOption(\'core_path\', null, MODX_CORE_PATH) . \'components/modjwt/\';\n$scriptProperties[\'corePath\'] = $corePath;\n$scriptProperties[\'requestType\'] = \'decode\';\n\n/** @var modJWT $modJWT */\n$modJWT = $modx->getService(\n    \'modjwt\', \n    \'modFirebaseJWT\', \n    $corePath . \'model/modjwt/\',\n    $scriptProperties\n);\n\nif (!$modJWT) {\n    $log = \'Could not load modJWT class!\';\n    \n    $modx->setPlaceholder($debugPlaceholder, $log);\n    $modx->log(modX::LOG_LEVEL_ERROR, $log);\n    \n    return json_encode(array(\n        \'_valid\'     => 0,\n        \'status\'     => 503,\n        \'statusText\' => \'Service Unavailable\',\n        \'errorLog\'   => $log\n    ));\n}\n\n$output = \'\';\nif ($payload = $modJWT->decodeJWT()) {  //success\n  $output = $modJWT->jsonData;\n} else {                                //error\n  $output = $modJWT->errorData;\n}\n\nreturn $output;', 0, 'a:18:{s:3:\"aud\";a:7:{s:4:\"name\";s:3:\"aud\";s:4:\"desc\";s:50:\"URI of the audience/server (default: your domain) \";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"iss\";a:7:{s:4:\"name\";s:3:\"iss\";s:4:\"desc\";s:41:\"URI of JWT issuer (default: your domain) \";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"jti\";a:7:{s:4:\"name\";s:3:\"jti\";s:4:\"desc\";s:53:\"Default: false (if true, auto-populated by sessionid)\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"sub\";a:7:{s:4:\"name\";s:3:\"sub\";s:4:\"desc\";s:79:\"Subject or user that use the Token. If empty, auto-populated by subField value.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:8:\"validAlg\";a:7:{s:4:\"name\";s:8:\"validAlg\";s:4:\"desc\";s:17:\"Alternate to &alg\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:6:\"leeway\";a:7:{s:4:\"name\";s:6:\"leeway\";s:4:\"desc\";s:48:\"Timestamp leeway synchronization between servers\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:6:\"expAge\";a:7:{s:4:\"name\";s:6:\"expAge\";s:4:\"desc\";s:33:\"Expire age. Default: 3600 seconds\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"3600\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"alg\";a:7:{s:4:\"name\";s:3:\"alg\";s:4:\"desc\";s:71:\"JWT algorithm. Default `HS256` (options: HS256, HS384, HS512 and RS256)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"HS256\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"typ\";a:7:{s:4:\"name\";s:3:\"typ\";s:4:\"desc\";s:45:\"JSON Type. Default: `JWT` (options: JWT, JWS)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"JWT\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:8:\"subField\";a:7:{s:4:\"name\";s:8:\"subField\";s:4:\"desc\";s:103:\"User variable to use for \"sub\" as subject. Default: email (options: username, email, userid, sessionid)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"email\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:10:\"publicFile\";a:7:{s:4:\"name\";s:10:\"publicFile\";s:4:\"desc\";s:133:\"Absolute path to file PUBLIC KEY. Required for asymetric algorithm, like RS256. Default: `[[++modjwt.publickey]]` from configuration.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:4:\"keys\";}s:9:\"secretKey\";a:7:{s:4:\"name\";s:9:\"secretKey\";s:4:\"desc\";s:116:\"Secret key for symetric algorithm, like HS256, HS384 or HS512. Default: `[[++modjwt.secretkey]]` from configuration.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:4:\"keys\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:42:\"Default: null (if null mean direct output)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}s:10:\"redirectTo\";a:7:{s:4:\"name\";s:10:\"redirectTo\";s:4:\"desc\";s:54:\"Default: 0; otherwise will be redirected to given uri.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}s:6:\"method\";a:7:{s:4:\"name\";s:6:\"method\";s:4:\"desc\";s:78:\"How to get the Token? Default: `HEADER,GET` (options: HEADER, JSON, POST, GET)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:10:\"HEADER,GET\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}s:8:\"mimeType\";a:7:{s:4:\"name\";s:8:\"mimeType\";s:4:\"desc\";s:61:\"Output as json or text. Default: `json` (options: json, text)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"json\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}s:16:\"debugPlaceholder\";a:7:{s:4:\"name\";s:16:\"debugPlaceholder\";s:4:\"desc\";s:49:\"Placeholder for debuging JWT. Default: `jwtDebug`\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"jwtDebug\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}s:9:\"httpQuery\";a:7:{s:4:\"name\";s:9:\"httpQuery\";s:4:\"desc\";s:55:\"Required if using method POST or GET. Default: `token`.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"token\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}}', '', 0, ''),
(33, 0, 0, 'jwtEncode', 'Issuing or encoding JWT Token.', 0, 9, 0, '/**\n * jwtEncode snippet for modJWT extra\n *\n * Copyright (C) 2019 by Zaenal <zaenal(#)lokamaya.com>\n * Created on 03-26-2019\n *\n * modJWT is free software; you can redistribute it and/or modify it under the\n * terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * modJWT is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * modJWT; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package modjwt\n */\n\n/**\n * jwtEncode\n *\n * DESCRIPTION\n *\n * Issuing or encoding JWT Token.\n * You can output directly or to placeholder\n *\n *\n * PROPERTIES:\n * &alg                     string     optional    Default: HS256 (options: HS256, HS384, HS512 and RS256)\n * &typ                     string     optional    Default: JWT (options: JWT, JWS)\n * -------\n * secretFile               string     required    Absolute path to file PRIVATE-KEY. Required for asymetric algorithm, like RS256.\n *                                                 - using default modx setting: `[[++modjwt.privatekey]]`\n *                                                 - using custom file: `/var/www/modx/protectedfolder/myprivate.key`\n * secretKey                string     required    Required for symetric algorithm, like HS256, HS384 or HS512.  \n *                                                 - using default modx setting: `[[++modjwt.secretkey]]`\n *                                                 - using custom secret key: `mysecretkey1234`\n * -------\n * &mimeType                string     optional    Default: json (options: json, html)\n * &toPlaceholder           string     optional    Default: null (if null mean direct output)\n * &debugPlaceholder        string     optional    Default: jwtDebug\n * -------\n * &iss                     string     optional    URI of JWT issuer (default: your MODx URL) \n * &sub                     string     optional    If empty, auto-populated by subField value below\n * &subField                string     optional    Default: email of visitor/user (options: username, email, userid, sessionid)\n * &aud                     string     optional    URI of the audience/server \n * &jti                     bool       optional    Default: false (if true, auto-populated by sessionid)\n * -------\n * &iat                     timestamp  not-used    Auto-populated: current timestamp\n * &exp                     timestamp  not-used    Auto-populated: current timestamp + expAge\n * &nbf                     timestamp  not-used    Auto-populated: current timestamp + nbfAge\n * &expAge                  integer    optional    Default: 3600 seconds or 1 hour\n * &nbfAge                  integer    optional    Default: 0; if greater than 0 than &nbf will be populated\n * -------\n * &payloadData             json       optional    Example: `{\"A\":\"1\", \"200\":\"enclosed with quote\"}`\n *                                                 valid JSON-string key must be enclosed with quote\n *\n * USAGE:\n *\n * [[jwtCreate]]\n * [[jwtCreate? &payloadData=`{\"fullname\":\"John Doe\"}`]] //add fullname to JWT Payload\n * [[jwtCreate? &payloadData=`{\"group\":\"superadmin\", \"access\":\"full\"}` &iss=`https://www.google.com` ]] //add payloadData, and change the issuer\n *\n * @var modX $modx\n * @var array $scriptProperties\n * @var modJWT $modJWT\n**/\n\n$output = \'\';\n\n// Core path\n$corePath  = $modx->getOption(\'core_path\', null, MODX_CORE_PATH) . \'components/modjwt/\';\n$scriptProperties[\'corePath\'] = $corePath;\n$scriptProperties[\'requestType\'] = \'encode\';\n\n/** @var modJWT $modJWT */\n$modJWT = $modx->getService(\n    \'modjwt\', \n    \'modFirebaseJWT\', \n    $corePath . \'model/modjwt/\',\n    $scriptProperties\n);\n\nif (!$modJWT) {\n    $log = \'Could not load modJWT class!\';\n    \n    $modx->setPlaceholder($debugPlaceholder, $log);\n    $modx->log(modX::LOG_LEVEL_ERROR, $log);\n    \n    return json_encode(array(\n        \'_valid\'     => 0,\n        \'status\'     => 503,\n        \'statusText\' => \'Service Unavailable\',\n        \'errorLog\'   => $log\n    ));\n}\n\n$output=\'\';\nif ($token = $modJWT->encodeJWT()) {  //success\n  $output = $modJWT->jsonData;\n} else {                              //error\n  $output = $modJWT->errorData;\n}\n\nreturn $output;', 0, 'a:19:{s:3:\"aud\";a:7:{s:4:\"name\";s:3:\"aud\";s:4:\"desc\";s:49:\"URI of the audience/server (default: your domain)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"exp\";a:7:{s:4:\"name\";s:3:\"exp\";s:4:\"desc\";s:42:\"Auto-populated: current timestamp + expAge\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"iat\";a:7:{s:4:\"name\";s:3:\"iat\";s:4:\"desc\";s:33:\"Auto-populated: current timestamp\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"iss\";a:7:{s:4:\"name\";s:3:\"iss\";s:4:\"desc\";s:40:\"URI of JWT issuer (default: your domain)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"nbf\";a:7:{s:4:\"name\";s:3:\"nbf\";s:4:\"desc\";s:42:\"Auto-populated: current timestamp + nbfAge\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"sub\";a:7:{s:4:\"name\";s:3:\"sub\";s:4:\"desc\";s:79:\"Subject or user that use the Token. If empty, auto-populated by subField value.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:6:\"leeway\";a:7:{s:4:\"name\";s:6:\"leeway\";s:4:\"desc\";s:48:\"Timestamp leeway synchronization between servers\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:6:\"nbfAge\";a:7:{s:4:\"name\";s:6:\"nbfAge\";s:4:\"desc\";s:57:\"Default: 0; if greater than 0 than &nbf will be populated\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:6:\"expAge\";a:7:{s:4:\"name\";s:6:\"expAge\";s:4:\"desc\";s:33:\"Expire age. Default: 3600 seconds\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"3600\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"alg\";a:7:{s:4:\"name\";s:3:\"alg\";s:4:\"desc\";s:71:\"JWT algorithm. Default `HS256` (options: HS256, HS384, HS512 and RS256)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"HS256\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"jti\";a:7:{s:4:\"name\";s:3:\"jti\";s:4:\"desc\";s:53:\"Default: false (if true, auto-populated by sessionid)\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"typ\";a:7:{s:4:\"name\";s:3:\"typ\";s:4:\"desc\";s:45:\"JSON Type. Default: `JWT` (options: JWT, JWS)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"JWT\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:8:\"subField\";a:7:{s:4:\"name\";s:8:\"subField\";s:4:\"desc\";s:103:\"User variable to use for \"sub\" as subject. Default: email (options: username, email, userid, sessionid)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"email\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:11:\"payloadData\";a:7:{s:4:\"name\";s:11:\"payloadData\";s:4:\"desc\";s:20:\"Data of JWT Payload \";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:4:\"keys\";}s:11:\"privateFile\";a:7:{s:4:\"name\";s:11:\"privateFile\";s:4:\"desc\";s:135:\"Absolute path to file PRIVATE KEY. Required for asymetric algorithm, like RS256. Default: `[[++modjwt.privatekey]]` from configuration.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:4:\"keys\";}s:9:\"secretKey\";a:7:{s:4:\"name\";s:9:\"secretKey\";s:4:\"desc\";s:116:\"Secret key for symetric algorithm, like HS256, HS384 or HS512. Default: `[[++modjwt.secretkey]]` from configuration.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:4:\"keys\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:42:\"Default: null (if null mean direct output)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}s:8:\"mimeType\";a:7:{s:4:\"name\";s:8:\"mimeType\";s:4:\"desc\";s:61:\"Output as json or text. Default: `json` (options: json, text)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"json\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}s:16:\"debugPlaceholder\";a:7:{s:4:\"name\";s:16:\"debugPlaceholder\";s:4:\"desc\";s:49:\"Placeholder for debuging JWT. Default: `jwtDebug`\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"jwtDebug\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}}', '', 0, ''),
(34, 0, 0, 'jwtDecodeRunSnippet', 'Output custom value after validating Token', 0, 9, 0, '/**\n * jwtDecodeRunSnippet \n *\n * DESCRIPTION\n *\n * Validating Token, run snippet, return custom output\n * You can duplicate or modify this snippet and play around\n *\n * PROPERTIES: && all properties of jwtDecode snippet\n * &retval           string   required   Return this value instead of Payload\n *\n * USAGE:\n * [[jwtDecodeRunSnippet? &retval=`https://domain/mysecreturl-nobodyknow`]]   //on success will supply this link\n *\n * @var modX $modx\n * @var array $scriptProperties\n**/\n\n//Evaluate required properties\n$scriptProperties[\'retval\'] = isset($scriptProperties[\'retval\']) ? $scriptProperties[\'retval\'] : \'-required-\';\n\n//Run the snippet: jwtDecode\n$output = $modx->runSnippet(\'jwtDecode\', $scriptProperties);\n\n//Turn the JSON Object to Array\n$outputarray = json_decode($output, true); //return array\n\n//Evaluate\nif ($outputarray[\'_valid\'] === 1) { //on success output custom value\n\n    //Modify output\n    $output = json_encode(array(\n        \'_valid\'     => 1,\n        \'retval\'     => $scriptProperties[\'retval\']\n    ));\n}\n\n//Return output\nreturn $output;', 0, 'a:18:{s:3:\"aud\";a:7:{s:4:\"name\";s:3:\"aud\";s:4:\"desc\";s:50:\"URI of the audience/server (default: your domain) \";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"iss\";a:7:{s:4:\"name\";s:3:\"iss\";s:4:\"desc\";s:41:\"URI of JWT issuer (default: your domain) \";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"jti\";a:7:{s:4:\"name\";s:3:\"jti\";s:4:\"desc\";s:53:\"Default: false (if true, auto-populated by sessionid)\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"sub\";a:7:{s:4:\"name\";s:3:\"sub\";s:4:\"desc\";s:79:\"Subject or user that use the Token. If empty, auto-populated by subField value.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:8:\"validAlg\";a:7:{s:4:\"name\";s:8:\"validAlg\";s:4:\"desc\";s:17:\"Alternate to &alg\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:6:\"leeway\";a:7:{s:4:\"name\";s:6:\"leeway\";s:4:\"desc\";s:48:\"Timestamp leeway synchronization between servers\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:6:\"expAge\";a:7:{s:4:\"name\";s:6:\"expAge\";s:4:\"desc\";s:33:\"Expire age. Default: 3600 seconds\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"3600\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"alg\";a:7:{s:4:\"name\";s:3:\"alg\";s:4:\"desc\";s:71:\"JWT algorithm. Default `HS256` (options: HS256, HS384, HS512 and RS256)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"HS256\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:3:\"typ\";a:7:{s:4:\"name\";s:3:\"typ\";s:4:\"desc\";s:45:\"JSON Type. Default: `JWT` (options: JWT, JWS)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"JWT\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:8:\"subField\";a:7:{s:4:\"name\";s:8:\"subField\";s:4:\"desc\";s:103:\"User variable to use for \"sub\" as subject. Default: email (options: username, email, userid, sessionid)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"email\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:7:\"configs\";}s:10:\"publicFile\";a:7:{s:4:\"name\";s:10:\"publicFile\";s:4:\"desc\";s:133:\"Absolute path to file PUBLIC KEY. Required for asymetric algorithm, like RS256. Default: `[[++modjwt.publickey]]` from configuration.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:4:\"keys\";}s:9:\"secretKey\";a:7:{s:4:\"name\";s:9:\"secretKey\";s:4:\"desc\";s:116:\"Secret key for symetric algorithm, like HS256, HS384 or HS512. Default: `[[++modjwt.secretkey]]` from configuration.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:4:\"keys\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:42:\"Default: null (if null mean direct output)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}s:10:\"redirectTo\";a:7:{s:4:\"name\";s:10:\"redirectTo\";s:4:\"desc\";s:54:\"Default: 0; otherwise will be redirected to given uri.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}s:6:\"method\";a:7:{s:4:\"name\";s:6:\"method\";s:4:\"desc\";s:78:\"How to get the Token? Default: `HEADER,GET` (options: HEADER, JSON, POST, GET)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:10:\"HEADER,GET\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}s:8:\"mimeType\";a:7:{s:4:\"name\";s:8:\"mimeType\";s:4:\"desc\";s:61:\"Output as json or text. Default: `json` (options: json, text)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"json\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}s:16:\"debugPlaceholder\";a:7:{s:4:\"name\";s:16:\"debugPlaceholder\";s:4:\"desc\";s:49:\"Placeholder for debuging JWT. Default: `jwtDebug`\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"jwtDebug\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}s:9:\"httpQuery\";a:7:{s:4:\"name\";s:9:\"httpQuery\";s:4:\"desc\";s:55:\"Required if using method POST or GET. Default: `token`.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"token\";s:7:\"lexicon\";s:2:\"en\";s:4:\"area\";s:5:\"props\";}}', '', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_site_templates`
--

CREATE TABLE `modx_site_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_site_templates`
--

INSERT INTO `modx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 0, 0, 'BaseTemplate', 'Template', 0, 0, '', 0, '<!doctype html>\n<html lang=\"en\">\n<head>\n    <title>[[*pagetitle]] - [[++site_name]]</title>\n    <base href=\"[[!++site_url]]\" />\n    <meta charset=\"[[++modx_charset]]\" />\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\" />\n\n    <style type=\"text/css\">\n        body {\n            background-color: #eee;\n            font-family: sans-serif;\n            font-size: 20px;\n            line-height: 1.4em;\n            padding: 0;\n            margin: 0;\n        }\n        body.loaded {\n            font-family: \'Open Sans\', sans-serif;\n        }\n        .container {\n            display: block;\n            max-width: 960px;\n            margin: 2em auto 2em;\n            padding: 2em;\n            background: #fff;\n            border: 1px solid #ddd;\n            border-radius: 3px;\n        }\n        .container > section {\n            height: 100%;\n            width: 60%;\n            display: inline-block;\n            float: left;\n            margin-bottom: 2em;\n        }\n        .container > aside {\n            height: 100%;\n            display: inline-block;\n            width: 30%;\n            border-left: 2px dashed #eee;\n            float: right;\n            padding-left: 1.5em;\n        }\n        .logo {\n            background: url(\'[[++manager_url]]templates/default/images/modx-logo-color.svg\') no-repeat center transparent;\n            width: 220px;\n            height: 85px;\n            background-size: contain;\n            display: block;\n            position: relative;\n            text-indent: -9999px;\n            margin: 2em auto;\n        }\n        h1, h2, h3, h4, h5 {\n            color: #494949;\n            font-family: \'Open Sans\', sans-serif;\n            font-weight: 700;\n        }\n        h1 {\n            font-size: 36px;\n            color: #137899;\n        }\n        h2 {\n            font-size: 29px;\n        }\n        h3 {\n            font-size: 24px;\n        }\n\n        a {\n            color: #0f7096;\n        }\n\n        ul {\n            padding-left: 2em;\n        }\n\n        img {\n            max-width: 100%;\n        }\n\n        .cta-button {\n            display: block;\n            text-align: center;\n            vertical-align: middle;\n            -webkit-transform: translateZ(0);\n            transform: translateZ(0);\n            box-shadow: 0 0 1px rgba(0, 0, 0, 0);\n            -webkit-backface-visibility: hidden;\n            backface-visibility: hidden;\n            -moz-osx-font-smoothing: grayscale;\n            position: relative;\n            overflow: hidden;\n            margin: .2em 0;\n            padding: 1em;\n            cursor: pointer;\n            background: #67a749;\n            text-decoration: none;\n            border-radius: 3px;\n            color: #fff;\n            -webkit-tap-highlight-color: rgba(0,0,0,0);\n        }\n        .cta-button:before {\n            content: \"\";\n            position: absolute;\n            z-index: -1;\n            left: 50%;\n            right: 50%;\n            bottom: 0;\n            background: #137899;\n            height: 5px;\n            -webkit-transition-property: left, right;\n            transition-property: left, right;\n            -webkit-transition-duration: 0.3s;\n            transition-duration: 0.3s;\n            -webkit-transition-timing-function: ease-out;\n            transition-timing-function: ease-out;\n        }\n        .cta-button:hover:before, .cta-button:focus:before, .cta-button:active:before {\n            left: 0;\n            right: 0;\n        }\n\n        .companies {\n            clear: both;\n            display: block;\n            width: 100%;\n            padding: 1em 0 0;\n            border-top: 2px dashed #eee;\n        }\n\n        .companies h3 {\n            text-align: center;\n            margin: 0;\n        }\n\n        .companies ul {\n            margin: 0;\n            padding: 0;\n            list-style: none;\n            text-align: center;\n        }\n\n        .companies ul li {\n            display: inline-block;\n            padding: 0 1em;\n        }\n\n        .companies ul li:first-child {\n            padding-left: 0;\n        }\n\n        .companies ul li:last-child {\n            padding-right: 0;\n        }\n\n        .companies ul li a {\n            display: block;\n            position: relative;\n            text-indent: -99999px;\n            width: 200px;\n            height: 75px;\n            background-repeat: no-repeat;\n            background-size: 200px;\n            background-position: center;\n        }\n\n        .companies ul li.modmore a {\n            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAfQAAABxCAMAAAAUAqFnAAADAFBMVEUgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToB8YRCjAAAA/3RSTlMAAQIDBAUGBwgJCgsMDQ4PEBESExQVFhcYGRobHB0eHyAhIiMkJSYnKCkqKywtLi8wMTIzNDU2Nzg5Ojs8PT4/QEFCQ0RFRkdISUpLTE1OT1BRUlNUVVZXWFlaW1xdXl9gYWJjZGVmZ2hpamtsbW5vcHFyc3R1dnd4eXp7fH1+f4CBgoOEhYaHiImKi4yNjo+QkZKTlJWWl5iZmpucnZ6foKGio6SlpqeoqaqrrK2ur7CxsrO0tba3uLm6u7y9vr/AwcLDxMXGx8jJysvMzc7P0NHS09TV1tfY2drb3N3e3+Dh4uPk5ebn6Onq6+zt7u/w8fLz9PX29/j5+vv8/f7rCNk1AAAXa0lEQVR4Ae3deVxU5eLH8e+wMCigqICguSSiiUiauedSmUtYXVtysbr6u+WtrpmWy22xunmte7Ml762riVppmpaauZuaqKSmLbmgoKip4CKOCrIzzPc3nDPnzHNmgQGGQJn3n3OYM/D6zGHOeeac80Cr48Sl+84YzOajXEJSDGapO+aMagaP64nXyJ1FtFiOcgk10OLqkm64bnh02k6rZeWMfoEq4+z6uD54DM+ke6KTP0XB43rwUDHdFp3HmqHm82ifSTdGZ4IvajoP7wS6NTonoabzeJBujn4xFDcAr9FTJptNGaPDjUe33d3R+QJuAN4nKDnpjRtPe6Pbo+/zuhGiH6Dk4I0YfTxtrUG5hOXSRmEbT/SabSlF22fN+NcIlEvAK2/PiD9M0QhP9BpN9yutMgajguq8RsEMT/Qard5ZWv0fKm4lrRZ5otdoTa9QdTEYFfcnWq1GjeaJfpWq3aiEdkaqvsf1whN9AyqhSQ5ViZ7otS/6Tk90T3RPdE90T3RP9BrJE13nY+WJXkui33pItat+1Uf3C2nbqVfvbu0b+8BWUMsO3Xrf0SkyCC7RBYQ1btw40NVuviGtoju2aVHfG2auRfeq08j8CiH+sOPfMLxxeAM9XKavW7euHuWir39TVCsdHPEPbx0bGxnqV+HoPanKbVSl0f06PP7BxpSMfJoVGpK+ejYKisYDXvpyb/o1I81y0hJmDghAqRoMfH3lL2mXDAZD+v41M4aEoXT1Bs5Yl5yRU2jKyzp/cM3bQyPLil633dAp8zf+euqi+RUyTiYu+GsMLCL6jH3/m90nLpgXXEjdvuBvnX1QhtYj3l390/G0tLRje755a2hzlCmk4yNT567+MfX81dxfvGCrQdy7W05czjUacy6lrH3tDr8KRe9O1eWGVRe93pA5R4zUylk9AGa3Tv7OQBvHXguFU70XpFPj4rLBcC72P6eolZ1fSvQ63SatSi2iVuHOJwMROWrOT1doY/+rzeBc2LiduRRlbvxzPTjlGzNmzp4LJiqSbKN3+DidGgcmNayp0bv/5yQdWtb1uV1GOnLqCTjWcRUd2NoPjoV9lEdHHEcPvn/eMTqWtC2HDl2aXh+OBb6UTnvHnvaGI+EPxycVUeOgNnqj/+TRzskna2J0n6FbTKyAj33hwAu5dMj4tg8cuDOVdDW6z53z0lgRh3rAkV6/0bGEaNhqNGrlJcqcRu9+hA6tCK150duygr70gi2veDr1bT3YGZlHl6N7r2VFZT8Ie2Ny6UzGIGgEvXeGAsfRh1yjE/tvruLoO1Be0UWsoBmwNY+l2KiHjbgiuh7d5wwrLH8QbD3FUuTeC1EUWWb0Pjl0Kikcish8qja6K3oiyqtdIV11zWC4aqKquA+0XqZVYVrKvr3Jp/NoNQdakQaq8k7s27xxx6Gzxc6jH2PFZbSC1mAjS3P1Vggi88qM3iSdpdjqC4uBtFpZmeghl6hKC6h49Is/xE8ZNaBrp9vuHDU9IZ8i0+HFLwzp2DKiSbMOw+Iv0WKXF0TdimiRs2T4LfW9Ae+gqKHzrGkfgki3kYpNf46qIz3UIGbk7OQqiM610Ig4x9L9Vrd80b9iqV51dMLLrMpE90uh1ZiKRv+pdyMI2i+iomjP1Nv8YNX8K1oMgMArkRbrYiBoqa7peJDDs/5PPwCRftA590fnIIg+Z1leL1f0gdQyUSv3FkgmUDC6MtHxDa0u3lbB6F/CxlRaPKWDlk6p/gUE99Nivhe0ptHieVh576XsRGvY+LUKom+BoLORZbnStBzRdTsoKnq7Y6dZ1FgMs+YfUZDdHE7EUmXwgxNjKDCMrVOh6MthazllU2Ar7CIlaYGw+p6y77xg6zPKUvRQ9aEsr7v92LuL0S+fNtCBjJQf95ygjaJoWC2mVvrCd5ZdptY/y45+2Ev4WwSPwWwyRQVtgPkGij6F6PZBVhOouvbIIKtmEASnUXTkefdE72J0upc5h7LOwnqKKMm5BXYapVPWH6r/UfY+KhQ9+Y2HY5sGRdy9lFprhsc29gHq9t1IrRehapZNjYWhAG7+jhqn6pYe3VSQs0+JHk/RIki2UPQWUEjRpRYQJbBs4yB6nBo/uCe6z1FKjvnD1jDKRkI1mbL5cOBVyj6GQm9pmNOyYtHfEVYtehcW3kupsRqqp6mxSYcSQQepMdBZ9CMLp4+9v2/ndjffBFnAKQoKYyHpr32SHwwUFN4HjY0s29PQ+Iii79wTHespyWzsdFfj7/a/dR840Drf0tEHFrcWU7IeFYv+ARSJFP3m5eSir+N6KFZTVBAL2RBqzHIWfRRs3EHRXsj8jlJQ3EkT3TAUlY6Od6si+leUFETBVnQhJf+Gov5ZSn6vA0d2UZLXChajKZtQ6eh/oSirKRQfU3StBSyC0inaBAufJIr2OYv+OGy8SNGHsJhL0TNi9PXRcEN0DDvq/ugL1J0QW7cU2EaPNZU64vAeZffCYiZld1Q6esdiCoQVDqdGJydPeA6K9ym60thJ9CdgY7HjNM9QFK9ELzy+eBDgluio/9Smi6bqiz6Ustfh0Gjbg7YVlGQ2rXT0FtcoGg5FH2r0g8XDFJm6QzFMu6CLi9F1eylK2ZEo2ZFC0Q4l+qU3m8Ad0WVdlhVWX/TxlD0Gh/pS9p7N//sT+kpHD7/sZBe3t5PoUyjKioCis4mih12MHpBGF6TAQIusRR3dFP3BnSay+qLPoOzu0r/WWawkPEjJL3B39IllRv+AIuFt1yyLoudcjN40iy64CANVua+6I3rECpLVGf1/lHWFQy2vacfAA45Tst3t0SeUGf1Tin7VQVHvAkXTXIzeroAuuAwDBZ95Vzp6ZDKrOfo8SoyxcCjsEiVbbKKvr4boyylKhKrOSYrecTH67Sa6wIDLFH0EjS0s298gapRE0eZqiB5PSX7b0qPvqgHRV1G0VfPNleh9F6P3oGvRs6kxBKLFZ9MVaRlUFZ9LS1ecfRyiudTYWn1belEMHAq1RP9eiX6Ckm3VEP0birZD5X+covfcGj0D9yw0UrDXB4LAhg0UwfdQdaVVA1VDPQTtiyhInx5TDdE/oawLHGqWqd2yfZMo2VcN0RdS9LMOiqDzFL3hYvTbiumCdAB9TlLQA07cTtXlenBiOgUrmgDVEP3flPUr/VWWweJHSlJ8/vjo/6UoxReKiCsUTXQxetsCCozHjiQ7shJm7Q20mlKZ79N1P9Bqqw+qJfqLlD1a+kUb/4XFOkouhPzx0V+hyBACRQcjRSNcjB5+lYKc1n6O6OUur9NqQWWiB52mqrAzqif6MMqmwqHhtu/u2ZQY2//x0R+nyNgRivuocYeL0fUnSjlHp5SPgrWViR6eSdUhr2qK3pWyhaV/Aj0Ei4mUPfjHR+9GjdHCLynKbu5idGynaANK0TzbXWfD5lK1HdUUPcRASZIPHNlCiTEaFv0pm/nHR2+UQdFSKPbYnoHtYvSPqTER9jo0tLS6Uv0XO7gvOnZqR2ccf+yl+tv+e9rv7TT6oSqKju8putoEstuNFC2Aq9GfoIZpEmx0nJfZVrzY4YaJPoOyt+HAWPszKRM0X3KJvPZT8rNXFUV/mRpzHY+EDnc1urxctKYHVN5tn9lcxMJWN2T0HpSdD4Ed/WHKHoFqEmVfwVbQOUo2oIqity9ycJt83/epcSnE5ehIoI3ihFfiune/Y/Djb3x5MJ9meTdmdJ/92g1H9AplZ+vD7gKf4ntg4z5tV/dHxxZqbR0/YspeasXD9ehPsXQ3bHQ8TYvxsDG8kPY/jhWUnY6ERr3fKHugyqLfyzIVxpYjenC6W6P3oqqoUc2OHpBKi3cCIfCbVETZ5aYQdC2m7FhvCKK2U3Y+uMqi67ayLPNRjuh43q3Rw8epnvKv2dHxEBVHpnSoA4lv23G/OJt34lNaFM7tGQhJo94fGmgxE1UWHR3zWLpzTcoVXb/PndE1anh0LBBHoLct/eKLL7cczqfqO29ohJ2i6uTWJV98sWrPOarOR1RhdIxj6e5DuaLj1qzaGj0gkaVIjoCNfvl0bhiqMjo+YGleQDmj4xEjS1MYeaNGR9gPdOpIJOwMLaAz01C10fEunTK9CNeiu35XjWs33bDREbSQTqyLgAMDz9Ih42RUdXSMvULHzjyACkRHnyN0akMPnX309aiEiJoRXTYqhQ6kjdPBoZu/pgP77kLVR0f0cjqQ/8lNqFB0NPjXVTpSsGYQZNrom1EJzfMqc/uR9s7fd19SdgtsRTu/mULQsz/SxsGpjeHUwDV51DAmjtbDns85imZDEVFE0RQo+lGjP+z0mn+BWqc+iIWdKGr8Bc5ETk+mjdzdr3WA1U2ZVB3QoeLEszE3orwiZsfPNZv3NOyMnj/XLH62fbJwy5MeggO6rlPXJGcV06w4J3Xjm331KFW751cdzTHRrOjqoRUvdoJDXjPi51rNHwZF/Q/FBfOsbaPihQXx8W3hQNjQd79PzSww0ZR/JXnjW4OC4UDox5pX6AHn6vad9u1BQ14xWZRz8eDGmSNaQ6Oxgaq8SFTc87RaiZpB3/TWvv379+vUrC5cUadZ57v69+/VvrEv/nh1w9t07npb6zA93MMnpFWnrl2imzf0gR3/k7SKR4U1PEqrOajRPHZQsOD2+np/X5SLTu/vHxa3j4LJqNE8PqLGmZRjs1AuDfccPZpBjf6o0Twepq2VKJewq7RxuRFqNI9Qg9tnVV6JGs4j3u3R41DDeUTnuTn6Lm/UdB5vuTe6sRdqPA//HW6NPg3XAY+IX90YfQ6uCx5ha90V3TgN1wkP3bOn3BJ9Rz9cPzwaPp2QRdkalEtYLmVpiwfrcH3xaD5o4vvzF8xf8DTKJehD83M+efupnvVRq3h4eHh4eHh4eHh4eHh4eHh4eHh4eLSIiQmBKDomJhAK/07Dnx3317iWUDWJaS+JiQyEIlJ6TBbTEhpB4rIoHWS+HR41r/f+1lA1Vtbbuh7sBcbEtIOocUxMc6iaDnpy3N9GdQmAwr99jLSy9k29YVGvU/uYAKhuiYltCUWL+8dNHHtnMGqLdUbjIbH6S0VG492QNXgt2cQS2ZsfhMVco0X+yS/7Q6L72SjYYjsVtiBJjxIBkw8YWSJvx2OweNtoUXB6eRxsDTQaC5+DVUSq0fgNLPp/e4WSE+80hayjUVaUdeDj7pCEHDFZn4IxBcbCAZDdt42kicya3wG1wyaSK6C620jyHki6JtPqi7qQLKDgvz5S9AMU7IVGHAVnpejRP9Pq22BI3qHg8zrQGqyd69Vrk/WbTp9ZtEobDEknWhXPDkKJu0zkeMiirpD/giRiNX9/o2/z8Kj75xfxdR1qgw2ay22anLFeiNHhInlt0V/j7h360g6Sq3yUOQJWvG42fcnvyuS2ut9YuOLzhbJFf4fGveSpz5Rl//YF0PIUmf/Vs0PufWDSZpIJdZU7km983ezNhakkZ0NrEM2ONoTFmzT71nqm8k9vPHTvvWPiL5H5/ZToaa+bzVybQXJroHKiY3YHlPBOIHf6osQtvxdPqANZy4Vc5ltrohf2gcR7I9XoPrvJfTGQPZFDTlCiD4UkeCaZ20qOnhkKkTb6Moh068mkrpA9eIWcoUR/GpKAV8niTg6iczlkQ0zW6I+SxS94W6JtIo8HW6LvgqTpm0XKNCz6H8k9fjB7ibwchRKhqVe7wepFLqgd0QtPkCcbo8Q/yNyzlugPk2lNxUnAzwZboj8Gi63kM3L0rBalRF8B0d3klTZQ3F/MzKaW6BOFCXtes4t+rpB8QW57njxjkqP7HRJPMw08SE60RP8RFiOLWRSLErHZ8lusS776Ryw1dQPm7d5/4MDP/+sM4A2OqBXRi+KOkWt0AOJM5LhlluhrtFPn7yZH2kYfT84qd/TPyOmwWkc+Zxt9JLnYLvoXfycL+pR0TiD3D7dE76udS/pB8hdvm+j4TJ1WdQJp7IvAA1Q26L6cAuAAf97741Hm/wnw2pseWBuis1XPYvIVeQtagTVy9AYZzL4JVs+Rn9pGf5z8pLzR/VO1cwaNIFfbRo8jV9hFX45N5PFQYCaZH9udcvTp5DuwqnuGhVG20buZmOSLEroNZEq9mWRSPUi+ueAP4JdMf0A3pOC4PzCAo2pF9E54hSy6EwlkagjWy9FvV2fKkXUh9+psos8gp1mih5cS/WsIogqZqodVmwIe87OJPoGcZRd9FZqklZQeSnI8BliiryLvh2AdeZ9tdP1x5raApEUGuTuf+d0gCc77AFL0AJitZxTgc2ZNLYmONeTReWReTyjR77OJ1TSLp+rK0UcoD50i75SjZ/eLaiNp29A++iZlWWMAvcnvIQg6z0vhcvTxkDVIIh92EB0DjeT/0sglUKPvpakjBLPIZ2yjYyvZC7KRLDEJsu4cLEevA7PveDOAxedqS/TwkywxHmr0x8h5EDQ8R0OwHH1sveDg+g1aPZFM7vaVozMvV5b3d/voxlxZ/ifyv+7VEOiPMedmOfrLJesNbvHoz2RyoKPomMYSScFqdO+jzImEYBr5kl30ZcLM4PPEcYmH2U6KntXQ17feKNNPPgBeLa4t0dG3iOQSOI/e6Lwa3XD6zJkz6Xkkz3eAHN3qn/bRVcscRT/K7JZy9Csl603LIZnZEw6je60nmd0ZanSf47x2MwSTyH/YRf+UjIPFAyZhXpBRbAWzH02nTx0/zQvdYTaRtSY6pshbkBp9OPkpBCEXeLG+HF1RtD4aluhF65Z9LVn+kH30tGVfycueBTCQXAeB/wleayFHVxgTusBxdISfIsfCGt3rEAvaQjCDfMEu+ipyAGShx8UJcOPYWYpenHQgjQkRKPFOXu2JjtXGzhCi301ugCCygMl+cvT0pCOHU0jTY4ASPTPM1cGZztYccoUrPBssRz9vXm+yiXwOcBYdd/FzCNGxnewJwXzyz3bRd9HUCbKvyHwyqx0kt3CMsiMX+vv5lijx/eFaFL35gxCjty3kCX/t6PcWyNFH++n9/BeRX1ujZzV39ZAt4iozGsCqWzF/0cnRJ/vp9foPyS3ezqNjeKgm+mfkk4DYl71toze6pE7k9ySZf892MtEXJXzT1srR6wJ/4maYhebPqjXRZUJ0v2QWd4XVB+QMS/SRUrwL8h0Zy3ucrttNDtZOIDIHcvTnYVbvBDnVaXSZEP0Z7UFGi2y5ryb6MHVCtHZZ5EuIzSH/Acl0tpGiBwL4mk8BmMqutTc6ZpFfaC/B7KYZnPk/MqNZ+aPjVc3nRsBxcrBmcOYB8lq0y9Fb5TG7LVRvkStgE13/m3I06LeL3OYFTCCLeqNERPYGAMcYBKBZFmPRXHqg1kaPLmDxSFh4LyO36TTRsZlcqUZv4nL05lnkOChmk/v9NNGxlEzwcjU6viR3BMGify55t030oGVkeiOU+Cd5OUodmEOJpzgNeGycL8zunnx7wO7cqNocHf8ii2bcDDO/XpvIwq7QRm+XTT5uiX6tY6MQWWj9MqJjEslZUTDz7voNyYHQRr8pg5zgcvTIy+SeAXVh1mRKNrkQYvTANs8cUicTvstIjlEH5j6B5GO+5Q1FRCL/hFod3W8pyazdK5esP0LS+GfYRMcr5LlwObop49x52YUVZUXHJySz965asvagieTzsImOsWRWlKvREZdD8vh3S77+wUByR30les4Bs9/zSRaPR4mGx61H6COts8m+x5/jfFEi7MXM/KGoDbaRnSH6Xtn24DP9GhWHB0O2iBwNmf5X8lsfQJdSypkz95FrYWOqgYrUYdYdxSmQ6baRiXUgiiM3QDSY3ARZzz1U5H0UCElnWiX2Rwnfb8jTYbD+GdfaQDL0GE8tmjrhzfW53BCNWuHdxJ1REM1MTLwdFlEvbz5hMGQcWDIyQA2WmDgAFj13JO7qDOg+TdypSvwPNHokJv4Ttpq/uD7VYLiU9PXoYFg8k5j4KCxitu3ccydE3RIT34aoq/CAzwPzf7loMJzeMb0DLKIsv8zWpS/3gKzH7sSdA6FotDZxz0uQ+T/y9WljccHh2b0g+X8Vbbf7yuo/YwAAAABJRU5ErkJggg==);\n        }\n\n        .companies ul li.extrasio a {\n            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAA9CAYAAAAXgFT/AAAoo0lEQVR4AexabZAcRRm+fBxmd2dmdy+3M5sFQ8APxCiISFF+KKhBDZDszGwWyZ1A1JLSglJL/YNllbEKSn9QWohawQ/QBLRELH9oFVh+4EcplkZF4okYDZQhF3M7M7t3iblwd8n4PDvTVtfUZWe93WIP6bfqqZ6d6X777X7ffvrtvhsanCgJh3auFM9+yd3WNN1wwbom9Cxnb1Cs56U63YoSJSuAVYl3/K1EiSIsJc8ZWUZxpEQRlhKVWRGQkUzmLEMzdho5fbee03fg1fCyIS0lirCUKBHHvmKxmDdy2g/zmhG2kQOy+scTxKZEiSIsJYPPrvSsfjUyqxA4BcyQtFD+Vdf1teo+S4kirGUlirDyudwmElYeQDlPwsKx8FFmXoqwlCjCUrJcRBBRBkfCe0lYcXY1m89q708SmxIlirCUDD7TEvdYmnYTSOt2HhHV/ZUSRVhKlqusTHmvJARzc2GFQ/VVDw9dvpolwXedWV3Nm0xYQUxYvuX+zh8ZN/7fCItjuR9xIeKEEHHCuViOsSxspN07nzu+WBWDc7p6AGS1UrJhdVwOlgvoxImN9TNCOLRzPTr/xuGJIdRFm34FPvumzjSwb9ZlyWBcchCzfawnrc/F+uMzxy+DdbggIsKyrwlMp01YATKs6bPqI3wv6sjtxG9Zf9LeDvXSZAUXJ/0qxrx36OLhpcaI8AF91nv9/oscn8IXvcfzwGWFTBbPEkENE12QI206g+WzQmB7xSLrEHSdgo0LgegpK+kxQPvfX+/tm5ZTbYoMq+T8NtywY00/9afVo0+4CDk/vfZFguvkY5m802JN6Om3CEJOI1BB+Knx/PwUjns4PdNLJbr+E1cywEhagVV9ZcNyrg1K7i1YZHf4pn0PsoR7cbTZDdyFTOEzvmV/COXVR0z7RWwnt1/qDjVVqpcbo1vPa1lbzjli1c5tdUT9nKlS7SV+pfrCXhZ5Y9Rd1xh1Xso+qbcTWMdbW3sZbNQXzXo6ZFjziQyLJNJ9hpXIkgCUKZnY4tkMbffW1s+cjudO1OkUXMI2+V0LfsfcXeWV7Ju9knObZ7pf8k3n64wTYI9vOV/zLPvzvunuDCz7Rs+qbvJH6KsEKbD/PsUx9SXGWmmOOpchht8NWz6B4/nngK/SPtpJe2l3UHJuBW4KStUr0+N58BmWhP6KyN4kKWaK642c8Q5DM27Wc/qndU2/y8jpe/gXS5T3oLyD/8CKOmOFbOEiNMkkdA73NasSz0fMrRaC7H0IsAc8094Ph56Ys+phWN4ehuvGgXfFGMO7a8NjVi0EkU3D6Y+h7jcaljvWLNgFWXe35EHw2bNql0Lfo9D3d5T7EGh/8QBfgvjN78Df+Nyw7O0iaLvdhVk2y+6b0dfvoecfHEesd4J9EIn+/gQcAr5zuFwvSYviNYFp38f3XASo+y0BzgvwS3wLZ0zOl+Njbh/wUE+q88243IP33/VYWtVLxXhke4NKfX1guXdicf2UC88vV18uvp+OBPyRzUYD40TfHyOJwGcP4fkRlAdoM/8I0GnuZN0kW2SL13kRKT2G9i2OKyy/ExhLxMk4Y4dEzXETHja7P9BuYNtkZUtWJoVesyqZkKkf/e1CLP8G5b8AZri0ZxEbo3g+injmeOhnbszw03Wt9WNFObsc9P9iaZq2EQRxH/CQkTXuxO9SHy/e5fFl9Kxug5x2gZT2Ak0j/neKgpaX0X5H4Ps8cAD4Pojto7qunydnbD3ZKLICcZQiUfG4AmedZPCJYDtmbaMTp4GngCe8NpG4hxGscwiAmLzGRFA+g/e/QJ3rRT/d3rPQBmEXbLmb/Z+EzjmA5cJpQEJl/wiw/cyAqCPtOCC+t/JXFWHzz9kX9SR1y3gG3xnUtAcZxQ7Z5gBETR1h5XrOBxeCDLbj3Jzi3GJRSAsmAS6cyg3tsllybpBt5X1TlIFuvQhzPBVWdrTnG1nDW0W2lhz75Dr37AZICvV+7KHNtOnGxLKdYF/U8fRMZctoctEvRiQeiAr1fw3M09+0k+M9BZ3x+DzgScYJ/YE4eRo49m9rW9xnVPeEVWf9ORDmj4KSvVkmnV7JKsCpABvMwxjvcfpKkCh90DJdEcsHuSHHdh7gfOJ5QcRzHHvCxl/h+7jc14D/efQKEkdBz5MgGvk1+XNFZtSLfjmrAtE40P2gkdWPSgQlSOkEMIlv+1E+ATyVIDNRD8B3zbh1bSZzZoK4/jeR/3LD9Jc7vjiyIKDFTrMP776AY997Pct5y1TJfpW3zjnfL9c2cvdvWu7WeMf+NgOTC5rByCBh8DJjaJbtDYKEur2YZck7HgTezxjoDDzgBBdnEkFUHkdfc7Sd2U1SV1Lul97zGEC7GazsJ9a3CNxZ2nA8Iu9Pifa8gI+zwk2Yh8cZ/MzOImKPEGdmh4CwGS2YWS4W1pfrRc/2RBBtDH/2zdrbxQKRCQnz8goPbWMSPIgjzBv5fv+LN79AzPGTGy5f41vuh+lD9sm6IosgaTErhl3/xPcmyewgsqbknMm/mWUwK+IY6N95IJ63SWbjIPBboLOG8b8+MGsXiDhh5olj49t4HMTYvsjMmaRBwmJWRoLgvLL9UgmBNkqbz5cD+DKOY2HjIRDt92DfJ7mxMKPGMfbVzExpJ04VF/hm9XWwz0bdj6DczU15Fr6mjvk4nqF3F08PwsYBZliXgQimY1J4vLCmcHaPhLUyxlA2m60go/pKPqcfp/42YuJBeTePhMjqrgQuYaYHnF/I5S6MbDLG0fY2ZFY/AdheIi7jjwVNc1NIK52s4IjXAhN0ChcjncQg592UOMenCReKV3Yv4Z0WAxjByKOicPQ+klu3pMU6YkcHmbwB7Y/GJLEAhIshiMr5o1gAfGamKAJZvpNJpvU+FhLazcRjnmPb0/fhzjF4mY0xaBOZDO/dNN678W5rBndh4pkl74qw438Q+sUC2tcatS8mmXPBsM5/gbZRu7YOXcyJnGHxbpHHYBKQh6POVMl9k/ADSxIFfPGDlsimImI7CTwCfBZE9R6UV0zDZ/RN03QuFGNhX0kimET2hfoPklxIMvQHxtLA/N3O9iC7TLexd5hjNu0PcA5mIz3/ae9cYOSqzjsuwKDau6wJsAZME5UqqqJIlYJE0zZ9iL6rNsB6jYWCAq2apmmC0qYQSNskFPJIk1SEUKklbVOFkjZBRFACgRZCCuUBQoRHqNIQqWhxINjeHc/ugr1r76x3+/0833/96XTv3Hs9987OuB7paPYxc+65557zP9/j+/5fi0OJNYN9KV67DFjxTMzWeidjpD/6dknvWtbmztN+fajoGFl/zCG2WxvfC9wv6xmJq2nAJ3BnHa0FYNnGP1eAgJQTAasbsNq4YeM5Bi5PxsRqu853rF0OMBVV58hrJKAVtZVIfPpakcw2DH+kFGhdYxeltTfshW/jhF7wheib/wssqhTgsEXJpS/XdDhlgoFz6zkGNHchoXGyA1qc5Hba/0wEy6KePrMLXeULO4LWUgCT+PsCal2ThYpdJwGVKKWgAmFXclVmv/ppZPRrY+A+mtxHVHOLGvlRe4jDYtFjUynrhVwdsN7B2HZgUD40/2PnNux/zPui7EYGXiYdXYRjoei1kEJ1n3Z43XLgtIPzBBjw/hiHyaoG77BOtFZYJ6Fvt6mN/yi2Pe+vBSA0DVSRcsIaKLxOkKyYWwNp1jJAfgfztJp0/e3VxpjhHQe44nq2eWAd/EO857UALJNY9lYAWDLeAzK/YIAyESSq/QY419N3h9CF2I5f5frHbhwevhDQA/xoriZeFw38hWxWnOaoJWxwVATEcqQq/hc3CA+x04Yk2I6ThoceJS5bQNe5veAgaKH+zI6e/8aixtVoaG7YgvHNZ4A1dhBEArDEnw/Q+CxqSjwx08VlKtVfcu/he7Gf2BYBSwALKWnVharYsRTQbR4EMthVXOXmOk8BmFLd0pgzvpOGIGRJWAAW6jp/593mZzubym1EE0iby0hAyTqQ21+AkgUErAmXqAArxn4vjpl4AAAA+k7e2uMeYoAmzgPvfz+HR8McCXIAML5O/QlUpzBNuG2QhjMgSn1lYr80NzyTKD1j9uD+AUPmoiH7ImMYVAkL4KG/DRvOHhk+8YVgd5qy/rm/+CoWW8UY9Fl/mY3tLOvzTvpWM9Xy4xHYOoIACxgvUctPJNtM+01y+P24MXi4hxtIuAIKZh+addBiEyFOA2aFbAABXJGWsEO4mN+S5JMhZbW4Jq0xOv7+KNVxTUk79rm9bBRsX6nU1vDmf2uhVllYwi0aDwBdVjqawb4TIt3x2hWVzjpIWGyeBrZFNhUeOza9z9PD0/b3FFC5h6IS7rQZ7AE9NirN+n9mr0tpy13EUAFYEx6HxnpAlUNV9gNugTAZrZGC0tXtADT3zdy+euaWU9R3N4ACIHKg8PMeA2m7zhOsGQ46DPEv+3UA7AEErOPdHrbJ+ngkgNWkqXPnRaA6XM9elLpOPfXUE00qvDWCFuSDAbCO6WRo/lMeLpuaRcLvicrU1YuNFUV1FjvidPskHX9f0SDP+H8Dn9/ldGO8Ug0bGaDFac0GwBEwPbr17IN9nXbJkMI2sOVIFczrB1BvmLeLWK8ErErnEja7zCXMkLBeRk3FViMDMZ43VK4Yi8V72THbeK/a6/Ybm6P5SYtP0hxUETclMMBQb+OfYn3M89xGxz+et0a0nmdHt73Rvr9dgEeslb5XwRg1f7J5bt3ta4twH2LrNB+DBFjxc8RPCawwtBNHVWnsFGAE6DFue2GQl3poP7+E4X4Ve5Ybu10nJyaFxUHDk5e6+nlVBFry3Dwugz72FU7uop6WeEIS6sCGl+qXoxouHgAc7PTG4xgA9LPex1JOHy236zFH26LTYK2SnyNgMY+43jFeN+zAwatIWAQnP4Gtep7a2KXGLC+tORiQXGioRPpMlUGewVZ5M0DAMyMmTWuD906mDUAULzHfQx0mkLXKMcZDHKnYrnUf12Ito87GORkUwBIQ4e0zoNoDeKRqGp+peOyS6N5sILldIRD2M/gTwC1ZGEwyC2POvShIDilYVf2gEfFRwTipedAm0X2ojNFSNqjGKW8/E48m4y+iGnLick1JkIwDqckNvauqggK8pgMeXrXU3d4PgEVQrcIa6M/DUHbLKVA2tzIFZCRT1E2XJgj5GOfvVScy69naNf6QeXdHwj1KDuc+Otmvpi3ej2foHtzHYgBsHawbeDJZU+6EuF/XQy0cEMDSGl5PcGcIXXgQCUhqYJ0sExYR/wcu0bnncOS3w9h8wt0WZAtvxz43tNsiuVLidfeLMNfO8BXp/002GFHiAoESUfBTbfBbRPopoBruA3TY3EQsoyr5Jt+fglXoRwZgVMpHiWaPG6cfAGtnWyWcaHkME8/SQfjybrxXeI9X5tkCJZkLAIsYMUIz6pAkNK8elf6aq7n3EfdVBLA8RGMZwCJuD1te1YAV1imBs1sYp6+j50ht0uE8QICFpDOukIP2+/DW+P+aXur7R0z1vH+Fk374xH9d1XZFcB4SjmKBdp62ZVO9no64ILf8JjFPCtIkGTiCURn1gXivVrZaF1sEpHmXnJblaUzBKoQw8D6jcAF5SvsRsIgit80KyD5CvJQ+V8EBc/U+V9Hs2X2D+68TsCbNHsS9CLAwJej/nVXC8YvkGCGd5rVa1nTIMmjHBs4sn3Epc76bOEb9fwAAa536Ig8wxEfdCYhEVbCWVzCuG0Bug5fer9+0sIqfDxudRX7JEDYJFiAi7dSmsWsiYNRNYrfcDnX4FoDFRiMBNaoFZU45NjteMDZ/qhpmgZbc0YBWNlgphGGbpM8ELKsBrGZFgOXgv4B0ZeEHH+j2ecaxEGuk9B0cJ/Ez9UguY+/kUOF6ZQCLKH8AxA+w2TROrup8WwJ68Wri7GCcqM4yvPc9YMn4PTT0FsVc2fsi3roe8sGvkwHeQike9zFggP/0iguZdx4k6RhsGPKmSE1IH2zdoGWpPB9RLhuAUzbNIaoCpFKwQBV4KODpAFqoj51iuPgf0ez87XYANt0wfSZhvYiK7ff/QzZOdyd9wl5x+ti5hIXAwjB7+thb089UbcPCeywbFqp7BKxOc0u4AalP8wprGB27PtpQ62A1wfhOAjjPMK7dPgcsvnusSzfvldGboE7ipGqxXeV4KIl6l5Rn4PXo6Ojo8MqnWHwsbj+J7mXie+HdiIBEvh2noQPWK7ssJaSsBBM/awv7in15wZ/5TdLZfp+bCXL14mbpR8BqenyUB7/eSxpPncZfgKqWdeH9kubD/Xi4ybfyASuwuRrVkXITsS/hXInXqMpG24nGp98BK/7PjN3/KKAgb7CXJe8jcBJdr+RqglVH1o+YdOwvKEVYDCwKuIl6OdkCGWKD8PK5IXyxkdixygIgi5kUDO4rqoaN8mDVksoIy4TGhHTaj4DVdJVQIQdN45tKbZb99JL3kRbptaVGEYwK5cy8AzBMC0UAS+uqYRIgByFrG88w+ZVK8Uk/3y1l83IOF1kfA9YJntx8hkkzjzlILFFxp4dglRr+N5G7qLHgPTzEDWRGWTfOtgiAk8jMohExW9WNfmP0O+kSuII90ZqFednh2kboP0TBvyS6knzAyo7ZgsQtBcV+BSyScq0vZ14YvyICf/Ugky1ZRB73SD5YFBxISsZe5mEZCxw+RQBL14/hBqiFCoaGXcP6/TxhO1nPRuPttj7BIAEWLAvmofuBg8ROWBb0/14DFi8bwz/JjkXuoi+K886C9sRVsR3kEa7VrDcs4RVwcYP5tVEKO1wwIBYHCWlWUfAFAYvWdLsVPGAwU1Zm+6g/cFRxWAtNM1hHEK/bHqkDqewhEyl5YIpl3Db+h2SLI0SDZwExYQSswjFSRoWElCZJi34xjjftIIJFFA9ikXtbDoyvRwpgCSQg5CNYNNivfjwFrLWyY5mEddvBP0Kvgcjsp9d/k7WvBa7Ym1pbOGXhRGIhsTBNTb2hG7bJIAVBQfxF+nSJaamgdNXyRf0qYRexz34HLMjx3KM20zSK4rqCf1N65CLPBKmJfL7m5vPeQGYFoQB271uwo2IUJ4+14bmh3IPbnqYJLgaEUxtWGbsmQcI4l/CgKlCZnzmYCOWB5hsDP2wTHFB8t1NcWgSvwQWsYHDfMPyeQ1HmI98MwaLHr0WpMjyUjMfv5WH+Jt6nlnuUGiSLkv5ggHErKRe9ag0ohA0wGYsbi/++KqZJAhuhbXHVcDEPtBSTBYdWjLwHQAYBsAK9zK5p8+jV5RWT6pT+ncBfOL08v+5yjObQxUBlA20P4GA//8DZPbG1rZAI0vhZhwWSNnZV64M4rBwvYT5ozUKxzZqza3MNrq1wGhpAhnEeeyrEfuQuNo1eG34wvI4RnOI8iCZnQAFLBvcPCSBM2vpaAKp1a3EvNobzFY8FY8TB/3K6WeOUQVQOlLG897BxTTf88zN5jNVS445/ipQJAVaOLWvRVchARayTdKAAawcEfnUAVgpUEA7C5e7Mo88CMEgwgI/WFI1nzdj4u/LuuHckKLzD1p6xdhvSENK/IutxxPC9Ri5g5c+3Ql/sugDpUwAUkhzgJSpsNA4avzM+A7kmwaeAHWOjYAbB1TkA3v+AFSQayxe8luhytxvdVL+HMDfE4pdtHAtuw9qrzXIRQOUbdM652V9o0/nSxsI7Lf49/i3vM6GfjL7xbvnPs3b9z3QTnBnjsogzwzvkp+diR7BKCP+YC0BAG2SwAGt8x3QErBrACgZVG/OnuSYSi6SkQKU9D3DaAQTl8yMknGOrbKt/4x/FuWLP5yL4unCSqGJQfEGhjOSdG4dVok6BXsT7wXtv1/8wPGku/TVFSCjp64CDmEAWhgqAmftAio2HI+rxgALWJ0L+4BfXGLDwFP6ic8QDoAdWAIvN4mycz8K5TYgBhHoUbehlg3aZRsQweXrxJg5XusILimfJbVitEjYseLqV1nGbAIFNMhiAdXEtgMWGj0ACxzybGInJo+tfRf02YPk7Cyx9P/xirClsQlTBKTM/4keDj60KwIp9Z0nMUAxBaePX/Jy93+2mihmekexetAV/xyEAnxuVh+I8DSBgfUwSFhztawxY3MsvwW7qgDWvNIttqIMq4qmJHuRXvAdsIGluYYmwhkVxdVFQI8Yz/X8ELO5b44I1Vtz8nl+5w+btxhkCgGFTyHuFsvBpqIOcPRw6+YBVTWl63rM+gw0UKQqGVWxxXs5tzmmYVDBDifPX6lkgaQ0SYBlI/Vkwut/Cd9bShgVTA5KV+LH8lNx6HhuZhcdJAk1LWiZ9bVq6gMrToLB5YGVANclP0ckm6sO2QTKrKtCwkQYasLqnUfmUPG2YE2wj3429KatwqdZRjN1KW3Y8XX2Ala4bgJJx5nn/kMKoCkUUPTUJ5twONxt43SN7bl8DVgSI4eH3BS6qf4cJdC29hAaa79R47L1d6wDWAQyefkK8pDisnkbqhk0RF3U3hnY8VWx+v6+FRBUsDVqohtbfg9hYtFn6FbDg41fVnCoAK0b2s1EpCLHXWWnJkoh9My/dr536Aau0BJZR3Rm7W9PCcTgY3Q7s0tbYxwaIwG9dYEkQrcy3qei8lnFYdh9XJawR7Tp2sIz6xn5tymlTBBqDqgoSyXwgMJAGLvbSTfFbSKEYmOOG6mcJqyrAivUMKWUWSB7v47pp3UO91hKwBDJVhxvIcB/zMoMnc2rmEP/YDHtJ4xyASHfy936OIqh8FxWM/L21jHSn5L0i3U09bGea4JqFbMyZGiDqf1ftgFVD4mgcL6EaAE2Mbs8Gq7HI1tDRa0iVa96RMqIUeiQDlqSMwFuGipwcbgKFeg4ggkp5fhj28wGrd0nI9Mm8x6rSpP0AWgvt/XRjtP/1O2AhUSFZOUgsUB0nBZFeUswQLBqKrf7xysYhSXhR7trIRd0DwOL6wZt3Gbzq00YQR55XmRw4ncZEUFsfzy9EquQO/O4AhXNcZbM6BNYGl9qeo8y7Ns2RDFhxDJQ/mzvE6nEP/6trM8Zn3rTrYi9zep/MSHe+IwDF1EEhCOib8XrXClwBtHA8zB+ao+9Qo0Dz3+8qIe/wqIvt037+fGJb6sUrFm5tOGBN4zFc+QSRxIr4pSgEVLI9p5chqx5WyTMuYQwLDYtI1ilbzis4/iVAJYvjSn9TgU5ivsz9/iQno7MyZEpkCnUgHod0n3gP3QJWcwAAy/r7OpIDa8UA9qPxM3VJVxxEhJUoHqpTLmEskoG9ke/wTKm/WOdY4/wT00Ucl5MJNGbsd421z/mwZDf6oAzdkOgNDQ2dviZ8WMMjfxQ8lk+bunrqymmDqI9hWXE0ELT1hMAvSkZGBgcg+IN+aLsWJf8vXO5rjHJfipxezGNh8BP7JmKEkBiKcLrH2oaUjYrjOJIlrGU7xDjMVK+S5OQ6QUDjJSYP3njFPxFTtz0HsHjxPFWKH8kwBcK6xos0R3iQ14XcT70AXbePASu1Y+1wT+Fe+N175ikMvO54KRP7lU+il2Ynahc1CoMhBuseqIXp6X3HvJ+iBOylgJbLe3TK1jfh5ZwvUDWHheQq44siCuQkJMnW1cOOoKXvkw8HYV4VVXOsz74GLBKWUXFUSg07Xp002ppPUqM0/1w7pZfJViPH/5pwFg+IvoP+6oyNEn8XjKNNHX6sGWptRhtr3wJWAIvhE78evHM3x8/0JCVnaOhX5a2k7P5K5Zy0PLsq5JIiQ+R5r4pQEFmMhwWwQuUiNqzIZojMqCRtLxZQBcnMlxQ2ZeWjdB3xJrmUmakaNhLKZIBWlMl4jrpVCalO3I+ARTgH1Z1Vt5EKMTF+qQ6w4t2u9bWl9jzvzaOXielYAMW0G7+hkXk1hOvUCViYUyjMAWA1WUfwug0GYOkzJB3/XigCsZs+a1cLAxgStBpShB6wP7G/0lpzY29B557zar7k8tV5gnLdWASV6/pmeJzNUaYcORHIXi49VxWkcZ1Y/BPyQBWwwAvlaun+TMAKgOYesw9GEC17/xiH2VwO2E+xIfsNsKCFobQZY0RyAezrUgk1VtJ67B7mHHTm8gArzv+UsUVQn2De17M97z+pa7xhLKoe/nBbJRxfaJiEOAgqYVT7sBfZdx+lj8DccFyNquGxtMDQsKACrkkRjCQ3zEjO2hHMXnhz04Vvq62Qqm8wagmS2Q/g0HBhx4WVpwpCY8JYAbxmVAWzVTneJwj4i/emdza4AUhzX75qSFvguhju4VAqY/eLFMt4suiv1QbS72FT61Oj++2sD1env1AHAHAfOkQ4PHgOnhg/Awh08hLGsfAM7Dv/pgIUJDXn17vsetzil3vJVcIGrA4a6wCVqhcX1ZIXNF2GKytcq2rwVeXnUbNdPaV8RkrXB6nO11gQkzFwMtnKkSK7Hqmj6tpqBBmqWjNqhgommKT0ZJFFJbDCGyRa5RKqICffe1JwSSv4OmCp346gteSVfrSRUA/KFICdtqRZJAiXsCYnR88/OzyXY/oFsAyUP8mzYm4ohw+wVik9xE1NiX2oaFCR7X7+ytoU9DSAGBJ4kUKqOAZUxs0l8M/y96pBK8bjUd+T67EmKNmGEb7U/Af66bUBrBjiMHKrq4W0HdQHDJ+p5JCKaiaUNgJIClCEUIbjMhclUcWI/CFi9yv8X5uiG/WQfugj6vpcgwfsIDAeN3Oxgp7ZNqdUFWxJFUyAL90wGE6J4mbRRS74PDWzgRpdIgqee4kHxYKDJBWLY0n5fgscRQJnjTD/EQAqjGW6lIMCKQUvGyozzwEJC6N7XsVtjRebIvxZ4rRCRYOzKz7vKkwbsmHCoAod0bwKgBjQlpFCI1DFA7XHgBUlnjdbH/8TQOu7Fubwk6G/dV1KhSeExOvPjEia433D8NXxsx1jmewh/y0bkIdsi5OJ/zJubVHDshDKRqHHxQENsy28u2R3AkiK8F/F05PseQyxrr62Gp1BRdxWE3gTOy1W/Z1EZ2x6LLwioQ6wkwJcU8F7lrdIuU9tVjbW/kPqy/18X9Ko8tjSXMte5RJyvaCmPcqceBbBzO5NW38jzF2pdSFGhgh2Uyb9ElqDNEX8lSiQmHsHsKdfseBgjSeLKkZzSzyfAW1zzrncUd9Jo4lj1vfLgni83z2j206HvtmA3A39Y9vL8KilQJVer8eAdUywKb0daQc1TaBF6EMCbmX7Pl7987OpgTfQd0i8/ufw/+NyNxC8RVAkA1ozDloYOwnuTL05q20mfs9KGMWQyqIDrKY9ux16ZE6pQqqgSNcs1mVBqmAnu1X0Chp/Uzy5CkR2f3g+GPNz2B4WxHixe/MFry8bQ4Y3iWuJ/RVa4YIPv1YJK5V4kXZYE9ZcMh5/mVp/cUyrMTTECjr6f7wGFC7w+DPPDlYPwY2mazbMztnyfFdU6KxxpmNWIRIR8gWiymuXreJ5/HyRcdPicwsVph9nPgSMcIXFcRRZBwgDZHs02GujY3dCXx4/Uzdg5bAmzEf10JgdLouf8Z/XcR1vx6pJGkslspM2bDjb+voGfYZg1TtOPvnkkcJhFAIFUmWaXsVGNi02AGkSSCllFzxGaTL7G7bg6EtsjgRuoh5GNaqAKvg5hR8EBtGl2EJ5eafOGbsl3mMRWwrjohCpVMP0GvG6npPY4rN4PYuqShGE7fuPOWEgjUPiLvLTmG/sNkgUABPgw3wUoEiuhV6GWodkE4j3HomIpHBoksv2S9Umit5CHkmfKkfP3/UZKlcTmjDvgIMdi6R9xkQQKbZQHXistQxP9LsVHE0fNOyO2LmY+5LDVgT+z1KNh5Ac2WHpl4Ou4FqLkjiazXsBO9YAjf02oyrskqoLABaxSxUAVvwOTA4XGqjsUtoOBnlr95gEdgGxWyX6xAv5Jkts/qSpfi+j/oU+b4pgVephaLItAO/POdVYTHJpE3AJmE2brQWvCMZXAG7CjOBIZ2wucgFnNm35NYyn1sfdePJYcOLMZpFjoOQaeWAVY32oAoOKxoOF0sNBqcV72ki3cWCbwE5U1CAeQQugZUG6oXmuSb8Z15PqyNhwZ0ejbJF7I7QEsGGxAuqqp4hXk4BSVEUcIZy+LOQAiHhdo0r4vHupfjhZA4Ef4ADnE3MrGyTrgmo9lM0CZGEZxcWPFAPLA+tiZuPFr5sxIJo0iYSwCA4rG+P39ziPP/Nm/d5AkGp8Bv4cvupgttTOZBjfDnAR8GzXe2DSGHLjfKSAobWDF5Z1HFLRWkSmY9inaAbzR8kvxq31fPAwOfmC1zPnxMw1rDAFBxnrYt4rUnu9gFfMcfSueO0yB0E4HOcBV54hRVBif3mARS3BUDH5+a4AK/kedQtNevsPefEU2Gmg85+WSnON/f+3DIx+YmRk5GTzNKwHyODUWr9+/ZnG/PDTVqrr3TamL1t7URKVYr2s3yu7IgzkwUeRlwBJHq6nOwh0AI1JyoMhHZC/xanlxP4TAB0Lecm/wzt0snBn77Jg0QiQRR4q/OGctKg7c4GqNm2AIv8XrzjAGlXBshIFwCpeb4Fu1rW5rvOp76HQQTwdi6hc8JHZpv8XwJHr0FfkSSfXkuuw+SIQrTgz2qD3yvLmS5cJF4ErPQBal68kWPe08Q9wLR1CbFoH2RZ/J0kcm5fWBV4zaiZi+wLkWBMAFXOKGiT7X3xWvIeiuE8wBy6Jtdvm3+F6y0hcebFZvLB/uddxJ/PIGGiMAZAA5Bk3MWcaN7mmJNTb2HdhYlBxDa7veauNppH5kfUQr1k2yRvTiEvYS7LtRgBkznMAiyjxXwEMThreCBDssNqCZ0Xg6Ra0kIAMXK6wvr8P2KipUARgRGiCvT9kQPYg+Yj28/esTQmkQlDonAHeVwGzSqLpI2ixECg42TB1h8rCiL6qiJLd3gFIyf7zXYjOGsYCGh8mYFX0gSKteZGM/yJNhPeM9hyNAhdNsU+UjhdS5LoCSpEGxrYThsE1ctqzACvME9xrUdWAFlVoijQ02yWpHsM25pvmFTYQxuS0ND/vsybZwgBqn5tkwxkAniPJspYiFKau2lg/QbUbDiPsigFkQ4vVkS6WOWAnJeWQbJDQ45qIcxHAfLN9/kokTHjjORh5N6nnesJhNLa80IOgOl9tfTyCtM94ssatsWtNA1gkONt9P8AzIkg1a37KzOfMGVvPYZ+IOQWnAyqvxl+QVvinoIihgrO9323l5zdXxLZwbAQuk9x+DMoXa/fbdWYFQid1aMEG9ryN82+oikO/lab+rEZXTNqOc07ZAx+72R7aNxGr2cwuXT3SbFdHuRH7BJ4k4lG6KYlEoOWkeWKoDcfiRGxX20lLfkcdoUny6IZyWTFfXD9eS+9pY3xcmw0GoHRT1YXfie/CKA1VCXYivKz/R8UL1CqoVHityBGtK2AxHSf3zGFERDll/WF2QDqx96cAcFRaHDeEycDGSS0BJGaeS3r/ncBc4IvZgWsCdGXmNz0gUfeQhL0yz3WkAgH0Hv/1rIPio5g1sE3a2P/CJMGLp1APLfwlZ6+UflH1mqR65kf3VjKU6AQCMGFZMPXslIqDPI9JQWV0dHTYJKS3ou5RTn7j8Im3w2NlPz9tYPaMgdMT9vO99v4lOOPxOsK7lUpwtIqpYrNJ2tDz2VRskJdts/AgtaH6oegk1+z2/nv5/aKl3um3PBFi/YVUJfGx4QAW1sXMGy5+3bKtk+wxak3kg3kVYEvL+h/OlpcYd1jPhJfkV75eWxLLzCDjip9/TgzWOuxWgCUpPl49en0HqW1d5eNLT6iyCyd+r+vAU1zPBRufvbXSRV7u2oy3m7nWNaO7Xa3TAs8ppFBbqfqy19I4cTqUXQOak27uU9enz8Ndi1WBaIwzjOPrQgqiVTa2HMApG5V/XE1Alb+hHkg2U/q3aDs4+jqyX9pwRdZFeZCov9hEzrh7MvYBradwTBpvFdS89G9HseDo6+jr6OvIf/0vj9NbYMKQ+00AAAAASUVORK5CYII=);\n        }\n        .companies ul li.modstore a {\n            background-image: url(data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABQAAD/4QMxaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzA2NyA3OS4xNTc3NDcsIDIwMTUvMDMvMzAtMjM6NDA6NDIgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE1IChNYWNpbnRvc2gpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkM1OTk4RURBQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkM1OTk4RURCQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6RjlCOUZEN0ZCM0IwMTFFNUE3N0ZGOUU5N0U2MzUzMTAiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6RjlCOUZEODBCM0IwMTFFNUE3N0ZGOUU5N0U2MzUzMTAiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAACAgICAgICAgICAwICAgMEAwICAwQFBAQEBAQFBgUFBQUFBQYGBwcIBwcGCQkKCgkJDAwMDAwMDAwMDAwMDAwMAQMDAwUEBQkGBgkNCwkLDQ8ODg4ODw8MDAwMDA8PDAwMDAwMDwwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCABLANwDAREAAhEBAxEB/8QAuwABAAMAAwEBAAAAAAAAAAAAAAcICQQFBgoDAQEBAQEBAAMBAAAAAAAAAAAAAgEDBAUGBwgQAAEDAwQABAIEBgwJDQAAAAIBAwQABQYREgcIITETCUEUUWEiFYEjtRZ2ODJCUmJyonOzlNRWGHGRobEzg3U2F6MkNGS0JTXVJsY3SBkRAAICAQIFAgEJBQkAAAAAAAABEQIDMRIhQRMEBSIUUWGxMkKi0lQGF3GBwSMV8JHhUlPDRBZG/9oADAMBAAIRAxEAPwDfygFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAV35F7Yde+J8qcwjkDkqHYMpZbZck2n5SdKJgZAI416xxYzwNKQEhIhki7VRfJUrVVsl2SJ4tF2tl/tVsvtlnsXWzXmKzOtNzimjjEiNIBHGXmjHVCEwJCRU80WsKK+5v2964ccZbLwXMuUoFoymAYNXC2jFnShjuGKEgPPxo7rLZIhJqhGip8dK1VbJdkixkeQxLjsSorwSI0lsXY77aoQG2aIQkJJ4KiouqLWFFa8v7k9YsGub1nyLmGyhcoznoyY1uGTdfScTwUHCt7MgRUV8FRV8PjVbWS7Ik/jnmTizlyLIl8bZ3aMvCGiLNjwX0WSwhfsSejHtebRfgpAiL8Kxpo1NM4PK/OfFHB8C1XLlPMY+Jxb466zaEdZkyXZBsoKu+mzEaecVAQx3Lt0TVNV8Uok2G0tSE2O/vUWS62y3zDHE3V0EnbRemgT+EbkARH8K1uxmb0WZwzO8M5FsjWR4JlFsy2xvGrY3O1yW5LQuCiKTZqCrsMdU1EtCT4pUtQanJ39xuNvtECXdLtPj2u2W9on59xlugwww0Cak4664oiAiniqquiUNKuTO8vVCDdfuZ7me0nL3bPWjxp8iLrrp/0xmMcfTw8/U0qtrJ3osdj+XYtlePx8rxnIrdf8altE/Hv0CS3IiE2Gu9fVbJR+zoqEir4KioulSVJV5/v31GjPOsOcxRiNklAyatN5dBVT9y43BIST60VUqtjJ3o/IfcC6hmYtpzA0hEqIilZb4I+P0ktvRE/CtNjG9FqYuVY1NxmLmke+wSxKbbm7vGyM3wbhlBdaR4JKvGoiLatqhblVE0qSit1w7y9ULbcvuqRzPaXJW5Q9WLGny42qf8AWo8ZxjT69+lVtZO9FhsOzjDuQrIzkmDZPbcssT5k23dLXJbkso4Gm5sibVdpjqmoloqfFKmDU5I75X7HcK8HzLXbuUc7jYtcL0yUm2wCjTJjzjIkoK4rcNh8hHciohEiIqounktak2HZIjG298+pN1ltwovMkFp51dBOZbrrDZT+E9JhtNj+Eq3azN6LV2i8Wm/2yFerFdIl6s9yaR+3XWC8EiM+0XkbTrSkBiv0otSUQhyf2m4D4Zv7WLck8iRscyB6MEwbUkOfNdFl1SQDc+SjPoG7auiEqL8a1VbJdkiNV9wPqEOmvMDXj9Fkvi/5rfW7GN6LGcbco4Dy9jQZfxxksfKcdOQ5EW4Rwda2SGkEjacafBtwCRDFdCFF0VF8lrGoNTk6jJebuLcRu8mxZBlrMK7Q9qSoYR5UhW1IUJEImGXBRdFRdNda6VwXspSPrfkPzh4nsMzw586rdaqLWj9u1NHQ/wB5ThP+24f0C4f1aq9rk+HzHh/UHwf4j7GT7o/vKcJ/23D+gXD+rU9rk+HzD9QfB/iPsZPuj+8pwn/bcP6BcP6tT2uT4fMP1B8H+I+xk+6SJ+fuH/mj+fn39H/NH0vW++9D9Pb6vo6bdu/d6n2Nu3Xd4aa1z6dt22OJ89/W+y9n73qLoRO/jGu34TO7hETPA+cH3D/1vuV/rCwfkK31dND231LZdNe59s426zcn49mMpp+9cPRCncdQX3PxlyaurxNx4IjrvJGJzibyTXYy4mibW1qbVll1vCMi73errkl5u2Q32c7c73fZj9wu9yfXV2RKkuE686a/EjMlVa6HI3J76c63zjbrvxJxzidxctV55SsscbzcY5kD7Vngw46PsgYqigslx4AVdfEBcH9tXOilna7hGbnX7pXzH2Mx+55ZiP3RYsZgPuQ495v0h6O3MlNChG1GBhh9wkHcKEaiga6oiqQkiW7JHOtGyP8Aby71F5sBHUPGOQcDmNm42DiuRZkZxBcQVJtUR6NKaVNU1TUV0XaaeDg0ZxqzQ33PsttufccdWs4s6/8AdeXQrvd4AqSEQtTYtqeECVP2w7tpfWlRTmdMjlIqBwl0i5X5/wCM7lyVgN2x5Y9vuUm1t49cZL8eZIeitNOl6ZJHNhNyPIg73BTXzVPOqdkiFRtHX9UeYsr62c/2hm5nLtVmm3ccY5Pxh9VAfSJ9YzpPNLqiPQnVVwV8C1Eg1QTNF2ylCrhl0fdd5VyVvJcE4agz3YeLHZhye+w2lURnSXpT8aML/wASFhIxEI66bj3KiqIqMY1zLyPkVn449vXmzlDiKDyvjtwx8RvcY5uN4nIlGE2bHAlFF9VG1YaJxRXYJuJ8N6hVO6TJVG1J6b28c0ziw82XTg90bgxjHJttu9tyuyOtHrbZsSE8YTiZNEVpxtW1ZPXbqhIhaqIaLrhIo+MHgeyfR/OetOHW/N8jzGw5FarpfGrHDjW0ZQSfUeYkSBdMXmhBBQY6oqIarqqedK2ky1IPP9aOn2a9nrdlVzxTKLHjzOJSosWc3dvmd7iywcMSbRhpxNERtddVSttaBWsk398eQL5hlv4t6kWrIXJePcQ4lZGc3eYFWAul4SK36KuBqS+k0ygONipabnF3aqAEmVXM275Hg+PPbv7CckccQuR7UzYbVFvUNu4Y3j10muMXCfFdTe06AiwbLaOgqEHqujqioq6IutHdIKjaPKdQeZcp678/2OHcHZdtsF7uzeMck41IImwEHX/lldeaJFQXYTq70XTdoht6ohlrtlKMq4ZZL3ZP/mfjj9Ch/KMupx6FZNSvWNdHeVsx6/tdgsautiuVkOBcLoeLes+3c0iWx+QxJIUJn0SNPlyNA9TVR8E1LQV3cpgnY4ksx7V3LmSQeRMj4alznZeIX20Sb3aYDhKQw7lDcaRwmUVdAF9oy9RE8yAF+nXLrmVjfIhz3Mv1prz+j1n/AJkq2mhmTU7/AI79s/lXkjA8Pz+1Z/icK25laIl4gw5Sz/XaamNC6IObIxDuFC0XRVTXyWjukFjbNSOv3E196c9csttd7ucTMb3EuE/Il+7WnUjC5IZjRmmtXNpkAqyhmW0dEVfDw1XKrqXSPj/NeQfjOxy9yq7nSraXy8p+SdfgpKT2R08jzi0PX0iuTl9vkc7wTirrIWTJFXtyjov29y66V8vb01cckfyx2dn3nf0eb1O+Rbp+tust398lvsrxzj4slgY/drRhMa4fn5arZi9oxU1Wc5bFm+nMbvTQEoiqsqKfAt+qJ4V4qWtEqdHM/wAD9T8n2Hjn3VcGWnbq3ucdMdcL9bx74us6ThemPg90o/XJeO8Uvl2xe2XCy4pCS550totcvDkebbW2RBcclxLm4i+mElU2CiJoeuu3wRaVyWSbTenP+BXkPA9p3ObDjyY8Fd3c7KvBKXTqm70yv6KyfRS+tMxwkiK8nj+d8e8m3kcKsuH3Hje4WsLG7Z2CjG9GnynIpR5epKjxggIW9U3a6+SeFdqzS1VLcyfV+7fb+T8d3eb2+PDbtrY9mxbW63s6Ot+Pqaidz4z8hMf/ANJv9X/7hrj/AMj+3wPtf/hv3f75j37iH633K38nYPyFb681ND9evqU/vthvOMXSTZMgtr9ou0NGykwJIqDgC82LzRKi/A2zEhXyVFRU8Kok49xtlwtMgYlzhuwJRsMSRjvCoH6MpoH2D2r4ohtmJj9KKi0Bod7kMp88y4GhEZfKx+KLO8y2q/ZQ3pEoTVE+lUbFF/wVFC78jXToxBi2/qhw0zEAQbetUmS5t+LsifJedVfrUzWotqdaaGWnuvwIrHOmCz2gQJU/CGBlqn7b0bjNQCX69C01+qrx6HPJqR32TkOyunvR915VUxhZWyir+4Zlxmw/iilatWZbRGj/ALWf6tVz/Ta6f9kg1F9S8ehkf3jt0Sz9sOZo9uBGGju8aaSB4fj5kGNKeLw+JOuktdK6HO+prL3Y6jZD2PxPCuRcDdZc5LxiyNxZFlluIyF2guD8wjLbx6C2826ZqG9UEt5IRDolc62g6XrJlpxR2U7GdPshfwqXGmR7TbnzW7cW5Sw6McFcPU3IyFtcYU1RVE2i2Eq7lE6t1TOas6m4/WbtVxP2SjXCRi8ZMaz+DHF7JcQnI388LKEgeuy+CIklhCVB3Jooqo7wDcOvO1WjtWyZXX3XE16+4av0Z9B/JlyrcepOTQjn2jv91Oa/9rWb+YlVuQzEZ0d3pL0rtZzQ6+qqY3lpkVX9wzDjtB/FFKuuhF9T6f8AHYUa24/YrdCAWocC3xY0RsPARaaaEARPqRESuB6D5gO6kViz9r+ZUtojHQb+3NRW0RNH5EZiS6fh8VdMlX66710PPfUs77qjpyOV+KpLvg5IwNlxxP3xTpRL/lWppoVk1Kv2XuNzVjnCI8B2C4Wy0YWkKZbinR4elzKLcH3X5TXzJOEKeorxgqiCEgr4Ki+NVtUyTucQaU+2r1cvOFg92Ay6VDVzK7KsHBLTDktS9sKU426/LkOMqYC4XpC2LaFuFPURxBLREi9uReOvMpl7maadpbx9eO2df+SKqpoTk1IvxfnXuRZ8bsNoxLKs8Yxe1wI8XHmIUJ5yMEJltAYBk0jkigIIiD4r4VsIxOxv31Wume5v1wwKfzNHly8wvkG4M5E1d4qRpEiMs2SzHWQxsD/SRUbXxFNyLuXzrk+D4F3x1y43S6mtk009Gnwaf7UVOyPr1yjiWbyHsPx1+92q13AJuOXQDZMSbA0dZRwXDFdweAkijoqoungqV8nXuKWr6mfzr3/5F8r2Hft9pid6VsrUtwfBOaym9Vo5XFr4HCLi/n0sy/PtcJk/nCl2S9etpGRr5tHvXRfT9TTTenlW9XFt2zwOL/Ln5hfe+99u+rv6k+mN07tJ0nkds1hnZBhm+stYjKD7+vbWRuuIMXfFujLqvDKhr6n4g1VdqqPmP2fKp34uHHRR+49VfE/matciWB/zMiy/V9ORPdvpx9D5OPq8NDk5ZivZDMrcVqueD/JwZEr5+5s22LBhfPTNFT5iUrJCrp+K+K+GvjprWUviq5TOnk/G/mbyGPpZO3ire6ypWlN9/wDNfa/Uywf/AA3zL+6x/wAP/uj/ANXfL+p90eq3u/8AF/ndm/ds3el46a+fh515+rXrbuX+B96/oHe/9T9js/nx9GV/q9SJmJ2/LrwMQ/cQ/W+5W/k7B+QrfXKmh+i31NPb10P445/i8H8o3m+z7BJDC8ZYzS0QmgMb01EgsI2pPKQmy4rSI0RohagIaIKjqsboOmxPiZQd6vDtfzA2iILbE63sMNiiCINM2uG22AomiIgiKIifQldK6HO+pa/3KsGlDivW3ktiORwX8Waxm5ykRdrTrTDUyGCr5auC5IVP4C1NGVdaEjdHe8vEmAcOW/i3l2+O4ncMIdmJYLssOVMYnQJDxyxBVitvEDrRumG0hQVBA0JS3ImWq5NpdJcSgvc3n22diuapuYY7HkMYpZbdHsGLLKH03n4sZx14pBt6rs9V59whTz2bd2haol1UIizllmO9WCzONOu3THCLkCs3SxWa7hd2CTRW5rzNtflN6fvHXCH8FTVy2VdQkSb0U7XcF8Fde7zY+RMwK3ZKGT3G5R8bjQZcqVIYdjRAaVtW2lZ1MmyRN7gomn2lRKy1W2bSySM5bzcL52c7GypsOA63c+XMwEIVuFVcKLGmSEbaAjRPFI8fTcWiJoKl4JV6I56s1Y7hd3+ZuvHMzPHOHYrjrOK2602+4QJN3jSZDtyZfFUMhNuQygNg42bKbU11Al3fBIrVNHS12md1m/bXo92C4ebc5oAm8gC3avYuFulOXu3XA2tDS1Tm2fTXRxV2GrggSInrCiajWKrT4Gu1WuJmp0Keu7XbPiRLITom9LuDc4Q10KGtulLIRxE8FFARV8fiiL5oldLaHOmpqP7rf6vmHfp9B/Jlyrnj1OmTQjj2jv8AdTmv/a1m/mJVbkMxFLPccwWfiHaHK7u8woWvP4Nvv1nf8xJPlwhyB18tyPxjVU80RRX4pVUfAm64mk/EnuPcArxHj8nkC/zrFneP2iNDv2Mhb5Ul2bLjNI0TsN1ptWFF5R3ojjg7NdC8tyw6OS1dQY1PS772e7KDLbtxDc+W8zbUbc1q4kWLKkIm0iRPEI0dPtnp+xBSWumiOWrLpe7GIjzHxqIogiOFiginkiJcJXhU49C8mpHeQdU7JfOjnHnYnC4DsfMrIFxd5EjNm66FxtwXaVEGULRKaNuRRAFLYgirW8i8RTXd3GDNvpkk/wBrjnSRjmfXrhC+3LTHs5ZcuWJMPH9li9RB3OtNa6IPzUYSUtfMmgQU1JdcuuZuN8iJvc0/Wlu36O2f+aKtpoZk1NNOvfbzrhifBXEOM5Ly9aLff7DiNpgXe3ujKJyPIjxW2zZLRlU1bVNvgunh4eFQ6uTpWyguZx3ylx7yzZpGQccZZAy6zxJJQ5cyCaqjUgQFxW3BNBIS2mK+KeS1LUFJye+rDRQCgFAKAyL7V+3vyhzjzllPKOI5li1vs+UNW1HIF4cmsyY5woLEIkRI8WQBoXob0XcPnpp4ar0rdJHK1G2am4Rj7mJYXiOKvSRmu4zZYFqdmAKgLpQozbCuIKqqohKGumtc2dUZP9k/bp5T5i5wzTkrF81xWBYMukxZKRbo5ObmR1bisx3B2MRHmz8W1UV3pqnnpXRXhHK1G2aVZpwvh/JPEo8Q55GK8WE7ZDguymV9GQ0/CABalxjVC9NwCDcPmnmJIQqQrEwzo1KgyByn2mOS2Lm+mE8n4zdbMrirFcvbcyBKFtV8BMIzMwCVE8NUJNfPRPKunUOTxssN1u9tCz8Z5bas95ayiHnN1sDwS7Fi9uYcC2NS2lQmpEh1/a4/6ZIhCHpgO5EUtyfZqXeSq441Jk7ydU807PWzjtnCsisljm4VIuZymb2Ultp8LgEZEUHIzL5IoLH8lDx3eaaeOVtBt6yZ4te0/wA9qYI9neANtqv4wwl3QyRPqFbaOv8AjSr6iI6bNA+p3Q7E+ul2XOsgviZ1ySrDke33IY/y8G1tvCoPfJtkRmTjgKoE6SouxVERFCLdNrSXWkEtdnOqWBdnMfgRMgkPY7llgRz82czhti49HF3RXGH2SUUfZJUQtikKoviBjqW7K2g21ZMupXtMcthOVuFydiEi2b9ElvhPZf2a+foCw6Ov1ep+Gr6iOfTZoh1Q6VYZ1mSdkD11LNeRbtH+VlZO6wkdmJGJUI48Jjc4oIaom8yJSLRNNiaisWtJdaQd73Q68ZN2U4rtOE4lfLZYrzaMjjXwH7v6yRnW2YsqMTSmw26YL/zhCRdhfsdPjqirhm3rKPKdH+reYdY8czuBmeQ2e+XLL7hDkMt2VZDjDDUNpwE3OyWmCIjV1fBA0TTzXXwWtJlKwSp2W6x4N2ZxGLYMnddst+sjjj+KZfEbFyTBcdREcAgJRR1l3aPqN7h12iqEJIi1lbQbasmUM32muZm55N23kfC5dsQ1QJkkrjHfUPgqsBEeFF+r1fw106iOfTZfnqd0TxPrjc3M3vd8TOeSXY7kWHdUY+XhWxl5NrqQ2iIzVxwfsk6S67VUREUI90WtJdaQeM7u9LOQey2a4hl2EZRj1oCxWRbROgXw5bKqqSXXxdbcjR5O7VHVRUUU008118NraDL0ktN194Vd4r6+4twtmUmBlJW633KDkRRwP5KU3c5cmQ6yIuoJEGyR6aqqJu010TXSpblyVVQoMwD9rrmPFOR4uScZcqY3brRYry3c8UvNwKYF2hpHfR6MRstRHGHHGtqa/jBE1TyFF0TpvRz6bJf7cdCOV+fOVW+Q8WzLFY7Uix2+33KPeCmw3PmoYEDhtjGiyx2HqhIikip5eOmq5W8Iq1G2Ve//ACg7A/2349/p11/8qreoiemzTHpJ1oyzrNgmV49mV9tN7u+S3tLkK2Un3IzTLcdtkRVyQywakqiSr9jRE08VqLWkulYLp1JYoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAf/Z);\n        }\n\n        .companies ul li.modxextras a {\n            background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyMjkuNDkgNjEuNTQiPjxkZWZzPjxzdHlsZT4uY2xzLTF7ZmlsbDojMDBiNWRlO30uY2xzLTJ7ZmlsbDojMDBkZWNjO30uY2xzLTN7ZmlsbDojZmY1NTI5O30uY2xzLTR7ZmlsbDojZmY5NjQwO30uY2xzLTV7ZmlsbDojMTAyYzUzO308L3N0eWxlPjwvZGVmcz48ZyBpZD0iTGF5ZXJfMiIgZGF0YS1uYW1lPSJMYXllciAyIj48ZyBpZD0iYnJhbmRfZ3VpZGVzIiBkYXRhLW5hbWU9ImJyYW5kIGd1aWRlcyI+PGcgaWQ9ImxvZ29fb25fbGlnaHQiIGRhdGEtbmFtZT0ibG9nbyBvbiBsaWdodCI+PHBvbHlnb24gY2xhc3M9ImNscy0xIiBwb2ludHM9IjU5LjI5IDUuOTUgMjkuNTggNS45NSAyNS41NiAxMi40IDQ2Ljk0IDI1LjcgNDYuOTQgMjUuNyA0Ni45NCAyNS43MSA1OS4yOSA1Ljk1Ii8+PHBvbHlnb24gY2xhc3M9ImNscy0yIiBwb2ludHM9IjI1LjU2IDEyLjQgNS42MiAwIDUuNjIgMjkuNzEgMTIuNDkgMzMuNzIgNDYuOTQgMjUuNyA0Ni45NCAyNS43IDI1LjU2IDEyLjQiLz48cG9seWdvbiBjbGFzcz0iY2xzLTMiIHBvaW50cz0iNDcuMDYgMjcuODIgNDcuMDYgMjcuODIgNDcuMDcgMjcuODIgNDcuMDYgMjcuODIiLz48cG9seWdvbiBjbGFzcz0iY2xzLTMiIHBvaW50cz0iNTMuNDcgMzEuODMgNDcuMDcgMjcuODIgMzMuNjUgNDkuMTUgNTMuNDcgNjEuNTQgNTMuNDcgMzEuODMiLz48cG9seWdvbiBjbGFzcz0iY2xzLTQiIHBvaW50cz0iNDcuMDcgMjcuODIgNDcuMDcgMjcuODIgNDcuMDYgMjcuODIgMTIuMzUgMzUuOTggMCA1NS40MSAyOS43MSA1NS40MSAzMy42NSA0OS4xNSA0Ny4wNyAyNy44MiA0Ny4wNyAyNy44MiIvPjxwYXRoIGNsYXNzPSJjbHMtNSIgZD0iTTEwNy42Niw0Ny44bDAtMTguODRMOTguMzcsNDQuNDhIOTUuMUw4NS45LDI5LjM3VjQ3LjhINzkuMDhWMTYuNGg2TDk2Ljg1LDM1LjkyLDEwOC40MiwxNi40aDZsLjA5LDMxLjRaIi8+PHBhdGggY2xhc3M9ImNscy01IiBkPSJNMTIxLjgyLDMyLjFjMC05LjMzLDcuMjctMTYuMjQsMTcuMTgtMTYuMjRzMTcuMTgsNi44NywxNy4xOCwxNi4yNFMxNDguODcsNDguMzQsMTM5LDQ4LjM0LDEyMS44Miw0MS40MywxMjEuODIsMzIuMVptMjcsMGMwLTYtNC4yMi0xMC05LjgzLTEwcy05LjgyLDQuMDktOS44MiwxMC4wNSw0LjIxLDEwLDkuODIsMTBTMTQ4LjgzLDM4LjA3LDE0OC44MywzMi4xWiIvPjxwYXRoIGNsYXNzPSJjbHMtNSIgZD0iTTE2My41OSwxNi40aDE0LjI2YzEwLjI3LDAsMTcuMzIsNi4xOSwxNy4zMiwxNS43cy03LDE1LjctMTcuMzIsMTUuN0gxNjMuNTlabTEzLjksMjUuNDRjNi4yNCwwLDEwLjMyLTMuNzMsMTAuMzItOS43NHMtNC4wOC05LjczLTEwLjMyLTkuNzNoLTYuNjRWNDEuODRaIi8+PHBhdGggY2xhc3M9ImNscy01IiBkPSJNMjIxLjEsNDcuOGwtNy41OC0xMC45LTcuNDUsMTAuOWgtOC4zNGwxMS42MS0xNi0xMS0xNS40M2g4LjI1bDcuMjIsMTAuMTgsNy4wOS0xMC4xOGg3Ljg1TDIxNy43OCwzMS41NiwyMjkuNDksNDcuOFoiLz48L2c+PC9nPjwvZz48L3N2Zz4=);\n        }\n\n        .disclaimer {\n            max-width: 960px;\n            display: block;\n            margin: 0 auto;\n            text-align: center;\n            color: #333;\n            font-size: .6em;\n        }\n\n        @media (min-width: 768px) and (max-width: 991px)  {\n            .container {\n                padding: 1em;\n                border: 0;\n                border-radius: 0;\n            }\n        }\n\n        @media (max-width: 767px)  {\n            body {\n                font-size: 16px;\n            }\n            .container {\n                padding: 1em;\n                margin: 0 0 1em;\n                border: 0;\n                border-radius: 0;\n            }\n            .container > section, .container > aside {\n                float: none;\n                width: 100%;\n            }\n            .container aside {\n                border: 0;\n                padding: 0;\n            }\n            .logo {\n                width: 100%;\n                height: 48px;\n            }\n            h1 {\n                font-size: 24px;\n            }\n            h2 {\n                font-size: 19px;\n            }\n            h3 {\n                font-size: 16px;\n            }\n            .companys ul li {\n                display: block;\n            }\n        }\n\n    </style>\n</head>\n<body>\n\n<a href=\"http://www.modx.com\" title=\"Modx\" class=\"logo\" target=\"_blank\">MODX</a>\n\n<div class=\"container\">\n    <section>\n        <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>\n        [[*content]]\n    </section>\n    <aside>\n        <a href=\"[[++manager_url]]\" title=\"Your MODX manager\" class=\"cta-button\">Go to the&nbsp;manager</a>\n        <h3>Learn more about&nbsp;MODX</h3>\n        <ul>\n            <li><a href=\"https://docs.modx.com/current/en/index\">Official&nbsp;Documentation</a></li>\n            <li><a href=\"https://docs.modx.com/current/en/getting-started/friendly-urls\">Using Friendly&nbsp;URLs</a></li>\n            <li><a href=\"https://docs.modx.com/current/en/building-sites/extras\">Package&nbsp;Management</a></li>\n            <li><a href=\"http://modx.com/blog/\">Official MODX&nbsp;Blog</a></li>\n            <li><a href=\"http://www.discovermodx.com/\">Discover&nbsp;MODX</a></li>\n            <li><a href=\"https://modx.today\">MODX.today</a></li>\n        </ul>\n\n        <h3>Get help!</h3>\n        <ul>\n            <li><a href=\"http://forums.modx.com/\">Official MODX&nbsp;Forums</a></li>\n            <li><a href=\"https://modx.org/\">MODX on&nbsp;Slack</a></li>\n            <li><a href=\"https://twitter.com/modx\">MODX on&nbsp;Twitter</a></li>\n            <li><a href=\"https://www.facebook.com/modxcms\">MODX on&nbsp;Facebook</a></li>\n            <li><a href=\"http://modx.com/professionals/\">Find a MODX&nbsp;Professional</a></li>\n        </ul>\n    </aside>\n    <div class=\"companies\">\n        <h3>Extend MODX with&nbsp;Extras</h3>\n        <ul>\n            <li class=\"modxextras\"><a href=\"http://modx.com/extras/\" title=\"MODX extras\" target=\"_blank\">MODX&nbsp;extras</a></li>\n            <li class=\"modmore\"><a href=\"https://www.modmore.com/extras/\" title=\"modmore.com\" target=\"_blank\">modmore.com</a></li>\n            <li class=\"modstore\"><a href=\"https://modstore.pro/\" title=\"modstore.pro\" target=\"_blank\">modstore.pro</a></li>\n            <li class=\"extrasio\"><a href=\"https://extras.io/extras/\" title=\"Extras.io\" target=\"_blank\">Extras.io</a></li>\n        </ul>\n    </div>\n</div>\n<footer class=\"disclaimer\">\n    <p>&copy; 2005-present the <a href=\"http://www.modx.com/\" target=\"_blank\">MODX</a> Content Management Framework (CMF) project. All rights reserved. MODX is licensed under the GNU&nbsp;GPL.</p>\n</footer>\n\n<script>\n    // Load the Open Sans font\n    try {\n        document.addEventListener(\"DOMContentLoaded\", function() { // prevent a Flash Of Unstyled Text (FOUT)\n            document.querySelector(\'head\').innerHTML += \"<link href=\'https://fonts.googleapis.com/css?family=Open+Sans:400,700&display=swap\' rel=\'stylesheet\' type=\'text/css\'>\";\n            document.body.classList.add(\'loaded\');\n        });\n    } catch (e) { }\n\n    // Shuffle the vendors to prevent favoritism of one vendor over the other\n    // with thanks to http://james.padolsey.com/javascript/shuffling-the-dom/\n    function shuffle(elems) {\n        var allElems = (function(){\n            var ret = [], l = elems.length;\n            while (l--) {\n                if (elems[l].className !== \'modxextras\') {\n                    ret[ret.length] = elems[l];\n                }\n            }\n            return ret;\n        })();\n\n        var shuffled = (function(){\n            var l = allElems.length, ret = [];\n            while (l--) {\n                var random = Math.floor(Math.random() * allElems.length),\n                        randEl = allElems[random].cloneNode(true);\n                allElems.splice(random, 1);\n                ret[ret.length] = randEl;\n            }\n            return ret;\n        })(), l = elems.length;\n\n        // To make sure the MODX logo stays #1, we lower the count by one here (shuffling 3 instead of 4 items)\n        // and refer to elems[l+1] in the loop below. This matches because allElems was also filtered to not include\n        // the official MODX logo.\n        l--;\n        while (l--) {\n            elems[l+1].parentNode.insertBefore(shuffled[l], elems[l+1].nextSibling);\n            elems[l+1].parentNode.removeChild(elems[l+1]);\n        }\n    }\n    shuffle(document.querySelectorAll(\'.companies li\'));\n</script>\n\n</body>\n</html>\n', 0, NULL, 0, ''),
(2, 0, 0, 'LayoutHome', '', 0, 1, '', 0, '<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n    <meta charset=\"UTF-8\">\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>[[*pagetitle]]</title>\n    [[$ChunkHeaderCss]]\n    [[$ChunkHeaderScripts]]\n</head>\n<div class=\"web_login_background_opacity\"></div>\n<body style=\"background-image: url(\'./assets/layout/images/fondo-1.jpg\');background-repeat: no-repeat;width: 100%;background-size: cover;\">\n    [[*content]]\n</body>\n</html>', 0, 'a:0:{}', 0, ''),
(3, 0, 0, 'LayoutLogin', '', 0, 1, '', 0, '<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n    <meta charset=\"UTF-8\">\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n    <meta name=\"viewport\" content=\"width=device-width, minimal-ui\">\n    <meta name=\"apple-mobile-web-app-title\" content=\"App name\" />\n    <meta name=\"apple-mobile-web-app-capable\" content=\"yes\">\n    <meta name=\"apple-mobile-web-app-status-bar-style\" content=\"black\" />\n    <title>[[*pagetitle]]</title>\n    [[$ChunkHeaderCss]]\n    [[$ChunkHeaderScripts]]\n</head>\n<div class=\"web_login_background_opacity\"></div>\n<body class=\"body\" style=\"background-image: url(\'./assets/layout/images/fondo-1.jpg\');background-repeat: no-repeat;width: 100%;background-size: cover;\">\n    [[*content]]\n    <script type=\"text/javascript\" src=\"./assets/layout/js/main.js\"></script>\n</body>\n</html>', 0, 'a:0:{}', 0, ''),
(4, 0, 0, 'LayoutGeneral', '', 0, 1, '', 0, '<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n    <meta charset=\"UTF-8\">\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>[[*pagetitle]]</title>\n    [[$ChunkHeaderCss]]\n    [[$ChunkHeaderScripts]]\n</head>\n<body>\n    [[$ChunkHeader]]\n    [[*content]]\n    [[$ChunkFooter]]\n</body>\n</html>', 0, 'a:0:{}', 0, '');
INSERT INTO `modx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`) VALUES
(5, 0, 0, 'LayoutProduct', '', 0, 1, '', 0, '<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n    <base href=\"/\">\n    <meta charset=\"UTF-8\">\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>[[*pagetitle]]</title>\n    [[$ChunkHeaderCss]]\n    <script>\n        var productId = [[*id]];\n        var productPrice = [[*tv_price]];\n        var productName = \'[[*tv_product_name]]\';\n        var productUrl = \'[[*uri]]\';\n    </script>\n    [[$ChunkHeaderScripts]]\n</head>\n<body>\n    [[$ChunkHeader]]\n    <div class=\"wrapper-container-main wrapper-container-product\">\n        <div class=\"wrapper-center-product\">\n            <h4 class=\"layout-title layout-type-title-a text-aling-center\">Lo nuevo</h4>\n            <div class=\"wrapper-product-main\">\n                <div class=\"rowx\">\n                    <div class=\"\">\n                        <div class=\"wrapper-productx\">\n                              <div class=\"xzoom-container\">\n                                [[!getImageList? \n                                &tpl=`@CODE:<img class=\"xzoom resize-img\" src=\"[[+image_thumbs]]\" xoriginal=\"[[+image_original]]\" style=\"width: 423px;\">`\n                                &limit=`1`\n                                &tvname=`tv_gallery_image`]]\n                                \n                                <div class=\"xzoom-thumbs\">\n                                  [[!getImageList? &tpl=`@CODE:<a href=\"[[+image_thumbs]]\"><img class=\"xzoom-gallery xactive\" width=\"40\" src=\"[[+image_thumbs]]\" xoriginal=\"[[+image_original]]\" title=\"[[+description]]\"></a>` &tvname=`tv_gallery_image`]]\n                                </div>\n                              </div>\n                        </div>\n                    </div>\n                </div>\n                <div class=\"rowx\">\n                    <div class=\"wrapper-product\">\n                        <div class=\"wrapper-detail\">\n                            <h2 class=\"product-title product-title-a text-aling-left\">[[*tv_product_name]]</h2>\n                            <!--BLAZER <span>EMMA</span>-->\n                            <h3 class=\"title-type-e\">S/[[*tv_price]]</h3>\n                            <div class=\"detail-product\">\n                                <div class=\"tallas\">\n                                    <h5 class=\"title-type-b\">Tallas</h5>\n                                    <ul class=\"radio-button-a\">\n                                        <li>\n                                            <label class=\"radio_talla radio-gradient__talla\">\n                                                <span class=\"radio__input__talla\">\n                                                    <input type=\"radio\" name=\"radio-talla\" value=\"S\">\n                                                    <span class=\"radio__control__talla\">S</span>\n                                                </span>\n                                            </label>\n                                        </li>\n                                        <li>\n                                            <label class=\"radio_talla radio-gradient__talla\">\n                                                <span class=\"radio__input__talla\">\n                                                    <input type=\"radio\" name=\"radio-talla\" value=\"M\">\n                                                    <span class=\"radio__control__talla\">M</span>\n                                                </span>\n                                            </label>\n                                        </li>\n                                        <li>\n                                            <label class=\"radio_talla radio-gradient__talla\">\n                                                <span class=\"radio__input__talla\">\n                                                    <input type=\"radio\" name=\"radio-talla\" value=\"L\">\n                                                    <span class=\"radio__control__talla\">L</span>\n                                                </span>\n                                            </label>\n                                        </li>\n                                    </ul>\n                                </div>\n                                <div class=\"colores\">\n                                    <h5 class=\"title-type-b\">Colores</h5>\n                                    <ul class=\"radio-button-b\">\n                                        <li>\n                                            <div class=\"color-content\">\n                                                <label class=\"radio radio-gradient\">\n                                                    <span class=\"radio__input\">\n                                                        <input type=\"radio\" name=\"radio-color\" value=\"NEGRO\">\n                                                        <span class=\"radio__control radio__control1\">\n                                                            <img src=\"./assets/layout/images/svgs/check-talla.svg\">\n                                                        </span>\n                                                    </span>\n                                                    <span class=\"radio__label\">Negro</span>\n                                                </label>\n                                            </div>\n                                        </li>\n                                        <li>\n                                            <div class=\"color-content\">\n                                                <label class=\"radio radio-gradient\">\n                                                    <span class=\"radio__input\">\n                                                        <input type=\"radio\" name=\"radio-color\" value=\"MANGO\">\n                                                        <span class=\"radio__control radio__control2\">\n                                                            <img src=\"./assets/layout/images/svgs/check-talla.svg\">\n                                                        </span>\n                                                    </span>\n                                                    <span class=\"radio__label\">Mango</span>\n                                                </label>\n                                            </div>\n                                        </li>\n                                        <li>\n                                            <div class=\"color-content\">\n                                                <label class=\"radio radio-gradient\">\n                                                    <span class=\"radio__input\">\n                                                        <input type=\"radio\" name=\"radio-color\" value=\"ROJO\">\n                                                        <span class=\"radio__control radio__control3\">\n                                                            <img src=\"./assets/layout/images/svgs/check-talla.svg\">\n                                                        </span>\n                                                    </span>\n                                                    <span class=\"radio__label\">Rojo</span>\n                                                </label>\n                                            </div>\n                                        </li>\n                                        <li>\n                                            <div class=\"color-content\">\n                                                <label class=\"radio radio-gradient\">\n                                                    <span class=\"radio__input\">\n                                                        <input type=\"radio\" name=\"radio-color\" value=\"PROSA\">\n                                                        <span class=\"radio__control radio__control4\">\n                                                            <img src=\"./assets/layout/images/svgs/check-talla.svg\">\n                                                        </span>\n                                                    </span>\n                                                    <span class=\"radio__label\">P. Rosa</span>\n                                                </label>\n                                            </div>\n                                        </li>\n                                        <li>\n                                            <div class=\"color-content\">\n                                                <label class=\"radio radio-gradient\">\n                                                    <span class=\"radio__input\">\n                                                        <input type=\"radio\" name=\"radio-color\" value=\"MENTA\">\n                                                        <span class=\"radio__control radio__control5\">\n                                                            <img src=\"./assets/layout/images/svgs/check-talla.svg\">\n                                                        </span>\n                                                    </span>\n                                                    <span class=\"radio__label\">Menta</span>\n                                                </label>\n                                            </div>\n                                        </li>\n                                    </ul>\n                                </div>\n                                [[*tv_unidades]]\n                                <div class=\"wrapper-cart-btns\">\n                                    <button class=\"type-button type-button-a\" id=\"btn-add-item\" disabled>AGREGA A TU LISTA</button>\n                                </div>\n                                <div class=\"wrapper-cart-detail\">\n                                    <table id=\"orders-table\">\n                                        <tr class=\"headertr\">\n                                            <th align=\"center\">Talla</th>\n                                            <th align=\"center\">Color</th>\n                                            <th align=\"center\">Cantidad</th>\n                                            <th align=\"right\">Precio</th>\n                                            <th align=\"right\">Total</th>\n                                        </tr>\n                                    </table>\n                                </div>\n                                <div class=\"wrapper-cart-btns\">\n                                    <button class=\"type-button type-button-b\" id=\"btn-send-order\" disabled>ENVIAR PEDIDO</button>\n                                </div>\n                                <div class=\"entrega\">\n                                    <p class=\"text-type-d\">Entrega GRATIS Lima - Ver Cobertura</p>\n                                </div>\n                                [[*tv_detail]]\n                                <div class=\"medio-pago\">\n                                    <img src=\"./assets/layout/images/image-5.jpg\">\n                                    <p class=\"title-type-c text-aling-left\">copyright 2021 ONE BERRY</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n\n    </div>\n    <div style=\"clear: both;\"></div> \n\n    [[$ChunkFooter]]\n</body>\n</html>', 0, 'a:0:{}', 0, ''),
(6, 0, 0, 'LayoutProducts', '', 0, 1, '', 0, '<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n    <meta charset=\"UTF-8\">\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>[[*pagetitle]]</title>\n    [[$ChunkHeaderCss]]\n    [[$ChunkHeaderScripts]]\n</head>\n<body>\n    [[$ChunkHeader]]\n    <div class=\"wrapper-container-main wrapper-container-products\">\n        <div class=\"wrapper-center-product\">\n            <h4 class=\"layout-title layout-type-title-a text-align-right\">modelos exclusivos</h4>\n            <div class=\"wrapper-products\">\n                <div class=\"rowx\">\n                    <div class=\"\">\n                        <div class=\"wrapper-product\">\n                            <img class=\"resize-img\" src=\"./assets/layout/images/image1.jpg\" >\n                            <div class=\"wrapper-detail\">\n                                <h2 class=\"product-title product-title-a\">BLAZER <span>EMMA</span></h2>\n                                <h3 class=\"title-type-e\">S/19.99</h3>\n                                <h5 class=\"title-type-d text-aling-left\">Entrega: 24 horas</h5>\n                            </div>\n                            <div class=\"wrapper-btns\">\n                                <a class=\"btn-product\" href=\"./product.html\">MAS DETALLES</a>\n                                <button type=\"button\" class=\"btn-product btn-comprar\">COMPRAR</button>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n                <div class=\"rowx\">\n                    <div class=\"\">\n                        <div class=\"wrapper-product\">\n                            <img class=\"resize-img\" src=\"./assets/layout/images/image1.jpg\" >\n                            <div class=\"wrapper-detail\">\n                                <h2 class=\"product-title product-title-a\">BLAZER <span>EMMA</span></h2>\n                                <h3 class=\"title-type-e\">S/19.99</h3>\n                                <h5 class=\"title-type-d text-aling-left\">Entrega: 24 horas</h5>\n                            </div>\n                            <div class=\"wrapper-btns\">\n                                <a class=\"btn-product\" href=\"./product.html\">MAS DETALLES</a>\n                                <button type=\"button\" class=\"btn-product btn-comprar\">COMPRAR</button>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n                <div class=\"rowx\">\n                    <div class=\"\">\n                        <div class=\"wrapper-product\">\n                            <img class=\"resize-img\" src=\"./assets/layout/images/image1.jpg\" >\n                            <div class=\"wrapper-detail\">\n                                <h2 class=\"product-title product-title-a\">BLAZER <span>EMMA</span></h2>\n                                <h3 class=\"title-type-e\">S/19.99</h3>\n                                <h5 class=\"title-type-d text-aling-left\">Entrega: 24 horas</h5>\n                                <h6 class=\"title-type-f\">Quedan</h6>\n                                <div class=\"time-expired\">\n                                    <div class=\"time-expired-day\">3 días</div>\n                                    <div class=\"time-expired-day\">29 hrs</div>\n                                    <div class=\"time-expired-day\">29 min</div>\n                                    <div class=\"time-expired-day\">20 s</div>\n                                </div>\n                            </div>\n                            <div class=\"wrapper-btns\">\n                                <a class=\"btn-product\" href=\"./product.html\">MAS DETALLES</a>\n                                <button type=\"button\" class=\"btn-product btn-reservar\">RESERVAR</button>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n                <div class=\"rowx\">\n                    <div class=\"\">\n                        <div class=\"wrapper-product\">\n                            <img class=\"resize-img\" src=\"./assets/layout/images/image1.jpg\" >\n                            <div class=\"wrapper-detail\">\n                                <h2 class=\"product-title product-title-a\">BLAZER <span>EMMA</span></h2>\n                                <h3 class=\"title-type-e\">S/19.99</h3>\n                                <h5 class=\"title-type-d text-aling-left\">Entrega: 24 horas</h5>\n                                <h6 class=\"title-type-f\">Quedan</h6>\n                                <div class=\"time-expired\">\n                                    <div class=\"time-expired-day\">3 días</div>\n                                    <div class=\"time-expired-day\">29 hrs</div>\n                                    <div class=\"time-expired-day\">29 min</div>\n                                    <div class=\"time-expired-day\">20 s</div>\n                                </div>\n                            </div>\n                            <div class=\"wrapper-btns\">\n                                <a class=\"btn-product\" href=\"./product.html\">MAS DETALLES</a>\n                                <button type=\"button\" class=\"btn-product btn-reservar\">RESERVAR</button>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n    \n        </div>\n\n        <div style=\"clear: both;\"></div> \n    </div>\n    <div style=\"clear: both;\"></div> \n    [[$ChunkFooter]]\n</body>\n</html>', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_site_tmplvars`
--

CREATE TABLE `modx_site_tmplvars` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext,
  `properties` text,
  `input_properties` text,
  `output_properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_site_tmplvars`
--

INSERT INTO `modx_site_tmplvars` (`id`, `source`, `property_preprocess`, `type`, `name`, `caption`, `description`, `editor_type`, `category`, `locked`, `elements`, `rank`, `display`, `default_text`, `properties`, `input_properties`, `output_properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'text', 'tv_price', 'Precio', '', 0, 4, 0, '', 0, 'default', '0', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:4:\"true\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:0:{}', 0, ''),
(2, 1, 0, 'richtext', 'tv_detail', 'Detalle', '', 0, 4, 0, '', 2, 'default', '', 'a:0:{}', 'a:1:{s:10:\"allowBlank\";s:4:\"true\";}', 'a:0:{}', 0, ''),
(3, 1, 0, 'richtext', 'tv_unidades', 'Información unidades', '', 0, 4, 0, '', 1, 'default', '', 'a:0:{}', 'a:1:{s:10:\"allowBlank\";s:4:\"true\";}', 'a:0:{}', 0, ''),
(4, 1, 0, 'richtext', 'tv_product_name', 'Nombre', '', 0, 4, 0, '', 1, 'default', '', 'a:0:{}', 'a:1:{s:10:\"allowBlank\";s:4:\"true\";}', 'a:0:{}', 0, ''),
(5, 1, 0, 'migx', 'tv_gallery_image', 'Galeria', '', 0, 4, 0, '', 0, 'default', '', 'a:0:{}', 'a:7:{s:7:\"configs\";s:0:\"\";s:8:\"formtabs\";s:541:\"[\n    {\n    \"caption\": \"Info\",\n    \"fields\": [{\n        \"field\": \"title\",\n        \"caption\": \"Title\"\n      },\n      {\n        \"field\": \"description\",\n        \"caption\": \"Description\",\n        \"inputTVtype\": \"richtext\"\n      }\n    ]\n  },\n  {\n    \"caption\": \"Image 423x423\",\n    \"fields\": [{\n      \"field\": \"image_thumbs\",\n      \"caption\": \"Image\",\n      \"inputTVtype\": \"image\"\n    }]\n  },\n  {\n    \"caption\": \"Image 426x426\",\n    \"fields\": [{\n      \"field\": \"image_original\",\n      \"caption\": \"Image\",\n      \"inputTVtype\": \"image\"\n    }]\n  }\n]\";s:7:\"columns\";s:503:\"[\n    {\n        \"header\": \"Title\",\n        \"width\": \"33.3\",\n        \"sortable\": \"true\",\n        \"dataIndex\": \"title\"\n    }, \n    {\n        \"header\": \"Image Thumbs (426x426)\",\n        \"width\": \"33.3\",\n        \"sortable\": \"false\",\n        \"dataIndex\": \"image_thumbs\",\n        \"renderer\": \"this.renderImage\"\n    },\n    {\n        \"header\": \"Image Original (426x426)\",\n        \"width\": \"33.3\",\n        \"sortable\": \"false\",\n        \"dataIndex\": \"image_original\",\n        \"renderer\": \"this.renderImage\"\n    }\n]\";s:7:\"btntext\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";}', 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_site_tmplvar_access`
--

CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_site_tmplvar_contentvalues`
--

CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `contentid` int(10) NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_site_tmplvar_contentvalues`
--

INSERT INTO `modx_site_tmplvar_contentvalues` (`id`, `tmplvarid`, `contentid`, `value`) VALUES
(1, 1, 10, '29.90'),
(3, 3, 10, '<table>\r\n    <tbody>\r\n        <tr><th>Mín. 12 unds.</th><th>Mín. 6 unds.</th><th>Mín. 3 unds.</th></tr>\r\n        <tr><td>S: S/15.00</td><td>S: S/16.00</td><td></td></tr>\r\n        <tr><td>M: S/16.00</td><td>M: S/17.00</td><td>SML: S/20.00</td></tr>\r\n        <tr><td>L: S/17.00</td><td>L: S/18.00</td><td></td>\r\n    </tbody>\r\n</table>'),
(4, 4, 10, 'BLAZER <span>EMMA</span>'),
(5, 5, 10, '[{\"MIGX_id\":\"1\",\"title\":\"Producto\",\"description\":\"Desc Producto\",\"image_thumbs\":\"assets\\/gallery\\/image-6.jpg\",\"image_original\":\"assets\\/gallery\\/01_b_car.jpg\"},{\"MIGX_id\":\"2\",\"title\":\"Producto1\",\"description\":\"Desc Producto\",\"image_thumbs\":\"assets\\/gallery\\/image-6.jpg\",\"image_original\":\"assets\\/gallery\\/01_b_car.jpg\"}]'),
(6, 1, 13, '29.9'),
(8, 3, 13, '<table>\r\n    <tbody>\r\n        <tr><th>Mín. 12 unds.</th><th>Mín. 6 unds.</th><th>Mín. 3 unds.</th></tr>\r\n        <tr><td>S: S/15.00</td><td>S: S/16.00</td><td></td></tr>\r\n        <tr><td>M: S/16.00</td><td>M: S/17.00</td><td>SML: S/20.00</td></tr>\r\n        <tr><td>L: S/17.00</td><td>L: S/18.00</td><td></td>\r\n    </tbody>\r\n</table>'),
(9, 4, 13, 'PRODUCT <span>EMMA</span>'),
(10, 5, 13, '[{\"MIGX_id\":\"1\",\"title\":\"Producto\",\"description\":\"Desc Producto\",\"image_thumbs\":\"assets\\/gallery\\/image-6.jpg\",\"image_original\":\"assets\\/gallery\\/01_b_car.jpg\"},{\"MIGX_id\":\"2\",\"title\":\"Producto1\",\"description\":\"Desc Producto\",\"image_thumbs\":\"assets\\/gallery\\/image-6.jpg\",\"image_original\":\"assets\\/gallery\\/01_b_car.jpg\"}]'),
(11, 2, 10, 'oxoxooxxooxox'),
(13, 2, 13, '<div class=\"detalle\">\r\n    <h5 class=\"title-type-b\">Detalles</h5>\r\n    <p class=\"text-type-b\">\r\n        Blazer con solapa bolsillos laterales cuellos smoking, maxi blazer\r\n    </p>\r\n</div>\r\n<div class=\"material\">\r\n    <h5 class=\"title-type-b\">Material</h5>\r\n    <p class=\"text-type-a\">\r\n        100% cotton<br>Exlcusivo de  \r\n    </p>\r\n</div>\r\n<div class=\"horario\">\r\n    <h5 class=\"title-type-b\">Envío Lima</h5>\r\n    <p class=\"text-type-b\">\r\n        Lunes - Miercoles y Viernes\r\n    </p>\r\n</div>\r\n<div class=\"tiempo\">\r\n    <h5 class=\"title-type-b\">Tiempo entrega</h5>\r\n    <p class=\"text-type-c\">\r\n        Disponible en <span>18 días</span>\r\n    </p>\r\n</div>'),
(14, 1, 18, '29.9'),
(15, 3, 18, '<table>\r\n    <tbody>\r\n        <tr><th>Mín. 12 unds.</th><th>Mín. 6 unds.</th><th>Mín. 3 unds.</th></tr>\r\n        <tr><td>S: S/15.00</td><td>S: S/16.00</td><td></td></tr>\r\n        <tr><td>M: S/16.00</td><td>M: S/17.00</td><td>SML: S/20.00</td></tr>\r\n        <tr><td>L: S/17.00</td><td>L: S/18.00</td><td></td>\r\n    </tbody>\r\n</table>'),
(16, 4, 18, 'BLAZER <span>EMMA</span>'),
(17, 5, 18, '[{\"MIGX_id\":\"1\",\"title\":\"Producto\",\"description\":\"Desc Producto\",\"image_thumbs\":\"assets\\/gallery\\/image-6.jpg\",\"image_original\":\"assets\\/gallery\\/01_b_car.jpg\"},{\"MIGX_id\":\"2\",\"title\":\"Producto1\",\"description\":\"Desc Producto\",\"image_thumbs\":\"assets\\/gallery\\/image-6.jpg\",\"image_original\":\"assets\\/gallery\\/01_b_car.jpg\"}]'),
(18, 2, 18, '<div class=\"detalle\">\r\n    <h5 class=\"title-type-b\">Detalles</h5>\r\n    <p class=\"text-type-b\">\r\n        Blazer con solapa bolsillos laterales cuellos smoking, maxi blazer\r\n    </p>\r\n</div>\r\n<div class=\"material\">\r\n    <h5 class=\"title-type-b\">Material</h5>\r\n    <p class=\"text-type-a\">\r\n        100% cotton<br>Exlcusivo de  \r\n    </p>\r\n</div>\r\n<div class=\"horario\">\r\n    <h5 class=\"title-type-b\">Envío Lima</h5>\r\n    <p class=\"text-type-b\">\r\n        Lunes - Miercoles y Viernes\r\n    </p>\r\n</div>\r\n<div class=\"tiempo\">\r\n    <h5 class=\"title-type-b\">Tiempo entrega</h5>\r\n    <p class=\"text-type-c\">\r\n        Disponible en <span>18 días</span>\r\n    </p>\r\n</div>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_site_tmplvar_templates`
--

CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_site_tmplvar_templates`
--

INSERT INTO `modx_site_tmplvar_templates` (`tmplvarid`, `templateid`, `rank`) VALUES
(1, 5, 2),
(2, 5, 4),
(3, 5, 3),
(4, 5, 0),
(5, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_system_eventnames`
--

CREATE TABLE `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `groupname` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_system_eventnames`
--

INSERT INTO `modx_system_eventnames` (`name`, `service`, `groupname`) VALUES
('OnBeforeCacheUpdate', 4, 'System'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnBeforeRegisterClientScripts', 5, 'System'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnBeforeUserActivate', 1, 'Users'),
('OnBeforeUserDeactivate', 1, 'Users'),
('OnBeforeUserDuplicate', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnBeforeWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnCacheUpdate', 4, 'System'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategorySave', 1, 'Categories'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkSave', 1, 'Chunks'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextSave', 1, 'Contexts'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnElementNotFound', 1, 'System'),
('OnEmptyTrash', 1, 'Resources'),
('OnFileCreateFormPrerender', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnFileManagerBeforeUpload', 1, 'System'),
('OnFileManagerDirCreate', 1, 'System'),
('OnFileManagerDirRemove', 1, 'System'),
('OnFileManagerDirRename', 1, 'System'),
('OnFileManagerFileCreate', 1, 'System'),
('OnFileManagerFileRemove', 1, 'System'),
('OnFileManagerFileRename', 1, 'System'),
('OnFileManagerFileUpdate', 1, 'System'),
('OnFileManagerMoveObject', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnInitCulture', 1, 'Internationalization'),
('OnJWTAuthenticated', 2, 'modJWT'),
('OnJWTBeforeFire', 1, 'modJWT'),
('OnLoadWebDocument', 5, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnManagerPageAfterRender', 2, 'System'),
('OnManagerPageBeforeRender', 2, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnMediaSourceBeforeFormDelete', 1, 'Media Sources'),
('OnMediaSourceBeforeFormSave', 1, 'Media Sources'),
('OnMediaSourceDuplicate', 1, 'Media Sources'),
('OnMediaSourceFormDelete', 1, 'Media Sources'),
('OnMediaSourceFormSave', 1, 'Media Sources'),
('OnMediaSourceGetProperties', 1, 'Media Sources'),
('OnMODXInit', 5, 'System'),
('OnPackageInstall', 2, 'Package Manager'),
('OnPackageRemove', 2, 'Package Manager'),
('OnPackageUninstall', 2, 'Package Manager'),
('OnPageNotFound', 1, 'System'),
('OnPageUnauthorized', 1, 'Security'),
('OnParseDocument', 5, 'System'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginSave', 1, 'Plugins'),
('OnPropertySetBeforeRemove', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnResourceAddToResourceGroup', 1, 'Resources'),
('OnResourceAutoPublish', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceCacheUpdate', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceRemoveFromResourceGroup', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnSiteRefresh', 1, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnTempFormDelete', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserActivate', 1, 'Users'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserDeactivate', 1, 'Users'),
('OnUserDuplicate', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserNotFound', 1, 'Users'),
('OnUserProfileBeforeRemove', 1, 'User Profiles'),
('OnUserProfileBeforeSave', 1, 'User Profiles'),
('OnUserProfileRemove', 1, 'User Profiles'),
('OnUserProfileSave', 1, 'User Profiles'),
('OnUserRemove', 1, 'Users'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnUserSave', 1, 'Users'),
('OnWebAuthentication', 3, 'Security'),
('OnWebLogin', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnWebPageComplete', 5, 'System'),
('OnWebPageInit', 5, 'System'),
('OnWebPagePrerender', 5, 'System'),
('pdoToolsOnFenomInit', 6, 'pdoTools');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_system_settings`
--

CREATE TABLE `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_system_settings`
--

INSERT INTO `modx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('ace.fold_widgets', '1', 'combo-boolean', 'ace', 'general', NULL),
('ace.font_size', '16px', 'textfield', 'ace', 'general', '2021-06-08 14:14:06'),
('ace.grow', '', 'textfield', 'ace', 'general', NULL),
('ace.height', '', 'textfield', 'ace', 'general', NULL),
('ace.html_elements_mime', '', 'textfield', 'ace', 'general', NULL),
('ace.show_invisibles', '0', 'combo-boolean', 'ace', 'general', NULL),
('ace.snippets', '', 'textarea', 'ace', 'general', NULL),
('ace.soft_tabs', '1', 'combo-boolean', 'ace', 'general', NULL),
('ace.tab_size', '4', 'textfield', 'ace', 'general', NULL),
('ace.theme', 'monokai', 'textfield', 'ace', 'general', '2021-06-08 14:14:54'),
('ace.word_wrap', '0', 'combo-boolean', 'ace', 'general', '2021-06-08 14:14:55'),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', NULL),
('allow_manager_login_forgot_password', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_tags_in_post', '', 'combo-boolean', 'core', 'system', NULL),
('allow_tv_eval', '1', 'combo-boolean', 'core', 'system', NULL),
('anonymous_sessions', '1', 'combo-boolean', 'core', 'session', NULL),
('archive_with', '', 'combo-boolean', 'core', 'system', NULL),
('automatic_alias', '1', 'combo-boolean', 'core', 'furls', NULL),
('automatic_template_assignment', 'parent', 'textfield', 'core', 'site', NULL),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', NULL),
('auto_check_pkg_updates_cache_expire', '15', 'textfield', 'core', 'system', NULL),
('auto_isfolder', '1', 'combo-boolean', 'core', 'site', NULL),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', NULL),
('base_help_url', '//docs.modx.com/help/', 'textfield', 'core', 'manager', NULL),
('blocked_minutes', '60', 'textfield', 'core', 'authentication', NULL),
('cache_action_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_alias_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_db', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_db_session', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_session_lifetime', '', 'textfield', 'core', 'caching', NULL),
('cache_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_format', '0', 'textfield', 'core', 'caching', NULL),
('cache_handler', 'xPDOFileCache', 'textfield', 'core', 'caching', NULL),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_clear_partial', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', NULL),
('clear_cache_refresh_trees', '0', 'combo-boolean', 'core', 'caching', NULL),
('compress_css', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js_max_files', '10', 'textfield', 'core', 'manager', NULL),
('confirm_navigation', '1', 'combo-boolean', 'core', 'manager', NULL),
('container_suffix', '/', 'textfield', 'core', 'furls', NULL),
('context_tree_sort', '1', 'combo-boolean', 'core', 'manager', NULL),
('context_tree_sortby', 'rank', 'textfield', 'core', 'manager', NULL),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', NULL),
('cultureKey', 'en', 'modx-combo-language', 'core', 'language', NULL),
('date_timezone', '', 'textfield', 'core', 'system', NULL),
('debug', '', 'textfield', 'core', 'system', NULL),
('default_content_type', '1', 'modx-combo-content-type', 'core', 'site', NULL),
('default_context', 'web', 'modx-combo-context', 'core', 'site', NULL),
('default_duplicate_publish_option', 'preserve', 'textfield', 'core', 'manager', NULL),
('default_media_source', '1', 'modx-combo-source', 'core', 'manager', NULL),
('default_media_source_type', 'sources.modFileMediaSource', 'modx-combo-source-type', 'core', 'manager', NULL),
('default_per_page', '20', 'textfield', 'core', 'manager', NULL),
('default_template', '1', 'modx-combo-template', 'core', 'site', NULL),
('default_username', '(anonymous)', 'textfield', 'core', 'session', NULL),
('editor_css_path', '', 'textfield', 'core', 'editor', NULL),
('editor_css_selectors', '', 'textfield', 'core', 'editor', NULL),
('emailsender', 'admin@localhost.com', 'textfield', 'core', 'authentication', '2021-06-08 13:34:38'),
('emailsubject', 'Your login details', 'textfield', 'core', 'authentication', NULL),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', NULL),
('enable_gravatar', '1', 'combo-boolean', 'core', 'manager', NULL),
('error_log_filename', 'error.log', 'textfield', 'core', 'system', NULL),
('error_log_filepath', '', 'textfield', 'core', 'system', NULL),
('error_page', '1', 'textfield', 'core', 'site', NULL),
('extension_packages', '[{\"pkgorder\":{\"path\":\"[[++core_path]]components/pkgorder/model/\"}}]', 'textfield', 'core', '', NULL),
('failed_login_attempts', '5', 'textfield', 'core', 'authentication', NULL),
('feed_modx_news', 'https://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', NULL),
('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('feed_modx_security', 'https://forums.modx.com/board.xml?board=294', 'textfield', 'core', 'system', NULL),
('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('fe_editor_lang', 'en', 'modx-combo-language', 'core', 'language', NULL),
('filemanager_path', '', 'textfield', 'core', 'file', NULL),
('filemanager_path_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('filemanager_url', '', 'textfield', 'core', 'file', NULL),
('filemanager_url_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('forgot_login_email', '<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('form_customization_use_all_groups', '', 'combo-boolean', 'core', 'manager', NULL),
('forward_merge_excludes', 'type,published,class_key', 'textfield', 'core', 'system', NULL),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_max_length', '0', 'textfield', 'core', 'furls', NULL),
('friendly_alias_realtime', '0', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', NULL),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_translit', 'none', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class', 'translit.modTransliterate', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class_path', '{core_path}components/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', NULL),
('friendly_urls', '1', 'combo-boolean', 'core', 'furls', '2021-06-08 13:39:41'),
('friendly_urls_strict', '0', 'combo-boolean', 'core', 'furls', '2021-06-09 20:16:32'),
('global_duplicate_uri_check', '0', 'combo-boolean', 'core', 'furls', NULL),
('hidemenu_default', '0', 'combo-boolean', 'core', 'site', NULL),
('inline_help', '1', 'combo-boolean', 'core', 'manager', NULL),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', NULL),
('locale', '', 'textfield', 'core', 'language', NULL),
('lock_ttl', '360', 'textfield', 'core', 'system', NULL),
('log_deprecated', '1', 'combo-boolean', 'core', 'system', NULL),
('log_level', '1', 'textfield', 'core', 'system', NULL),
('log_snippet_not_found', '1', 'combo-boolean', 'core', 'site', NULL),
('log_target', 'FILE', 'textfield', 'core', 'system', NULL),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', NULL),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', NULL),
('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_autotls', '1', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_helo', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', NULL),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_pass', '', 'text-password', 'core', 'mail', NULL),
('mail_smtp_port', '587', 'textfield', 'core', 'mail', NULL),
('mail_smtp_prefix', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_timeout', '10', 'textfield', 'core', 'mail', NULL),
('mail_smtp_user', '', 'textfield', 'core', 'mail', NULL),
('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', NULL),
('main_nav_parent', 'topnav', 'textfield', 'core', 'manager', NULL),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', NULL),
('manager_direction', 'ltr', 'textfield', 'core', 'language', NULL),
('manager_favicon_url', '', 'textfield', 'core', 'manager', NULL),
('manager_js_cache_file_locking', '1', 'combo-boolean', 'core', 'manager', NULL),
('manager_js_cache_max_age', '3600', 'textfield', 'core', 'manager', NULL),
('manager_js_document_root', '', 'textfield', 'core', 'manager', NULL),
('manager_js_zlib_output_compression', '0', 'combo-boolean', 'core', 'manager', NULL),
('manager_language', 'en', 'modx-combo-language', 'core', 'language', NULL),
('manager_lang_attribute', 'en', 'textfield', 'core', 'language', NULL),
('manager_login_url_alternate', '', 'textfield', 'core', 'authentication', NULL),
('manager_theme', 'default', 'modx-combo-manager-theme', 'core', 'manager', NULL),
('manager_time_format', 'g:i a', 'textfield', 'core', 'manager', NULL),
('manager_use_fullname', '', 'combo-boolean', 'core', 'manager', NULL),
('manager_week_start', '0', 'textfield', 'core', 'manager', NULL),
('mgr_source_icon', 'icon-folder-open-o', 'textfield', 'core', 'manager', NULL),
('mgr_tree_icon_context', 'tree-context', 'textfield', 'core', 'manager', NULL),
('modjwt.assetPath', '', 'textfield', 'modjwt', 'modjwt_setting', NULL),
('modjwt.corePath', '', 'textfield', 'modjwt', 'modjwt_setting', NULL),
('modjwt.enabled', '1', 'combo-boolean', 'modjwt', 'modjwt_setting', NULL),
('modjwt.privatekey', '', 'textfield', 'modjwt', 'modjwt_key', NULL),
('modjwt.publickey', '', 'textfield', 'modjwt', 'modjwt_key', NULL),
('modjwt.secretkey', 'my-secret-key-please-change-b33c4de', 'textfield', 'modjwt', 'modjwt_key', NULL),
('modx_browser_default_sort', 'name', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_viewmode', 'grid', 'textfield', 'core', 'manager', NULL),
('modx_browser_tree_hide_files', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_browser_tree_hide_tooltips', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', NULL),
('parser_class', 'pdoParser', 'textfield', 'pdotools', 'pdotools_main', NULL),
('parser_class_path', '{core_path}components/pdotools/model/pdotools/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('parser_recurse_uncacheable', '1', 'combo-boolean', 'core', 'system', NULL),
('password_generated_length', '10', 'textfield', 'core', 'authentication', NULL),
('password_min_length', '8', 'textfield', 'core', 'authentication', NULL),
('pdoFetch.class', 'pdotools.pdofetch', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdofetch_class_path', '{core_path}components/pdotools/model/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdoTools.class', 'pdotools.pdotools', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdotools_class_path', '{core_path}components/pdotools/model/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdotools_elements_path', '{core_path}elements/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_cache', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_default', '1', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_modx', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_options', '', 'textarea', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_parser', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_php', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_save_on_errors', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxage', '30', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxfiles', '10000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxsize', '100', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_fontsize', '1', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', NULL),
('preserve_menuindex', '1', 'combo-boolean', 'core', 'manager', NULL),
('principal_targets', 'modAccessContext,modAccessResourceGroup,modAccessCategory,sources.modAccessMediaSource,modAccessNamespace', 'textfield', 'core', 'authentication', NULL),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', NULL),
('proxy_host', '', 'textfield', 'core', 'proxy', NULL),
('proxy_password', '', 'text-password', 'core', 'proxy', NULL),
('proxy_port', '', 'textfield', 'core', 'proxy', NULL),
('proxy_username', '', 'textfield', 'core', 'proxy', NULL),
('publish_default', '', 'combo-boolean', 'core', 'site', NULL),
('rb_base_dir', '', 'textfield', 'core', 'file', NULL),
('rb_base_url', '', 'textfield', 'core', 'file', NULL),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', NULL),
('request_method_strict', '0', 'combo-boolean', 'core', 'gateway', NULL),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', NULL),
('request_param_id', 'id', 'textfield', 'core', 'gateway', NULL),
('resolve_hostnames', '0', 'combo-boolean', 'core', 'system', NULL),
('resource_static_allow_absolute', '0', 'combo-boolean', 'core', 'static_resources', NULL),
('resource_static_path', '{assets_path}', 'textfield', 'core', 'static_resources', NULL),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_name_fallback', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', NULL),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', NULL),
('search_default', '1', 'combo-boolean', 'core', 'site', NULL),
('send_poweredby_header', '1', 'combo-boolean', 'core', 'system', '2021-06-08 13:34:38'),
('server_offset_time', '0', 'textfield', 'core', 'system', NULL),
('server_protocol', 'http', 'textfield', 'core', 'system', NULL),
('session_cookie_domain', '', 'textfield', 'core', 'session', NULL),
('session_cookie_httponly', '1', 'combo-boolean', 'core', 'session', NULL),
('session_cookie_lifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_cookie_path', '', 'textfield', 'core', 'session', NULL),
('session_cookie_samesite', '', 'textfield', 'core', 'session', NULL),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', NULL),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_handler_class', 'modSessionHandler', 'textfield', 'core', 'session', NULL),
('session_name', '', 'textfield', 'core', 'session', NULL),
('settings_distro', 'traditional', 'textfield', 'core', 'system', NULL),
('settings_version', '2.8.3-pl', 'textfield', 'core', 'system', NULL),
('set_header', '1', 'combo-boolean', 'core', 'system', NULL),
('show_tv_categories_header', '1', 'combo-boolean', 'core', 'manager', NULL),
('signupemail_message', '<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('site_name', 'MODX Revolution', 'textfield', 'core', 'site', NULL),
('site_start', '1', 'textfield', 'core', 'site', NULL),
('site_status', '1', 'combo-boolean', 'core', 'site', NULL),
('site_unavailable_message', 'The site is currently unavailable', 'textfield', 'core', 'site', NULL),
('site_unavailable_page', '0', 'textfield', 'core', 'site', NULL),
('static_elements_automate_chunks', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_plugins', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_snippets', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_templates', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_tvs', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_basepath', '', 'textfield', 'core', 'static_elements', NULL),
('static_elements_default_category', '0', 'modx-combo-category', 'core', 'static_elements', NULL),
('static_elements_default_mediasource', '0', 'modx-combo-source', 'core', 'static_elements', NULL),
('strip_image_paths', '1', 'combo-boolean', 'core', 'file', NULL),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', NULL),
('syncsite_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('tinymcerte.alignment_format', '[{\"title\": \"Left\", \"icon\": \"align-left\", \"format\": \"alignleft\"},{\"title\": \"Center\", \"icon\": \"align-center\", \"format\": \"aligncenter\"},{\"title\": \"Right\", \"icon\": \"align-right\", \"format\": \"alignright\"},{\"title\": \"Justify\", \"icon\": \"align-justify\", \"format\": \"alignjustify\"}]', 'textarea', 'tinymcerte', 'tinymcerte.style_formats', NULL),
('tinymcerte.blocks_format', '[{\"title\": \"Paragraph\", \"format\": \"p\"},{\"title\": \"Blockquote\", \"format\": \"blockquote\"},{\"title\": \"Div\", \"format\": \"div\"},{\"title\": \"Pre\", \"format\": \"pre\"}]', 'textarea', 'tinymcerte', 'tinymcerte.style_formats', NULL),
('tinymcerte.browser_spellcheck', '', 'combo-boolean', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.content_css', '', 'textfield', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.enable_link_list', '1', 'combo-boolean', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.external_config', '', 'textfield', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.headers_format', '[{\"title\": \"Header 1\", \"format\": \"h1\"},{\"title\": \"Header 2\", \"format\": \"h2\"},{\"title\": \"Header 3\", \"format\": \"h3\"},{\"title\": \"Header 4\", \"format\": \"h4\"},{\"title\": \"Header 5\", \"format\": \"h5\"},{\"title\": \"Header 6\", \"format\": \"h6\"}]', 'textarea', 'tinymcerte', 'tinymcerte.style_formats', NULL),
('tinymcerte.image_advtab', '1', 'combo-boolean', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.image_class_list', '', 'textfield', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.inline_format', '[{\"title\": \"Bold\", \"icon\": \"bold\", \"format\": \"bold\"},{\"title\": \"Italic\", \"icon\": \"italic\", \"format\": \"italic\"},{\"title\": \"Underline\", \"icon\": \"underline\", \"format\": \"underline\"},{\"title\": \"Strikethrough\", \"icon\": \"strike-through\", \"format\": \"strikethrough\"},{\"title\": \"Superscript\", \"icon\": \"superscript\", \"format\": \"superscript\"},{\"title\": \"Subscript\", \"icon\": \"subscript\", \"format\": \"subscript\"},{\"title\": \"Code\", \"icon\": \"sourcecode\", \"format\": \"code\"}]', 'textarea', 'tinymcerte', 'tinymcerte.style_formats', NULL),
('tinymcerte.links_across_contexts', '', 'combo-boolean', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.link_class_list', '', 'textfield', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.menubar', 'file edit insert view format table tools', 'textfield', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.object_resizing', '1', 'textfield', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.paste_as_text', '', 'combo-boolean', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.plugins', 'advlist autolink lists charmap print preview anchor visualblocks searchreplace code fullscreen insertdatetime media table paste modxlink modximage', 'textfield', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.relative_urls', '1', 'combo-boolean', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.remove_script_host', '1', 'combo-boolean', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.settings', '', 'textfield', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.skin', 'modx', 'textfield', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.statusbar', '1', 'combo-boolean', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.style_formats', '[{\"title\": \"Headers\", \"items\": \"headers_format\"},{\"title\": \"Inline\", \"items\": \"inline_format\"},{\"title\": \"Blocks\", \"items\": \"blocks_format\"},{\"title\": \"Alignment\", \"items\": \"alignment_format\"}]', 'textarea', 'tinymcerte', 'tinymcerte.style_formats', NULL),
('tinymcerte.style_formats_merge', '', 'combo-boolean', 'tinymcerte', 'tinymcerte.style_formats', NULL),
('tinymcerte.toolbar1', 'undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image', 'textfield', 'tinymcerte', 'tinymcerte.toolbar', NULL),
('tinymcerte.toolbar2', '', 'textfield', 'tinymcerte', 'tinymcerte.toolbar', NULL),
('tinymcerte.toolbar3', '', 'textfield', 'tinymcerte', 'tinymcerte.toolbar', NULL),
('tinymcerte.valid_elements', '', 'textfield', 'tinymcerte', 'tinymcerte.default', NULL),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', NULL),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', NULL),
('tree_root_id', '0', 'numberfield', 'core', 'manager', NULL),
('tvs_below_content', '0', 'combo-boolean', 'core', 'manager', NULL),
('udperms_allowroot', '', 'combo-boolean', 'core', 'authentication', NULL),
('unauthorized_page', '1', 'textfield', 'core', 'site', NULL),
('upload_check_exists', '1', 'combo-boolean', 'core', 'file', NULL),
('upload_files', 'txt,html,htm,xml,js,js.map,css,scss,less,css.map,zip,gz,rar,z,tgz,tar,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,docx,xls,xlsx,ppt,pptx,jpg,jpeg,png,tiff,svg,svgz,gif,psd,ico,bmp,webp,odt,ods,odp,odb,odg,odf,md,ttf,woff,woff2,eot', 'textfield', 'core', 'file', NULL),
('upload_flash', 'swf,fla', 'textfield', 'core', 'file', NULL),
('upload_images', 'jpg,jpeg,png,gif,psd,ico,bmp,tiff,svg,svgz,webp', 'textfield', 'core', 'file', NULL),
('upload_maxsize', '41943040', 'textfield', 'core', 'file', '2021-06-08 13:34:38'),
('upload_media', 'mp3,wav,au,wmv,avi,mpg,mpeg', 'textfield', 'core', 'file', NULL),
('user_nav_parent', 'usernav', 'textfield', 'core', 'manager', NULL),
('use_alias_path', '1', 'combo-boolean', 'core', 'furls', '2021-06-09 20:21:38'),
('use_browser', '1', 'combo-boolean', 'core', 'file', NULL),
('use_context_resource_table', '1', 'combo-boolean', 'core', 'caching', NULL),
('use_editor', '1', 'combo-boolean', 'core', 'editor', '2021-06-12 23:32:31'),
('use_frozen_parent_uris', '1', 'combo-boolean', 'core', 'furls', '2021-06-09 20:20:55'),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2021-06-08 13:34:38'),
('use_weblink_target', '', 'combo-boolean', 'core', 'site', NULL),
('webpwdreminder_message', '<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('websignupemail_message', '<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('welcome_action', 'welcome', 'textfield', 'core', 'manager', NULL),
('welcome_namespace', 'core', 'textfield', 'core', 'manager', NULL),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2021-06-08 13:35:19'),
('welcome_screen_url', '//misc.modx.com/revolution/welcome.28.html', 'textfield', 'core', 'manager', NULL),
('which_editor', 'Ace', 'modx-combo-rte', 'core', 'editor', '2021-06-09 04:10:10'),
('which_element_editor', 'Ace', 'modx-combo-rte', 'core', 'editor', '2021-06-08 14:13:23'),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', '2021-06-09 20:25:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_transport_packages`
--

CREATE TABLE `modx_transport_packages` (
  `signature` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `workspace` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `provider` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `source` tinytext,
  `manifest` text,
  `attributes` mediumtext,
  `package_name` varchar(191) NOT NULL,
  `metadata` text,
  `version_major` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `version_minor` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `version_patch` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_transport_packages`
--

INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('ace-1.9.1-pl', '2021-06-08 16:13:09', '2021-06-08 14:13:23', '2021-06-08 16:13:23', 0, 1, 1, 0, 'ace-1.9.1-pl.transport.zip', NULL, 'a:8:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:271:\"--------------------\nExtra: Ace\n--------------------\nSince: March 29th, 2012\nAuthor: Danil Kostin <danya.postfactum@gmail.com>\nLicense: GNU GPLv2 (or later at your option)\n\nIntegrates Ace Code Editor into MODx Revolution.\n\nPress Ctrl+Alt+H to see all available shortcuts.\";s:9:\"changelog\";s:4306:\"Changelog for Ace integration into MODx Revolution.\n\nAce 1.9.1\n====================================\n- Fixed: Changed fonts\n- Updated: emmet.js with the support flex css styles and many other combinations\n\nAce 1.9.0\n====================================\n- Added: autodetecting file mode by modelist.js [#7]\n- Added: new modes from ace-builds for version 1.2.0\n\nAce 1.8.0\n====================================\n- Added: autocompletion for php functions.\n\nAce 1.7.0\n====================================\n- Added: new system setting \"ace.grow\".\n- Added: new system setting \"ace.html_elements_mime\".\n\nAce 1.6.5\n====================================\n- Added: \"Twig\" syntax for support of Twig in chunks.\n- Changed: Plugin is not static anymore.\n\nAce 1.6.4\n====================================\n- Fixed: Support of emmet in smarty mode. Again.\n\nAce 1.6.3\n====================================\n- Fixed: Support of emmet in smarty mode.\n\nAce 1.6.2\n====================================\n- Fixed: Editor mode handling.\n- Added: \"Markdown\" syntax for mime type \"text/x-markdown\".\n\nAce 1.6.1\n====================================\n- Fixed : Work with enabled system setting \"compress_js\".\n\nAce 1.6.0\n====================================\n- Added: \"Smarty\" syntax for support of Fenom in chunks.\n- Updated: Ace to version 1.2.0.\n\nAce 1.5.1\n====================================\n- Fixed: Bug with narrowing of the textarea.\n\nAce 1.5.0\n====================================\n- Changed: Assets are moved back to /assets/\n- Fixed: MODx tag completions (was completely broken)\n- Added: Editor height setting\n\nAce 1.4.3\n====================================\n- Added: MODx tag completions (Ctrl+Space)\n- Fixed: Issue caused AjaxManager (MODx Manager speed booster plugin) tree drag\'n\'drop bug\n\nAce 1.4.2\n====================================\n- Added: Undo coalescing\n- Changed: Mac fullscreen command is bound to Command+F12\n- Added: Drag delay (allow to start new selection inside current one) for Mac\n- Fixed: Use file extension of static chunks to detect code syntax\n\n\nAce 1.4.1\n====================================\n- Fixed: Tab handling\n- Fixed: Emmet shortcut listing by Ctr+Alt+H\n- Added: Expandable snippets support (see ace.snippets setting)\n- Added: Emmet wrap_with_abbreviation command (Alt+W)\n\nAce 1.4.0\n====================================\n- Added: Emmet (aka Zen Coding) support\n- Added: Terminal dark theme\n- Added: Hotkey table (Ctrl+Alt+H)\n- Fixed: Resource overview fatal error\n- Changed: Assets are moved to /manager/assets/components/\n\nAce 1.3.3\n====================================\n- Added: PHP live syntax check\n- Added: Chaos dark theme\n- Added: Setting show_invisibles\n\n\nAce 1.3.2\n====================================\n- Fixed: The bug while installing the Ace\n- Fixed: Broken word_wrap setting\n- Added: Tab settings (tab size, soft tab)\n- Added: Now completele compatible with AjaxManager extra\n\n\nAce 1.3.1\n====================================\n- Changed: Plugin content now is stored in static file\n\n\nAce 1.3.0\n====================================\n- Added: German translation\n- Added: MODx tags highlighting\n- Added: Ambiance and xcode themes\n- Added: less/scss syntax highlighting\n- Added: Fullwindow mode (Ctrl + F11)\n- Changed: Editor now ignores `wich_editor` setting. Set `use_editor` to false to use ACE for Resources.\n\n\nAce 1.2.1\n====================================\n- Changed: Assets are moved to manager folder\n- Added: Font size setting\n- Added: \"GitHub\" theme\n- Added: Support of html5 drag\'n\'drop (accepting of dropped text)\n- Added: XML / HTML tag autoclosing\n- Fixed: broken en lexicon and php 5.3 incompatibility\n\n\nAce 1.2.0\n====================================\n- Removed: Some unnecessary options\n- Changed: Editor options are moved to system settings\n- Fixed: Multiple little editor bugs\n- Added: Add missing \"OnFileEditFormPrerender\" event to MODx\n- Added: Multiline editing\n- Added: Advanced find/replace window\n\n\nAce 1.1.0\n====================================\n- Fixed: Fatal error on document create event\n- Fixed: Changing of properties has no effect\n- Added: File edition support\n- Added: MODx tree elements drag\'n\'drop support\n- Added: Auto-assigning which_element_editor to Ace\n\n\nAce 1.0.0\n====================================\n- Added: Plugin properties to adjust how Ace behaves\n- Initial commit\";s:9:\"signature\";s:12:\"ace-1.9.1-pl\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:40:\"/workspace/package/install/ace-1.9.1-pl/\";s:14:\"package_action\";i:0;}', 'Ace', 'a:38:{s:2:\"id\";s:24:\"5fa434b544f12b4f4e72dfc2\";s:7:\"package\";s:24:\"4f6e2782f245544fe8000014\";s:12:\"display_name\";s:12:\"ace-1.9.1-pl\";s:4:\"name\";s:3:\"Ace\";s:7:\"version\";s:5:\"1.9.1\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"9\";s:13:\"version_patch\";s:1:\"1\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:10:\"ibochkarev\";s:11:\"description\";s:376:\"<p>New feature: modx tag code autocompletion! Press Ctrl+Space to get code suggestions with descriptions.</p><p>Works for snippets, chunks, system settings, tvs and resource fields, filters and properties.</p><p>Property sets, lexicon entries are not supported. Unfortunately, I have no idea how to retrieve chunk-specific placeholders, so there is no placeholder support.</p>\";s:12:\"instructions\";s:341:\"<p></p><p>Install via Package Management.</p><p>Set editor theme you wish in system settings (change namespace to \"ace\").</p><p>If you want to use this editor for resources, just set system option <i>use_editor</i> to <b>false</b> (global usage), or <i>richtext</i> setting of certain resource to <b>false</b> (specific usage).</p><p></p>\";s:9:\"changelog\";s:4840:\"<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p>Ace 1.8.0</p><p>====================================</p><p>- Added: autocompletion for php functions.</p><p></p><p>Ace 1.7.0</p><p>====================================</p><p>- Added: new system setting \"ace.grow\".</p><p>- Added: new system setting \"ace.html_elements_mime\".</p><p></p><p>Ace 1.6.5</p><p>====================================</p><p>- Added: \"Twig\" syntax for support of Twig in chunks.</p><p>- Changed: Plugin is not static anymore.</p><p></p><p>Ace 1.6.4</p><p>====================================</p><p>- Fixed: Support of emmet in smarty mode. Again.</p><p></p><p>Ace 1.6.3</p><p>====================================</p><p>- Fixed: Support of emmet in smarty mode.</p><p></p><p>Ace 1.6.2</p><p>====================================</p><p>- Fixed: Editor mode handling.</p><p>- Added: \"Markdown\" syntax for mime type \"text/x-markdown\".</p><p></p><p>Ace 1.6.1</p><p>====================================</p><p>- Fixed : Work with enabled system setting \"compress_js\".</p><p></p><p>Ace 1.6.0</p><p>====================================</p><p>- Added: \"Smarty\" syntax for support of Fenom in chunks.</p><p>- Updated: Ace to version 1.2.0.</p><p></p><p>Ace 1.5.1</p><p>====================================</p><p>- Fixed: Bug with narrowing of the textarea.</p><p></p><p>Ace 1.5.0</p><p>====================================</p><p>- Changed: Assets are moved back to /assets/</p><p>- Fixed: MODx tag completions (was completely broken)</p><p>- Added: Editor height setting</p><p></p><p>Ace 1.4.3</p><p>====================================</p><p>- Added: MODx tag completions (Ctrl+Space)</p><p>- Fixed: Issue caused AjaxManager (MODx Manager speed booster plugin) tree drag\'n\'drop bug</p><p></p><p>Ace 1.4.2</p><p>====================================</p><p>- Added: Undo coalescing</p><p>- Changed: Mac fullscreen command is bound to Command+F12</p><p>- Added: Drag delay (allow to start new selection inside current one) for Mac</p><p>- Fixed: Use file extension of static chunks to detect code syntax</p><p></p><p></p><p>Ace 1.4.1</p><p>====================================</p><p>- Fixed: Tab handling</p><p>- Fixed: Emmet shortcut listing by Ctr+Alt+H</p><p>- Added: Expandable snippets support (see ace.snippets setting)</p><p>- Added: Emmet wrap_with_abbreviation command (Alt+W)</p><p></p><p>Ace 1.4.0</p><p>====================================</p><p>- Added: Emmet (aka Zen Coding) support</p><p>- Added: Terminal dark theme</p><p>- Added: Hotkey table (Ctrl+Alt+H)</p><p>- Fixed: Resource overview fatal error</p><p>- Changed: Assets are moved to /manager/assets/components/</p><p></p><p>Ace 1.3.3</p><p>====================================</p><p>- Added: PHP live syntax check</p><p>- Added: Chaos dark theme</p><p>- Added: Setting show_invisibles</p><p></p><p></p><p>Ace 1.3.2</p><p>====================================</p><p>- Fixed: The bug while installing the Ace</p><p>- Fixed: Broken word_wrap setting</p><p>- Added: Tab settings (tab size, soft tab)</p><p>- Added: Now completele compatible with AjaxManager extra</p><p></p><p></p><p>Ace 1.3.1</p><p>====================================</p><p>- Changed: Plugin content now is stored in static file</p><p></p><p></p><p>Ace 1.3.0</p><p>====================================</p><p>- Added: German translation</p><p>- Added: MODx tags highlighting</p><p>- Added: Ambiance and xcode themes</p><p>- Added: less/scss syntax highlighting</p><p>- Added: Fullwindow mode (Ctrl + F11)</p><p>- Changed: Editor now ignores `wich_editor` setting. Set `use_editor` to false to use ACE for Resources.</p><p></p><p></p><p>Ace 1.2.1</p><p>====================================</p><p>- Changed: Assets are moved to manager folder</p><p>- Added: Font size setting</p><p>- Added: \"GitHub\" theme</p><p>- Added: Support of html5 drag\'n\'drop (accepting of dropped text)</p><p>- Added: XML / HTML tag autoclosing</p><p>- Fixed: broken en lexicon and php 5.3 incompatibility</p><p></p><p></p><p>Ace 1.2.0</p><p>====================================</p><p>- Removed: Some unnecessary options</p><p>- Changed: Editor options are moved to system settings</p><p>- Fixed: Multiple little editor bugs</p><p>- Added: Add missing \"OnFileEditFormPrerender\" event to MODx</p><p>- Added: Multiline editing</p><p>- Added: Advanced find/replace window</p><p></p><p></p><p>Ace 1.1.0</p><p>====================================</p><p>- Fixed: Fatal error on document create event</p><p>- Fixed: Changing of properties has no effect</p><p>- Added: File edition support</p><p>- Added: MODx tree elements drag\'n\'drop support</p><p>- Added: Auto-assigning which_element_editor to Ace</p><p></p><p></p><p>Ace 1.0.0</p><p>====================================</p><p>- Added: Plugin properties to adjust how Ace behaves</p><p>- Initial commit</p><p></p><p></p>\";s:9:\"createdon\";s:24:\"2020-11-05T17:21:57+0000\";s:9:\"createdby\";s:10:\"ibochkarev\";s:8:\"editedon\";s:24:\"2021-06-08T14:11:36+0000\";s:10:\"releasedon\";s:24:\"2020-11-12T13:01:24+0000\";s:9:\"downloads\";s:6:\"306798\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.2\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5fa434b544f12b4f4e72dfc3\";s:9:\"signature\";s:12:\"ace-1.9.1-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.2\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:68:\"http://modx.s3.amazonaws.com/extras/4f6e2782f245544fe8000014/ace.png\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"5fa434b544f12b4f4e72dfc3\";s:7:\"version\";s:24:\"5fa434b544f12b4f4e72dfc2\";s:8:\"filename\";s:26:\"ace-1.9.1-pl.transport.zip\";s:9:\"downloads\";s:5:\"19409\";s:6:\"lastip\";s:13:\"176.74.19.166\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5fa434b544f12b4f4e72dfc3\";}s:17:\"package-signature\";s:12:\"ace-1.9.1-pl\";s:10:\"categories\";s:15:\"richtexteditors\";s:4:\"tags\";s:0:\"\";}', 1, 9, 1, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('cmpgenerator-1.1.3-pl', '2021-06-11 08:39:24', '2021-06-11 06:41:03', '2021-06-11 08:41:03', 0, 1, 1, 0, 'cmpgenerator-1.1.3-pl.transport.zip', NULL, 'a:9:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:2255:\"--------------------\r\nCMPGenerator\r\n--------------------\r\nVersion: 1.1.3 pl\r\nDate: January 3, 2013\r\nAuthor: Joshua Gulledge (jgulledge19@hotmail.com)\r\nLicense: GNU GPLv2 (or later at your option)\r\n\r\nDescription\r\n    CMPGenerator is intended to be used by PHP developers that want to create custom \r\n    database tables to be used via a snippet, plugin or CMP. CMPGenerator will create \r\n    the xpdo scheme files and xpdo classes for your custom database tables with just a \r\n    click of a button.  This allows you to quickly start using xpdo in your custom projects. \r\n\r\nInstall\r\n - Install via the package manager\r\n\r\nHow to use\r\n1. Create your database tables(s) via your preferred method - phpmyadmin, SQLYog, ect..\r\n    Note your auto increment primary key should be named id\r\n2. Now create a new Package\r\n    A. Choose a unique name, it is a good idea to create a prefix for your packages.  \r\n        Example you could use your initials like First Middle Last: fmlMyCustomPackage\r\n        Also make sure you only use alpanumberic values \r\n    B. List the tables that you just created via a comma separated list\r\n    C. Put in the prefix for the table if any.  It is best practice to use the same prefix as your MODX install does.\r\n    D. Select if you want to build the schema.  If you don\'t do this you can\'t use your tables.\r\n    E. Select build Package and this will generate all nessicary files.\r\n3. Once the files are created and if you are using tables that have a relationship you will want to manually add that \r\n    code in the file:  core/components/YOUR-CMP/model/YOUR-CMP/YOUR-CMP.mysql.custom.schema.xml\r\n    See Docs for more info: http://rtfm.modx.com/display/revolution20/Using+Custom+Database+Tables+in+your+3rd+Party+Components\r\n    Once you have updated this file to show the relastionships you can now regenerate the package.  Set the Build Scheme to No\r\n    and set Build Package to Yes and save.\r\n\r\n\r\nExample of schema and foreign DB:\r\n- http://devtrench.com/posts/first-impressions-of-xpdo-wordpress-to-modx-migration-tool\r\n- http://devtrench.com/posts/wordpress-to-modx-migration-part-2-schema-relationships-and-comments\r\n- http://devtrench.com/posts/wordpress-to-modx-migration-part-3-templates-categories-and-postmeta\r\n\r\n\r\n\";s:9:\"changelog\";s:632:\"Changelog for CMPGenerator\r\n\r\nCMPGenerator 1.1.3pl - 1/3/2013\r\n============================\r\nUploaded the changed file for 1.1.2pl!\r\n\r\nCMPGenerator 1.1.2pl - 1/2/2013\r\n============================\r\nFixed #5 removed white space form tablename input \r\n\r\nCMPGenerator 1.1.1pl\r\n============================\r\nFixed #3 of possible minor error in foreach \r\n\r\nCMPGenerator 1.1.0pl\r\n============================\r\nadded #2 Support for Foreign Databases\r\n\r\nCMPGenerator 1.0pl\r\n============================\r\n[#1] Fix Yes/No options to understand foreign languages\r\n\r\nCMPGenerator 1.0rc1\r\n============================\r\n- Initial public release\r\n\";s:13:\"setup-options\";s:39:\"cmpgenerator-1.1.3-pl/setup-options.php\";s:9:\"signature\";s:21:\"cmpgenerator-1.1.3-pl\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:49:\"/workspace/package/install/cmpgenerator-1.1.3-pl/\";s:14:\"package_action\";i:0;}', 'CMPGenerator', 'a:38:{s:2:\"id\";s:24:\"50e5bc01f245543454000017\";s:7:\"package\";s:24:\"4f05e03cf24554166c000053\";s:12:\"display_name\";s:21:\"cmpgenerator-1.1.3-pl\";s:4:\"name\";s:12:\"CMPGenerator\";s:7:\"version\";s:5:\"1.1.3\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"1\";s:13:\"version_patch\";s:1:\"3\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:11:\"jgulledge19\";s:11:\"description\";s:417:\"<p>CMPGenerator is intended to be used by PHP developers that want to \ncreate custom database tables to be used via a snippet, plugin or CMP. \nCMPGenerator is a GUI and it will create the xpdo scheme files and xpdo \nclasses for your custom database tables with just a click of a button.&nbsp; \nThis allows you to quickly start using xpdo in your custom projects.&nbsp; CMPGenerator now supports foreign databases.</p>\";s:12:\"instructions\";s:126:\"<p>See docs: <a href=\"http://rtfm.modx.com/display/ADDON/CMPGenerator\">http://rtfm.modx.com/display/ADDON/CMPGenerator</a></p>\";s:9:\"changelog\";s:478:\"<p>CMPGenerator 1.1.3pl - 1/3/2013</p><ul><li>Uploaded the changed file for 1.1.2pl!</li></ul><p>CMPGenerator 1.1.2pl - 1/2/2013</p><ul><li>Fixed #5 removed white space form tablename input </li></ul><p>CMPGenerator 1.1.1pl</p><ul><li>Fixed #3 of possible minor error in foreach </li></ul><p>CMPGenerator 1.1.0pl</p><ul><li>added #2 Support for Foreign Databases</li></ul><p>CMPGenerator 1.0pl</p><ul><li>&#91;#1&#93; Fix Yes/No options to understand foreign languages</li></ul>\";s:9:\"createdon\";s:24:\"2013-01-03T17:12:33+0000\";s:9:\"createdby\";s:11:\"jgulledge19\";s:8:\"editedon\";s:24:\"2021-06-01T02:33:51+0000\";s:10:\"releasedon\";s:24:\"2013-01-03T17:12:33+0000\";s:9:\"downloads\";s:4:\"9203\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:4:\"true\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.1\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=50e5bc04f245543454000019\";s:9:\"signature\";s:21:\"cmpgenerator-1.1.3-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.1\";s:9:\"breaks_at\";s:3:\"2.2\";s:10:\"screenshot\";s:81:\"http://modx.s3.amazonaws.com/extras/4f05e03cf24554166c000053/create-package2b.png\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"50e5bc04f245543454000019\";s:7:\"version\";s:24:\"50e5bc01f245543454000017\";s:8:\"filename\";s:35:\"cmpgenerator-1.1.3-pl.transport.zip\";s:9:\"downloads\";s:4:\"1948\";s:6:\"lastip\";s:13:\"54.236.53.160\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=50e5bc04f245543454000019\";}s:17:\"package-signature\";s:21:\"cmpgenerator-1.1.3-pl\";s:10:\"categories\";s:25:\"core-extensions,utilities\";s:4:\"tags\";s:0:\"\";}', 1, 1, 3, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('login-1.9.9-pl', '2021-06-12 09:36:38', '2021-06-12 07:36:42', NULL, 0, 1, 1, 0, 'login-1.9.9-pl.transport.zip', NULL, 'a:3:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:2998:\"--------------------\nSnippet: Login\n--------------------\n- Version: 1.9.8\n- Since: June 21, 2010\n- Author: Jason Coward <jason@modx.com>,\n        Shaun McCormick <shaun+login@modx.com>\n\nThis component loads a simple login and logout form. It also comes packaged\nwith ForgotPassword and ResetPassword snippets, which allow the user to put\nin their username or email to receive a confirmation email which will reset\ntheir password.\n\nExample for Login:\n```\n[[!Login]]\n```\n\nYou can also specify the template:\n\n```\n[[!Login? &tpl=`myLoginChunk`]]\n```\n\nSee the snippet properties for more options.\n\n--------------\nForgotPassword\n--------------\n\nTo use the password retrieval functionality, first create the Resource the\nuser will log in to should they click on the confirmation email, and put\nthe Reset Password snippet in. Tell it what Resource the Login snippet is\nin - or where you\'d like it to provide a link back to:\n\n```\n[[ResetPassword? &loginResourceId=`72`]]\n```\n\nThen create another resource with the Forgot Password snippet, and tell it\nwhat Resource the Reset snippet is in:\n\n```\n[[!ForgotPassword? &resetResourceId=`123`]]\n```\n\n--------\nRegister\n--------\n\nTo use the Register snippet, simply place the Snippet in the Resource where\nyour HTML register form is. (A default one called lgnRegisterFormTpl has\nbeen provided.). This snippet also requires Activation by the User, so they\nwill get an email in their inbox regarding their signup.\n\nIn your form field names, you can use validation filters to validate your\nfields. They are separated with the colon : symbol. Example:\n\n```\n<input type=\"password\" name=\"password:required:minLength=6\" id=\"password\" value=\"[[+password]]\" />\n```\n\nwill require that the password field not be empty, and have a minimum\nlength of 6 chars. You can encapsulate validator params (6 here) with ` if\nthe param has spaces in the name. The default validators provided are:\n\n```\nrequired\nblank\nemail\npassword_confirm=`nameOfPasswordField`\nminLength=`123`\nmaxLength=`123`\nminValue=`123`\nmaxValue=`123`\n```\n\nYou can also do custom validators by creating a Snippet and using that as\nthe validator name. Example: We create a Snippet called \'equalTo\' and\non our field, we set:\n\n```\n<input type=\"text\" name=\"field:equalTo=`123`\" id=\"field\" />\n```\n\nNow, in our snippet, our code would look like so:\n\n```\n<?php\nif ($scriptProperties[\'value\'] !== $scriptProperties[\'param\']) {\n    return \'Value not equal to: \'.$scriptProperties[\'param\'];\n}\nreturn true;\n?>\n```\n\nReturning true will make the field valid. Any other return value will\nbe the error message. Snippets get passed the following parameters:\n\n- key: The name of the field.\n- value: The value of the field.\n- param: The parameter, if applicable, passed to the validator.\n- type: The name of the validator.\n- validator: A reference to the lgnValidator instance.\n\nSee the Snippet Properties and the [MODX Docs](https://docs.modx.com/extras/revo/login) for more options.\n\nThanks,\nJason Coward & Shaun McCormick\nMODX, LLC\n\";s:9:\"changelog\";s:13091:\"Changelog for Login\n===================\n\nLogin 1.9.9\n------------------------------------\n- Fix validate email addresses in Register [#143]\n\nLogin 1.9.8\n------------------------------------\n- Allow persistParams when redirectUnsetDefaultParams is true [#157]\n- Parse file based chunks [#167]\n- Prevent directory traversal in the username when register a new user\n- Fix logging \'Could not load package metadata for package login.\' during install\n- Update Translations\n\nLogin 1.9.7\n------------------------------------\n- Generate the password directly with modx->user->generatePassword()\n- Make it possible to set the usergroup rank when register a new user [#135]\n- Set an action in the default password reset form [#134]\n- Update Translations\n\nLogin 1.9.6\n------------------------------------\n- Register snippet PII improvements [#130]\n- JSON responses for the Login controller/snippet [#121]\n- Use Crowdin for translations: https://crowdin.com/project/modx-login\n- Update Translations [#132]\n- Use $modx->user->generatePassword for generating passwords [#131]\n- Escape MODX tags after htmlspecialchars because of the ampersand sign\n\nLogin 1.9.5\n------------------------------------\n- Fix ResetPassword passing null instead of an array to getChunk\n- Remove hash_class, salt and sessionid from placeholders\n- Prevent potential XSS in placeholders\n- Added two missing default template chunks\n- Fixing a charset issue in some language files\n- Fixing email validation [#110]\n- Disable User/E-mail Enumeration in ForgotPassword snippet by an empty sentTpl property (default)\n- New jsonResponse property for returning a JSON by the Register snippet (for an AJAX call response)\n- Possibility to reset the registration fields after successful registration\n\nLogin 1.9.4\n------------------------------------\n- Disable User/E-mail Enumeration\n- Enable login via email\n- Convert deprecated ereg functions to preg_* [#86]\n- Fixing error placeholders with empty placeholderPrefix\n- Fixing recoverable error, Argument 2 to getChunk() must be of the type array, null given [#87]\n\nLogin 1.9.3\n------------------------------------\n- Added activePage property to ConfirmRegister controller\n- Added danish language files\n- Normalize placeholder prefix usage\n- Improved PHP7 compatibility\n- Added loggedinResourceId and loggedoutResourceId to the Login controller\n- Fix errors with square brackets in changed password\n- Add confirm password and password length validation messages to the field error placeholders too\n- Fill lu/lp placeholders in the change password form\n- Added hidden lu/lp fields to the lgnResetPassChangePassTpl chunk\n- Fix for array fields in Register/Profile/UpdateProfile snippet\n\nLogin 1.9.2\n------------------------------------\n- Fix sending register activation email\n- Fix ConfirmRegister processor\n\nLogin 1.9.1\n------------------------------------\n- [[!+error.message]] returns detailed error\n- [#42] Fixed URL encoding/decoding\n- Sanitise Login placeholders\n- Fixed namespace paths\n\nLogin 1.9.0\n------------------------------------\n- Expired/used password reset link notification\n- Added autoLogin and forceChangePassword to ResetPassword snippet\n- Added autoLogin param to Register snippet\n- Improved password reset functionality\n- Update form fields with new values when reloadOnSuccess=0\n- Replace parseChunk with getChunk\n- Added Arabic lexicons\n- Fixed invalid properties in logindictionary and updateprofile\n- Added czech lexicons\n\nLogin 1.8.1\n------------------------------------\n- Add password strength algorithm and checking properties to Register, via &ensurePasswordStrength property\n\nLogin 1.8.0\n------------------------------------\n- [#5946] Add ability to set User Group for a new user via the &usergroupsField property\n- [#7520] Fix bug with ConfirmRegister logging the user in as anonymous\n\nLogin 1.7.3\n------------------------------------\n- [#7035] Fix regression error with email field in Register snippet\n\nLogin 1.7.2\n------------------------------------\n- [#6194] Fix issue with UpdateProfile when specifying the non-active user to update\n- [#6538] Add removeExpiredRegistrations property to Register snippet for handling expired, unactivated registrations\n- [#6256] Ensure Register respects passwordField and emailField properties\n- [#6288] Fix error message display in ChangePassword\n\nLogin 1.7.1\n------------------------------------\n- [#5947] Fix issue with Profile with unauthenticated users\n- [#5979] Fix issue with ConfirmRegister and non-FURL sites\n- [#5734] Add &allowedFields to Register to allow restricting of submitted fields to a specific set\n- [#6010] Fix typo in UpdateProfile mismatching ID of profile to internalKey\n- [#5961] Add &trimPassword to automatically trim whitespace from submitted passwords\n- Add &generatePassword to automatically generate a password instead of having to provide one manually\n- [#6146] Add &validatePassword to Register to allow for manual password generation\n- [#5969] Add &user property to UpdateProfile to allow specifying user to update\n\nLogin 1.7.0\n------------------------------------\n- [#49] Update reCaptcha URLs\n- [#5793] Add errTpl and errTplType properties to ForgotPassword\n- [#5823] Fix issue where postHooks did not have fields available\n- [#5797] Fix issue where &authenticate was not respected in ConfirmRegister snippet\n- [#5796] Fix issue where errors could appear twice if user used validators on username/email/password fields\n- Add ActiveUsers snippet that shows a list of active, logged-in users\n- Add file-based hooks to Login hook calls\n- Complete OOP refactoring to provide more stable development and better code isolation\n- Add unit test framework and over 30 tests\n- Add alternative plaintext email option for ability to send both html and plaintext in emails\n- [#5166] Add additional sanity decoding to ConfirmRegister processing\n\nLogin 1.6.5\n------------------------------------\n- [#5176] Fix issue with Registration in Revo 2.0 installations\n- Fix issue with some error messages not being wrapped with errTpl\n- Email validator now only checks for email validation, not required status\n- [#5166] Add additional sanity decoding to ConfirmRegister processing\n\nLogin 1.6.4\n------------------------------------\n- [#3588] Add &allowedFields and &allowedExtendedFields to UpdateProfile to restrict fields that are updated\n- [#4744] Add &redirectToOnFailedAuth parameter for redirecting to a separate page on failed logins\n- [#3263] Remove duplicate error spans in validator output\n\nLogin 1.6.3\n------------------------------------\n- Better support for checkboxes/radios/bracketed fields in login validator\n- [#5088] Fix issue with ChangePassword &validateOldPassword and Revo 2.1.1\n\nLogin 1.6.2\n------------------------------------\n- [#4844] Automatically trim trailing whitespace/newlines in validator calls\n- [#4843] Fix issue with sentTplType not being respected in ForgotPassword\n- [#4936] Fix issue in ForgotPassword that occurred if no user was found with that username\n- [#5019] Add backwards compatibility for Revo 2.0.x users in ResetPassword\n- Fix reference to $this->modx->lexicon in Login Snippet\n\nLogin 1.6.0/1\n------------------------------------\n- [#4886] Fix issue with variable variable in main login class when loading hooks\n- [#4487] Prevent usage of mb_ereg if not installed\n- [#3500] Fix issues with inline tplType params in Login snippets\n- [#4545] Fix issue with OnBeforeUserActivate event\n- Revolution 2.1 support, specifically with the password changes\n\nLogin 1.5.3\n------------------------------------\n- Add preHooks to ForgotPassword snippet\n- Fix issue that occurs when Login and Register forms are on same page with math register hook\n\nLogin 1.5.2\n------------------------------------\n- [#3330] Add sanity checks to prevent possible submitVar data adding in UpdateProfile\n- Add support for moderation of users when done in a prehook\n- Add support for redirectBackParams that can send encoded data through a login/registration process\n- Add a generic validation error in Register to allow for general messages\n- Ensure preHooks run before password validation in ChangePassword snippet\n- Fix issue with placeholderPrefix in UpdateProfile snippet\n\nLogin 1.5.1\n------------------------------------\n- [#44] Fix bug with login validator, &validate parameter\n- [#40] Fix issue with syncUsername in UpdateProfile\n- [#42] Respect allow_multiple_emails setting that prevents users with same email addresses\n- [#43] Add workaround for xPDO bug with NULL fields in modUserProfile\n- Trim each hook specification in hooks calls\n- [#28] Fixed validator issue in UpdateProfile\n- Added redirectTo and redirectParams on ForgotPassword snippet\n- Updated events in ResetPassword snippet to pass user object\n- Fixed UpdateProfile to properly update user obj so derivative User classes can manage profile updates\n\nLogin 1.5.0\n------------------------------------\n- Fixed security vulnerability\n- Added authenticate and authenticateContexts to ConfirmRegister to allow for authentication after confirming registration\n- Fixed persisting request alias params issue in ConfirmRegister\n- [#15] Added ability to assign roles when using &usergroups in Register, ie: &usergroups=`my-group-name:Member`\n- Added math hook to Register, allowing anti-spam math field measure\n- Added fix to allow overriding of class_key for new users in Register\n\nLogin 1.4.0\n------------------------------------\n- Added redirectBack to Register, Login and ConfirmRegister that allows dynamic redirection handling for other forms needing login/registration\n- Added redirectTo, redirectParams to ConfirmRegister that will redirect after successful confirmation\n- Added persistParams to Register snippet, useful for shopping cart implementations to persist parameters across the registration process\n- [#27] Fixed issue with activationEmail always overriding normal email\n- [#29] Added loginResourceParams, logoutResourceParams, which allows attaching REQUEST parameters to login/logout redirection URLs\n- Added changelog to build\n- [#26],[#14] Added activationEmail property for better handling of middle men in activation steps\n\nLogin 1.3.2-pl\n------------------------------------\n- [#25] Added isLoggedIn snippet for checking auth status\n- [#24] Fixed issue where inactive user could re-register\n- Fixed issue with embedded chunk type display\n- Fixed issue with redirects and non-FURLs on Register snippet\n\nLogin 1.3.1-pl (October 15, 2010)\n------------------------------------\n- Fixed issue with Login snippet on invalid logins\n\nLogin 1.3.0-pl (October 14, 2010)\n------------------------------------\n- Modified experimental multi-context support to use new login processor add_contexts parameter\n- Added ChangePassword snippet for changing passwords in the front-end\n- Fixed bugs with usernameField property, now works as expected\n- Added Dutch translation\n\nLogin 1.2.0\n------------------------------------\n- Fixed issues with placement of prehooks and such\n- Added excludeExtended property to Register, UpdateProfile snippets to allow for excluding fields from extended fields\n- Added new hook API methods for easier setting/retrieving of fields\n- Added experimental multiple-context login support\n- Fixed bug in login snippet with hard-coded action keys\n- Added support to set subject in ForgotPassword email\n- Added reCaptcha support to login form via a preHook\n- Added preHooks and postHooks ability to Login snippet\n- i18n of snippet properties\n\nLogin 1.1.0\n------------------------------------\n- Added Profile snippet, which outputs Profile data of a User in placeholders\n- Added &useExtended to UpdateProfile/Register, which allows users to set additional fields passed to be set in extended column\n- Fixed bug in UpdateProfile where validators were broken\n\nLogin 1.0.3\n------------------------------------\n- Fixed bug where logout link generation was ignorant of xhtml_urls setting\n- Fixed bug where ForgotPassword was sending invalid confirmUrl\n- Added preHooks and postHooks properties for doing pre and post register scripting to UpdateProfile snippet\n- Added preHooks and postHooks properties for doing pre and post register scripting to Register snippet\n- Added syncUsername property to UpdateProfile snippet\n- Fixed bug with embedded output in Login snippet\n- Added Russian translation\n\nLogin 1.0.2\n------------------------------------\n- Updated copyright information\n- Ensure username,password and email are always passed to register snippet to prevent blank logins\n\nLogin 1.0.1\n------------------------------------\n- Consolidated elements into own dir\n- Added extra checks and fixes to lgnValidator class\n- Added UpdateProfile snippet to enable updating of profile from front-end\n\nLogin 1.0.0\n------------------------------------\n- [#ADDON-129] Added name to default Register form\n- [#ADDON-106] Fixed incorrect plugin event invoking\n- [#ADDON-107] Added missing lexicon entry register.password_confirm\n- [#ADDON-103] Fixed context-specific issue with register email\n- [#ADDON-118] Force lexicon topic to load on lgnRegisterForm\n- Fixed alias issue in ForgotPassword snippet\n- Added changelog.txt\n\";}', 'Login', 'a:38:{s:2:\"id\";s:24:\"5f64ce197e32e07b9f3248f2\";s:7:\"package\";s:24:\"4d556c31b2b083396d000a75\";s:12:\"display_name\";s:14:\"login-1.9.9-pl\";s:4:\"name\";s:5:\"Login\";s:7:\"version\";s:5:\"1.9.9\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"9\";s:13:\"version_patch\";s:1:\"9\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:4:\"jako\";s:11:\"description\";s:100:\"Loads a simple login/logout form, with password retrieval functionality and a register form snippet.\";s:12:\"instructions\";s:31:\"Install via Package Management.\";s:9:\"changelog\";s:42:\"- Fix validate email addresses in Register\";s:9:\"createdon\";s:24:\"2020-09-18T15:11:21+0000\";s:9:\"createdby\";s:4:\"jako\";s:8:\"editedon\";s:24:\"2021-06-12T07:16:14+0000\";s:10:\"releasedon\";s:24:\"2020-09-18T15:11:21+0000\";s:9:\"downloads\";s:6:\"129778\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:4:\"true\";s:8:\"featured\";s:4:\"true\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.5\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5f64ce197e32e07b9f3248f3\";s:9:\"signature\";s:14:\"login-1.9.9-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.5\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:0:\"\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"5f64ce197e32e07b9f3248f3\";s:7:\"version\";s:24:\"5f64ce197e32e07b9f3248f2\";s:8:\"filename\";s:28:\"login-1.9.9-pl.transport.zip\";s:9:\"downloads\";s:4:\"3432\";s:6:\"lastip\";s:12:\"81.88.215.14\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5f64ce197e32e07b9f3248f3\";}s:17:\"package-signature\";s:14:\"login-1.9.9-pl\";s:10:\"categories\";s:8:\"security\";s:4:\"tags\";s:84:\"security,login,profile,user,access,restrict,community,password,forgot password,reset\";}', 1, 9, 9, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('migx-2.13.0-pl', '2021-06-09 15:37:38', '2021-06-09 13:38:16', '2021-06-09 15:38:16', 0, 1, 1, 0, 'migx-2.13.0-pl.transport.zip', NULL, 'a:8:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:1392:\"--------------------\nMIGX\n--------------------\nVersion: 2.1.0\nAuthor: Bruno Perner <b.perner@gmx.de>\n--------------------\n\n* MIGX (multiItemsGridTv for modx) is a custom-tv-input-type for adding multiple items into one TV-value and a snippet for listing this items on your frontend.\n* It has a configurable grid and a configurable tabbed editor-window to add and edit items.\n* Each item can have multiple fields. For each field you can use another tv-input-type.\n\nFeel free to suggest ideas/improvements/bugs on GitHub:\nhttp://github.com/Bruno17/multiItemsGridTV/issues\n\nInstallation:\n\ninstall by package-management.\nCreate a new menu:\nSystem -> Actions \n\nActions-tree:\nmigx -> right-click -> create Acton here\ncontroller: index\nnamespace: migx\nlanguage-topics: migx:default,file\n\nmenu-tree:\nComponents -> right-click -> place action here\nlexicon-key: migx\naction: migx - index\nparameters: &configs=migxconfigs||packagemanager||setup\n\nclear cache\ngo to components -> migx -> setup-tab -> setup\n\nIf you are upgrading from MIGX - versions before 2.0\ngo to tab upgrade. click upgrade.\nThis will add a new autoincrementing field MIGX_id to all your MIGX-TV-items\nThe getImageList-snippet needs this field to work correctly.\n\n\nAllways after upgrading MIGX of any Version:\ngo to components -> migx -> setup-tab -> setup\n\nthis will upgrade the migx-configs-table and add new fields, if necessary.\n\n\n\";s:9:\"changelog\";s:11763:\"Changelog for MIGX.\n\nMIGX 2.13.0\n==============\nadd snippet migxGetObject and property toPlaceholders\nadd property createChunk to create a chunk with all possible placeholders\nFix imageupload on PHP7 due to stray break statement\nFix for missing custom prefix in some packagemanager tasks\nUpdated image paths to use dynamic assets path\nFix the export if a join setting exist\nFinnish Translation\nadd userid to migxResourceMediapath snippet\nremove duplicate sort scriptProperty in export.php\n[getlist.php] add getcustomconfigs - hook, groupby, selectfields, specialfields\nparse MODX-tags in field-configs\npackagemanager fix new folder permission\nUse a textarea instead of an input in MIGX TV\nReduce indexed varchar fields for utf8mb4 support in mysql\nfix duplicate entries in csv-export\nAdd CSV Import functionality\nImprove CSV Export functionality\nadd toJson property to migxLoopCollection\nFix transparency in .png in renderimage column renderer\nOptimize loadfromxource functionality, especially for MIGX within MIGXdb\ndeep nested saving when nested windows are open and saving without closing the window\nexport/import single MIGX - items\n\nMIGX 2.12.0\n==============\nselect db-fields from defined class and its joins for formtabs and columns\nadd categories and a category-filter to MIGX Configs\nmultiple grouping-levels for &groupingField\nhooksnippet getformnames\nadd snippet migxAutoPublish for publishing by Cronjobs\nadd beforesave - hook to update-processor\nallow string in where-property\nadd a default schema-template, used at create package\nand some bugfixes\n\nMIGX 2.11.0\n==============\ngroupingfield, preparesnippet, _total, _count, improve @CODE\nhooksnippet beforecreateform\n\nMIGX 2.10.0\n==============\nhooksnippet getcustomconfigs for importcsvmigx\nsupport layout-rows/columns in formtabs\ncontextmenu \'flat formtabs\'\nmultiupload to db, resizeOnUpload - plugin\n[packagemanager] Add Extension Package - feature\nrespect joinalias in export.php and handlepositionselector.php\npossible to use TV-value in migxresourcemediapath - snippet\n[getImageList] inherit_children_tvname\nMIGXdb add item before/after\n\nMIGX 2.9.7\n==============\nadd emtpyTpl\nfix some MIGX-grid width - issues\nimport csv to MIGX\n\nMIGX 2.9.6\n==============\nhooksnippet getcustomconfigs for export-processor\nfix missing formtabs after saving\n\nMIGX 2.9.5\n==============\ncolumn-actionbuttons also for MIGX\nexport/import MIGX-items from/into MIGX-TV\nget tinymcewrapper working\nmore config-options for combo-filter\nFix and simplify Redactor implementation to use MODx.loadRTE()\n\nMIGX 2.9.4\n==============\n[migxResourcemediapath] add context_key as path option\nbutton for \'alter fields from schema\'\nfix MIGX-grid width\ncustom grid for MIGX-TV\nrespect context-default-media-source - setting\n\nMIGX 2.9.3\n==============\nbasic support for new TinyMCE RTE\nfix assetsUrl/connectorUrl - settings\nMIGX-TV MODX multifile-uploader/autocreate items  \nMIGX-TV configurable contextmenues\n\nMIGX 2.9.2\n==============\nsome smaller fixes\n\nMIGX 2.9.1\n==============\nadd hook-snippet setting\nsome handleRelated - update - functions\ndestroy updatewindow on close\n\nMIGX 2.9\n==============\n[migxLoopCollection] allow use of foreign database\nSottwell\'s improvements on migxresourcemediapath\nnew snippet: migxGetCollectionTree\naccess to foreign database from default processors\nimprovements on multiple formtabs\nmake inline-editing for MIGX - grid possible\noption to add MIGX-items directly without modal\nlistbox-cell-editor\nmovetotop,movetobottom - buttons for MIGX-grid\ncell-editing for MIgXdb - grids\noption to add MIGXdb-items directly without modal\n[getImageList] &inheritFrom - inherit MIGX-items from parents or other resources\nsome migxredactor - fixes \n\nMIGX 2.8.1\n==============\nlets disable the \'Add Item\' - button\nnew configs gridperpage and sortconfig\nwrapperTpl for getImageList and migxLoopCollection\n\nMIGX 2.8.0\n==============\nresolve tables on install\nrender cross, also when empty string\nreusable activaterelations - processors\n[migxLoopCollection] tpl_nN\n[#154] clean TV-value, if no MIGX-items \nadditional db-storage of formtabs and fields\nget menue working in MODX 2.3\nimprove description_is_code \n\n\nMIGX 2.6.8\n==============\nsome other small fixes\nrestrictive condition by processed MIGX-tags for formfields\nFilter-Button for Reset all filters to default-value\nextend date-filter\nmake cmp main caption translatable \nMigx::prepareJoins - optional rightjoin \n\nMIGX 2.6.7\n==============\nadd date - filter \nadd handlepositionselector - processor \nadd snippet exportmigx2db\n\nMIGX 2.6.6\n==============\nfixes only\n\nMIGX 2.6.5\n==============\nfixes only\n\nMIGX 2.6.4\n==============\n[redactor-field] get and use file-properties from a redactor-inputTV\nadd renderImageFromHtml - renderer\n\nMIGX 2.6.3\n==============\nconfigurable redactor-field with configs-configuration, make redactor work in MIGXdb - CMP\n\nMIGX 2.6.2\n==============\nfix issue with imported configs-field, if not an array \n\nMIGX 2.6.1\n==============\nMake Formfields translatable\n\nMIGX 2.6\n==============\n[getImageList] output inner arrays as json-string\nadded polish translation\n[getImageList] splits, build summaries\n make grid-columns translatable, let user add custom-lexicons from custom php-config-files \n\n\nMIGX 2.5.11\n==============\nadd simple MIGXdb - validation (only required for now)\nsome fixes\n\n\nMIGX 2.5.9\n==============\nlet us create new indexes, with altered field-def from schema \noptimize input-option-values-handling, see:http://forums.modx.com/thread/79757/sortable-editable-list-of-checkboxes?page=4#dis-post-483240\n\n\nMIGX 2.5.8\n\n==============\nAdded \'showScreenshot\' (big image in popup) \nAdded template-field for direct template-input for renderChunk\nAdded position - selector for new MIGX - items\nFix for not removed rte-editors when using formswitcher\nsend current store-params to iframe-window\n\n\nMIGX 2.5.6\n\n==============\n\nAdd support for the modmore.com Redactor editor \nsome work on multiuploader for MIGXdb\nmore eNotice - fixes\n\n\nMIGX 2.5.2\n\n==============\nread input-options into MIGX-TV\nrespect filter in default - export.php\nfix for empty value in TV - configs not loading renderers etc.\nfix changed processaction-param after export2csv \nstopEvent() by onClick - event\n\nMIGX 2.5.1\n\n==============\nfix bug with renderChunk - renderer\n\nMIGX 2.5\n\n==============\nget different rtes working - support for tinymce, ckeditor \nsome settings for MIGXfe\ncs - lexicons, \nsome eNotice - fixes\nfix with to big integers on TV-id (set phptype to string)\nlimit MIGX-record-count\n\n\nMIGX 2.4.2\n\n==============\ncolumnButtons for the migx - grid \nlittle form-layout-mods\nadded the option to have the first formtab outside the other tabs above of them.\n\nadded the option to use the TV-description-field as parsed code-areas in the formtabs, modx-tags are parsed there - \nsnippets, chunks, output-filters can be used there. All fields of the record can be used as placeholders.\n\nmigxupdate for MIGXfe\ndefault-values for MIGXdb-filters\nupdate co_id in iframe-window\nadd a searchbox to MIGX-Configurator\nread configs directly from exported configs-files from custom-packages - directory by using configname:packagename - configs\n\n\nMIGX 2.4.1\n\n==============\nsome new snippets:\ngetDayliMIGXrecord\nmigxgetrelations\n\nadded beta treecombo-filter-option for example to filter resources in MIGXdb by resourcetree\nadd window-title configuration, make window-caption dynamic (its possible to use placeholders now)\nhide tabs in form, when only one tab\nadded selectposition - renderer\n\n\nMIGX 2.4.0\n\n==============\nnew renderer - switchStatusOptions\nnew renderer - renderChunk\ngetImageList - added \'contains\' and \'snippet\' - where-filters\nadd duplicate-contextmenue to MIGXdb \nnew property for getImageList: &reverse\ngive TVs in each CMP-tab a unique id\nrefresh grid after closing iframe-window\nadded tpl_n{n} tplFirst tplLast tpl_n tpl_oneresult properties to getImageList\nexport jsonarray-fields as separate fields in csv-export\nalias, breadcrumb and ultimateparent for migxREsourceMediaPath\nAdded TV - description - field to configuration\n\n\nMIGX 2.3.1\n\n==============\nsome eNotice - error - fixes\nadd type - configuration to gridcolumns, now its possible to sort also numeric on the MIGX - grid: see https://github.com/Bruno17/MIGX/issues/41\n\nMIGX 2.3.0\n\n==============\nadd multifile - uploader, upload to MIGX - mediasource\nadd load from mediasource - button to MIGX\nadd migxResourcePath - snippet\nadd iframe - support - its now possible to create chunks with snippet-calls and show the result in an iframe-window. used by multifile-uploader.\n\n\nMIGX 2.2.3\n\n==============\nconfirmation before overriding schema-files\nsome additions for childresources-management by MIGXdb\nswitch between multiple forms - configurations\nadd renderDate - renderer , thanks to Jako\nadditional send all store-baseParams when opening the form-window. This way we can have different forms depending on filters for example.\nadd parent-property for dynamic filter-comboboxes\nadd getliste-where for default getlist-processor\nexport formtabs as clean json in editraw-mode\n\n\nMIGX 2.2.2\n\n==============\nadd migxLoopCollection-snippet\nmove prepareJoins into a migx-method\nconfirmation before remove db-record, getcombo did not use idfield \nallow empty prefix \nadd possibility to use tables without \'deleted\' - field and default-getlist-processor\nfix Call-time pass-by-reference errors\nget tinyMCE to work on richtext-TV-inputs in MIGXdb - CMPs \nfix prefix not sended to writeSchema\ngrid add cls \'main-wrapper\' to give it a bit padding, thanks to jako\n\n\nMIGX 2.2.0\n\n==============\n\nexport/import configuration-objects as json to/from files in custom-package-directories \nnew configs: getlist - defaultsort, joins, gridload_mode (by button, auto) \ngrid-smarty-template now can be also in custom-package-directories\nreworked handling of joined objects in default update-php \nadd connected_object_id baseparam to migx-grid\nadded snippet migxLoopCollection\n\n\nMIGX 2.1.1\n\n==============\n\n  fix for migx-snippet not working with multiple calls on one page\n  resource_id as script-property for getlist-processor when used with migx-snippet\n\nMIGX 2.1.0\n\n==============\n\n  add &sort to the getImageList - snippet\n  add new snippet \'migx\' to get items from db-tables, can use the same configurations and getList - processors as the MIGXdb - manager\n  make it possible to have config-files for grids and processors in another package-folder for easier packaging together custom - packages\n  more MIGXdb - configurations\n\n\nMIGX 2.0.1\n\n==============\n\n  more E_NOTICE - Error - fixes\n  Fix Missing Add - Item - Replacement - String \n\nMIGX 2.0.0\n\n==============\n\n- pl\n\n  fix for Revo 2.2.2\n  fix some E_NOTICE - errors\n\n- new in beta5\n\n  Configure multiple CMP - tabs\n  packagemanager ported to extjs - tab\n  added MIGX-setup/upgrade - tab\n  added configurable text and combo - filterboxes\n\n- new in beta3\n\n  This is a preview-version of MIGXdb\n  MIGXdb can now also be used as configurable CMP\n  MIGX - configurator for tabs, columns, MIGXdb-TV and MIGXdb-CMP\n  Package-manager, create and edit schemas and package-tables\n\n- new:\n  better compatibility with revo 2.2\n  working with mediasources\n  introduced MIGXdb\n\n\nMIGX 1.2.0\n==============\n- new:\n  merge scriptProperties to Placeholders \n  basic compatibility for modx 2.2 \n  autoinc-field: MIGX_id\n  autoResourceFolders - functionality, autoCreate directory for each resource\n  \n  \n- fixed:\n  url-TV support\n  context-based base_path issues\n  remove remaining []\n  remove Tiny-instances when switching form\n  enter on textarea closes window\n  fireResourceFormChange for drag,remove,duplicate \n\nMIGX 1.1.0\n==============\n- new:\n  &docidVarKey\n  &processTVs\n  \n- fixed:\n  context-filepath-issue\n\nMIGX 1.0.0\n==============\n- Initial release.\";s:9:\"signature\";s:14:\"migx-2.13.0-pl\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:42:\"/workspace/package/install/migx-2.13.0-pl/\";s:14:\"package_action\";i:0;}', 'MIGX', 'a:38:{s:2:\"id\";s:24:\"60a1075a1c5f12639c7cfca2\";s:7:\"package\";s:24:\"4db018def24554690c000005\";s:12:\"display_name\";s:14:\"migx-2.13.0-pl\";s:4:\"name\";s:4:\"MIGX\";s:7:\"version\";s:6:\"2.13.0\";s:13:\"version_major\";s:1:\"2\";s:13:\"version_minor\";s:2:\"13\";s:13:\"version_patch\";s:1:\"0\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:7:\"bruno17\";s:11:\"description\";s:672:\"<p>MIGX (multiItemsGridTv for modx) is a custom-tv-input-type for adding multiple items into one TV-value and a snippet for listing this items on your frontend.</p><p>It has a cofigurable grid and a configurable tabbed editor-window to add and edit items.</p><p>Each item can have multiple fields. For each field you can use another tv-input-type.</p><p>MIGXdb can manage (resource-related) custom-db-table-items in a TV and can help to create CMPs for custom-db-tables</p><p>See the official documentation here: <a href=\"http://rtfm.modx.com/display/addon/MIGX\" style=\"color: rgb(15, 112, 150); \" title=\"\" target=\"\">http://rtfm.modx.com/display/addon/MIGX</a></p><p></p>\";s:12:\"instructions\";s:5844:\"<p></p><p style=\"margin: 10px 0px 20px; padding: 0px; border-width: 0px; outline-width: 0px; font-size: 13px; vertical-align: baseline; background-color: transparent; line-height: 1.4;\">Installation:Install via Package Management.</p><p style=\"margin: 10px 0px 20px; padding: 0px; border-width: 0px; outline-width: 0px; font-size: 13px; vertical-align: baseline; background-color: transparent; line-height: 1.4;\">For MIGX and MIGXdb - Configuration - Management:</p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \">Create a new menu:System -> Actions Actions-tree:migx -> right-click -> create Acton herecontroller: indexnamespace: migxlanguage-topics: migx:default,filemenu-tree:Components -> right-click -> place action herelexicon-key: migxaction: migx - indexparameters: &configs=migxconfigs||packagemanager||setupclear cachego to components -> migx -> setup-tab -> setupIf you are upgrading from MIGX - versions before 2.0go to tab upgrade. click upgrade.This will add a new autoincrementing field MIGX_id to all your MIGX-TV-itemsThe getImageList-snippet needs this field to work correctly.</p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \"><b style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; \">Note:</b> Make sure to remove older versions of multiItemsGridTv and the multiitemsgridTv-namespace, if you had them tried from Github.</p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \"><b style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; \">Note</b>: Input Options for the MIGX only work for Revolution 2.1.0-rc2 and later.</p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \"></p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \"></p>\";s:9:\"changelog\";s:1137:\"MIGX 2.13.0\n==============\n\nadd snippet migxGetObject and property toPlaceholders\n\nadd property createChunk to create a chunk with all possible placeholders\n\nFix imageupload on PHP7 due to stray break statement\n\nFix for missing custom prefix in some packagemanager tasks\n\nUpdated image paths to use dynamic assets path\n\nFix the export if a join setting exist\n\nFinnish Translation\n\nadd userid to migxResourceMediapath snippet\n\nremove duplicate sort scriptProperty in export.php\n\n[getlist.php] add getcustomconfigs - hook, groupby, selectfields, specialfields\n\nparse MODX-tags in field-configs\n\npackagemanager fix new folder permission\n\nUse a textarea instead of an input in MIGX TV\n\nReduce indexed varchar fields for utf8mb4 support in mysql\n\nfix duplicate entries in csv-export\n\nAdd CSV Import functionality\n\nImprove CSV Export functionality\n\nadd toJson property to migxLoopCollection\n\nFix transparency in .png in renderimage column renderer\n\nOptimize loadfromxource functionality, especially for MIGX within MIGXdb\n\ndeep nested saving when nested windows are open and saving without closing the window\n\nexport/import single MIGX - items\";s:9:\"createdon\";s:24:\"2021-05-16T11:51:54+0000\";s:9:\"createdby\";s:7:\"bruno17\";s:8:\"editedon\";s:24:\"2021-06-09T13:25:19+0000\";s:10:\"releasedon\";s:24:\"2021-05-16T11:51:54+0000\";s:9:\"downloads\";s:6:\"225082\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.2\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=60a1075a1c5f12639c7cfca3\";s:9:\"signature\";s:14:\"migx-2.13.0-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.2\";s:9:\"breaks_at\";s:3:\"2.8\";s:10:\"screenshot\";s:70:\"http://modx.s3.amazonaws.com/extras/4db018def24554690c000005/migx1.JPG\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"60a1075a1c5f12639c7cfca3\";s:7:\"version\";s:24:\"60a1075a1c5f12639c7cfca2\";s:8:\"filename\";s:28:\"migx-2.13.0-pl.transport.zip\";s:9:\"downloads\";s:4:\"2699\";s:6:\"lastip\";s:12:\"92.53.96.122\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=60a1075a1c5f12639c7cfca3\";}s:17:\"package-signature\";s:14:\"migx-2.13.0-pl\";s:10:\"categories\";s:15:\"content,gallery\";s:4:\"tags\";s:46:\"migx,multiitems,multitv,migxdb,CMP,MIGX,MIGXdb\";}', 2, 13, 0, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('modjwt-1.0.0-beta', '2021-06-12 09:33:31', '2021-06-12 07:36:57', '2021-06-12 09:36:57', 0, 1, 1, 0, 'modjwt-1.0.0-beta.transport.zip', NULL, 'a:9:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:246:\"modJWT\n\nAuthor: Zaenal <zaenal(#)lokamaya.com>\nCopyright (C) 2019\n\nOfficial Documentation: https://github.com/lokamaya/modJWT\nBugs and Feature Requests: https://github.com/lokamaya/modJWT\nQuestions: http://forums.modx.com\n\nCreated by MyComponent\n\";s:9:\"changelog\";s:319:\"Changelog for modJWT\n\nmodJWT 1.0.0-beta\n---------------------------------\nInitial Version.\nSee https://github.com/lokamaya/modJWT for more information.\n\nSample resources included in this installation:\n- 1 Folder: /modjwt/\n- 3 JSON files: token.json, validate.json, custom.json\n\nGo to your root folder and edit /modjwt/\n\";s:13:\"setup-options\";a:0:{}s:9:\"signature\";s:17:\"modjwt-1.0.0-beta\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:45:\"/workspace/package/install/modjwt-1.0.0-beta/\";s:14:\"package_action\";i:0;}', 'modJWT', 'a:38:{s:2:\"id\";s:24:\"5ca013aa3425f944581bb343\";s:7:\"package\";s:24:\"5ca013aa3425f944581bb342\";s:12:\"display_name\";s:17:\"modjwt-1.0.0-beta\";s:4:\"name\";s:6:\"modJWT\";s:7:\"version\";s:5:\"1.0.0\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"0\";s:13:\"version_patch\";s:1:\"0\";s:7:\"release\";s:4:\"beta\";s:8:\"vrelease\";s:4:\"beta\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:8:\"lokamaya\";s:11:\"description\";s:120:\"ModJWT is an extra be use is to provides basic mechanism for issuing or validating JSON Web Token (JWT) for restful API.\";s:12:\"instructions\";s:199:\" - Download package from MODx repository.\n - Install modJWT.\n - Go go default context in manager, and find and edit /modjwt/ resource. This resource and its children provide sample page for modJWT. \n\";s:9:\"changelog\";s:298:\"ModJWT\n---------------------------------\n**Initial Version  1.0.0-beta**\n\nSample resources included in this installation:\n- 1 Folder: /modjwt/\n- 3 JSON files: token.json, validate.json, custom.json\n\nAfter installing modJWT, go to your default context in manager and find and edit /modjwt/ resource\n\";s:9:\"createdon\";s:24:\"2019-03-31T01:11:06+0000\";s:9:\"createdby\";s:8:\"lokamaya\";s:8:\"editedon\";s:24:\"2021-06-11T01:15:25+0000\";s:10:\"releasedon\";s:24:\"2019-03-31T01:11:06+0000\";s:9:\"downloads\";s:3:\"238\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.5\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5ca013aa3425f944581bb344\";s:9:\"signature\";s:17:\"modjwt-1.0.0-beta\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.5\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:0:\"\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"5ca013aa3425f944581bb344\";s:7:\"version\";s:24:\"5ca013aa3425f944581bb343\";s:8:\"filename\";s:31:\"modjwt-1.0.0-beta.transport.zip\";s:9:\"downloads\";s:3:\"238\";s:6:\"lastip\";s:14:\"109.234.160.84\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5ca013aa3425f944581bb344\";}s:17:\"package-signature\";s:17:\"modjwt-1.0.0-beta\";s:10:\"categories\";s:21:\"integrations,security\";s:4:\"tags\";s:32:\"JWT,JSON,JSON Web TOken,Security\";}', 1, 0, 0, 'beta', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('pdotools-2.12.10-pl', '2021-06-12 09:15:32', '2021-06-12 07:15:51', '2021-06-12 09:15:51', 0, 1, 1, 0, 'pdotools-2.12.10-pl.transport.zip', NULL, 'a:8:{s:9:\"changelog\";s:28329:\"Changelog for pdoTools.\n\n2.12.10 pl\n==============\n- [#308] [pdoPage] Fixed the type of snippet property \"field\"\n\n2.12.9 pl\n==============\n- [Fenom] Update to version 2.12.0\n\n2.12.8 pl\n==============\n- [pdoPage] Fix reflected XSS in generated meta links\n\n2.12.7 pl\n==============\n- Make pdoTools canonical url work with Babel #304\n\n2.12.6 pl\n==============\n- [pdoPage] Reverted back #287\n\n2.12.5 pl\n==============\n- [Fenom] Added caching dinamic properties to prevent speed degradation.\n\n2.12.4 pl\n==============\n- [#290] Improved running snippet via @FILE binding.\n- [#296] Fix adding quotes to numeric values.\n- [#297] Make cross context weblink url possible.\n- [#274] [Fenom] User, resource and context properties are now dinamic.\n- [#287] [pdoPage] Remove prev & next meta tags\n- [#294] [#298] Improved pdopage.js and updated minified js files\n\n2.12.3 pl\n==============\n- Fixed E_NOTICE introduced in #285.\n\n2.12.2 pl\n==============\n- Updated chunks for Bootstrap 4.\n\n2.12.1 pl\n==============\n- [pdoMenu] Reverted back #283 and fixed docs for &tplCategoryFolder.\n- [#284] [Fenom] Fixed properties of $_modx->context variable.\n- [#275] [Fenom] Added \"reset\" and \"end\" modifiers.\n\n2.12.0 pl\n==============\n- [Fenom] More security fixes from Sergey Shlokov.\n- [#278] [pdoPage] Fixed caching.\n- [pdoPage] Show internal log on &showLog=`1`.\n- [#283] [pdoMenu] Fixed use of &tplCategoryFolder according to docs.\n- [#281] [pdoTools] Fixed load of models from case sensitive paths.\n- [#277] [pdoCrumbs] Ability to specify &customParents.\n- [#265] [pdoFetch] Fixed return of \"Array\" on SQL errors.\n\n2.11.3 pl\n==============\n- Added French lexicon entries.\n\n2.11.2 pl\n==============\n- Fix detection of element names starting with a number.\n\n2.11.1 pl\n==============\n- Faster processing of static files.\n\n2.11.0 pl\n==============\n- [pdoFetch] Added \"setTotal\" option to enable calculating all rows (\"SQL_CALC_FOUND_ROWS\"), which will also result in the \"totalVar\" placeholder is being set.\n- [pdoFetch] Option \"setTotal\" disabled by default.\n- [pdoPage] Forces \"setTotal\" to provide pagination.\n\n2.10.6 pl\n==============\n- Improved German lexicons.\n\n2.10.5 pl\n==============\n- [pdoTools] Ability to return array from \"prepareSnippet\" for more performance.\n- [FenomX] Fixed method \"getStore\".\n\n2.10.4 pl\n==============\n- [Fenom] Do not output raw tags if there was a compile errors.\n- [#266] [pdoMenu] Fixed the setting of \"here\" and \"self\" classes.\n- [#261] [Fenom] Fixed unexpected behavior of the fenom tag \"ignore\".\n\n2.10.3 pl\n==============\n- Improved compatibility with PHP 7.2\n- [pdoFetch] Ability to use arrays in \"&sortby\".\n\n2.10.2 pl\n==============\n- [Fenom] Improved processing of caching snippets inside uncached.\n\n2.10.1 pl\n==============\n- [#256] [Fenom] Fixed bug with caching of scripts and styles.\n- [pdoPage] \"&setMeta\" now works when \"&cache=`1`\".\n- [Fenom] Improved regular expression to detect Fenom syntax.\n\n2.10.0 pl\n==============\n- [#259] [pdoFetch] Fixed error when passed pure SQL into \"having\" parameter.\n- [#258] [pdoPage] Canonical urls always must be \"full\".\n- [#245] [pdoMenu] Ability to use conditional tpls instead of regular \"tpl\".\n- [#121] [pdoMenu] Improved work of specified chunks with weblinks.\n\n2.9.3 pl\n==============\n- [#255] [Fenom] New system setting \"pdotools_fenom_save_on_errors\" to save code on compilation errors in the cache directory for later debugging.\n\n2.9.2 pl\n==============\n- [pdoParser] Proper traversal trough arrays fields of resources in fast tags.\n\n2.9.1 pl\n==============\n- [Fenom] Updated to version 2.11.8.\n\n2.9.0 pl\n==============\n- [pdoPage] Improved \"&pageLinkScheme\" logic.\n- [#249] A little improvement for resource modifier.\n- [#251] [pdoFetch] More compatibility with PHP 7.1.\n- [#253] [pdoPage] Fixing a missing pagination in Ajax mode.\n- [#254] [Fenom] Options of json modifiers must check version of PHP to proper work.\n\n2.8.6 pl\n==============\n- [pdoArchive] Ability to specify fields with regular dates in the \"&dateField\" parameter.\n- [Fenom] Added all options to json modifiers.\n\n2.8.5 pl\n==============\n- [#248] [pdoPage] Fixed E_WARNING with array values in GET parameters.\n\n2.8.4 pl\n==============\n- Ability to use file elements in core path outside base path.\n- Fixed bug with the caching of elements.\n\n2.8.3 pl\n==============\n- [Fenom] Fixed rare bug with the caching of scripts and styles that was registered via Fenom.\n- [pdoPage] Fixed the \"?page=1\" in the url when ajaxMode is enabled.\n- [pdoPage] Snippet will register \"canonical\" link if \"&setMeta\" is enabled.\n- [pdoPage] Fix processing of request with rawurldecode on some servers.\n- [pdoTools] Added passing of \"scriptProperties\" values into a \"&prepareSnippet\".\n\n2.8.2 pl\n==============\n- [pdoMenu] Fixed the checking of permissions for containers.\n- [pdoPage] Added the ability to run files as &element.\n- [pdoTools] The method runSnippet will return boolean false if snippet was not found.\n- [Fenom] Fixed the possible bugs of caching of scripts and styles.\n\n2.8.1 pl\n==============\n- [#244] Fixed possible duplicate of a container in the jquery.pdopage.js.\n- Added fallback class for the enable modParser.\n\n2.8.0 pl\n==============\n- Ability to use an arrays in the parameters of the snippets.\n- Replaced modX::toJSON and modX::fromJSON to native php functions.\n\n2.7.5 pl\n==============\n- Fenom is now managed via composer.\n- [Fenom] Modifier \"resource\" no longer checks fields of resources in their schema.\n- [Fenom] Modifier \"strrev\" now can work with arrays.\n- [Fenom] Improved modifier \"ismember\".\n\n2.7.4 pl\n==============\n- [#242] Added jquery.pdopage.js plugin and minified versions.\n- [#241] [Fenom] Improved the retrieving of TVs for a current resource.\n- [pdoFetch] Restored the checking of possible SQL injections in the &sortby with xPDO 2.5.1.\n\n2.7.3 pl\n==============\n- Improved compatibility with MODX 2.5.2.\n\n2.7.2 pl\n==============\n- [pdoFetch] Some security improvements.\n\n2.7.1 pl\n==============\n- Some security improvements in the connector.php.\n- Fixed bug with registering scripts in styles via Fenom introduced in version 2.7.0.\n\n2.7.0 pl\n==============\n- [Fenom] Updated to the version 2.11.4.\n- [Fenom] Fixed resource cache for scripts and styles registered by Fenom.\n- [Fenom] Added rand() and number_format() to an allowed PHP functions.\n- [Fenom] New output filter \"number\" (or \"number_format\").\n\n2.6.5 pl\n==============\n- Fixed undeclared variable (PHP 7.1)\n\n2.6.4 pl\n==============\n- Added escaping of a MODX tags that being processed in the &prepareSnippet.\n- [#239] Improved work of the &decodeJSON option.\n\n2.6.3 pl\n==============\n- Fixed possible E_NOTICE on line 305 pdofetch.class.php.\n- Fixed possible E_NOTICE when \"snippet\" and \"chunk\" Fenom modifiers was called.\n\n2.6.2 pl\n==============\n- Fixed possible E_NOTICE on line 1317 pdotools.class.php.\n\n2.6.1 pl\n==============\n- Improved compatibility with PHP 5.3.\n\n2.6.0 pl\n==============\n- [Fenom] The ability to extend Fenom via system event \"pdoToolsOnFenomInit\".\n\n2.5.6 pl\n==============\n- [pdoFetch] Ability to join TVs not only to the query main class.\n\n2.5.5 pl\n==============\n- Fixed parse of INLINE chunks with \"@\" symbols.\n\n2.5.4 pl\n==============\n- [#224] Added microMODX::cleanAlias().\n- [#226] [Fenom] Added \"declension\" modifier.\n\n2.5.3 pl\n==============\n- [#221] Fixed typo in month name.\n- [Fenom] Fixed path to compile dir.\n\n2.5.2 pl\n==============\n- [#220] Cache code of snippet with respect to property set.\n\n2.5.1 pl\n==============\n- Fixed cache of snippets in pdoTools::runSnippet().\n\n2.5.0 pl\n==============\n- Improved support of debugParser.\n- [#209] Improved loading of the models.\n- [Fenom] New modifiers: \"snippet\" and \"chunk\".\n- [Fenom] New elements provider: \"file\".\n- New method pdoTools::runSnippet().\n\n2.4.0 pl\n==============\n- Added snippet pdoArchive.\n- [pdoResources] Faster processing of additional snippet parameters to placeholders.\n- [#123] [pdoMenu] Fixed bug with &displayStart and unpublished root nodes.\n- [#207] [pdoMenu] Fixed &webLinkClass option.\n- [#193] [pdoNeighbors] Added parameter &wrapIfEmpty.\n- [#203] [Fenom] Added more PCRE modifiers.\n\n2.3.5 pl\n==============\n- [pdoFetch] Added escaping of columns names in query.\n\n2.3.4 pl\n==============\n- [#200] [pdoFetch] Fixed &sortbyTV with dot in name.\n\n2.3.3 pl\n==============\n- Added system plugin for \"autoload\" of main classes with respect to their paths in system settings.\n\n2.3.2 pl\n==============\n- [#196] [pdoPage] Added workaround to support ClientConfig tags in ajax mode.\n- [Fenom] Added general MODX output filters as Fenom modifiers.\n- [Fenom] Implemented autoload of modifiers from snippets.\n- [Fenom] Removed system setting \"pdotools_fenom_modifiers\".\n\n2.3.1 pl\n==============\n- [pdoSitemap] Lightning fast work chunks processing with &scheme=`uri`.\n- [Fenom] Improved check of syntax before processing.\n\n2.3.0 pl\n==============\n- Removed shortcuts from system core.\n- PSR-2.\n- [Fenom] Added default modifiers: \"url\" and \"lexicon\".\n- [pdoCrumbs] Changed default chunks to ul -> li.\n- [#190] [pdoSitemap] Changed date format to ISO 8601.\n\n2.2.8 pl\n==============\n- [Fenom] Use modResource::getContent() method to get content of current resource in {$_modx->resource}.\n\n2.2.7 pl\n==============\n- [pdoPage] Ability to get access to a javascript configs from 3rd party scripts.\n\n2.2.6 pl\n==============\n- [#184] [Fenom] Updated to version 2.8.2.\n\n2.2.5 pl\n==============\n- [#182] [pdoTitle] Added passing a parameters into nested pdoCrumbs.\n- [pdoSitemap] Added processing of MODX tags if needed.\n- Added method pdoTools::makeUrl().\n- [#181] New url schema type - \"uri\".\n\n2.2.4 pl\n==============\n- [Fenom] Fixed speed issues when MODX snippets are run as Fenom modifiers.\n- [pdoUsers] Fixed overwrite modUser.id by modUserProfile.id.\n\n2.2.3 pl\n==============\n- [pdoPage] Fixed processing of uncached conditions in chunks when ajax mode is enabled.\n\n2.2.2 pl\n==============\n- [pdoPage] Added new parameter &pageLinkScheme.\n\n2.2.1 pl\n==============\n- [#155] [pdoPage] Added new parameter &ajaxHistory.\n- [pdoPage] Added connector for requests in ajax mode.\n\n2.2.0 pl\n==============\n- [#175] [pdoFetch] Ability to specify sequence of table joins.\n- [#174] [Fenom] Ability to add Fenom modifiers into pdoParser.\n\n2.1.21 pl\n==============\n- [#175] [pdoFetch] Ability to specify sequence of table joins.\n- [#176] [pdoUsers] Fixed &toPlaceholders with &returnIds.\n\n2.1.20 pl\n==============\n- [pdoSitemap] Fixed default &cacheKey.\n\n2.1.19 pl\n==============\n- [Fenom] Disabled $options in cacheManager::set() due to security reasons.\n\n2.1.18 pl\n==============\n- [Fenom] Fixed ability to access to the modX object from {$_modx} variable.\n- [Fenom] Improved method {$_modx->runProcessor()}.\n\n2.1.17 pl\n==============\n- [Fenom] Added {$_modx->getResource($id, $options)}.\n- [Fenom] Added {$_modx->getResources($where, $options)}.\n- [Fenom] Improved support of debugParser.\n\n2.1.16 pl\n==============\n- [Fenom] Added {$_modx->isMember($groups, $matchAll)}.\n- [Fenom] Added {$_modx->getPlaceholders()}.\n\n2.1.15 pl\n==============\n- [pdoPage] Added parameter &strictMode.\n\n2.1.14 pl\n==============\n- [pdoSitemap] Added options for cache snippets results.\n- [pdoSitemap] Cache enabled by default.\n\n2.1.13 pl\n==============\n- [#163] Fixed ignoring of &idx in pdoResources and pdoUsers.\n\n2.1.12 pl\n==============\n- [pdoPage] [#161] Fixed support of arrays in hash when &ajaxMode is enabled.\n\n2.1.11 pl\n==============\n- [#150] [Fenom] Fixed processing of TVs values in a {$_modx->resource}.\n- [#147] [pdoSitemap] Fixed possible duplicates in sitemap.\n- [pdoPage] Support of arrays in hash when &ajaxMode is enabled.\n\n2.1.10 pl\n==============\n- [#157] [Fenom] Fixed pre-processing of Fenom tags in extending templates and chunks.\n- [#145] [pdoPage] Rolled back #81 due to issues with complicate forms.\n\n2.1.9 pl\n==============\n- [#144] [pdoParser] Leave unprocessed FastField tags so other components could parse them.\n- [pdoFetch] Updated syntax for \"SET SQL_BIG_SELECTS = 1\".\n\n2.1.8 pl\n==============\n- [Fenom] Ability to use id of chunks and templates in {include} and {extends}.\n- [Fenom] Added support of debugParser.\n- [Fenom] Added {$_modx->getChildIds()} and {$_modx->getParentIds()}.\n\n2.1.7 pl\n==============\n- Fixed work with integer values from system setting \"link_tag_scheme\".\n\n2.1.6 pl\n==============\n- [Fenom] Updated to version 2.8.0.\n- [Fenom] Improved check of syntax to process content of chunks.\n- [pdoParser] Fixed E_WARNING on line 50 introduced in previous version.\n\n2.1.5 pl\n==============\n- [Fenom] Fixed register of scripts and styles by cached snippets.\n\n2.1.4 pl\n==============\n- [Fenom] Fixed TVs in {$_modx->resource}\n- [Fenom] Added new method {$_modx->getInfo()}\n\n2.1.3 pl\n==============\n- Improved work of system setting \"pdotools_fenom_php\".\n\n2.1.2 pl\n==============\n- [Fenom] Replaced {$_modx->placeholders} to functions.\n\n2.1.1 pl\n==============\n- pdoParser enabled by default.\n- [Fenom] Fixed return content in {$_modx->getChunk}.\n- [Fenom] Added cache for snippets called through {$_modx->runSnippet}.\n- [pdoTools] Added processing of property sets for chunks.\n- [pdoResources] Set additionalPlaceholders in &tplWrapper\n\n2.1.0 pl\n==============\n- [Fenom] Updated Fenom to version 2.7.1.\n- [Fenom] Added safe system variable {$_modx}.\n- [Fenom] Added MODX template provider for chunks and templates.\n\n2.0.5 pl\n==============\n- [#132] Fixed possible E_WARNING on empty chunks.\n- [#122] Ability to use 3rd party pdoPage and pdoMenu classes.\n- [#118] [pdoPage] Fixed parameter &offset.\n- [pdoPage] Fixed default CSS classes in \"empty\" chunks.\n\n2.0.4 pl\n==============\n- Fixed processing of \"pdotools_fenom_cache\" system setting.\n\n2.0.3 pl\n==============\n- [#125] [pdoTitle] Fixed parameter &id.\n\n2.0.2 pl\n==============\n- Improved processing of @FILE binding.\n\n2.0.1 pl\n==============\n- Fixed possible E_WARNING on line 319 and 349 of pdoTools class.\n- Disabled system option \"pdotools_fenom_modx\" by default due to security issues.\n\n2.0.0 pl\n==============\n- New system settings to control the Fenom.\n- Ability to enable caching of Fenom compiled chunks.\n- Improved handling of parameter \"cache_key\".\n- [pdoMenu] Improved work when &cache is enabled.\n\n2.0.0 rc2\n==============\n- Compiled Fenom templates cached to RAM instead of HDD.\n- Removed plugin pdoTools.\n\n2.0.0 rc1\n==============\n- Added Fenom template engine.\n- Fenom enabled by default.\n- pdoParser uses Fenom to process pages.\n\n1.11.2 pl\n==============\n- [#116] [pdoTitle] Disabled &register_js by default.\n\n1.11.1 pl\n==============\n- [pdoSitemap] Fixed default url scheme after last update.\n\n1.11.0 pl1\n==============\n- [pdoTitle] Added new snippet.\n- [pdoPage] Added support of snippet pdoTitle when &ajaxMode is enabled.\n- [pdoPage] Prevent overwriting of scripts and styles of nested &element by default parameters.\n- [pdoPage] Added triggering javascript event \"pdopage_load\".\n\n1.10.2 pl1\n==============\n- [#112] Parameter &scheme was set to system default in all snippets.\n- [#111] [pdoPage] Added ability to set \"prev\" & \"next\" meta tags.\n- [#107] [pdoNeighbors] Added ability to specify &parents for work.\n- [#106] [pdoMenu] Fixed \"hereClass\" and \"selfClass\" enabled &useWeblinkUrl parameter.\n- [#104] [pdoMenu] Snippet now using \"pagetitle\" for link titles if \"titleOfLinks\" is empty.\n\n1.10.1 pl\n==============\n- [#108] [pdoFetch] Fixed E_ERROR when using &sortbyTV.\n- [pdoFetch] Added new parameter &sortbyTVType.\n- [pdoFetch] If &sortdirTV is not set it will be equal to &sortdir.\n\n1.10.0 pl\n==============\n- [pdoMenu] Returned and fixed parameter &showDeleted.\n- [pdoPage] Improved default javascript.\n- [pdoPage] Fixed overwriting &frontend_js and &frontend_css parameters when &ajax is disabled.\n- [pdoFetch] Ability to specify functions in select fields.\n- [pdoTools] Ability to use compound quick placeholders.\n\n1.10.0 beta4\n==============\n- [pdoPage] Ajax pagination out from the box.\n- [pdoFetch] Improved log of getCollection.\n- [pdoTools] Added tplOperator \"contains\".\n\n1.9.7 pl\n==============\n- [#99] [pdoFetch] Fixed returning of primary key in \"ids\" mode.\n- [#97] [pdoTools] Fixed default tplPath for @FILE chunks.\n- [#85] [pdoFetch] Added function getChildIds().\n- [pdoFetch] Disabled \"total\" placeholder for &return=`ids`.\n\n1.9.6 pl2\n==============\n- [pdoFetch] Fixed exclusion of field \"id\" in custom classes.\n- [pdoMenu] Improved parameter &countChildren.\n- [#100] [pdoMenu] Removed parameter &showDeleted because it not working.\n\n1.9.6 rc\n==============\n- Added execution of SQL_BIG_SELECTS = 1 before query.\n- [pdoPage] Added parameter &ajax for supporting of ajax requests.\n\n1.9.5 pl1\n==============\n- Rolled back #72 due to issues in pdoMenu.\n\n1.9.5 pl\n==============\n- Added ability to return JSON or serialized string from pdoFetch::run().\n- [#83] [pdoMenu] Added level placeholder to outer templates.\n- [#82] [pdoFetch] Added support for complex &where parameter.\n- [#81] [pdoPage] Improved handling of arrays in url.\n- [#77] Fixed making of url for modWebLink to another context.\n- [#72] [pdoTools] Fixed order for children of excluded parents in buildTree.\n- [#60] [pdoMenu] Fixed parameter &tplCategoryFolder.\n- [#57] [pdoMenu] Improved placeholder [[+children]].\n- [#57] [pdoMenu] Added parameter &countChildren.\n\n1.9.4 pl1\n==============\n- [#78] [pdoNeighbors] Added parameter &loop=`1` for looping links.\n- [pdoSitemap] Fixed possible E_FATAL php-apc.\n\n1.9.3 pl1\n==============\n- [pdoTools] Ability to specify value for empty quick placeholders.\n- [pdoTools] Ability to use INLINE snippets and filters.\n- [pdoFetch] Improved loading of 3rd party models.\n- [pdoPage] Fixed E_WARNING when &limit=`0`.\n\n1.9.2 pl2\n==============\n- [#56] [pdoParser] Fixed wrong links processing.\n- [#53] Improved loading of classes.\n- [pdoField] Rolled back to original logic of \"top\" and \"topLevel\" parameters due to issues.\n- [pdoField] Added parameter \"ultimate\" to emulate logic of UltimateParent.\n\n1.9.1 pl6\n==============\n- [pdoFetch] Adding alias of main class of query to \"sortby\" if no alias exists.\n- [pdoFetch] Improved selecting of all fields of class with specified alias.\n- [pdoField] Parameter \"topLevel\" works exactly as in UltimateParent.\n- [pdoField] Parameter \"top\" without \"topLevel\" returns parent on \"top\" level.\n\n1.9.1 pl\n==============\n- [#47] [pdoMenu] Fixed processing &tplOuter when output is empty.\n- [#46] [pdoParser] Fixed processing of TVs with dots in name.\n- [#44] [pdoMenu] Improved handling of Wayfinder parameters \"includeDocs\" and \"excludeDocs\".\n- [#37] [pdoField] get the default, only if the field was empty.\n- [#34] Fixed processing of \"modSymLink\" documents.\n- [#32] Improved cache methods.\n- [#26] Replaced FIND_IN_SET() to FIELD().\n- [pdoFetch] Ability to work with objects, that has multiple primary keys.\n- [pdoPage] New parameter &cacheAnonymous.\n- [pdoMenu] New parameter &cacheAnonymous.\n- Added aliases for sort query in order of specified &resources: \"ids\" or \"resources\".\n- Removed unnecessary query in pdoFetch::getCollection().\n- Improved pdoFetch::getCollection().\n- Renamed pdoFetch::getObject() to getArray(). Now it uses getCollection for retrieve results.\n- pdoTools::setCache() now returns cacheKey.\n- pdoFetch::getObject() is now alias of pdoFetch::getArray().\n\n1.9.0 pl2\n==============\n- [pdoMenu] Chunks of parents and categories are now depends on the descendants and ignores parameter isfolder.\n- [pdoNeighbors] Speed improvements.\n- [#27] Ability to specify custom pdoFetch and pdoTools classes through FQN system settings.\n- [pdoParser] Handles TVs in resource tags.\n- [pdoParser] Handles output filters.\n- [pdoFetch] Improved method \"addTVFilters\", that used by \"tvFilters\" parameter in pdoResources.\n- [pdoSitemap] Pass the whole row so we can use more columns.\n\n1.9.0 rc\n==============\n- Improved method pdoTools::getChunk().\n- Improved method pdoTools::parseChunk().\n- Improved method pdoTools::fastProcess().\n- Improved method pdoTools::makePlaceholders().\n- Accelerated snippet pdoNeighbors.\n- Fixed bug in pdoUsers when usersgroups was specified by names.\n- getObject and getCollection() runs in separate instance.\n- Added pdoParser with FastField tags.\n- [pdoPage] Changed default value of parameter \"totalVar\" due to issues.\n- [#24] Fixed prepareTVs and empty tvPrefix.\n- [#23] [pdoResources] Ability to return ids to placeholder.\n- Fixed warning when getObject returns false.\n- Fixed placeholders prefix in recursive makePlaceholders.\n\n1.8.9 pl4\n==============\n- Added german lexicon.\n- [#20] Ability to specify not JSON string in &where=``.\n- [pdoPage] Added parameter \"pageCountVar\" for specifying name of variable with number of pages.\n- [pdoPage] Support Bootstrap3.\n- [pdoField] Ability to specify class for fetching field.\n- Improved joining of tables in pdoFetch.\n- Added preparing and processing TVs in getObject and getCollection methods.\n- Improved load of 3rd party models.\n\n1.8.8 pl2\n==============\n- Rewrited cache of snippets \"pdoMenu\" and \"pdoPage\".\n- New methods pdoTools::getCache() and pdoTools::setCache().\n- [pdoMenu] Fixed parameter \"tplParentRowActive\".\n- [#18] Fixed \"idx\" in pdoTools::defineChunk().\n\n1.8.7 pl\n==============\n- Added boolean parameter \"decodeJSON\" to specify whether or not decode JSON in results rows.\n- Removed default \"sortby\" and \"sortdir\" from class pdoFetch for better work of getCollection() method.\n\n1.8.6 pl2\n==============\n- Fixed possibly E_NOTICE when site has no extension packages installed.\n- [#17] [pdoMenu] Added placeholder [[+wf.menutitle]].\n- [#16] [pdoMenu] Disabled status verification of specified parents.\n- [#13] [pdoMenu] Improved work with root of multiple contexts.\n- [pdoMenu] Fixed bug when specified parent has only the one child.\n- [pdoResources] Added parameter \"&useWeblink\" and placeholder \"[[+link]]\". It is disabled by default.\n\n1.8.5 pl\n==============\n- [#15] [pdoPage] Improved generation of links to pages.\n- [pdoMenu] Improved processing of classes \"modSymlink\" and \"modWeblink\".\n- [pdoBreadcrumbs] Improved processing of classes \"modSymlink\" and \"modWeblink\". Added parameter \"&useWeblink\".\n- [pdoNeighbors] Added parameter \"&useWeblink\" and placeholder \"[[+link]]\".\n- [pdoSitemap] Added parameter \"&useWeblink\" and proper processing of classes \"modSymlink\" and \"modWeblink\".\n\n1.8.4 pl\n==============\n- [pdoCrumbs] Added ability to specify the crumbs root (defaulting to site_start)\n- [pdoCrumbs] Added ability to specify class_key (ie. to generate crumbs only for derivative classes)\n- More accuracy when try to decode json in fetch results.\n\n1.8.3 pl3\n==============\n- Improved preparation of template variables.\n- Improved transfer of additional parameters from snippet to results.\n- [pdoMenu] Added lexicon entries for parameters.\n- [pdoMenu] Allow to specify \"limit\" and \"offset\".\n- [#12] Added parameter \"toPlaceholder\".\n- Increased accuracy of timings log.\n\n1.8.1 pl2\n==============\n- Accelerated method pdoTools::getChunk().\n- Added snippet pdoMenu.\n- Added support for tags [^qt^] and [^q^].\n\n1.8.0 pl\n==============\n- [#10] [pdoPage] Added placeholder \"page\".\n- [#9] [pdoPage] Added placeholder \"pageCount\".\n- [#8] Improved support of big numbers when sorting by TVs.\n- Fixed work of pdoPage when it called multiple times on page.\n- Fixed mistype in pdoFetch::getCollection().\n\n1.8.0 rc5\n==============\n- Added processing of JSON fields. For example, you can use [[+extended.keyname]] in chunks of pdoUsers.\n- pdoTools was removed from system extension packages, but you can still use \"$modx->getService(\'pdoFetch\');\".\n- Fixed getting chunk without any parameters.\n- Added snippet pdoPage.\n\n1.8.0 beta1\n==============\n- Improved handling of \"default_text\" parameter in TVs.\n- Fixed and improved method pdoTools::buildTree().\n- The logic of build the conditions of the query moved into new method pdoFetch::additionalConditions().\n- Improved method pdoFetch::addSelects().\n- Improved method pdoFetch::addSort().\n- Improved some snippets in accordance to new abilities of pdoFetch: pdoResources, pdoNeighbors and pdoSitemap.\n\n1.7.4 pl\n==============\n- [#7] [pdoSitemap] Fixed hidden parameters \"&sortBy\" and \"&sortDir\" that used for compatibility with GoogleSiteMap.\n\n1.7.3 pl1\n==============\n- [pdoCrumbs] Fixed possible E_NOTICE on line 157.\n- [pdoCrumbs] Fixed generation of link to site start in relative mode.\n- [#6] pdoCrumbs and pdoNeighbors are now uses \"menutitle\" by default. If it is empty, will be used \"pagetitle\".\n\n1.7.2 pl1\n==============\n- [pdoField] Added new parameters: \"default=``\" and \"&field=``\".\n- [pdoField] Improved logic of \"&top=``\" and \"&topLevel=``\".\n- Added 2 new methods: pdoFetch::getObject() and pdoFetch::getCollection().\n- Ability to send arrays into common config parameters. JSON is still supported.\n- Improved select of default values in TVs.\n\n1.7.1 pl\n==============\n- [pdoCrumbs] Fixed work with \"modSymLink\" and \"modWebLink\" resources.\n\n1.7.0 pl1\n==============\n- New snippet pdoCrumbs.\n- New snippet pdoField.\n- New snippet pdoSitemap.\n- New snippet pdoNeighbors.\n- Ability to specify snippet for preparation of fetched rows by parameter \"&prepareSnippet=``\".\n- Added method pdoTools::checkPermissions() for checking user privileges to view the results.\n- Added @TEMPLATE binding. You can use name or id of any template. If empty - will use template of each row.\n- [pdoResources] Improved parameter \"&context\".\n- [pdoResources] Script properties are now passed to chunks. You can send any placeholders to it.\n\n1.6.0 pl1\n==============\n- Fixed compatibility issues in PHP < 5.3.\n\n1.6.0 pl\n==============\n- Added parameter \"&loadModels\" for comma-separated list of 3rd party components that needed for query.\n- Added parameters \"&prepareTVs\" and \"&processTVs\".\n- Added parameters \"&tvFilters\", \"&tvFiltersAndDelimiter\" and \"&tvFiltersAndDelimiter\".\n- Added support of parameters \"&sortbyTV\" and \"&sortdirTV\" for compatibility with getResources.\n- Added ability to use @INLINE and @FILE bindings in all template parameters.\n- Removed method pdoTools::getPlaceholders.\n\n1.5.0 pl2\n==============\n- Fixed sort of decimals in TVs.\n\n1.5.0 pl1\n==============\n- Added processing of simple [[~id]] placeholders in fastMode.\n- Added support of default value for TVs.\n- Improved sort by TVs of types \"number\" and \"date\".\n\n1.5.0 rc\n==============\n- [pdoUsers] Added new snippet \"pdoUsers\".\n- [pdoResources] Fixed \"toSeparatePlaceholders\".\n- [pdoResources] Parameter \"parents\" now supports dash prefix for excluding resources from query by parent.\n- [pdoResources] Fixed issue when snippet runs multiple times at one page.\n\n1.4.1 pl1\n==============\n- Improved \"context\" processing.\n- Fixed \"idx\" when multiple snippets called at one page.\n- Fixed default sortby when joined tables exists.\n\n1.4.1 beta3\n==============\n- Added parameters \"tplCondition\", \"tplOperator\" and \"conditionalTpls\".\n- Added parameter \"select\" for specifying needed columns of selected tables. Can be a JSON string with array.\n- Added parameter \"toSeparatePlaceholders\".\n- Improved \"pdoResources\" snippet.\n\n1.4.0 beta1\n==============\n- Ability to specify JSON string in \"sortby\", for example \"&sortby=`{\"pagetitle\":\"asc\",\"createdon\":\"desc\"}`\"\n- Added automatic replacement of tvs in \"where\" and \"having\" parameters.\n- Added automatic replacement of tvs in \"sortby\" parameter.\n- Removed example snippet\n- Added snippet \"pdoResources\", that could replace \"getResources\".\n- Added method pdoTools::defineChunk() for chunk of given idx.\n- Added \"memory usage\" in log.\n\n1.3.0\n==============\n- Improved placeholders processing when fastMode is enabled.\n- Added support of \"having\" conditions.\n\n1.2.1\n==============\n- Fixed not working \"includeTVs\" when \"leftJoin\" is empty.\n\n1.2.0\n==============\n- Native render of quick placeholders, such as \"<!--pdotools_introtext <blockquote>[[+introtext]]</blockquote>-->\".\n- Added joining of TVs in pdoFetch. Use parameter \"includeTVs\" with comma-separated list of template variables.\n- Added method pdoFetch::setConfig() for proper setting options when you run multiple pdoTools snippets at the one page.\n- Method pdoTools::makeArray is now recursive, for processing a multidimensional arrays of values.\n\n1.1.0\n==============\n- Improved getChunk function.\n\n1.0.1\n==============\n- Fixed setting total in \"chunks\" mode.\n- Improved displaying \"where\" condition in log.\n\n1.0.0\n==============\n- Initial release.\";s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:646:\"--------------------\npdoTools\n--------------------\nAuthor: Vasiliy Naumkin <bezumkin@yandex.ru>\n--------------------\n\nSmall library for creating fast snippets for MODX Revolution that works through PDO.\n\nRequired by Tickets and miniShop2.\n\nMain features\n- Builds queries with xPDO.\n- Retrieve results with PDO.\n- Improved pdoTools::getChunk() function, that processing placeholders faster, than original modX::getChunk().\n\npdoTools snippets will work so faster, than more fields you will retrieve from database at one query.\n\n--------------------\nFeel free to suggest ideas/improvements/bugs on GitHub:\nhttp://github.com/bezumkin/pdoTools/issues\n\";s:9:\"signature\";s:19:\"pdotools-2.12.10-pl\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:47:\"/workspace/package/install/pdotools-2.12.10-pl/\";s:14:\"package_action\";i:0;}', 'pdoTools', 'a:38:{s:2:\"id\";s:24:\"602205f51ef0220b1b288492\";s:7:\"package\";s:24:\"50f8468bf2455436ec00000d\";s:12:\"display_name\";s:19:\"pdotools-2.12.10-pl\";s:4:\"name\";s:8:\"pdoTools\";s:7:\"version\";s:7:\"2.12.10\";s:13:\"version_major\";s:1:\"2\";s:13:\"version_minor\";s:2:\"12\";s:13:\"version_patch\";s:2:\"10\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:9:\"bezumkin2\";s:11:\"description\";s:7:\"<p></p>\";s:12:\"instructions\";s:77:\"<p></p><p>For example just run:</p><p></p><p></p><p></p><p></p><p></p><p></p>\";s:9:\"changelog\";s:162:\"<a href=\"https://raw.githubusercontent.com/bezumkin/pdoTools/master/core/components/pdotools/docs/changelog.txt\" title=\"\" target=\"_blank\">See on GitHub</a><p></p>\";s:9:\"createdon\";s:24:\"2021-02-09T03:48:05+0000\";s:9:\"createdby\";s:9:\"bezumkin2\";s:8:\"editedon\";s:24:\"2021-06-12T07:14:43+0000\";s:10:\"releasedon\";s:24:\"2021-02-09T03:48:05+0000\";s:9:\"downloads\";s:6:\"347967\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.3\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=602205f51ef0220b1b288493\";s:9:\"signature\";s:19:\"pdotools-2.12.10-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.3\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:97:\"http://modx.s3.amazonaws.com/extras/50f8468bf2455436ec00000d/ffe1e89f12c51f01ad55ce39b88731b1.jpg\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"602205f51ef0220b1b288493\";s:7:\"version\";s:24:\"602205f51ef0220b1b288492\";s:8:\"filename\";s:33:\"pdotools-2.12.10-pl.transport.zip\";s:9:\"downloads\";s:5:\"10915\";s:6:\"lastip\";s:13:\"193.28.200.16\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=602205f51ef0220b1b288493\";}s:17:\"package-signature\";s:19:\"pdotools-2.12.10-pl\";s:10:\"categories\";s:14:\"administration\";s:4:\"tags\";s:0:\"\";}', 2, 12, 10, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('tinymcerte-2.0.1-pl', '2021-06-09 06:08:59', '2021-06-09 04:09:36', '2021-06-09 06:09:36', 0, 1, 1, 0, 'tinymcerte-2.0.1-pl.transport.zip', NULL, 'a:9:{s:7:\"license\";s:15215:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\n\";s:6:\"readme\";s:640:\"# TinyMCE Rich Text Editor\n\nTinyMCE 5 for MODX Revolution.\n\n- Author: John Peca <john@modx.com>\n- Upgrade to TinyMCE 5: Thomas Jakobi <thomas.jakobi@partout.info>\n- License: GNU GPLv2\n\n## Features\n\nTinyMCE is a platform independent web based Javascript HTML WYSIWYG editor. It\nallows non-technical users to format content without knowing how to code. This\nrelease was done as a companion project for the https://a11y.modx.com to provide\nan accessible RTE. It is based on the TinyMCE 5 code base.\n\n## Installation\n\nMODX Package Management\n\n## Usage\n\nInstall via package manager.\n\n## GitHub Repository\n\nhttps://github.com/modxcms/tinymce-rte\n\";s:9:\"changelog\";s:3497:\"# Changelog\n\nAll notable changes to this project will be documented in this file.\n\nThe format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),\nand this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).\n\n## [2.0.1] - 2021-05-14\n\n### Changed\n\n- Update TinyMCE to 5.8.0\n- Improve the configuration output in the manager html code\n\n### Fixed\n\n- Compatibility with moregallery and Collections\n\n## [2.0.0] - 2021-03-19\n\n### Added\n\n- MODX skintool.json for http://skin.tiny.cloud/t5/\n- MODX 3 compatibility\n- link_list_enable system setting\n\n### Changed\n\n- Upgrade TinyMCE to 5\n- Refactored modxlink TinyMCE plugin to use the nested link_list option\n- Refactored modximage TinyMCE plugin\n- Recursive merge the external config with the config\n- Remove the deprecated file_browser_callback and use the file_picker_callback \n- Allow direct JSON based style_formats items\n\n## [1.4.0] - 2020-09-11\n\n### Added\n\n- Build the modx skin with the internal tinymce grunt workflow\n\n### Changed\n\n- Extend/Fix the modx skin styles\n- Fix an issue with the table tool buttons\n\n## [1.3.4] - 2020-08-12\n\n### Added\n\n- The modx skin extends the lightgray skin, that way the css changes in the lightgray skin are available after a TinyMCE update\n\n### Changed\n\n- Some lexicon changes/improvements\n- Upgrade TinyMCE to 4.9.11\n\n### Removed\n\n- Removed some unnecessary files\n\n## [1.3.3] - 2020-02-04\n\n### Changed\n\n- Bugfix for not using full width when the editor is moved to a new tab [#86]\n- Upgrade TinyMCE to 4.9.7\n\n## [1.3.2] - 2019-06-13\n\n### Changed\n\n- Bugfix for showing only an english user interface\n\n## [1.3.1] - 2019-06-05\n\n### Added\n\n- Added field displaying resource pagetitle of MODX link [#83]\n- Added image_caption option for TinyMCE [#60]\n\n### Changed\n\n- Expanding the locale list [#82]\n- Get settings from a JSON encoded array in tinymcerte.settings system setting\n- Make the entity_encoding configurable [#79]\n- Upgrade TinyMCE to 4.9.4\n\n## [1.3.0] - 2019-05-22\n\n### Added\n\n- Manage TinyMCE release download by npm\n- Add Gruntfile.js that copies the current release of TinyMCE to the corresponding folders\n- Add version info to the registered assets\n- Adding Russian translation\n\n### Changed\n\n- Upgrade TinyMCE to 4.8.3\n\n## [1.2.1] - 2017-12-16\n\n### Added\n\n- Added language strings for the system settings added in 1.2.0\n\n### Changed\n\n- Escaped special HTML chars in the modxlink plugin\n- Fixing \'Media browser does not close when clicking on close\'\n\n## [1.2.0] - 2017-05-21\n\n### Added\n\n- Added `relative_urls` & `remove_script_host` settings\n- Added system setting to define \'valid_elements\'\n- Added \'links_across_contexts\' setting to limit links to the current context resources\n- Added support for configured default Media Source in context settings\n- CMPs can now pass any TinyMCE configuration property using the `OnRichTextEditorInit` system event\n\n### Changed\n\n- Plugin now makes use of `modManagerController::addJavascript` instead of `modX::regClientStartupScript`\n- Upgraded to TinyMCE 4.5.7\n\n## [1.1.1] - 2016-01-20\n\n### Added\n\n- Add tel: prefix\n- Add modximage - left/right image positioning\n- Add modx skin (Credits goes to fourroses666)\n- Add skin system setting\n\n### Changed\n\n- Allow base path parsing in the external_config system setting\n- Sync tinymce and textarea\n\n## [1.1.0] - 2015-07-13\n\n### Added\n\n- Add autocomplete search for links\n- Add external config\n- Support for link classes\n\n## [1.0.0] - 2015-02-23\n\n### Added\n\n- Initial release\n\";s:8:\"requires\";a:2:{s:3:\"php\";s:5:\">=7.2\";s:4:\"modx\";s:5:\">=2.7\";}s:9:\"signature\";s:19:\"tinymcerte-2.0.1-pl\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:47:\"/workspace/package/install/tinymcerte-2.0.1-pl/\";s:14:\"package_action\";i:0;}', 'TinyMCE Rich Text Editor', 'a:38:{s:2:\"id\";s:24:\"609e49bdbc84815550766342\";s:7:\"package\";s:24:\"54eb652ddc532f725a02bf64\";s:12:\"display_name\";s:19:\"tinymcerte-2.0.1-pl\";s:4:\"name\";s:24:\"TinyMCE Rich Text Editor\";s:7:\"version\";s:5:\"2.0.1\";s:13:\"version_major\";s:1:\"2\";s:13:\"version_minor\";s:1:\"0\";s:13:\"version_patch\";s:1:\"1\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:4:\"jako\";s:11:\"description\";s:333:\"TinyMCE is a platform independent web based Javascript HTML WYSIWYG editor. It allows non-technical users to format content without knowing how to code. This release was done as a companion project for the <a href=\"https://a11y.modx.com\">https://a11y.modx.com</a> to provide an accessible RTE. It is based on the TinyMCE 5 code base.\";s:12:\"instructions\";s:46:\"Download and install via MODX package manager.\";s:9:\"changelog\";s:161:\"<ul>\n<li>Update TinyMCE to 5.8.0\n<li>Improve the configuration output in the manager html code</li>\n<li>Compatibility with moregallery and Collections</li>\n</ul>\";s:9:\"createdon\";s:24:\"2021-05-14T09:58:21+0000\";s:9:\"createdby\";s:4:\"jako\";s:8:\"editedon\";s:24:\"2021-06-08T22:55:44+0000\";s:10:\"releasedon\";s:24:\"2021-05-14T09:58:21+0000\";s:9:\"downloads\";s:6:\"108685\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.6\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=609e49bdbc84815550766343\";s:9:\"signature\";s:19:\"tinymcerte-2.0.1-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.6\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:75:\"http://modx.s3.amazonaws.com/extras/54eb652ddc532f725a02bf64/tinymcerte.png\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"609e49bdbc84815550766343\";s:7:\"version\";s:24:\"609e49bdbc84815550766342\";s:8:\"filename\";s:33:\"tinymcerte-2.0.1-pl.transport.zip\";s:9:\"downloads\";s:4:\"1927\";s:6:\"lastip\";s:12:\"54.145.16.86\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=609e49bdbc84815550766343\";}s:17:\"package-signature\";s:19:\"tinymcerte-2.0.1-pl\";s:10:\"categories\";s:15:\"richtexteditors\";s:4:\"tags\";s:0:\"\";}', 2, 0, 1, 'pl', 0),
('uicmpgenerator-1.0.1-beta', '2021-06-11 08:39:52', '2021-06-11 06:41:13', '2021-06-11 08:41:13', 0, 1, 1, 0, 'uicmpgenerator-1.0.1-beta.transport.zip', NULL, 'a:8:{s:7:\"license\";s:15504:\"GNU GENERAL PUBLIC LICENSE\r\n   Version 2, June 1991\r\n--------------------------\r\n\r\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\r\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\r\n\r\nEveryone is permitted to copy and distribute verbatim copies\r\nof this license document, but changing it is not allowed.\r\n\r\nPreamble\r\n--------\r\n\r\n  The licenses for most software are designed to take away your\r\nfreedom to share and change it.  By contrast, the GNU General Public\r\nLicense is intended to guarantee your freedom to share and change free\r\nsoftware--to make sure the software is free for all its users.  This\r\nGeneral Public License applies to most of the Free Software\r\nFoundation\'s software and to any other program whose authors commit to\r\nusing it.  (Some other Free Software Foundation software is covered by\r\nthe GNU Library General Public License instead.)  You can apply it to\r\nyour programs, too.\r\n\r\n  When we speak of free software, we are referring to freedom, not\r\nprice.  Our General Public Licenses are designed to make sure that you\r\nhave the freedom to distribute copies of free software (and charge for\r\nthis service if you wish), that you receive source code or can get it\r\nif you want it, that you can change the software or use pieces of it\r\nin new free programs; and that you know you can do these things.\r\n\r\n  To protect your rights, we need to make restrictions that forbid\r\nanyone to deny you these rights or to ask you to surrender the rights.\r\nThese restrictions translate to certain responsibilities for you if you\r\ndistribute copies of the software, or if you modify it.\r\n\r\n  For example, if you distribute copies of such a program, whether\r\ngratis or for a fee, you must give the recipients all the rights that\r\nyou have.  You must make sure that they, too, receive or can get the\r\nsource code.  And you must show them these terms so they know their\r\nrights.\r\n\r\n  We protect your rights with two steps: (1) copyright the software, and\r\n(2) offer you this license which gives you legal permission to copy,\r\ndistribute and/or modify the software.\r\n\r\n  Also, for each author\'s protection and ours, we want to make certain\r\nthat everyone understands that there is no warranty for this free\r\nsoftware.  If the software is modified by someone else and passed on, we\r\nwant its recipients to know that what they have is not the original, so\r\nthat any problems introduced by others will not reflect on the original\r\nauthors\' reputations.\r\n\r\n  Finally, any free program is threatened constantly by software\r\npatents.  We wish to avoid the danger that redistributors of a free\r\nprogram will individually obtain patent licenses, in effect making the\r\nprogram proprietary.  To prevent this, we have made it clear that any\r\npatent must be licensed for everyone\'s free use or not licensed at all.\r\n\r\n  The precise terms and conditions for copying, distribution and\r\nmodification follow.\r\n\r\n\r\nGNU GENERAL PUBLIC LICENSE\r\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\r\n---------------------------------------------------------------\r\n\r\n  0. This License applies to any program or other work which contains\r\na notice placed by the copyright holder saying it may be distributed\r\nunder the terms of this General Public License.  The \"Program\", below,\r\nrefers to any such program or work, and a \"work based on the Program\"\r\nmeans either the Program or any derivative work under copyright law:\r\nthat is to say, a work containing the Program or a portion of it,\r\neither verbatim or with modifications and/or translated into another\r\nlanguage.  (Hereinafter, translation is included without limitation in\r\nthe term \"modification\".)  Each licensee is addressed as \"you\".\r\n\r\nActivities other than copying, distribution and modification are not\r\ncovered by this License; they are outside its scope.  The act of\r\nrunning the Program is not restricted, and the output from the Program\r\nis covered only if its contents constitute a work based on the\r\nProgram (independent of having been made by running the Program).\r\nWhether that is true depends on what the Program does.\r\n\r\n  1. You may copy and distribute verbatim copies of the Program\'s\r\nsource code as you receive it, in any medium, provided that you\r\nconspicuously and appropriately publish on each copy an appropriate\r\ncopyright notice and disclaimer of warranty; keep intact all the\r\nnotices that refer to this License and to the absence of any warranty;\r\nand give any other recipients of the Program a copy of this License\r\nalong with the Program.\r\n\r\nYou may charge a fee for the physical act of transferring a copy, and\r\nyou may at your option offer warranty protection in exchange for a fee.\r\n\r\n  2. You may modify your copy or copies of the Program or any portion\r\nof it, thus forming a work based on the Program, and copy and\r\ndistribute such modifications or work under the terms of Section 1\r\nabove, provided that you also meet all of these conditions:\r\n\r\n    a) You must cause the modified files to carry prominent notices\r\n    stating that you changed the files and the date of any change.\r\n\r\n    b) You must cause any work that you distribute or publish, that in\r\n    whole or in part contains or is derived from the Program or any\r\n    part thereof, to be licensed as a whole at no charge to all third\r\n    parties under the terms of this License.\r\n\r\n    c) If the modified program normally reads commands interactively\r\n    when run, you must cause it, when started running for such\r\n    interactive use in the most ordinary way, to print or display an\r\n    announcement including an appropriate copyright notice and a\r\n    notice that there is no warranty (or else, saying that you provide\r\n    a warranty) and that users may redistribute the program under\r\n    these conditions, and telling the user how to view a copy of this\r\n    License.  (Exception: if the Program itself is interactive but\r\n    does not normally print such an announcement, your work based on\r\n    the Program is not required to print an announcement.)\r\n\r\nThese requirements apply to the modified work as a whole.  If\r\nidentifiable sections of that work are not derived from the Program,\r\nand can be reasonably considered independent and separate works in\r\nthemselves, then this License, and its terms, do not apply to those\r\nsections when you distribute them as separate works.  But when you\r\ndistribute the same sections as part of a whole which is a work based\r\non the Program, the distribution of the whole must be on the terms of\r\nthis License, whose permissions for other licensees extend to the\r\nentire whole, and thus to each and every part regardless of who wrote it.\r\n\r\nThus, it is not the intent of this section to claim rights or contest\r\nyour rights to work written entirely by you; rather, the intent is to\r\nexercise the right to control the distribution of derivative or\r\ncollective works based on the Program.\r\n\r\nIn addition, mere aggregation of another work not based on the Program\r\nwith the Program (or with a work based on the Program) on a volume of\r\na storage or distribution medium does not bring the other work under\r\nthe scope of this License.\r\n\r\n  3. You may copy and distribute the Program (or a work based on it,\r\nunder Section 2) in object code or executable form under the terms of\r\nSections 1 and 2 above provided that you also do one of the following:\r\n\r\n    a) Accompany it with the complete corresponding machine-readable\r\n    source code, which must be distributed under the terms of Sections\r\n    1 and 2 above on a medium customarily used for software interchange; or,\r\n\r\n    b) Accompany it with a written offer, valid for at least three\r\n    years, to give any third party, for a charge no more than your\r\n    cost of physically performing source distribution, a complete\r\n    machine-readable copy of the corresponding source code, to be\r\n    distributed under the terms of Sections 1 and 2 above on a medium\r\n    customarily used for software interchange; or,\r\n\r\n    c) Accompany it with the information you received as to the offer\r\n    to distribute corresponding source code.  (This alternative is\r\n    allowed only for noncommercial distribution and only if you\r\n    received the program in object code or executable form with such\r\n    an offer, in accord with Subsection b above.)\r\n\r\nThe source code for a work means the preferred form of the work for\r\nmaking modifications to it.  For an executable work, complete source\r\ncode means all the source code for all modules it contains, plus any\r\nassociated interface definition files, plus the scripts used to\r\ncontrol compilation and installation of the executable.  However, as a\r\nspecial exception, the source code distributed need not include\r\nanything that is normally distributed (in either source or binary\r\nform) with the major components (compiler, kernel, and so on) of the\r\noperating system on which the executable runs, unless that component\r\nitself accompanies the executable.\r\n\r\nIf distribution of executable or object code is made by offering\r\naccess to copy from a designated place, then offering equivalent\r\naccess to copy the source code from the same place counts as\r\ndistribution of the source code, even though third parties are not\r\ncompelled to copy the source along with the object code.\r\n\r\n  4. You may not copy, modify, sublicense, or distribute the Program\r\nexcept as expressly provided under this License.  Any attempt\r\notherwise to copy, modify, sublicense or distribute the Program is\r\nvoid, and will automatically terminate your rights under this License.\r\nHowever, parties who have received copies, or rights, from you under\r\nthis License will not have their licenses terminated so long as such\r\nparties remain in full compliance.\r\n\r\n  5. You are not required to accept this License, since you have not\r\nsigned it.  However, nothing else grants you permission to modify or\r\ndistribute the Program or its derivative works.  These actions are\r\nprohibited by law if you do not accept this License.  Therefore, by\r\nmodifying or distributing the Program (or any work based on the\r\nProgram), you indicate your acceptance of this License to do so, and\r\nall its terms and conditions for copying, distributing or modifying\r\nthe Program or works based on it.\r\n\r\n  6. Each time you redistribute the Program (or any work based on the\r\nProgram), the recipient automatically receives a license from the\r\noriginal licensor to copy, distribute or modify the Program subject to\r\nthese terms and conditions.  You may not impose any further\r\nrestrictions on the recipients\' exercise of the rights granted herein.\r\nYou are not responsible for enforcing compliance by third parties to\r\nthis License.\r\n\r\n  7. If, as a consequence of a court judgment or allegation of patent\r\ninfringement or for any other reason (not limited to patent issues),\r\nconditions are imposed on you (whether by court order, agreement or\r\notherwise) that contradict the conditions of this License, they do not\r\nexcuse you from the conditions of this License.  If you cannot\r\ndistribute so as to satisfy simultaneously your obligations under this\r\nLicense and any other pertinent obligations, then as a consequence you\r\nmay not distribute the Program at all.  For example, if a patent\r\nlicense would not permit royalty-free redistribution of the Program by\r\nall those who receive copies directly or indirectly through you, then\r\nthe only way you could satisfy both it and this License would be to\r\nrefrain entirely from distribution of the Program.\r\n\r\nIf any portion of this section is held invalid or unenforceable under\r\nany particular circumstance, the balance of the section is intended to\r\napply and the section as a whole is intended to apply in other\r\ncircumstances.\r\n\r\nIt is not the purpose of this section to induce you to infringe any\r\npatents or other property right claims or to contest validity of any\r\nsuch claims; this section has the sole purpose of protecting the\r\nintegrity of the free software distribution system, which is\r\nimplemented by public license practices.  Many people have made\r\ngenerous contributions to the wide range of software distributed\r\nthrough that system in reliance on consistent application of that\r\nsystem; it is up to the author/donor to decide if he or she is willing\r\nto distribute software through any other system and a licensee cannot\r\nimpose that choice.\r\n\r\nThis section is intended to make thoroughly clear what is believed to\r\nbe a consequence of the rest of this License.\r\n\r\n  8. If the distribution and/or use of the Program is restricted in\r\ncertain countries either by patents or by copyrighted interfaces, the\r\noriginal copyright holder who places the Program under this License\r\nmay add an explicit geographical distribution limitation excluding\r\nthose countries, so that distribution is permitted only in or among\r\ncountries not thus excluded.  In such case, this License incorporates\r\nthe limitation as if written in the body of this License.\r\n\r\n  9. The Free Software Foundation may publish revised and/or new versions\r\nof the General Public License from time to time.  Such new versions will\r\nbe similar in spirit to the present version, but may differ in detail to\r\naddress new problems or concerns.\r\n\r\nEach version is given a distinguishing version number.  If the Program\r\nspecifies a version number of this License which applies to it and \"any\r\nlater version\", you have the option of following the terms and conditions\r\neither of that version or of any later version published by the Free\r\nSoftware Foundation.  If the Program does not specify a version number of\r\nthis License, you may choose any version ever published by the Free Software\r\nFoundation.\r\n\r\n  10. If you wish to incorporate parts of the Program into other free\r\nprograms whose distribution conditions are different, write to the author\r\nto ask for permission.  For software which is copyrighted by the Free\r\nSoftware Foundation, write to the Free Software Foundation; we sometimes\r\nmake exceptions for this.  Our decision will be guided by the two goals\r\nof preserving the free status of all derivatives of our free software and\r\nof promoting the sharing and reuse of software generally.\r\n\r\nNO WARRANTY\r\n-----------\r\n\r\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\r\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\r\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\r\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\r\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\r\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\r\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\r\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\r\nREPAIR OR CORRECTION.\r\n\r\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\r\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\r\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\r\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\r\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\r\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\r\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\r\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\r\nPOSSIBILITY OF SUCH DAMAGES.\r\n\r\n---------------------------\r\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:721:\"--------------------\r\nExtension: UICMPGenerator for MODX Revolution 2.3.x\r\n--------------------\r\nVersion: 1.0.1-beta\r\nReleased: January 08, 2015\r\nSince: January 08, 2015\r\nAuthor: Prihod <prihod2004@gmail.com>\r\n\r\nDescription\r\n    UICMPGenerator is intended to be used by PHP developers that want to create custom\r\n    database tables to be used via a snippet, plugin or CMP. UICMPGenerator will create\r\n    the xpdo scheme files and xpdo classes for your custom database tables,\r\n    extends the core classes MODx and establishes a relationship between tables (aggregate ,composite)\r\n    This allows you to quickly start using xpdo in your custom projects.\r\n\r\nExample of schema and foreign DB:\r\nhttp://youtu.be/Qkspw8kXwK4\";s:9:\"changelog\";s:232:\"Changelog for UiCMPGenerator integration into MODx Revolution.\r\n\r\nUiCMPGenerator 1.0.1\r\n====================================\r\n- Fixed: Building relations\r\n\r\nUiCMPGenerator 1.0.0\r\n====================================\r\n- First release\";s:9:\"signature\";s:25:\"uicmpgenerator-1.0.1-beta\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:53:\"/workspace/package/install/uicmpgenerator-1.0.1-beta/\";s:14:\"package_action\";i:0;}', 'UiCMPGenerator', 'a:38:{s:2:\"id\";s:24:\"54dc9022dc532f725a009b13\";s:7:\"package\";s:24:\"54b04b4edc532f5cee0073e9\";s:12:\"display_name\";s:25:\"uicmpgenerator-1.0.1-beta\";s:4:\"name\";s:14:\"UiCMPGenerator\";s:7:\"version\";s:5:\"1.0.1\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"0\";s:13:\"version_patch\";s:1:\"1\";s:7:\"release\";s:4:\"beta\";s:8:\"vrelease\";s:4:\"beta\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:6:\"prixod\";s:11:\"description\";s:579:\"<p>UICMPGenerator is intended to be used by PHP developers that want to create custom</p><p>database tables to be used via a snippet, plugin or CMP. UICMPGenerator will create</p><p>the xpdo scheme files and xpdo classes for your custom database tables,</p><p>extends the core classes MODx and establishes a relationship between tables (aggregate ,composite)</p><p>This allows you to quickly start using xpdo in your custom projects.</p><p><b>Example of schema and foreign DB:</b></p><p><a href=\"http://youtu.be/Qkspw8kXwK4\" title=\"\" target=\"\">http://youtu.be/Qkspw8kXwK4</a></p>\";s:12:\"instructions\";s:95:\"<p><a href=\"http://youtu.be/Qkspw8kXwK4\" title=\"\" target=\"\">http://youtu.be/Qkspw8kXwK4</a></p>\";s:9:\"changelog\";s:104:\"<p>UiCMPGenerator 1.0.1</p><p>====================================</p><p>- Fixed: Building relations</p>\";s:9:\"createdon\";s:24:\"2015-02-12T11:36:02+0000\";s:9:\"createdby\";s:6:\"prixod\";s:8:\"editedon\";s:24:\"2021-06-03T16:33:44+0000\";s:10:\"releasedon\";s:24:\"2015-02-12T12:58:19+0000\";s:9:\"downloads\";s:4:\"2716\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.3\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=54dc9022dc532f725a009b14\";s:9:\"signature\";s:25:\"uicmpgenerator-1.0.1-beta\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.3\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:68:\"http://modx.s3.amazonaws.com/extras/54b04b4edc532f5cee0073e9/sj1.png\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"54dc9022dc532f725a009b14\";s:7:\"version\";s:24:\"54dc9022dc532f725a009b13\";s:8:\"filename\";s:39:\"uicmpgenerator-1.0.1-beta.transport.zip\";s:9:\"downloads\";s:4:\"2434\";s:6:\"lastip\";s:14:\"188.170.84.206\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=54dc9022dc532f725a009b14\";}s:17:\"package-signature\";s:25:\"uicmpgenerator-1.0.1-beta\";s:10:\"categories\";s:29:\"administration,administration\";s:4:\"tags\";s:0:\"\";}', 1, 0, 1, 'beta', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_transport_providers`
--

CREATE TABLE `modx_transport_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `service_url` tinytext,
  `username` varchar(191) NOT NULL DEFAULT '',
  `api_key` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `priority` tinyint(4) NOT NULL DEFAULT '10',
  `properties` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_transport_providers`
--

INSERT INTO `modx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`, `active`, `priority`, `properties`) VALUES
(1, 'modx.com', 'The official MODX transport provider for 3rd party components.', 'https://rest.modx.com/extras/', '', '', '2021-05-28 09:04:51', NULL, 1, 10, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_uicmpgenerator`
--

CREATE TABLE `modx_uicmpgenerator` (
  `id` int(10) UNSIGNED NOT NULL,
  `package` varchar(225) NOT NULL,
  `database` varchar(128) DEFAULT NULL,
  `table_prefix` varchar(255) DEFAULT NULL,
  `scheme` text,
  `properties` mediumtext,
  `build_scheme` int(1) DEFAULT NULL,
  `build_package` int(1) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `last_ran` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_uicmpgenerator`
--

INSERT INTO `modx_uicmpgenerator` (`id`, `package`, `database`, `table_prefix`, `scheme`, `properties`, `build_scheme`, `build_package`, `create_date`, `last_ran`) VALUES
(2, 'pkgorder', 'db_orders_app', 'modx_', '[\n  {\n    \"type\": \"UiCMPShape\",\n    \"id\": \"order\",\n    \"x\": 184,\n    \"y\": 44.99998474121094,\n    \"width\": 120,\n    \"height\": 426,\n    \"alpha\": 1,\n    \"userData\": {},\n    \"cssClass\": \"UiCMPShape\",\n    \"bgColor\": \"#F2F2F2\",\n    \"color\": \"#3998C1\",\n    \"stroke\": 1,\n    \"radius\": 2,\n    \"fields\": [\n      {\n        \"field\": \"id\",\n        \"id\": \"3de444c0-4f48-911d-33ab-61615586418c\",\n        \"key\": false\n      },\n      {\n        \"field\": \"order_uuid\",\n        \"id\": \"d26ff60d-4b4e-326a-5144-419ebebc045a\",\n        \"key\": false\n      },\n      {\n        \"field\": \"product_id\",\n        \"id\": \"f599b634-44b9-495b-0286-52fd27e42349\",\n        \"key\": false\n      },\n      {\n        \"field\": \"order_quantity\",\n        \"id\": \"152d3c04-499a-b5df-e4cd-20b4320c8336\",\n        \"key\": false\n      },\n      {\n        \"field\": \"order_total\",\n        \"id\": \"a24979ac-bf4f-4b3e-85b2-65c8ef9bb1f4\",\n        \"key\": false\n      },\n      {\n        \"field\": \"order_timestamp\",\n        \"id\": \"0f82d3dd-dee6-138d-bb20-1afbba20b1a2\",\n        \"key\": false\n      },\n      {\n        \"field\": \"createdon\",\n        \"id\": \"8cab9d10-91b6-9638-6262-b9afadde4595\",\n        \"key\": false\n      },\n      {\n        \"field\": \"createdby\",\n        \"id\": \"e60c4fca-7bbf-3be4-9598-d9efc0427153\",\n        \"key\": false\n      },\n      {\n        \"field\": \"editedon\",\n        \"id\": \"a13e02b4-bc9a-7245-d84b-ed75792c0d0d\",\n        \"key\": false\n      },\n      {\n        \"field\": \"editedby\",\n        \"id\": \"4ff3ab8f-aa93-34e5-d219-4439f82b231e\",\n        \"key\": false\n      },\n      {\n        \"field\": \"deletedon\",\n        \"id\": \"273a45f6-4579-c140-b974-1e8fe36c4454\",\n        \"key\": false\n      },\n      {\n        \"field\": \"deletedby\",\n        \"id\": \"d51fa6f5-90f6-24bf-1156-a4c8faf6d44d\",\n        \"key\": false\n      },\n      {\n        \"field\": \"publishedon\",\n        \"id\": \"0fe85bd5-6dce-68c6-bd1e-4ffd03d9d8b6\",\n        \"key\": false\n      },\n      {\n        \"field\": \"publishedby\",\n        \"id\": \"20564a37-dcf5-47d5-c6fc-07cb933cf068\",\n        \"key\": false\n      },\n      {\n        \"field\": \"published\",\n        \"id\": \"e9f094d5-c712-cfe0-03dd-1ccd828377d7\",\n        \"key\": false\n      },\n      {\n        \"field\": \"active\",\n        \"id\": \"ecbd32f0-9163-1ce2-b772-144cff142440\",\n        \"key\": false\n      }\n    ],\n    \"extend\": \"\",\n    \"extendCls\": \"\",\n    \"cls\": \"\"\n  },\n  {\n    \"type\": \"UiCMPShape\",\n    \"id\": \"order_detail\",\n    \"x\": 462,\n    \"y\": 43.99998474121094,\n    \"width\": 118,\n    \"height\": 476,\n    \"alpha\": 1,\n    \"userData\": {},\n    \"cssClass\": \"UiCMPShape\",\n    \"bgColor\": \"#F2F2F2\",\n    \"color\": \"#3998C1\",\n    \"stroke\": 1,\n    \"radius\": 2,\n    \"fields\": [\n      {\n        \"field\": \"id\",\n        \"id\": \"b6579430-aa48-92f1-aa9b-24c8b235f504\",\n        \"key\": true\n      },\n      {\n        \"field\": \"order_id\",\n        \"id\": \"f76ee0af-798a-85cc-d76f-9351e404bddd\",\n        \"key\": false\n      },\n      {\n        \"field\": \"oder_detail_uuid\",\n        \"id\": \"dbc9801e-8ac4-3d81-d0da-b56f5ab03968\",\n        \"key\": false\n      },\n      {\n        \"field\": \"order_size\",\n        \"id\": \"ae3c4ab8-f84e-04ef-d945-d3ec0b59dfc1\",\n        \"key\": false\n      },\n      {\n        \"field\": \"order_color\",\n        \"id\": \"0a539140-5339-432c-ebf9-09f1fe6117f7\",\n        \"key\": false\n      },\n      {\n        \"field\": \"order_price\",\n        \"id\": \"e492504d-5eda-f74d-27d7-5532b6a06142\",\n        \"key\": false\n      },\n      {\n        \"field\": \"order_quantity\",\n        \"id\": \"e895c1fe-7e42-d621-9485-82e638fb0c05\",\n        \"key\": false\n      },\n      {\n        \"field\": \"order_subtotal\",\n        \"id\": \"3d982f36-84e2-ab86-e6c1-a886df4cbb9e\",\n        \"key\": false\n      },\n      {\n        \"field\": \"createdon\",\n        \"id\": \"b4ea6d67-be9e-ee01-2980-6f871d6ebd86\",\n        \"key\": false\n      },\n      {\n        \"field\": \"createdby\",\n        \"id\": \"161bda5d-a334-caaa-c103-ffd8f8b9314f\",\n        \"key\": false\n      },\n      {\n        \"field\": \"editedon\",\n        \"id\": \"f78f415c-f841-c358-441a-09651681ce87\",\n        \"key\": false\n      },\n      {\n        \"field\": \"editedby\",\n        \"id\": \"bc4bd328-0544-0f23-ef8b-0a23af0baa7c\",\n        \"key\": false\n      },\n      {\n        \"field\": \"deletedon\",\n        \"id\": \"2267b11b-b5f8-0783-5fd6-c497ce55245f\",\n        \"key\": false\n      },\n      {\n        \"field\": \"deletedby\",\n        \"id\": \"ff804464-fe6b-bfea-aec9-05ed64abe7e6\",\n        \"key\": false\n      },\n      {\n        \"field\": \"publishedon\",\n        \"id\": \"f543fd56-8f9d-9b56-0707-b093ab5a8c68\",\n        \"key\": false\n      },\n      {\n        \"field\": \"publishedby\",\n        \"id\": \"b769c0b1-e0b4-1baa-ff6b-9e642d78b799\",\n        \"key\": false\n      },\n      {\n        \"field\": \"published\",\n        \"id\": \"f066fca7-8d2b-de5d-7844-7f7e56c7aa6e\",\n        \"key\": false\n      },\n      {\n        \"field\": \"active\",\n        \"id\": \"3b47e0e1-6723-6ec9-5b17-8e2d9c2e95ee\",\n        \"key\": false\n      }\n    ],\n    \"extend\": \"\",\n    \"extendCls\": \"\",\n    \"cls\": \"\"\n  },\n  {\n    \"type\": \"UiCMPConnection\",\n    \"id\": \"9011eb4b-38cd-5326-24a9-ed7ffdffbac6\",\n    \"alpha\": 1,\n    \"userData\": {},\n    \"cssClass\": \"UiCMPConnection dotted-line\",\n    \"stroke\": 1,\n    \"color\": \"#3998C1\",\n    \"outlineStroke\": 0,\n    \"outlineColor\": \"none\",\n    \"policy\": \"draw2d.policy.line.OrthogonalSelectionFeedbackPolicy\",\n    \"router\": \"draw2d.layout.connection.InteractiveManhattanConnectionRouter\",\n    \"radius\": 10,\n    \"vertex\": [\n      {\n        \"x\": 303,\n        \"y\": 82.99998474121094\n      },\n      {\n        \"x\": 383,\n        \"y\": 82.99998474121094\n      },\n      {\n        \"x\": 383,\n        \"y\": 106.99998474121094\n      },\n      {\n        \"x\": 463,\n        \"y\": 106.99998474121094\n      }\n    ],\n    \"routingMetaData\": {\n      \"routedByUserInteraction\": false,\n      \"fromDir\": 1,\n      \"toDir\": 3\n    },\n    \"source\": {\n      \"node\": \"order\",\n      \"port\": \"output_id\",\n      \"extend\": \"\",\n      \"cls\": \"\"\n    },\n    \"target\": {\n      \"node\": \"order_detail\",\n      \"port\": \"input_order_id\",\n      \"extend\": \"\",\n      \"cls\": \"\"\n    },\n    \"uicmpg\": {\n      \"relation\": \"2\",\n      \"dependence\": \"1\",\n      \"alias_source\": \"OrderDetail\",\n      \"alias_target\": \"Order\"\n    }\n  }\n]', NULL, NULL, NULL, '2021-06-11 13:56:38', '2021-06-12 13:32:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_users`
--

CREATE TABLE `modx_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `cachepwd` varchar(255) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'modUser',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `remote_key` varchar(191) DEFAULT NULL,
  `remote_data` text,
  `hash_class` varchar(100) NOT NULL DEFAULT 'hashing.modNative',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_stale` text,
  `sudo` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_users`
--

INSERT INTO `modx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`, `createdon`) VALUES
(1, 'admin', '$2y$10$ni8dRpQeA5EyBkgq/Bbw1uDIemdcvTL/N0dabz8IhZguOmZs/tJwO', '', 'modUser', 1, NULL, NULL, 'hashing.modNative', '4aa76dd579260069866699d09dc8bdad', 1, 'a:2:{i:0;s:3:\"mgr\";i:1;s:3:\"web\";}', 1, 1623159278),
(2, 'editor@oneberry.pe', '$2y$10$zCE1wC8uWJGzV0k69Sk2Wu28i2YDV9pjpqkjwXg0B9tSxY3n1aR8m', '', 'modUser', 1, NULL, NULL, 'hashing.modNative', 'bb40e7216b5bd785c85763ffeff3bc14', 0, 'a:0:{}', 0, 1623537182);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_user_attributes`
--

CREATE TABLE `modx_user_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `internalKey` int(10) NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `country` varchar(191) NOT NULL DEFAULT '',
  `city` varchar(191) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(191) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(191) NOT NULL DEFAULT '',
  `extended` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_user_attributes`
--

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES
(1, 1, 'Default Admin User', 'admin@localhost.com', '', '', 0, 0, 0, 12, 1623547161, 1623548099, 0, '07e67c159097484b75651dab4e917576', 0, 0, '', '', '', '', '', '', '', '', '', '[]'),
(2, 2, 'Wilmer', 'editor@oneberry.pe', '', '', 0, 0, 0, 11, 1623547179, 1623548036, 0, '22d187232cdee72900fbd7a199fb336b', 0, 0, '', '', '', '', '', '', '', '', '', '[]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_user_group_roles`
--

CREATE TABLE `modx_user_group_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_user_group_roles`
--

INSERT INTO `modx_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_user_group_settings`
--

CREATE TABLE `modx_user_group_settings` (
  `group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL,
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_user_messages`
--

CREATE TABLE `modx_user_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(191) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `date_sent` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_user_settings`
--

CREATE TABLE `modx_user_settings` (
  `user` int(11) NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modx_workspaces`
--

CREATE TABLE `modx_workspaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `path` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `attributes` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modx_workspaces`
--

INSERT INTO `modx_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES
(1, 'Default MODX workspace', '{core_path}', '2021-06-08 15:34:27', 1, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indices de la tabla `modx_access_actions`
--
ALTER TABLE `modx_access_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indices de la tabla `modx_access_category`
--
ALTER TABLE `modx_access_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indices de la tabla `modx_access_context`
--
ALTER TABLE `modx_access_context`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indices de la tabla `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indices de la tabla `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indices de la tabla `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indices de la tabla `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indices de la tabla `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template` (`template`),
  ADD KEY `name` (`name`);

--
-- Indices de la tabla `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `class` (`class`),
  ADD KEY `template` (`template`);

--
-- Indices de la tabla `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indices de la tabla `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`,`target`,`principal`,`authority`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indices de la tabla `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indices de la tabla `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `set` (`set`),
  ADD KEY `action` (`action`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`),
  ADD KEY `for_parent` (`for_parent`),
  ADD KEY `rank` (`rank`);

--
-- Indices de la tabla `modx_actions`
--
ALTER TABLE `modx_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `controller` (`controller`);

--
-- Indices de la tabla `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action` (`action`),
  ADD KEY `type` (`type`),
  ADD KEY `tab` (`tab`);

--
-- Indices de la tabla `modx_active_users`
--
ALTER TABLE `modx_active_users`
  ADD PRIMARY KEY (`internalKey`);

--
-- Indices de la tabla `modx_categories`
--
ALTER TABLE `modx_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`parent`,`category`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`);

--
-- Indices de la tabla `modx_categories_closure`
--
ALTER TABLE `modx_categories_closure`
  ADD PRIMARY KEY (`ancestor`,`descendant`);

--
-- Indices de la tabla `modx_class_map`
--
ALTER TABLE `modx_class_map`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class` (`class`),
  ADD KEY `parent_class` (`parent_class`),
  ADD KEY `name_field` (`name_field`);

--
-- Indices de la tabla `modx_cmpgenerator`
--
ALTER TABLE `modx_cmpgenerator`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modx_content_type`
--
ALTER TABLE `modx_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `modx_context`
--
ALTER TABLE `modx_context`
  ADD PRIMARY KEY (`key`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`);

--
-- Indices de la tabla `modx_context_resource`
--
ALTER TABLE `modx_context_resource`
  ADD PRIMARY KEY (`context_key`,`resource`);

--
-- Indices de la tabla `modx_context_setting`
--
ALTER TABLE `modx_context_setting`
  ADD PRIMARY KEY (`context_key`,`key`);

--
-- Indices de la tabla `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `hide_trees` (`hide_trees`);

--
-- Indices de la tabla `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `lexicon` (`lexicon`);

--
-- Indices de la tabla `modx_dashboard_widget_placement`
--
ALTER TABLE `modx_dashboard_widget_placement`
  ADD PRIMARY KEY (`dashboard`,`widget`),
  ADD KEY `rank` (`rank`);

--
-- Indices de la tabla `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_group` (`document_group`),
  ADD KEY `document` (`document`);

--
-- Indices de la tabla `modx_element_property_sets`
--
ALTER TABLE `modx_element_property_sets`
  ADD PRIMARY KEY (`element`,`element_class`,`property_set`);

--
-- Indices de la tabla `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `name` (`name`);

--
-- Indices de la tabla `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`),
  ADD KEY `active` (`active`);

--
-- Indices de la tabla `modx_fc_profiles_usergroups`
--
ALTER TABLE `modx_fc_profiles_usergroups`
  ADD PRIMARY KEY (`usergroup`,`profile`);

--
-- Indices de la tabla `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile` (`profile`),
  ADD KEY `action` (`action`),
  ADD KEY `active` (`active`),
  ADD KEY `template` (`template`);

--
-- Indices de la tabla `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `topic` (`topic`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `language` (`language`);

--
-- Indices de la tabla `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_occurred` (`user`,`occurred`);

--
-- Indices de la tabla `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `is_stream` (`is_stream`);

--
-- Indices de la tabla `modx_media_sources_contexts`
--
ALTER TABLE `modx_media_sources_contexts`
  ADD PRIMARY KEY (`source`,`context_key`);

--
-- Indices de la tabla `modx_media_sources_elements`
--
ALTER TABLE `modx_media_sources_elements`
  ADD PRIMARY KEY (`source`,`object`,`object_class`,`context_key`);

--
-- Indices de la tabla `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`),
  ADD KEY `dashboard` (`dashboard`);

--
-- Indices de la tabla `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `rank` (`rank`);

--
-- Indices de la tabla `modx_menus`
--
ALTER TABLE `modx_menus`
  ADD PRIMARY KEY (`text`),
  ADD KEY `parent` (`parent`),
  ADD KEY `action` (`action`),
  ADD KEY `namespace` (`namespace`);

--
-- Indices de la tabla `modx_migx_configs`
--
ALTER TABLE `modx_migx_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Indices de la tabla `modx_migx_config_elements`
--
ALTER TABLE `modx_migx_config_elements`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modx_migx_elements`
--
ALTER TABLE `modx_migx_elements`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modx_migx_formtabs`
--
ALTER TABLE `modx_migx_formtabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Indices de la tabla `modx_migx_formtab_fields`
--
ALTER TABLE `modx_migx_formtab_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`),
  ADD KEY `formtab_id` (`formtab_id`),
  ADD KEY `field` (`field`),
  ADD KEY `pos` (`pos`);

--
-- Indices de la tabla `modx_namespaces`
--
ALTER TABLE `modx_namespaces`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `modx_order`
--
ALTER TABLE `modx_order`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modx_order_detail`
--
ALTER TABLE `modx_order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ORDER_ORDER_DETAIL_idx` (`order_id`);

--
-- Indices de la tabla `modx_property_set`
--
ALTER TABLE `modx_property_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`);

--
-- Indices de la tabla `modx_register_messages`
--
ALTER TABLE `modx_register_messages`
  ADD PRIMARY KEY (`topic`,`id`),
  ADD KEY `created` (`created`),
  ADD KEY `valid` (`valid`),
  ADD KEY `accessed` (`accessed`),
  ADD KEY `accesses` (`accesses`),
  ADD KEY `expires` (`expires`);

--
-- Indices de la tabla `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue` (`queue`),
  ADD KEY `name` (`name`);

--
-- Indices de la tabla `modx_session`
--
ALTER TABLE `modx_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`);

--
-- Indices de la tabla `modx_site_content`
--
ALTER TABLE `modx_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `published` (`published`),
  ADD KEY `pub_date` (`pub_date`),
  ADD KEY `unpub_date` (`unpub_date`),
  ADD KEY `parent` (`parent`),
  ADD KEY `isfolder` (`isfolder`),
  ADD KEY `template` (`template`),
  ADD KEY `menuindex` (`menuindex`),
  ADD KEY `searchable` (`searchable`),
  ADD KEY `cacheable` (`cacheable`),
  ADD KEY `hidemenu` (`hidemenu`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `context_key` (`context_key`),
  ADD KEY `uri` (`uri`(191)),
  ADD KEY `uri_override` (`uri_override`),
  ADD KEY `hide_children_in_tree` (`hide_children_in_tree`),
  ADD KEY `show_in_tree` (`show_in_tree`),
  ADD KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`);
ALTER TABLE `modx_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`);

--
-- Indices de la tabla `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Indices de la tabla `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `static` (`static`);

--
-- Indices de la tabla `modx_site_plugin_events`
--
ALTER TABLE `modx_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`event`),
  ADD KEY `priority` (`priority`);

--
-- Indices de la tabla `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `moduleguid` (`moduleguid`),
  ADD KEY `static` (`static`);

--
-- Indices de la tabla `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `templatename` (`templatename`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Indices de la tabla `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `rank` (`rank`),
  ADD KEY `static` (`static`);

--
-- Indices de la tabla `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tmplvar_template` (`tmplvarid`,`documentgroup`);

--
-- Indices de la tabla `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tv_cnt` (`tmplvarid`,`contentid`),
  ADD KEY `tmplvarid` (`tmplvarid`),
  ADD KEY `contentid` (`contentid`);

--
-- Indices de la tabla `modx_site_tmplvar_templates`
--
ALTER TABLE `modx_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Indices de la tabla `modx_system_eventnames`
--
ALTER TABLE `modx_system_eventnames`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `modx_system_settings`
--
ALTER TABLE `modx_system_settings`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `modx_transport_packages`
--
ALTER TABLE `modx_transport_packages`
  ADD PRIMARY KEY (`signature`),
  ADD KEY `workspace` (`workspace`),
  ADD KEY `provider` (`provider`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `package_name` (`package_name`),
  ADD KEY `version_major` (`version_major`),
  ADD KEY `version_minor` (`version_minor`),
  ADD KEY `version_patch` (`version_patch`),
  ADD KEY `release` (`release`),
  ADD KEY `release_index` (`release_index`);

--
-- Indices de la tabla `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `api_key` (`api_key`),
  ADD KEY `username` (`username`),
  ADD KEY `active` (`active`),
  ADD KEY `priority` (`priority`);

--
-- Indices de la tabla `modx_uicmpgenerator`
--
ALTER TABLE `modx_uicmpgenerator`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modx_users`
--
ALTER TABLE `modx_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `remote_key` (`remote_key`),
  ADD KEY `primary_group` (`primary_group`);

--
-- Indices de la tabla `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `internalKey` (`internalKey`);

--
-- Indices de la tabla `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `authority` (`authority`);

--
-- Indices de la tabla `modx_user_group_settings`
--
ALTER TABLE `modx_user_group_settings`
  ADD PRIMARY KEY (`group`,`key`);

--
-- Indices de la tabla `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modx_user_settings`
--
ALTER TABLE `modx_user_settings`
  ADD PRIMARY KEY (`user`,`key`);

--
-- Indices de la tabla `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modx_access_actions`
--
ALTER TABLE `modx_access_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modx_access_category`
--
ALTER TABLE `modx_access_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modx_access_context`
--
ALTER TABLE `modx_access_context`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT de la tabla `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modx_actions`
--
ALTER TABLE `modx_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `modx_categories`
--
ALTER TABLE `modx_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `modx_class_map`
--
ALTER TABLE `modx_class_map`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `modx_cmpgenerator`
--
ALTER TABLE `modx_cmpgenerator`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `modx_content_type`
--
ALTER TABLE `modx_content_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=513;

--
-- AUTO_INCREMENT de la tabla `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `modx_migx_configs`
--
ALTER TABLE `modx_migx_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `modx_migx_config_elements`
--
ALTER TABLE `modx_migx_config_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modx_migx_elements`
--
ALTER TABLE `modx_migx_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modx_migx_formtabs`
--
ALTER TABLE `modx_migx_formtabs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `modx_migx_formtab_fields`
--
ALTER TABLE `modx_migx_formtab_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `modx_order`
--
ALTER TABLE `modx_order`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `modx_order_detail`
--
ALTER TABLE `modx_order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `modx_property_set`
--
ALTER TABLE `modx_property_set`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `modx_site_content`
--
ALTER TABLE `modx_site_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `modx_uicmpgenerator`
--
ALTER TABLE `modx_uicmpgenerator`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `modx_users`
--
ALTER TABLE `modx_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `modx_order_detail`
--
ALTER TABLE `modx_order_detail`
  ADD CONSTRAINT `FK_ORDER_ORDER_DETAIL` FOREIGN KEY (`order_id`) REFERENCES `modx_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
