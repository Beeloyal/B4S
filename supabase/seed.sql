SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.7 (Ubuntu 15.7-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', 'ab8eae27-86ac-45d0-9c4d-bb0e249cd7b9', '{"action":"user_confirmation_requested","actor_id":"57f5c367-ea25-499b-bed0-33bf233aa012","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-07-08 05:51:24.83128+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fb834898-c2f0-4180-8847-3e511cee9403', '{"action":"user_signedup","actor_id":"57f5c367-ea25-499b-bed0-33bf233aa012","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-07-08 05:51:34.87846+00', ''),
	('00000000-0000-0000-0000-000000000000', '9da9f6c1-65bb-4e65-bcc1-61e92ef5feaa', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"","user_id":"57f5c367-ea25-499b-bed0-33bf233aa012","user_phone":"48666978350"}}', '2024-07-08 06:00:28.425095+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd0e814c9-6d37-4f2c-bb61-62186d32ef58', '{"action":"user_confirmation_requested","actor_id":"4ef237ed-38c5-487d-b789-9d25a13e7ccf","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-07-08 06:00:38.181969+00', ''),
	('00000000-0000-0000-0000-000000000000', '96d04593-2520-4498-9159-439cedd95eac', '{"action":"user_signedup","actor_id":"4ef237ed-38c5-487d-b789-9d25a13e7ccf","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-07-08 06:00:48.283721+00', ''),
	('00000000-0000-0000-0000-000000000000', '25c34654-4488-4426-90dd-45631936c3d7', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"","user_id":"4ef237ed-38c5-487d-b789-9d25a13e7ccf","user_phone":"48666978350"}}', '2024-07-08 06:03:49.866456+00', ''),
	('00000000-0000-0000-0000-000000000000', '84f0426f-5925-45f2-852b-2ef870c120e8', '{"action":"user_confirmation_requested","actor_id":"cb8d71ec-a262-45c0-9ce9-ccae86fc62fd","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-07-08 06:09:20.886944+00', ''),
	('00000000-0000-0000-0000-000000000000', '70d8cf6b-e191-4e3e-afbd-9785e8579668', '{"action":"user_signedup","actor_id":"cb8d71ec-a262-45c0-9ce9-ccae86fc62fd","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-07-08 06:09:33.292152+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e36fcefe-e211-4016-8c4b-422e86a4a01a', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"","user_id":"cb8d71ec-a262-45c0-9ce9-ccae86fc62fd","user_phone":"48666978350"}}', '2024-07-08 15:04:37.801005+00', ''),
	('00000000-0000-0000-0000-000000000000', '92c2680b-57a9-495a-9ff1-42f13d00b898', '{"action":"user_confirmation_requested","actor_id":"ad57639c-d59b-45b1-8e67-1610f6453d75","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-07-11 07:04:23.791666+00', ''),
	('00000000-0000-0000-0000-000000000000', '99a0dd37-4928-4d85-8c95-f799d3dab715', '{"action":"user_signedup","actor_id":"ad57639c-d59b-45b1-8e67-1610f6453d75","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-07-11 07:04:34.902337+00', ''),
	('00000000-0000-0000-0000-000000000000', 'def509c8-94dc-41b0-bf43-5baed3725852', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"","user_id":"ad57639c-d59b-45b1-8e67-1610f6453d75","user_phone":"48666978350"}}', '2024-07-11 07:05:11.388533+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ca6935f9-3ead-4531-9e67-7654a6586e34', '{"action":"user_confirmation_requested","actor_id":"fec4d388-f279-4972-976a-e91e75ba5d74","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-07-11 08:23:43.000842+00', ''),
	('00000000-0000-0000-0000-000000000000', '1ace03c1-012c-4c80-b18a-8f848ab8a535', '{"action":"user_signedup","actor_id":"fec4d388-f279-4972-976a-e91e75ba5d74","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-07-11 08:23:49.824665+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c6985092-6ac9-44e8-b839-7aba058351d7', '{"action":"token_refreshed","actor_id":"fec4d388-f279-4972-976a-e91e75ba5d74","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-11 09:23:15.937556+00', ''),
	('00000000-0000-0000-0000-000000000000', '25ba0f69-57be-45b7-859c-325fe5aa30d9', '{"action":"token_revoked","actor_id":"fec4d388-f279-4972-976a-e91e75ba5d74","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-11 09:23:15.938743+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ed43e98f-49c9-48db-826e-371dfc297b66', '{"action":"user_recovery_requested","actor_id":"fec4d388-f279-4972-976a-e91e75ba5d74","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-07-11 09:23:50.923193+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c89643ba-92f9-4cba-8d34-873f658bb72e', '{"action":"user_signedup","actor_id":"fec4d388-f279-4972-976a-e91e75ba5d74","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-07-11 09:24:02.250198+00', ''),
	('00000000-0000-0000-0000-000000000000', '9b366530-14f2-4759-89c3-ad6e5603a300', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"","user_id":"fec4d388-f279-4972-976a-e91e75ba5d74","user_phone":"48666978350"}}', '2024-07-11 09:28:41.816374+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a2ce9707-a7b8-4552-bae1-69c3b9401a78', '{"action":"user_confirmation_requested","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-07-11 09:28:44.201558+00', ''),
	('00000000-0000-0000-0000-000000000000', '10b97a3d-d4d7-45a5-b8fd-ddfa07878760', '{"action":"user_signedup","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-07-11 09:28:54.77545+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f7d6c25e-1560-4829-a099-5fabec883af2', '{"action":"user_recovery_requested","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-07-12 09:20:24.574494+00', ''),
	('00000000-0000-0000-0000-000000000000', '10feeeb2-8b26-4b1a-b047-3411a625393a', '{"action":"user_signedup","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-07-12 09:20:28.044762+00', ''),
	('00000000-0000-0000-0000-000000000000', '26115383-97a6-4a6a-910e-6396c6694a64', '{"action":"token_refreshed","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-12 11:37:44.461555+00', ''),
	('00000000-0000-0000-0000-000000000000', '9bf24894-7d67-49c2-806c-154f22213531', '{"action":"token_revoked","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-12 11:37:44.463214+00', ''),
	('00000000-0000-0000-0000-000000000000', '9bf66f8a-6e5b-4744-9ae2-52ff7a46b901', '{"action":"token_refreshed","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-13 18:00:32.981322+00', ''),
	('00000000-0000-0000-0000-000000000000', '2f224335-1abf-45d3-b892-c72acfd83fcf', '{"action":"token_revoked","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-13 18:00:32.985184+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e3746e61-d017-407b-9533-6c993c9a236e', '{"action":"user_confirmation_requested","actor_id":"747f38b6-92e3-4ead-ace1-7336fbe04343","actor_username":"48123456789","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-07-16 08:43:42.31916+00', ''),
	('00000000-0000-0000-0000-000000000000', '71d19683-3556-4fb9-af55-36a6319f804b', '{"action":"user_signedup","actor_id":"747f38b6-92e3-4ead-ace1-7336fbe04343","actor_username":"48123456789","actor_via_sso":false,"log_type":"team"}', '2024-07-16 08:43:51.209243+00', ''),
	('00000000-0000-0000-0000-000000000000', '8792b917-8e90-4fac-8f54-65b16f278f9c', '{"action":"token_refreshed","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-16 11:28:16.448336+00', ''),
	('00000000-0000-0000-0000-000000000000', '51e786ab-52ab-4b67-98ab-ca6aedc39d66', '{"action":"token_revoked","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-16 11:28:16.451865+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ce110da5-284d-495e-b7da-3ce6f7b44cc4', '{"action":"token_refreshed","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-16 14:33:49.842104+00', ''),
	('00000000-0000-0000-0000-000000000000', '96880de4-b7eb-4b8f-9116-9ac6f8d397a5', '{"action":"token_revoked","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-16 14:33:49.84393+00', ''),
	('00000000-0000-0000-0000-000000000000', '40875634-c7c2-4e38-8388-91f32b115580', '{"action":"token_refreshed","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-16 15:33:17.703903+00', ''),
	('00000000-0000-0000-0000-000000000000', '43a034bd-c2f9-4514-ab0b-91fc9008cb7d', '{"action":"token_revoked","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-16 15:33:17.705205+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a551b04e-9485-415f-8e61-90cdfcc9f145', '{"action":"user_recovery_requested","actor_id":"747f38b6-92e3-4ead-ace1-7336fbe04343","actor_username":"48123456789","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-07-18 06:37:11.574361+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ac1d37c2-211d-48ff-8ba8-d62fbfae89a8', '{"action":"user_signedup","actor_id":"747f38b6-92e3-4ead-ace1-7336fbe04343","actor_username":"48123456789","actor_via_sso":false,"log_type":"team"}', '2024-07-18 06:37:19.034338+00', ''),
	('00000000-0000-0000-0000-000000000000', '9f49c6a1-06c3-4f4f-a981-c49fa62ba479', '{"action":"token_refreshed","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-18 08:38:27.355005+00', ''),
	('00000000-0000-0000-0000-000000000000', '1cfd122c-39ef-4460-8d45-83ce76d8ee46', '{"action":"token_revoked","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-18 08:38:27.35635+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd33657a3-2618-4b2c-b00e-e29ff83171f5', '{"action":"user_recovery_requested","actor_id":"747f38b6-92e3-4ead-ace1-7336fbe04343","actor_username":"48123456789","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-07-18 13:14:26.143566+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd75ae903-4083-4213-a708-9102f27495f9', '{"action":"user_signedup","actor_id":"747f38b6-92e3-4ead-ace1-7336fbe04343","actor_username":"48123456789","actor_via_sso":false,"log_type":"team"}', '2024-07-18 13:14:35.751051+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ee64b817-c75f-47ab-8198-970bb186a832', '{"action":"token_refreshed","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-20 10:16:28.632088+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fa3eff84-a8f1-4d4c-ab5a-c6017ac0cab4', '{"action":"token_revoked","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-20 10:16:28.640032+00', ''),
	('00000000-0000-0000-0000-000000000000', '98fbbf2d-2950-4847-8860-3f705a83eef4', '{"action":"user_recovery_requested","actor_id":"747f38b6-92e3-4ead-ace1-7336fbe04343","actor_username":"48123456789","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-07-21 12:17:54.120336+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eea0f8ec-171e-4fe3-af63-aa43aabcf474', '{"action":"user_signedup","actor_id":"747f38b6-92e3-4ead-ace1-7336fbe04343","actor_username":"48123456789","actor_via_sso":false,"log_type":"team"}', '2024-07-21 12:18:04.360921+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c657a4b4-5a80-4778-908c-caf7e4fb79a6', '{"action":"user_recovery_requested","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-07-22 08:39:38.916045+00', ''),
	('00000000-0000-0000-0000-000000000000', 'df2653da-724d-4e90-ae3a-d6a796276043', '{"action":"user_signedup","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-07-22 08:39:46.962277+00', ''),
	('00000000-0000-0000-0000-000000000000', '273f2074-e4c3-4f30-8ca9-060d8e9b2408', '{"action":"user_confirmation_requested","actor_id":"be539f94-7926-44f7-9e5a-a3858412c748","actor_username":"48510386946","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-07-22 08:43:56.4541+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f6d449de-2778-4dc2-ba9b-55ebef2d1597', '{"action":"user_signedup","actor_id":"be539f94-7926-44f7-9e5a-a3858412c748","actor_username":"48510386946","actor_via_sso":false,"log_type":"team"}', '2024-07-22 08:44:02.399626+00', ''),
	('00000000-0000-0000-0000-000000000000', '6411181a-df27-40eb-8c6b-7567331440f0', '{"action":"user_confirmation_requested","actor_id":"6cb2cc6c-66ef-4723-8b77-d3fe9d4f454a","actor_username":"48570820237","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-07-22 09:29:21.132703+00', ''),
	('00000000-0000-0000-0000-000000000000', '63f55a9d-4fb7-431a-9430-21e5e174d69f', '{"action":"user_signedup","actor_id":"6cb2cc6c-66ef-4723-8b77-d3fe9d4f454a","actor_username":"48570820237","actor_via_sso":false,"log_type":"team"}', '2024-07-22 09:29:27.693275+00', ''),
	('00000000-0000-0000-0000-000000000000', '5d96676c-92fa-4f07-8a6a-525fea10a969', '{"action":"token_refreshed","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-22 10:39:34.586073+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd6357946-8d2a-4fc8-b61c-0088cd3a9be7', '{"action":"token_revoked","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-22 10:39:34.58788+00', ''),
	('00000000-0000-0000-0000-000000000000', '3932efce-ffeb-4826-b6e9-0e6f21e50743', '{"action":"user_confirmation_requested","actor_id":"6fd6c378-83a6-49d9-bf98-c895ddcfa80e","actor_username":"48739219576","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-07-22 10:56:22.503+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e05a483d-c4ca-42ec-a483-67a86d74216c', '{"action":"user_signedup","actor_id":"6fd6c378-83a6-49d9-bf98-c895ddcfa80e","actor_username":"48739219576","actor_via_sso":false,"log_type":"team"}', '2024-07-22 10:56:28.550537+00', ''),
	('00000000-0000-0000-0000-000000000000', '97549a91-0419-4f4f-bae6-415aac3aab42', '{"action":"token_refreshed","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-22 11:57:00.233203+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e13ff5fa-8708-429b-98f1-3017dc7639d2', '{"action":"token_revoked","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-22 11:57:00.235239+00', ''),
	('00000000-0000-0000-0000-000000000000', '69744f6c-3845-471e-9afd-ada312524640', '{"action":"token_refreshed","actor_id":"be539f94-7926-44f7-9e5a-a3858412c748","actor_username":"48510386946","actor_via_sso":false,"log_type":"token"}', '2024-07-22 12:38:31.919924+00', ''),
	('00000000-0000-0000-0000-000000000000', '91deaecd-db90-442b-bb0b-99fbe1bcffc3', '{"action":"token_revoked","actor_id":"be539f94-7926-44f7-9e5a-a3858412c748","actor_username":"48510386946","actor_via_sso":false,"log_type":"token"}', '2024-07-22 12:38:31.9221+00', ''),
	('00000000-0000-0000-0000-000000000000', '9d5d0308-8f60-46cc-b2b2-a4c971d96d2a', '{"action":"token_refreshed","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-22 13:13:59.791188+00', ''),
	('00000000-0000-0000-0000-000000000000', '25b3d3d2-582c-4a9c-bb3e-9104cd16e9d3', '{"action":"token_revoked","actor_id":"e4d71cef-c52e-45ca-b731-7b77319b10ad","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-22 13:13:59.792989+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a1b3f6b3-94a7-4cd2-ba38-e640b558e450', '{"action":"user_confirmation_requested","actor_id":"00a91556-33a5-4acc-a69e-200c5ffc4634","actor_username":"48732865958","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-07-22 20:55:23.301373+00', ''),
	('00000000-0000-0000-0000-000000000000', '5f44ef8c-8248-4a0d-aead-e2674bb1b450', '{"action":"user_signedup","actor_id":"00a91556-33a5-4acc-a69e-200c5ffc4634","actor_username":"48732865958","actor_via_sso":false,"log_type":"team"}', '2024-07-22 20:55:50.825457+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e73dcf4b-7229-4647-95d9-fda6d5abb7bd', '{"action":"user_confirmation_requested","actor_id":"8bcd290a-a690-452d-bc55-a5c9d8635297","actor_username":"48602228546","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-07-23 06:03:11.420751+00', ''),
	('00000000-0000-0000-0000-000000000000', '2d30022c-7eae-4179-a4cb-3cc1ec9b1db1', '{"action":"user_signedup","actor_id":"8bcd290a-a690-452d-bc55-a5c9d8635297","actor_username":"48602228546","actor_via_sso":false,"log_type":"team"}', '2024-07-23 06:03:20.783456+00', ''),
	('00000000-0000-0000-0000-000000000000', '68235a13-4dd4-4c30-ac74-a0dd3f2f6fcc', '{"action":"token_refreshed","actor_id":"6fd6c378-83a6-49d9-bf98-c895ddcfa80e","actor_username":"48739219576","actor_via_sso":false,"log_type":"token"}', '2024-07-23 06:37:52.162852+00', ''),
	('00000000-0000-0000-0000-000000000000', '71dc4862-6b00-46c1-80b2-9486507e7d74', '{"action":"token_revoked","actor_id":"6fd6c378-83a6-49d9-bf98-c895ddcfa80e","actor_username":"48739219576","actor_via_sso":false,"log_type":"token"}', '2024-07-23 06:37:52.168302+00', ''),
	('00000000-0000-0000-0000-000000000000', '58973d64-450a-4aa5-a6a2-fd99bf7e3b20', '{"action":"user_confirmation_requested","actor_id":"fa1fa2ac-9501-4124-a247-fc7d1abebad5","actor_username":"48789086593","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-07-23 18:54:20.624326+00', ''),
	('00000000-0000-0000-0000-000000000000', '17371c62-c54e-4a54-a29a-4018b8e6eb3e', '{"action":"user_signedup","actor_id":"fa1fa2ac-9501-4124-a247-fc7d1abebad5","actor_username":"48789086593","actor_via_sso":false,"log_type":"team"}', '2024-07-23 18:54:26.053683+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd671183e-40ec-4d06-8a59-aa6e3a0a2d6a', '{"action":"token_refreshed","actor_id":"00a91556-33a5-4acc-a69e-200c5ffc4634","actor_username":"48732865958","actor_via_sso":false,"log_type":"token"}', '2024-07-23 19:52:22.591812+00', ''),
	('00000000-0000-0000-0000-000000000000', '5b5a81cb-a443-41a4-97f4-f14e0141b118', '{"action":"token_revoked","actor_id":"00a91556-33a5-4acc-a69e-200c5ffc4634","actor_username":"48732865958","actor_via_sso":false,"log_type":"token"}', '2024-07-23 19:52:22.593277+00', ''),
	('00000000-0000-0000-0000-000000000000', '40f0b477-35e2-481b-a521-3c3df114c3ce', '{"action":"token_refreshed","actor_id":"fa1fa2ac-9501-4124-a247-fc7d1abebad5","actor_username":"48789086593","actor_via_sso":false,"log_type":"token"}', '2024-07-23 20:30:37.898519+00', ''),
	('00000000-0000-0000-0000-000000000000', '585e3361-2e3e-4e4f-b555-1b5e81979489', '{"action":"token_revoked","actor_id":"fa1fa2ac-9501-4124-a247-fc7d1abebad5","actor_username":"48789086593","actor_via_sso":false,"log_type":"token"}', '2024-07-23 20:30:37.899977+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b189d2c8-e6b8-4a6f-b291-90cb0ebbffff', '{"action":"user_confirmation_requested","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-07-30 18:50:16.305155+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a5174a81-e948-47d4-9877-db7f77f90e33', '{"action":"user_signedup","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-07-30 18:50:25.326175+00', ''),
	('00000000-0000-0000-0000-000000000000', '98f4d16a-52ef-4ebf-8f34-6b42e69ce24b', '{"action":"token_refreshed","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-31 04:46:05.332103+00', ''),
	('00000000-0000-0000-0000-000000000000', '61ac345f-9521-4229-8998-d8702ddb7e92', '{"action":"token_revoked","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-31 04:46:05.333413+00', ''),
	('00000000-0000-0000-0000-000000000000', '6b9c1e0c-0306-46c6-adf1-91593d1ae362', '{"action":"token_refreshed","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-08-18 07:25:34.355156+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f0a56c69-5696-421b-8363-f07dfb30a0af', '{"action":"token_revoked","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-08-18 07:25:34.374079+00', ''),
	('00000000-0000-0000-0000-000000000000', '2544cf87-194a-4bfd-8017-14924c386ebc', '{"action":"token_refreshed","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-08-27 11:46:30.043248+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bef1d795-dcd9-487f-ad3b-e271d2b1b78a', '{"action":"user_confirmation_requested","actor_id":"864ff8e3-50bd-4653-a164-0053c4c90d4a","actor_username":"48123456789","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-07-31 05:18:52.494192+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e587ebdd-5599-4657-a582-205bdaf1f89b', '{"action":"user_signedup","actor_id":"864ff8e3-50bd-4653-a164-0053c4c90d4a","actor_username":"48123456789","actor_via_sso":false,"log_type":"team"}', '2024-07-31 05:18:56.062933+00', ''),
	('00000000-0000-0000-0000-000000000000', '9a05bc85-8590-4830-b12a-4f18bf56e82d', '{"action":"user_recovery_requested","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-07-31 06:08:43.191749+00', ''),
	('00000000-0000-0000-0000-000000000000', '511caafe-5b6a-4dc1-8ad8-089b231bde94', '{"action":"user_signedup","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-07-31 06:08:50.971555+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c8c98e71-6e27-4a69-bce2-6745ea633db7', '{"action":"token_refreshed","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-31 12:58:51.656983+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e48a16ab-698b-4069-bc79-ac08ac1f8366', '{"action":"token_revoked","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-07-31 12:58:51.668144+00', ''),
	('00000000-0000-0000-0000-000000000000', '16fc201d-f38f-4a83-a5b5-c59ba7dbcd1b', '{"action":"user_recovery_requested","actor_id":"864ff8e3-50bd-4653-a164-0053c4c90d4a","actor_username":"48123456789","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-08-01 16:39:40.165964+00', ''),
	('00000000-0000-0000-0000-000000000000', '3fd65ade-976e-432a-ba36-e1dc4784155a', '{"action":"user_signedup","actor_id":"864ff8e3-50bd-4653-a164-0053c4c90d4a","actor_username":"48123456789","actor_via_sso":false,"log_type":"team"}', '2024-08-01 16:39:49.574291+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ae9baceb-de7d-420e-a6c1-94e2bf3a2fbf', '{"action":"logout","actor_id":"864ff8e3-50bd-4653-a164-0053c4c90d4a","actor_username":"48123456789","actor_via_sso":false,"log_type":"account"}', '2024-08-01 16:39:57.454072+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b14f8c7-afd1-4cca-acfe-728f23354d00', '{"action":"user_recovery_requested","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-08-01 16:40:04.306683+00', ''),
	('00000000-0000-0000-0000-000000000000', '2ead0df1-3d3d-4ecb-981c-aef99447d0b8', '{"action":"user_signedup","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-08-01 16:40:08.935665+00', ''),
	('00000000-0000-0000-0000-000000000000', '356c7c68-18ce-4897-a636-f048fb367a57', '{"action":"logout","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"account"}', '2024-08-01 16:40:13.963608+00', ''),
	('00000000-0000-0000-0000-000000000000', '153f1483-ca65-4e01-885b-7287df0be85c', '{"action":"token_revoked","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-08-27 11:46:30.063841+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a713bea1-2d69-4779-b9c6-7e4f3430d754', '{"action":"logout","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"account"}', '2024-08-27 11:46:35.464999+00', ''),
	('00000000-0000-0000-0000-000000000000', '7e84a384-da2e-4236-bb00-dc6c571b3128', '{"action":"user_recovery_requested","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-08-27 11:46:40.519314+00', ''),
	('00000000-0000-0000-0000-000000000000', '589f71df-0132-4156-99b6-0c5384dc596f', '{"action":"user_signedup","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-08-27 11:46:44.159706+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd957bc64-1c92-4e43-9d75-f162201c808b', '{"action":"logout","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"account"}', '2024-09-19 08:26:47.939205+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b1080854-6f9c-4173-8d09-b62575725fda', '{"action":"token_refreshed","actor_id":"df3d971d-ee42-4103-a577-a6913d42129e","actor_username":"48111111111","actor_via_sso":false,"log_type":"token"}', '2024-08-22 09:15:57.293173+00', ''),
	('00000000-0000-0000-0000-000000000000', '4fa64a98-0180-4fe5-a7a1-676df392fb13', '{"action":"token_revoked","actor_id":"df3d971d-ee42-4103-a577-a6913d42129e","actor_username":"48111111111","actor_via_sso":false,"log_type":"token"}', '2024-08-22 09:15:57.310048+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bc872134-6c67-430a-9459-3fea5f03d2f6', '{"action":"user_recovery_requested","actor_id":"864ff8e3-50bd-4653-a164-0053c4c90d4a","actor_username":"48123456789","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-08-01 17:00:34.934827+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b182ee28-53fe-4ea7-b36a-f12f206218b8', '{"action":"user_recovery_requested","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-08-01 17:01:12.436108+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b9d54df8-0227-4003-b05a-58c6df2e35e3', '{"action":"user_recovery_requested","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-08-01 17:02:24.628189+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fee92bab-bb8f-4f1c-a983-43ff3f7092c1', '{"action":"user_signedup","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-08-01 17:02:47.343022+00', ''),
	('00000000-0000-0000-0000-000000000000', 'df6a7d16-d8c7-438e-abaa-0e015fcc4d38', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-20 05:05:12.54501+00', ''),
	('00000000-0000-0000-0000-000000000000', '50a789c4-b6c7-430c-8910-9edcdf2537c9', '{"action":"user_recovery_requested","actor_id":"864ff8e3-50bd-4653-a164-0053c4c90d4a","actor_username":"48123456789","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-08-01 17:06:32.572343+00', ''),
	('00000000-0000-0000-0000-000000000000', '488527c8-c021-4d38-b0dc-4f511f97d7fb', '{"action":"user_confirmation_requested","actor_id":"892b7ea1-5e94-48e7-8d4b-8b3107536c15","actor_username":"48668553444","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-08-29 13:46:15.184098+00', ''),
	('00000000-0000-0000-0000-000000000000', '6b3cd066-79b8-407e-aeaf-71318ff34bcc', '{"action":"user_signedup","actor_id":"892b7ea1-5e94-48e7-8d4b-8b3107536c15","actor_username":"48668553444","actor_via_sso":false,"log_type":"team"}', '2024-08-29 13:46:40.146261+00', ''),
	('00000000-0000-0000-0000-000000000000', '7778f768-1eda-4f24-a7aa-77a41dd66506', '{"action":"token_refreshed","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-08-02 08:55:46.454566+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ec0ff727-2107-4f2c-9b86-b10a07ce5e54', '{"action":"token_revoked","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-08-02 08:55:46.476604+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b1e59e59-95bb-449d-a832-d07954ebe5d2', '{"action":"token_refreshed","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-08-02 10:38:29.396817+00', ''),
	('00000000-0000-0000-0000-000000000000', '07e209b1-547a-4527-8f14-73432061ef51', '{"action":"token_revoked","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-08-02 10:38:29.398353+00', ''),
	('00000000-0000-0000-0000-000000000000', '69937de2-5023-4bc5-8b2f-ed120c8c8633', '{"action":"user_recovery_requested","actor_id":"864ff8e3-50bd-4653-a164-0053c4c90d4a","actor_username":"48123456789","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-08-03 11:17:24.048486+00', ''),
	('00000000-0000-0000-0000-000000000000', '094cd228-9c31-451b-bcb8-2850d522064f', '{"action":"user_recovery_requested","actor_id":"864ff8e3-50bd-4653-a164-0053c4c90d4a","actor_username":"48123456789","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-08-04 10:38:56.358856+00', ''),
	('00000000-0000-0000-0000-000000000000', '29c9be24-28ca-4e10-b865-f6d7ec5b8254', '{"action":"user_signedup","actor_id":"864ff8e3-50bd-4653-a164-0053c4c90d4a","actor_username":"48123456789","actor_via_sso":false,"log_type":"team"}', '2024-08-04 10:39:01.950546+00', ''),
	('00000000-0000-0000-0000-000000000000', '359d6452-166a-4329-8e85-7848a135c4d3', '{"action":"logout","actor_id":"864ff8e3-50bd-4653-a164-0053c4c90d4a","actor_username":"48123456789","actor_via_sso":false,"log_type":"account"}', '2024-08-04 10:39:50.114916+00', ''),
	('00000000-0000-0000-0000-000000000000', '1c4e6ade-8148-4c87-9ae9-e2433accc66e', '{"action":"user_confirmation_requested","actor_id":"159f518b-4eb7-43b4-b565-27d40c240f50","actor_username":"48515190187","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-08-04 13:37:15.978869+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cb92b04c-a6d4-4a3c-ae9e-05ab882187e4', '{"action":"user_signedup","actor_id":"159f518b-4eb7-43b4-b565-27d40c240f50","actor_username":"48515190187","actor_via_sso":false,"log_type":"team"}', '2024-08-04 13:37:25.696994+00', ''),
	('00000000-0000-0000-0000-000000000000', '1621000b-e01e-44f1-a6b3-d68dbd9a1a78', '{"action":"token_refreshed","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-08-05 09:12:11.864785+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f4408e9e-b85b-42bc-913d-e17c7524aace', '{"action":"token_revoked","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-08-05 09:12:11.866645+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e0a6a754-44fe-4686-b2b4-bcbaba7e37a5', '{"action":"logout","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"account"}', '2024-08-05 09:12:15.352124+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f10914c3-3fe7-41e8-90ab-dfbe43b27324', '{"action":"user_confirmation_requested","actor_id":"df3d971d-ee42-4103-a577-a6913d42129e","actor_username":"48111111111","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-08-05 09:12:19.626245+00', ''),
	('00000000-0000-0000-0000-000000000000', '67994e86-8563-4f77-8768-c74e48d0af17', '{"action":"user_signedup","actor_id":"df3d971d-ee42-4103-a577-a6913d42129e","actor_username":"48111111111","actor_via_sso":false,"log_type":"team"}', '2024-08-05 09:12:21.528717+00', ''),
	('00000000-0000-0000-0000-000000000000', '8e745e6f-dd35-4168-b9d0-8418f152620b', '{"action":"logout","actor_id":"df3d971d-ee42-4103-a577-a6913d42129e","actor_username":"48111111111","actor_via_sso":false,"log_type":"account"}', '2024-08-05 09:14:38.992151+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd099ffe2-fa0a-47bf-945f-c54c9f6af0df', '{"action":"user_recovery_requested","actor_id":"df3d971d-ee42-4103-a577-a6913d42129e","actor_username":"48111111111","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-08-05 09:14:42.610283+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e049c208-3657-40ed-a73e-317dbf73bcab', '{"action":"user_signedup","actor_id":"df3d971d-ee42-4103-a577-a6913d42129e","actor_username":"48111111111","actor_via_sso":false,"log_type":"team"}', '2024-08-05 09:14:44.5875+00', ''),
	('00000000-0000-0000-0000-000000000000', '08d69f18-ba31-4194-b5d0-6014fbf6848f', '{"action":"logout","actor_id":"df3d971d-ee42-4103-a577-a6913d42129e","actor_username":"48111111111","actor_via_sso":false,"log_type":"account"}', '2024-08-05 09:14:53.660223+00', ''),
	('00000000-0000-0000-0000-000000000000', '6149eb58-6c1b-4f85-b463-1e142f21cb9b', '{"action":"user_recovery_requested","actor_id":"df3d971d-ee42-4103-a577-a6913d42129e","actor_username":"48111111111","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-08-05 09:14:58.518556+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c6c437ab-1a3f-4703-9498-6bca597a9054', '{"action":"user_signedup","actor_id":"df3d971d-ee42-4103-a577-a6913d42129e","actor_username":"48111111111","actor_via_sso":false,"log_type":"team"}', '2024-08-05 09:15:00.640461+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f8ef6173-4aed-409e-8778-57ef0bfb0f97', '{"action":"logout","actor_id":"df3d971d-ee42-4103-a577-a6913d42129e","actor_username":"48111111111","actor_via_sso":false,"log_type":"account"}', '2024-08-05 09:15:50.539589+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bb173e34-e175-4669-bfde-b875894ab070', '{"action":"user_recovery_requested","actor_id":"df3d971d-ee42-4103-a577-a6913d42129e","actor_username":"48111111111","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-08-05 09:15:54.392318+00', ''),
	('00000000-0000-0000-0000-000000000000', '6376dbc1-1c62-4903-8eb9-89db87a37b35', '{"action":"user_signedup","actor_id":"df3d971d-ee42-4103-a577-a6913d42129e","actor_username":"48111111111","actor_via_sso":false,"log_type":"team"}', '2024-08-05 09:15:55.968549+00', ''),
	('00000000-0000-0000-0000-000000000000', '26b47492-567a-4e63-86ed-2ca0d897a170', '{"action":"token_refreshed","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-08-05 09:16:10.627617+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a79c8cf8-dc62-4eeb-b970-19d4f4b5dabe', '{"action":"token_revoked","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-08-05 09:16:10.631065+00', ''),
	('00000000-0000-0000-0000-000000000000', '08a0b90c-3854-4ed9-93ec-247ec76e7ee4', '{"action":"user_recovery_requested","actor_id":"df3d971d-ee42-4103-a577-a6913d42129e","actor_username":"48111111111","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-08-05 10:59:59.120393+00', ''),
	('00000000-0000-0000-0000-000000000000', '4569f9e7-df65-4f13-a761-ccc34f13f0ee', '{"action":"user_signedup","actor_id":"df3d971d-ee42-4103-a577-a6913d42129e","actor_username":"48111111111","actor_via_sso":false,"log_type":"team"}', '2024-08-05 11:00:05.847473+00', ''),
	('00000000-0000-0000-0000-000000000000', '59cb171c-c976-4a20-8186-728c4f26dd96', '{"action":"user_recovery_requested","actor_id":"df3d971d-ee42-4103-a577-a6913d42129e","actor_username":"48111111111","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-08-05 13:43:00.479199+00', ''),
	('00000000-0000-0000-0000-000000000000', '15799350-1473-4a0e-b49a-ac6ee10adecc', '{"action":"user_signedup","actor_id":"df3d971d-ee42-4103-a577-a6913d42129e","actor_username":"48111111111","actor_via_sso":false,"log_type":"team"}', '2024-08-05 13:43:02.595657+00', ''),
	('00000000-0000-0000-0000-000000000000', '567e87b5-56c6-452c-ab09-f0b10f2746a4', '{"action":"token_refreshed","actor_id":"864ff8e3-50bd-4653-a164-0053c4c90d4a","actor_username":"48123456789","actor_via_sso":false,"log_type":"token"}', '2024-08-05 14:21:32.759766+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd254375f-f663-4792-bfda-da22fd043fb8', '{"action":"token_revoked","actor_id":"864ff8e3-50bd-4653-a164-0053c4c90d4a","actor_username":"48123456789","actor_via_sso":false,"log_type":"token"}', '2024-08-05 14:21:32.762862+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd8a28999-c19c-42e5-9c18-ce3088888900', '{"action":"user_confirmation_requested","actor_id":"d86201b6-7f5e-4bf0-a39d-393e8b87b540","actor_username":"48666975350","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-08-22 13:12:03.896207+00', ''),
	('00000000-0000-0000-0000-000000000000', '8d3e62bb-d24e-4c14-8ce7-0a5782c1e82e', '{"action":"user_confirmation_requested","actor_id":"2b740fe6-b5a8-4eba-a474-5b20e36174b9","actor_username":"48733577787","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-08-30 20:01:30.115381+00', ''),
	('00000000-0000-0000-0000-000000000000', '3cd30ee1-7e53-4770-a133-eb6fcee1b3dc', '{"action":"user_signedup","actor_id":"2b740fe6-b5a8-4eba-a474-5b20e36174b9","actor_username":"48733577787","actor_via_sso":false,"log_type":"team"}', '2024-08-30 20:01:37.705951+00', ''),
	('00000000-0000-0000-0000-000000000000', '771b5f62-664a-4301-a2d0-9a9380cc1ef4', '{"action":"logout","actor_id":"2b740fe6-b5a8-4eba-a474-5b20e36174b9","actor_username":"48733577787","actor_via_sso":false,"log_type":"account"}', '2024-08-30 20:01:46.77316+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dfda8b23-3d5f-44a2-9fbc-04643c497c6b', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"","user_id":"d86201b6-7f5e-4bf0-a39d-393e8b87b540","user_phone":"48666975350"}}', '2024-09-08 12:21:40.325279+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ad84abff-658f-40dd-8704-6c850e4a6f00', '{"action":"user_recovery_requested","actor_id":"df3d971d-ee42-4103-a577-a6913d42129e","actor_username":"48111111111","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-15 19:10:05.996562+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd735c4ca-b295-49f4-856f-cdd2c60facd2', '{"action":"user_signedup","actor_id":"df3d971d-ee42-4103-a577-a6913d42129e","actor_username":"48111111111","actor_via_sso":false,"log_type":"team"}', '2024-09-15 19:10:08.771536+00', ''),
	('00000000-0000-0000-0000-000000000000', '33abd544-fa73-430a-a499-d5908b94b28b', '{"action":"token_refreshed","actor_id":"864ff8e3-50bd-4653-a164-0053c4c90d4a","actor_username":"48123456789","actor_via_sso":false,"log_type":"token"}', '2024-09-18 10:02:30.549853+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f5671bdf-a791-47a2-81aa-d7505a788ddf', '{"action":"token_revoked","actor_id":"864ff8e3-50bd-4653-a164-0053c4c90d4a","actor_username":"48123456789","actor_via_sso":false,"log_type":"token"}', '2024-09-18 10:02:30.560872+00', ''),
	('00000000-0000-0000-0000-000000000000', '606f44d3-a048-4218-8b58-52104cabd53e', '{"action":"token_refreshed","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-18 10:55:19.562319+00', ''),
	('00000000-0000-0000-0000-000000000000', '92090b0f-7d8e-4ee9-a24f-d1a2c4d99eb3', '{"action":"token_revoked","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-18 10:55:19.564144+00', ''),
	('00000000-0000-0000-0000-000000000000', '330b7936-15b4-477f-bf45-946d6aa6c899', '{"action":"token_refreshed","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-18 13:21:33.6734+00', ''),
	('00000000-0000-0000-0000-000000000000', '6c1ff602-6924-45a6-876b-8853db3d649f', '{"action":"token_revoked","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-18 13:21:33.680574+00', ''),
	('00000000-0000-0000-0000-000000000000', '6915cbc7-5a77-4576-810b-883d1eb0aaa6', '{"action":"token_refreshed","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-18 16:32:07.489784+00', ''),
	('00000000-0000-0000-0000-000000000000', '798d82fe-8f26-4902-83ca-b90593d9c3fd', '{"action":"token_revoked","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-18 16:32:07.491363+00', ''),
	('00000000-0000-0000-0000-000000000000', '58d79352-c21c-4078-9002-d69e7669470a', '{"action":"user_confirmation_requested","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-09-18 16:47:14.534263+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a5c142f8-5db6-43ee-8793-6dd6973563cb', '{"action":"user_signedup","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"team"}', '2024-09-18 16:47:21.446798+00', ''),
	('00000000-0000-0000-0000-000000000000', '1d3b8e7e-1666-41dc-9e86-c314d58e56cc', '{"action":"user_recovery_requested","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-18 16:56:16.918443+00', ''),
	('00000000-0000-0000-0000-000000000000', '6dd9d01a-1a2c-4c36-90a6-a7738934b0b0', '{"action":"user_signedup","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"team"}', '2024-09-18 16:56:20.100363+00', ''),
	('00000000-0000-0000-0000-000000000000', '452787aa-ce92-4863-957f-bd7c214b3854', '{"action":"user_recovery_requested","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-18 17:02:28.438411+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c2235638-46e9-49fb-b61c-7c4c91f6d39d', '{"action":"user_signedup","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"team"}', '2024-09-18 17:02:38.709568+00', ''),
	('00000000-0000-0000-0000-000000000000', '0db48a4e-3ff4-4c77-bc4c-5a162443b555', '{"action":"token_refreshed","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-18 19:09:35.620095+00', ''),
	('00000000-0000-0000-0000-000000000000', '9ebfef71-d2f4-4d2e-83e5-48c87ec07b75', '{"action":"token_revoked","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-18 19:09:35.628727+00', ''),
	('00000000-0000-0000-0000-000000000000', '2ffd9d61-c7c9-4b48-9fc4-ca51b9a3d174', '{"action":"user_recovery_requested","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-18 19:11:45.531186+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fe2526a8-44ad-4975-b887-380162b59a16', '{"action":"user_signedup","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-09-18 19:11:55.045367+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b90759e0-1f0d-42cf-a14a-9eef705e866d', '{"action":"user_recovery_requested","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-18 19:12:07.223074+00', ''),
	('00000000-0000-0000-0000-000000000000', '08ee8bf0-002c-486b-8f0e-73c03a317127', '{"action":"user_signedup","actor_id":"d63631c9-583c-4714-9129-b5093aecbf4e","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-09-18 19:12:10.141498+00', ''),
	('00000000-0000-0000-0000-000000000000', '3deedeb6-26d1-498b-994b-a14e2f27c52e', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"","user_id":"d63631c9-583c-4714-9129-b5093aecbf4e","user_phone":"48666978350"}}', '2024-09-18 19:12:31.155184+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ab6634a2-8f06-43d7-8a20-ff06239f017e', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"","user_id":"864ff8e3-50bd-4653-a164-0053c4c90d4a","user_phone":"48123456789"}}', '2024-09-18 19:12:43.804862+00', ''),
	('00000000-0000-0000-0000-000000000000', '9a48cc6b-1e49-4926-9029-1a6666e00272', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"","user_id":"159f518b-4eb7-43b4-b565-27d40c240f50","user_phone":"48515190187"}}', '2024-09-18 19:12:48.520594+00', ''),
	('00000000-0000-0000-0000-000000000000', '038cb900-31d2-46d0-b15c-3ae915249f04', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"","user_id":"df3d971d-ee42-4103-a577-a6913d42129e","user_phone":"48111111111"}}', '2024-09-18 19:12:52.222007+00', ''),
	('00000000-0000-0000-0000-000000000000', '7dad85ea-4d4e-4251-b236-f2075ef24b95', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"","user_id":"892b7ea1-5e94-48e7-8d4b-8b3107536c15","user_phone":"48668553444"}}', '2024-09-18 19:12:58.461699+00', ''),
	('00000000-0000-0000-0000-000000000000', '0d00c6f1-4b7d-4d50-b010-25d7ed630d74', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"","user_id":"2b740fe6-b5a8-4eba-a474-5b20e36174b9","user_phone":"48733577787"}}', '2024-09-18 19:13:04.14766+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fb5d4ebd-5303-401e-8755-2d07a50bb580', '{"action":"user_confirmation_requested","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-09-18 19:13:20.129719+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c6bd9a9f-1299-4a81-84d2-6b065bca001c', '{"action":"user_signedup","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-09-18 19:13:22.800241+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c6de1f61-1953-420c-a53e-930d60e6aad0', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-18 19:32:15.00103+00', ''),
	('00000000-0000-0000-0000-000000000000', '99b43bc1-705c-4e3c-a94c-98387f4f65a5', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-18 19:32:15.003763+00', ''),
	('00000000-0000-0000-0000-000000000000', '074837a1-81b9-4c98-a581-ef498fe3421a', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-18 19:33:11.857366+00', ''),
	('00000000-0000-0000-0000-000000000000', '6d6d29fe-6f04-46c4-b8cf-004d53d3578b', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-18 19:33:11.858048+00', ''),
	('00000000-0000-0000-0000-000000000000', '0bbc4742-cf6c-416e-9509-6d21472fff99', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-19 06:59:22.304465+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd3ddf49e-7909-4b98-ae94-510074805bc9', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-19 06:59:22.314742+00', ''),
	('00000000-0000-0000-0000-000000000000', '56504f3c-d317-4135-9985-637c311890af', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-19 07:08:00.696971+00', ''),
	('00000000-0000-0000-0000-000000000000', '5f31613d-a807-4310-8b43-d7ea0516e196', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-19 07:08:00.698382+00', ''),
	('00000000-0000-0000-0000-000000000000', '7927223f-b175-46a1-b486-00beaa2f281f', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-19 08:09:07.947173+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b748e624-734e-40d0-97b7-95fdbb8e7cb5', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-19 08:09:07.950702+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f0e2be6a-8889-44f7-8820-e2fbc9f4979a', '{"action":"user_confirmation_requested","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-09-19 08:10:53.584962+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cb3d65c6-346f-4b6f-97ba-d3cea2699927', '{"action":"user_signedup","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"team"}', '2024-09-19 08:11:07.791754+00', ''),
	('00000000-0000-0000-0000-000000000000', '33f5dec8-2251-45c3-a678-485d409feb82', '{"action":"logout","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"account"}', '2024-09-19 08:11:45.734047+00', ''),
	('00000000-0000-0000-0000-000000000000', '919db169-ca3a-4946-ae92-0ca878642b6e', '{"action":"user_recovery_requested","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-19 08:11:56.325282+00', ''),
	('00000000-0000-0000-0000-000000000000', 'af6bd14d-1f72-438a-9307-9e2215f3cd6f', '{"action":"user_signedup","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"team"}', '2024-09-19 08:12:03.853128+00', ''),
	('00000000-0000-0000-0000-000000000000', '380dd052-61fe-4968-a66f-e8ceec197c51', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-19 08:17:34.186406+00', ''),
	('00000000-0000-0000-0000-000000000000', '297a0a7a-6a41-4445-bcdc-72cc400a784a', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-19 08:17:34.189045+00', ''),
	('00000000-0000-0000-0000-000000000000', '9589d70c-2480-426e-9fc1-aaa1ffa46e53', '{"action":"user_recovery_requested","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-19 08:21:46.808687+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b00c0422-c9f2-4717-a756-f9b1884340b3', '{"action":"user_signedup","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"team"}', '2024-09-19 08:21:54.859377+00', ''),
	('00000000-0000-0000-0000-000000000000', '34789513-0610-426b-a97a-a4084f3cf14d', '{"action":"user_recovery_requested","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-19 08:26:59.274875+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e2b6b3ca-e6e3-4d01-bbc0-36d735283fde', '{"action":"user_signedup","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"team"}', '2024-09-19 08:27:08.688099+00', ''),
	('00000000-0000-0000-0000-000000000000', '76f345ec-74ff-4002-a560-f6bf175d3cb9', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-19 08:27:40.994105+00', ''),
	('00000000-0000-0000-0000-000000000000', '143274a1-369e-407e-bd97-a166e1727a28', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-19 08:27:40.996904+00', ''),
	('00000000-0000-0000-0000-000000000000', 'da3bfbd9-874d-4bac-89cf-1cfdf1d0732c', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-19 09:17:01.549934+00', ''),
	('00000000-0000-0000-0000-000000000000', '7792af56-e17a-45bc-bec2-53ceaeefa289', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-19 09:17:01.551425+00', ''),
	('00000000-0000-0000-0000-000000000000', '5818c6da-12fa-48db-8252-b1f4432959fb', '{"action":"token_refreshed","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-19 09:39:40.068337+00', ''),
	('00000000-0000-0000-0000-000000000000', '862cac5f-6252-4203-a45d-e08e3e3bf9ed', '{"action":"token_revoked","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-19 09:39:40.070644+00', ''),
	('00000000-0000-0000-0000-000000000000', '0c9ca39b-8e4d-4966-8f1c-10a7609ff8b2', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-19 09:40:49.468697+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a07e770a-0074-4233-9573-ecd1e057e25d', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-19 09:40:49.469574+00', ''),
	('00000000-0000-0000-0000-000000000000', '26e93451-99c7-4b3a-8c49-d4fb84984bff', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-19 13:04:44.34773+00', ''),
	('00000000-0000-0000-0000-000000000000', '98f52b42-6c3b-46c1-ab4f-4bb4ba82e9b7', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-19 13:04:44.3543+00', ''),
	('00000000-0000-0000-0000-000000000000', '759d7c7a-a972-4717-85a7-5b063ba44dc0', '{"action":"token_refreshed","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-19 17:07:57.517511+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd82fa9b4-5db3-411f-ba4d-01f74c05c52b', '{"action":"token_revoked","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-19 17:07:57.525103+00', ''),
	('00000000-0000-0000-0000-000000000000', '3e388a81-9571-4515-bf69-19e406c0d596', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-19 19:02:32.094249+00', ''),
	('00000000-0000-0000-0000-000000000000', '68e194d5-96a3-432e-8851-17953b7e8ab1', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-19 19:02:32.09604+00', ''),
	('00000000-0000-0000-0000-000000000000', '58bb34d8-24e2-4bc5-8873-75de7a49151e', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-19 19:28:45.041121+00', ''),
	('00000000-0000-0000-0000-000000000000', '8a1f1f1f-52f9-4a33-baad-2140cd5f3e66', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-19 19:28:45.043308+00', ''),
	('00000000-0000-0000-0000-000000000000', '87562240-827e-4f4d-b16f-705192ca1b66', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-19 20:41:27.512485+00', ''),
	('00000000-0000-0000-0000-000000000000', '4d73ce55-fdf6-4470-affd-db3e6b037944', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-19 20:41:27.515235+00', ''),
	('00000000-0000-0000-0000-000000000000', '02d33ad2-2c47-48ee-8ba7-6c99bcbd1c07', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-20 05:05:12.537508+00', ''),
	('00000000-0000-0000-0000-000000000000', '1c51c9bc-cecf-4d0e-864b-2b990e4fa586', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-20 06:27:21.777665+00', ''),
	('00000000-0000-0000-0000-000000000000', '9641ac16-2455-4667-8edd-a572e06984fd', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-20 06:27:21.780056+00', ''),
	('00000000-0000-0000-0000-000000000000', '2478cb7a-60bf-4a9c-8b6e-53605121e889', '{"action":"user_recovery_requested","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-20 13:17:18.705054+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd1800dd6-a040-4923-9b45-9c11364eec10', '{"action":"user_signedup","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-09-20 13:17:29.136291+00', ''),
	('00000000-0000-0000-0000-000000000000', '5d4377e7-d57c-48fe-bb78-17472561cf27', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-20 19:17:32.883765+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e5896289-322a-4c5e-8e7d-774c54b8c73a', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-20 19:17:32.885754+00', ''),
	('00000000-0000-0000-0000-000000000000', '80bcc15e-0bcc-47c3-a2c7-18da057342c2', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-21 07:41:20.276629+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a4dbbc66-7446-4a3a-aba0-0bf3ac6b7b9e', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-21 07:41:20.290031+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ed61b3ad-642f-4197-98f0-2eada311a292', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-22 13:54:47.208021+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c4566688-ed5d-40b6-8760-74383163a22e', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-22 13:54:47.221437+00', ''),
	('00000000-0000-0000-0000-000000000000', '33fc4e48-31f5-4cbe-a1f4-f1131979c148', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-22 14:07:10.255179+00', ''),
	('00000000-0000-0000-0000-000000000000', '97c6e16e-259c-4277-b292-570e51636856', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-22 14:07:10.258942+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b897a152-44a9-47a8-accb-0668c4dde627', '{"action":"user_recovery_requested","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-22 14:18:10.050369+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e30ad170-4a27-4ae4-acf0-fc602a949001', '{"action":"user_signedup","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-09-22 14:18:14.145331+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b1d70519-d26d-42c4-a395-e800f5e0ba60', '{"action":"logout","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"account"}', '2024-09-22 14:18:57.731225+00', ''),
	('00000000-0000-0000-0000-000000000000', '9ac04ab0-87bf-4a40-aa27-a1d35622fa7e', '{"action":"user_recovery_requested","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-22 14:19:02.712305+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a40f6742-540b-4e1f-8876-996617285aba', '{"action":"user_signedup","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-09-22 14:19:06.857826+00', ''),
	('00000000-0000-0000-0000-000000000000', '3647e021-39d4-48c6-ab92-161c5bb1e1b6', '{"action":"token_refreshed","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-22 18:10:16.08367+00', ''),
	('00000000-0000-0000-0000-000000000000', '37aaec24-27c9-4a4e-9dfd-020fef986478', '{"action":"token_revoked","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-22 18:10:16.089888+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f1df4ed5-f1fc-4a8b-bc84-7b3f63f2e189', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-22 18:23:23.309786+00', ''),
	('00000000-0000-0000-0000-000000000000', '28460999-0ad9-4fb2-b9b0-5791a10b101e', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-22 18:23:23.311703+00', ''),
	('00000000-0000-0000-0000-000000000000', '8ef6d1c2-8155-42bd-98d9-763ec0aa77d1', '{"action":"logout","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"account"}', '2024-09-22 18:24:19.187432+00', ''),
	('00000000-0000-0000-0000-000000000000', '23204285-7b64-4e23-b99d-d6652b753a14', '{"action":"user_recovery_requested","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-22 18:24:24.177057+00', ''),
	('00000000-0000-0000-0000-000000000000', '09b8ecc7-dc8f-4497-bdba-5cb15eca93f6', '{"action":"user_signedup","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-09-22 18:24:28.436672+00', ''),
	('00000000-0000-0000-0000-000000000000', '8717b5b9-7e8f-42a4-a76d-6692774ff43f', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-23 07:06:00.847965+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fa9cf7b8-9341-494f-a684-a285bea54d61', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-23 07:06:00.859908+00', ''),
	('00000000-0000-0000-0000-000000000000', '9058d0d8-d8c0-45d4-ac1b-259553d977ef', '{"action":"user_confirmation_requested","actor_id":"da800d6b-b796-4eae-8923-5000d25249b7","actor_username":"48604214649","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-09-23 08:10:21.886053+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ee220eae-7cc4-4140-87af-fd1d86ccdb2f', '{"action":"user_confirmation_requested","actor_id":"da800d6b-b796-4eae-8923-5000d25249b7","actor_username":"48604214649","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-09-23 08:10:44.528184+00', ''),
	('00000000-0000-0000-0000-000000000000', '67a0cc44-3019-4d4e-8ef9-f1155351bb0c', '{"action":"user_signedup","actor_id":"da800d6b-b796-4eae-8923-5000d25249b7","actor_username":"48604214649","actor_via_sso":false,"log_type":"team"}', '2024-09-23 08:10:47.088779+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e6773525-d194-4a65-bf4f-bb84ad009b7b', '{"action":"token_refreshed","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-23 10:15:54.916965+00', ''),
	('00000000-0000-0000-0000-000000000000', '24b8b3e1-babb-4cb2-89f7-b55a5ec375e4', '{"action":"token_revoked","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-23 10:15:54.919766+00', ''),
	('00000000-0000-0000-0000-000000000000', '5dd08ab4-e1f4-4706-bdb0-f587ec19cb6b', '{"action":"logout","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"account"}', '2024-09-24 12:26:36.260211+00', ''),
	('00000000-0000-0000-0000-000000000000', '1878a53a-385a-4c7f-adca-3b51a05c6325', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-23 10:16:16.282143+00', ''),
	('00000000-0000-0000-0000-000000000000', 'be9e65ea-11e3-42d6-bd24-97c3c69f758c', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-23 10:16:16.285811+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dc42fa21-203f-43fd-9a65-ef424c13b5f8', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-23 10:42:16.311653+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b360017d-a854-4f67-a96d-14a0ab281e4e', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-23 10:42:16.31338+00', ''),
	('00000000-0000-0000-0000-000000000000', '2d74d932-6f8d-4064-b560-56dcd0e25983', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-23 10:42:36.80672+00', ''),
	('00000000-0000-0000-0000-000000000000', '44c2ed61-0419-4f63-9a7b-0cd12fef3e14', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-23 10:42:36.807348+00', ''),
	('00000000-0000-0000-0000-000000000000', '3adb52f8-ce61-49e7-b61e-789ed969b650', '{"action":"logout","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"account"}', '2024-09-23 10:42:44.071584+00', ''),
	('00000000-0000-0000-0000-000000000000', '30cd6a8f-11ac-43ef-a5f0-7870c72f4798', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-23 16:35:26.222585+00', ''),
	('00000000-0000-0000-0000-000000000000', '71673054-fdc6-49c5-ac22-6d930e3fddcf', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-23 16:35:26.227197+00', ''),
	('00000000-0000-0000-0000-000000000000', '8599552e-796e-4e49-a8f9-b42a72fa11eb', '{"action":"token_refreshed","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-23 17:42:15.87675+00', ''),
	('00000000-0000-0000-0000-000000000000', '5138cff7-7b46-49b1-a459-83b36f11186b', '{"action":"token_revoked","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-23 17:42:15.878905+00', ''),
	('00000000-0000-0000-0000-000000000000', '863f88dc-37f9-46ad-97a7-b8ce511bcb90', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-23 17:42:33.299505+00', ''),
	('00000000-0000-0000-0000-000000000000', '02626eee-c209-4c57-8bed-85cf8c896dc0', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-23 17:42:33.300083+00', ''),
	('00000000-0000-0000-0000-000000000000', '14144d42-d1c2-4e4c-93eb-49184b33bbb9', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-23 18:43:45.991197+00', ''),
	('00000000-0000-0000-0000-000000000000', '3d38f7b4-efb9-4f0b-947d-4df061b11117', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-23 18:43:45.995578+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e982d09d-7754-4daf-b90b-1c82970de7b0', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-23 18:45:49.639194+00', ''),
	('00000000-0000-0000-0000-000000000000', '0ee25c92-567f-4686-af11-fe635f6319bf', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-23 18:45:49.641817+00', ''),
	('00000000-0000-0000-0000-000000000000', '9cce7c46-aa6f-40e6-a23c-2c567a89523b', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-23 19:35:25.684768+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fde9f5b4-1feb-4990-b1da-433b8c2dfa1e', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-23 19:35:25.686185+00', ''),
	('00000000-0000-0000-0000-000000000000', '68d07f36-5604-41cf-97d4-c7f080d02008', '{"action":"logout","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"account"}', '2024-09-23 19:35:39.380955+00', ''),
	('00000000-0000-0000-0000-000000000000', '4f5087e8-6195-47c8-bff0-b5e7ba240653', '{"action":"user_recovery_requested","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-23 19:35:45.918152+00', ''),
	('00000000-0000-0000-0000-000000000000', '9a240fad-b1af-4e2d-a852-c148f2ff5022', '{"action":"user_signedup","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"team"}', '2024-09-23 19:36:00.838344+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f151883a-03d1-46f8-81e6-44603bef5a1a', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-23 19:56:44.504229+00', ''),
	('00000000-0000-0000-0000-000000000000', '692f9c00-5ec4-45d2-b47f-b6aa3120d145', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-23 19:56:44.50616+00', ''),
	('00000000-0000-0000-0000-000000000000', '93c602ef-e79a-466e-9136-7e41970890a8', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-23 20:27:49.654376+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a6f07d0a-d3d3-4186-ac3a-9b6cefd02c4c', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-23 20:27:49.656282+00', ''),
	('00000000-0000-0000-0000-000000000000', '7a7d71f6-78ce-4ce8-ac07-e60aa4599148', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-24 05:14:01.783581+00', ''),
	('00000000-0000-0000-0000-000000000000', '663a9809-d02b-4688-abee-9cf5cbb6bcc7', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-24 05:14:01.793809+00', ''),
	('00000000-0000-0000-0000-000000000000', '8de191f8-1a36-4c1a-9a5c-f3b33ecf2ef5', '{"action":"token_refreshed","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-24 06:53:12.473119+00', ''),
	('00000000-0000-0000-0000-000000000000', '90bfd06b-a362-4ec1-97f6-d3bfbe0099a0', '{"action":"token_revoked","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-24 06:53:12.476087+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b6b7617-8df9-4e37-8fe2-b78f537f33ea', '{"action":"token_refreshed","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-24 06:53:20.791843+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ceac4d1f-3cd6-47fb-ab24-56d10bf599d4', '{"action":"token_revoked","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-24 06:53:20.792786+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dbe40731-6954-4afa-be36-23754ddcada1', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-24 06:57:20.829181+00', ''),
	('00000000-0000-0000-0000-000000000000', '570ca6a4-89d3-4e6f-be1f-4dd2ad795e13', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-24 06:57:20.832828+00', ''),
	('00000000-0000-0000-0000-000000000000', '24ec5cf4-762f-45df-9a8b-4984f455e27e', '{"action":"logout","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"account"}', '2024-09-24 13:10:46.011781+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a554c9d8-1e9b-48b2-996d-173febbf4bed', '{"action":"user_confirmation_requested","actor_id":"66cd9414-b49b-4068-8653-4d8ff74a7612","actor_username":"48510386946","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-09-24 07:35:57.58867+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b065f6dd-0b8d-410e-9c0a-6565d0fa2624', '{"action":"user_signedup","actor_id":"66cd9414-b49b-4068-8653-4d8ff74a7612","actor_username":"48510386946","actor_via_sso":false,"log_type":"team"}', '2024-09-24 07:36:02.422655+00', ''),
	('00000000-0000-0000-0000-000000000000', '23b5bc75-22f0-4e1c-a3e1-5c57535a606d', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-24 07:55:04.315347+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ab8ad973-5eb7-4dd0-b641-d185ef105a58', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-24 07:55:04.317579+00', ''),
	('00000000-0000-0000-0000-000000000000', '86b1b238-772b-4c14-8f23-1500eaca5dc1', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-24 08:15:03.906911+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b72c81d-bbf6-4deb-9a05-29480b8f7838', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-24 08:15:03.909357+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fc5fb124-ae2a-4e65-bc38-b9a605b27bf4', '{"action":"token_refreshed","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-24 10:43:01.44419+00', ''),
	('00000000-0000-0000-0000-000000000000', 'df619443-8610-4d0e-904a-f7b75afd994c', '{"action":"token_revoked","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-24 10:43:01.452032+00', ''),
	('00000000-0000-0000-0000-000000000000', '49bf71e8-16ac-41b2-b48e-bae7cd5280e6', '{"action":"token_refreshed","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-24 10:43:25.180749+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c55cbae3-a54b-4b3f-80eb-ba1775f4536a', '{"action":"token_revoked","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-24 10:43:25.18246+00', ''),
	('00000000-0000-0000-0000-000000000000', '4bfb6553-fe51-4150-a3c4-1fbecf20227a', '{"action":"user_recovery_requested","actor_id":"66cd9414-b49b-4068-8653-4d8ff74a7612","actor_username":"48510386946","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-24 11:10:05.794192+00', ''),
	('00000000-0000-0000-0000-000000000000', '6b23956a-ef7c-4e10-94f7-ed115e2b8471', '{"action":"user_signedup","actor_id":"66cd9414-b49b-4068-8653-4d8ff74a7612","actor_username":"48510386946","actor_via_sso":false,"log_type":"team"}', '2024-09-24 11:10:09.133847+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ed5299f9-4d3b-4e0e-b1c8-5ffa571e0cca', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-24 11:50:37.874696+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b12bc831-4f5a-4fe3-bacc-b3f7136d9a7e', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-24 11:50:37.876695+00', ''),
	('00000000-0000-0000-0000-000000000000', '0ce6a90b-a494-49dc-8c31-456439b4421f', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-24 11:51:24.000004+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e49b8b82-7bd2-4b53-b88b-de7f4e4c4992', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-24 11:51:24.003875+00', ''),
	('00000000-0000-0000-0000-000000000000', '77775e07-3c67-40aa-817c-50478b43b15b', '{"action":"user_confirmation_requested","actor_id":"4c725c3c-6297-4260-97a2-fce1d6fa9f2a","actor_username":"48731700173","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-09-24 11:56:48.311115+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cebbc357-f8c7-4e5d-a49d-bd611291893a', '{"action":"user_signedup","actor_id":"4c725c3c-6297-4260-97a2-fce1d6fa9f2a","actor_username":"48731700173","actor_via_sso":false,"log_type":"team"}', '2024-09-24 11:57:02.30258+00', ''),
	('00000000-0000-0000-0000-000000000000', '96d2c9ed-ae52-45ff-940d-6818ba9c2635', '{"action":"token_refreshed","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-24 11:57:21.126691+00', ''),
	('00000000-0000-0000-0000-000000000000', '27d99256-9a41-44ba-b787-bebef5b7d5fd', '{"action":"token_revoked","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-24 11:57:21.127796+00', ''),
	('00000000-0000-0000-0000-000000000000', '14cc6a2e-0e28-4d11-8135-c1e7b02755d3', '{"action":"user_recovery_requested","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-24 12:26:46.916116+00', ''),
	('00000000-0000-0000-0000-000000000000', '4ade81f8-966c-43e3-8fba-e994f3924bdb', '{"action":"user_signedup","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-09-24 12:26:57.313162+00', ''),
	('00000000-0000-0000-0000-000000000000', '0d455694-40eb-4037-8476-fed564f0a73c', '{"action":"user_recovery_requested","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-24 12:33:00.352265+00', ''),
	('00000000-0000-0000-0000-000000000000', '0e111d66-0f11-4ef0-b13e-0483e3ba913f', '{"action":"user_signedup","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-09-24 12:33:08.412315+00', ''),
	('00000000-0000-0000-0000-000000000000', '70aa47ad-1524-4af3-8a80-e5d6b849cdce', '{"action":"user_recovery_requested","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-24 13:07:12.680704+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f6c1137e-cdc3-4090-a536-18ea17dc3e6d', '{"action":"user_signedup","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-09-24 13:07:21.251044+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c93362f2-4f6c-4101-a8f5-0383896202d0', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-24 13:09:30.790272+00', ''),
	('00000000-0000-0000-0000-000000000000', '14f9cf8a-800c-40fc-b28e-c2bdd513ba5f', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-24 13:09:30.79171+00', ''),
	('00000000-0000-0000-0000-000000000000', '3fd330d2-6f83-4e33-a399-bfeeebf8ac8c', '{"action":"user_recovery_requested","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-24 13:10:56.0538+00', ''),
	('00000000-0000-0000-0000-000000000000', '405f58c5-7fb8-42bf-9b49-cc8784020299', '{"action":"user_signedup","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-09-24 13:10:59.411102+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f292d267-480f-45be-8adf-f6f4570ecb05', '{"action":"user_recovery_requested","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-24 13:12:15.483587+00', ''),
	('00000000-0000-0000-0000-000000000000', '99bb20c6-8e19-40a5-a978-f12d232a8499', '{"action":"user_signedup","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-09-24 13:12:18.78117+00', ''),
	('00000000-0000-0000-0000-000000000000', '37701098-3bca-4f48-855b-046ceeb26f5a', '{"action":"logout","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"account"}', '2024-09-24 13:15:07.65193+00', ''),
	('00000000-0000-0000-0000-000000000000', '961daa38-5a4f-40d3-818d-0fb1e9db0490', '{"action":"user_recovery_requested","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-24 13:15:12.314339+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b0afe99-bfb0-461c-b50a-c8ab935032ed', '{"action":"user_signedup","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-09-24 13:15:15.9175+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd2ad13ea-54c9-49a3-a932-baa85f70ec77', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-24 14:33:48.429481+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ac8aef07-afe6-485b-b446-e56087de9095', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-24 14:33:48.435111+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a39dc65e-48c7-4997-b02c-4846b975c026', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-24 17:24:14.938428+00', ''),
	('00000000-0000-0000-0000-000000000000', '82d5ecd5-a885-4cda-8708-0a0f31ccb23d', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-24 17:24:14.942312+00', ''),
	('00000000-0000-0000-0000-000000000000', '2c425b3e-f7fe-44b8-a584-fbfef531a5d9', '{"action":"user_confirmation_requested","actor_id":"e69f5821-d277-4c08-8d92-114855a48e94","actor_username":"48795732777","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-09-24 18:05:45.897622+00', ''),
	('00000000-0000-0000-0000-000000000000', '7be74a0a-0176-4f16-a60b-ff625ac32de4', '{"action":"user_confirmation_requested","actor_id":"e69f5821-d277-4c08-8d92-114855a48e94","actor_username":"48795732777","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-09-24 18:06:14.353779+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ed99012c-c416-4132-a9b3-9d69f88c83af', '{"action":"user_signedup","actor_id":"e69f5821-d277-4c08-8d92-114855a48e94","actor_username":"48795732777","actor_via_sso":false,"log_type":"team"}', '2024-09-24 18:06:16.79527+00', ''),
	('00000000-0000-0000-0000-000000000000', '2e3b7230-a517-4075-bb9e-b36bfe2f0957', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-24 19:07:12.576335+00', ''),
	('00000000-0000-0000-0000-000000000000', '6d9c3c0c-ee80-4241-a62f-5baa05f6b4cd', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-24 19:07:12.578693+00', ''),
	('00000000-0000-0000-0000-000000000000', '5623d626-7b50-45d2-a491-7d22f6ceaf26', '{"action":"token_refreshed","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-24 19:59:36.301566+00', ''),
	('00000000-0000-0000-0000-000000000000', '1bc790cb-3c00-4117-aad3-3d823229bf69', '{"action":"token_revoked","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-24 19:59:36.304225+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ac898af8-e8d9-4fa6-9ad3-934e8fcf3b7e', '{"action":"user_confirmation_requested","actor_id":"38fccaae-4320-436d-b8a5-bd6f88b423f1","actor_username":"48503425047","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-09-24 21:01:13.692897+00', ''),
	('00000000-0000-0000-0000-000000000000', '433790f2-0e9c-4618-9a8e-a4639e0dd982', '{"action":"user_signedup","actor_id":"38fccaae-4320-436d-b8a5-bd6f88b423f1","actor_username":"48503425047","actor_via_sso":false,"log_type":"team"}', '2024-09-24 21:01:18.246172+00', ''),
	('00000000-0000-0000-0000-000000000000', '0e1f7f64-8cb1-4236-90b9-9c2bee644df0', '{"action":"logout","actor_id":"38fccaae-4320-436d-b8a5-bd6f88b423f1","actor_username":"48503425047","actor_via_sso":false,"log_type":"account"}', '2024-09-24 21:01:26.291057+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a3c46ef1-92b1-4a08-8e63-3d1d631d5f3f', '{"action":"user_recovery_requested","actor_id":"38fccaae-4320-436d-b8a5-bd6f88b423f1","actor_username":"48503425047","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-24 21:01:34.766763+00', ''),
	('00000000-0000-0000-0000-000000000000', '250d2727-ded6-42fd-b260-c227ef263095', '{"action":"user_signedup","actor_id":"38fccaae-4320-436d-b8a5-bd6f88b423f1","actor_username":"48503425047","actor_via_sso":false,"log_type":"team"}', '2024-09-24 21:01:36.68019+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ec0da283-21bb-43d1-b092-edaa86349b0f', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-25 04:52:07.846319+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a65eb783-469a-4c45-b6fb-4dce7a3938b3', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-25 04:52:07.850444+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fe7626bc-0a4f-4dba-8cd1-84c8d31c18fe', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-25 06:12:04.347871+00', ''),
	('00000000-0000-0000-0000-000000000000', '116df004-8fa2-42bb-a9d0-0652b1c571e5', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-25 06:12:04.350161+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b004ce54-74b3-4571-bc16-10b917646861', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-25 06:42:14.790346+00', ''),
	('00000000-0000-0000-0000-000000000000', '9515af62-9c49-4ba6-92b9-62987bd8706a', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-25 06:42:14.793227+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bab86d60-5043-45c3-b11f-23ee469860b0', '{"action":"user_confirmation_requested","actor_id":"1dcd0bc0-5f89-46da-bd67-c24238c5d2b1","actor_username":"48504328371","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-09-25 07:15:06.690363+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd13973f6-f7a0-425e-819a-a62d4c88f3f7', '{"action":"user_signedup","actor_id":"1dcd0bc0-5f89-46da-bd67-c24238c5d2b1","actor_username":"48504328371","actor_via_sso":false,"log_type":"team"}', '2024-09-25 07:15:11.967909+00', ''),
	('00000000-0000-0000-0000-000000000000', '937bdd51-e24e-4fba-880a-3f7f863dd729', '{"action":"logout","actor_id":"1dcd0bc0-5f89-46da-bd67-c24238c5d2b1","actor_username":"48504328371","actor_via_sso":false,"log_type":"account"}', '2024-09-25 07:15:29.751463+00', ''),
	('00000000-0000-0000-0000-000000000000', '2857fbd2-ce48-4fc3-a99f-143298fe267b', '{"action":"user_recovery_requested","actor_id":"1dcd0bc0-5f89-46da-bd67-c24238c5d2b1","actor_username":"48504328371","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-25 07:20:19.374252+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a9b84b57-742f-4a35-b562-aca8c3cb8499', '{"action":"user_signedup","actor_id":"1dcd0bc0-5f89-46da-bd67-c24238c5d2b1","actor_username":"48504328371","actor_via_sso":false,"log_type":"team"}', '2024-09-25 07:20:23.672049+00', ''),
	('00000000-0000-0000-0000-000000000000', '3bc4ae48-906c-4899-9e4b-757cbb2f72d8', '{"action":"token_refreshed","actor_id":"66cd9414-b49b-4068-8653-4d8ff74a7612","actor_username":"48510386946","actor_via_sso":false,"log_type":"token"}', '2024-09-25 08:01:17.918579+00', ''),
	('00000000-0000-0000-0000-000000000000', '494df24e-28eb-4c8c-8015-ab3f59a6a342', '{"action":"token_revoked","actor_id":"66cd9414-b49b-4068-8653-4d8ff74a7612","actor_username":"48510386946","actor_via_sso":false,"log_type":"token"}', '2024-09-25 08:01:17.920493+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c740a9a9-f09d-473d-9139-1f9cfee41094', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-25 10:26:48.598172+00', ''),
	('00000000-0000-0000-0000-000000000000', '789cabd4-e97e-47d1-86ef-0be08ef07b4e', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-25 10:26:48.599447+00', ''),
	('00000000-0000-0000-0000-000000000000', '76b34a97-8707-4fed-b779-2155f0b1fba7', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-25 14:58:35.816899+00', ''),
	('00000000-0000-0000-0000-000000000000', '0dbde848-c5d2-4626-99fe-d49dde0f16ca', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-25 14:58:35.822171+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a3167af0-bf00-4fce-8320-aefbbf19738b', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-25 15:20:12.579305+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fb49b722-bc30-4af8-a3ca-e4cea7a1a5bd', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-25 15:20:12.58291+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f82ef50b-6bcc-4e0c-bc9f-d228d70c5b73', '{"action":"logout","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"account"}', '2024-09-25 15:20:17.22491+00', ''),
	('00000000-0000-0000-0000-000000000000', '9c63fb9f-7566-4964-8b97-d828528bb3db', '{"action":"user_recovery_requested","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-25 15:42:42.254089+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aef8adbd-3fbe-403b-a1eb-add9602fe3bd', '{"action":"user_signedup","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"team"}', '2024-09-25 15:43:00.748334+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd2b7e3ab-3cd2-42d8-882f-38fa015103bb', '{"action":"logout","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"account"}', '2024-09-25 15:43:04.223208+00', ''),
	('00000000-0000-0000-0000-000000000000', '8184296c-3121-4e4a-883f-31b9e2c99618', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-25 15:52:53.246723+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a2d84430-2328-4b0f-ab2e-4c1eecef2cc2', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-25 15:52:53.250525+00', ''),
	('00000000-0000-0000-0000-000000000000', '3397104f-ac7e-43f0-9f58-10a91e7032a4', '{"action":"user_recovery_requested","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-25 15:55:25.523901+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bb2e1bd8-8017-4e66-a4e6-a6a8f1c97251', '{"action":"user_signedup","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"team"}', '2024-09-25 15:55:36.131674+00', ''),
	('00000000-0000-0000-0000-000000000000', '66341d42-c62d-40a3-a9c3-b3ec398e9f8a', '{"action":"logout","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"account"}', '2024-09-25 15:55:52.552232+00', ''),
	('00000000-0000-0000-0000-000000000000', 'af53f9c9-1300-46ba-a284-06fde5584980', '{"action":"user_recovery_requested","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-25 16:03:25.853926+00', ''),
	('00000000-0000-0000-0000-000000000000', '10fc22df-e34c-47d6-b41e-b1ca4fa67c5c', '{"action":"user_signedup","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"team"}', '2024-09-25 16:03:40.1184+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fde33f7e-67e0-4b28-8122-7b9c2851c516', '{"action":"user_recovery_requested","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-25 16:05:58.633165+00', ''),
	('00000000-0000-0000-0000-000000000000', '908200e8-d91d-41a1-a308-84bcefdc6e73', '{"action":"user_signedup","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"team"}', '2024-09-25 16:06:06.663058+00', ''),
	('00000000-0000-0000-0000-000000000000', '12b02591-95b6-4222-81c8-253f818e65fc', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-25 16:27:53.507884+00', ''),
	('00000000-0000-0000-0000-000000000000', '0e94f167-b143-4cc8-b4ef-283066255127', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-25 16:27:53.512428+00', ''),
	('00000000-0000-0000-0000-000000000000', '9f13494f-9663-4409-a1d8-d7c66f23c135', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-25 17:40:14.94347+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a743a73f-92e6-47c0-94d2-8d9cf195b34f', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-25 17:40:14.945895+00', ''),
	('00000000-0000-0000-0000-000000000000', '87c77622-2d0d-400c-8bfe-cc793837fc13', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-26 05:42:48.934738+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e6f3421d-1495-468d-b393-7a919b1ab2f5', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-26 05:42:48.940243+00', ''),
	('00000000-0000-0000-0000-000000000000', '1414a01c-eda2-4808-9d21-c2db61635f85', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-26 07:22:58.885395+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd8ad21d0-06fc-4edd-b9b3-e73f283c4c43', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-26 07:22:58.888162+00', ''),
	('00000000-0000-0000-0000-000000000000', '4458cfc4-97e4-4886-bb4f-5c4c05782204', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-26 08:22:26.657855+00', ''),
	('00000000-0000-0000-0000-000000000000', '9af86c6f-30b3-4c21-8d1d-2519a6937f23', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-26 08:22:26.660608+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e7b175f6-94b8-461c-9a24-2f48c5248fae', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-26 09:03:39.743432+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e0d3a76f-b64f-421f-9e0c-1d24ede6df5e', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-26 09:03:39.74499+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fa8119a6-35d3-406b-bb8b-d4155d621534', '{"action":"user_recovery_requested","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-26 09:10:09.57541+00', ''),
	('00000000-0000-0000-0000-000000000000', '5fc3a460-6baf-4dc9-9a1d-60a798ed9e61', '{"action":"user_signedup","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-09-26 09:10:20.502088+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ae6c801c-1401-43fb-a5f6-af0ea63fd5e8', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-26 10:52:50.127621+00', ''),
	('00000000-0000-0000-0000-000000000000', '71752da4-a359-48e8-a371-2628a8c8b7cd', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-26 10:52:50.132546+00', ''),
	('00000000-0000-0000-0000-000000000000', '77d7c4ac-0203-4ff7-a9a3-499f67f84d81', '{"action":"user_confirmation_requested","actor_id":"3ed46d73-48a7-434e-9e86-21d8bc248e49","actor_username":"48511571830","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-09-26 13:54:59.697497+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd5e5368b-b471-4323-94d3-e7a66392a05c', '{"action":"user_signedup","actor_id":"3ed46d73-48a7-434e-9e86-21d8bc248e49","actor_username":"48511571830","actor_via_sso":false,"log_type":"team"}', '2024-09-26 13:55:03.524848+00', ''),
	('00000000-0000-0000-0000-000000000000', '27cb3bc5-bffc-4ca0-9724-45c8d5fa0c3d', '{"action":"token_refreshed","actor_id":"66cd9414-b49b-4068-8653-4d8ff74a7612","actor_username":"48510386946","actor_via_sso":false,"log_type":"token"}', '2024-09-26 14:23:33.241964+00', ''),
	('00000000-0000-0000-0000-000000000000', '24a02bc9-26ce-4883-a2b2-91db83d98337', '{"action":"token_revoked","actor_id":"66cd9414-b49b-4068-8653-4d8ff74a7612","actor_username":"48510386946","actor_via_sso":false,"log_type":"token"}', '2024-09-26 14:23:33.243971+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ec6a8f35-9030-4eaa-8c22-c1f4df403f8f', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-26 16:06:33.423104+00', ''),
	('00000000-0000-0000-0000-000000000000', '9d4c567a-5a71-4485-bfc2-04e35e9e904d', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-26 16:06:33.425131+00', ''),
	('00000000-0000-0000-0000-000000000000', '34e6b058-3b50-4330-ad5f-6905372e00c9', '{"action":"user_confirmation_requested","actor_id":"d049f2b2-7128-426c-8930-9653200a8339","actor_username":"48698517176","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-09-26 16:08:35.175013+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dfc992a1-2aec-4ea0-a072-5be5a461985c', '{"action":"user_signedup","actor_id":"d049f2b2-7128-426c-8930-9653200a8339","actor_username":"48698517176","actor_via_sso":false,"log_type":"team"}', '2024-09-26 16:08:38.863772+00', ''),
	('00000000-0000-0000-0000-000000000000', '30bbfbd9-3a1b-4506-9d69-5b55d3120bdc', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-26 16:16:15.707081+00', ''),
	('00000000-0000-0000-0000-000000000000', '1beeed87-35dc-40f6-a757-85d5cab27333', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-26 16:16:15.709856+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e44e78c0-9020-486d-b9e3-a862cdd11689', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-26 20:21:29.41829+00', ''),
	('00000000-0000-0000-0000-000000000000', '81fceb9c-c505-4108-9ab7-08f64d935612', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-26 20:21:29.420495+00', ''),
	('00000000-0000-0000-0000-000000000000', '237d9471-a61d-45cd-8bf2-33200186b057', '{"action":"token_refreshed","actor_id":"e69f5821-d277-4c08-8d92-114855a48e94","actor_username":"48795732777","actor_via_sso":false,"log_type":"token"}', '2024-09-26 21:10:25.127469+00', ''),
	('00000000-0000-0000-0000-000000000000', '7c432139-0a81-45e8-bf9b-44a731ac50b5', '{"action":"token_revoked","actor_id":"e69f5821-d277-4c08-8d92-114855a48e94","actor_username":"48795732777","actor_via_sso":false,"log_type":"token"}', '2024-09-26 21:10:25.13132+00', ''),
	('00000000-0000-0000-0000-000000000000', '97cebc54-ba40-48ba-8029-3e003b504309', '{"action":"token_refreshed","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-28 17:03:15.253641+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f5b61b27-2d87-4e85-907d-2689f2f952f1', '{"action":"token_revoked","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-28 17:03:15.269795+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b33d1a6b-3dc8-4b68-9d98-f66ad60957fa', '{"action":"user_recovery_requested","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-09-28 17:03:31.106943+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c477ab0f-d6a0-437f-b7b5-8435644d128c', '{"action":"user_signedup","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"team"}', '2024-09-28 17:03:43.39225+00', ''),
	('00000000-0000-0000-0000-000000000000', '02482d03-1e3d-4b0d-8d1c-554b63af4f0e', '{"action":"token_refreshed","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-28 17:08:53.095485+00', ''),
	('00000000-0000-0000-0000-000000000000', '84a65e1e-6549-4bd9-ae5a-14c8f76887f7', '{"action":"token_revoked","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-28 17:08:53.100035+00', ''),
	('00000000-0000-0000-0000-000000000000', '22a5f264-938c-42d9-9d00-74260e80723a', '{"action":"logout","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"account"}', '2024-09-28 17:09:04.088625+00', ''),
	('00000000-0000-0000-0000-000000000000', 'edad3c4d-a7b4-47d4-bf29-892ac194dc35', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-29 10:15:30.387993+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e86c5a64-c0b4-4e35-a4dd-e483501f52d0', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-09-29 10:15:30.402175+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b5c596b4-330d-441b-91ed-02a96cb2cce0', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-29 11:48:24.383858+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b22cf2a-4008-4341-be15-e5cf9206b302', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-29 11:48:24.388338+00', ''),
	('00000000-0000-0000-0000-000000000000', '184b0de4-ec34-4b5f-8d10-28fc65755c28', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-29 12:57:25.53495+00', ''),
	('00000000-0000-0000-0000-000000000000', '74efd127-8cbe-4c53-be7d-dfbb3ab1de46', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-29 12:57:25.537217+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fd79c4c4-bab6-46f3-8aa7-bad97bcded01', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-29 15:48:11.554062+00', ''),
	('00000000-0000-0000-0000-000000000000', '918703a5-f36c-4a7a-aabc-5c17c91455c8', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-09-29 15:48:11.556259+00', ''),
	('00000000-0000-0000-0000-000000000000', '9234ff7c-fcd1-4862-8f30-0fbbe16d6cd1', '{"action":"token_refreshed","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-30 10:33:55.531402+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bf655dee-6208-4b38-bf23-9236ec0aa5ac', '{"action":"token_revoked","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-09-30 10:33:55.538442+00', ''),
	('00000000-0000-0000-0000-000000000000', '618bb2d1-9c91-4cb8-a3df-fa02db221bc9', '{"action":"token_refreshed","actor_id":"d049f2b2-7128-426c-8930-9653200a8339","actor_username":"48698517176","actor_via_sso":false,"log_type":"token"}', '2024-09-30 12:34:37.509918+00', ''),
	('00000000-0000-0000-0000-000000000000', '918b4fc8-0bc0-4610-affa-abcfd0891d7a', '{"action":"token_revoked","actor_id":"d049f2b2-7128-426c-8930-9653200a8339","actor_username":"48698517176","actor_via_sso":false,"log_type":"token"}', '2024-09-30 12:34:37.514315+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a2e554fb-cec3-4053-931f-274fbdddcaf9', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-10-01 14:53:03.815841+00', ''),
	('00000000-0000-0000-0000-000000000000', '39ee86aa-4fbf-4666-bf13-49a25440323a', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-10-01 14:53:03.826942+00', ''),
	('00000000-0000-0000-0000-000000000000', '3e281682-5dd7-486e-96f2-3757c292608c', '{"action":"token_refreshed","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-10-02 12:03:30.446371+00', ''),
	('00000000-0000-0000-0000-000000000000', '9e352481-3f07-4a52-a7dd-bac8e036e20c', '{"action":"token_refreshed","actor_id":"e69f5821-d277-4c08-8d92-114855a48e94","actor_username":"48795732777","actor_via_sso":false,"log_type":"token"}', '2024-10-02 12:03:30.445883+00', ''),
	('00000000-0000-0000-0000-000000000000', '75c39367-676c-41f3-9f75-456a083a6442', '{"action":"token_revoked","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-10-02 12:03:30.469644+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b8ee180c-2ae6-4cb5-a1bd-0e8e789d69d2', '{"action":"token_revoked","actor_id":"e69f5821-d277-4c08-8d92-114855a48e94","actor_username":"48795732777","actor_via_sso":false,"log_type":"token"}', '2024-10-02 12:03:30.470287+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fc5e1e1d-8d5e-405a-8f7b-d6b10875b5a0', '{"action":"token_refreshed","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-10-02 12:03:34.65688+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd969ea47-c9ec-41ba-84c3-af0f56f46378', '{"action":"token_revoked","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-10-02 12:03:34.658539+00', ''),
	('00000000-0000-0000-0000-000000000000', '4bd5e599-3732-4859-aec1-afa967d2dce6', '{"action":"user_confirmation_requested","actor_id":"1c1a5747-82f4-497d-be61-74d279785999","actor_username":"48691169287","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-10-02 15:06:38.553601+00', ''),
	('00000000-0000-0000-0000-000000000000', '1637348c-2b6b-446b-a58e-5be147a2e537', '{"action":"user_signedup","actor_id":"1c1a5747-82f4-497d-be61-74d279785999","actor_username":"48691169287","actor_via_sso":false,"log_type":"team"}', '2024-10-02 15:06:46.069556+00', ''),
	('00000000-0000-0000-0000-000000000000', '4524349f-755b-4050-a218-21f15dfe5f76', '{"action":"token_refreshed","actor_id":"d049f2b2-7128-426c-8930-9653200a8339","actor_username":"48698517176","actor_via_sso":false,"log_type":"token"}', '2024-10-02 15:29:32.157994+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ab284064-8f77-4f56-9241-6e2032335fc5', '{"action":"token_revoked","actor_id":"d049f2b2-7128-426c-8930-9653200a8339","actor_username":"48698517176","actor_via_sso":false,"log_type":"token"}', '2024-10-02 15:29:32.161704+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c1c394fe-505c-4d23-ab3a-704dedf79816', '{"action":"token_refreshed","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-10-02 16:11:53.324563+00', ''),
	('00000000-0000-0000-0000-000000000000', '39baad88-4643-41fe-b1e0-315a8241ca79', '{"action":"token_revoked","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-10-02 16:11:53.3281+00', ''),
	('00000000-0000-0000-0000-000000000000', '117ec22c-598c-4ebf-832e-94f43a88b3fd', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-10-02 16:26:30.744634+00', ''),
	('00000000-0000-0000-0000-000000000000', '1ace7e86-9643-4263-a527-4118541a31ea', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-10-02 16:26:30.750505+00', ''),
	('00000000-0000-0000-0000-000000000000', '8c4d0798-6b44-4ca0-9e06-d32c1e42ce33', '{"action":"token_refreshed","actor_id":"1c1a5747-82f4-497d-be61-74d279785999","actor_username":"48691169287","actor_via_sso":false,"log_type":"token"}', '2024-10-02 18:01:16.2991+00', ''),
	('00000000-0000-0000-0000-000000000000', '10df5136-4247-446a-97b0-dec3a2fb5be5', '{"action":"token_revoked","actor_id":"1c1a5747-82f4-497d-be61-74d279785999","actor_username":"48691169287","actor_via_sso":false,"log_type":"token"}', '2024-10-02 18:01:16.301477+00', ''),
	('00000000-0000-0000-0000-000000000000', '55fb660b-0810-46e8-8196-91953216db2e', '{"action":"user_recovery_requested","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-10-03 14:06:23.731809+00', ''),
	('00000000-0000-0000-0000-000000000000', '5bf7f7a4-1cc2-4b56-96ff-c95b1326bb68', '{"action":"user_signedup","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"team"}', '2024-10-03 14:06:37.259223+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bf7faff1-46bf-4281-aa12-8849d22d56b6', '{"action":"token_refreshed","actor_id":"38fccaae-4320-436d-b8a5-bd6f88b423f1","actor_username":"48503425047","actor_via_sso":false,"log_type":"token"}', '2024-10-04 15:12:22.539928+00', ''),
	('00000000-0000-0000-0000-000000000000', '54e6cca6-b3e9-4f1d-92d7-8469d016debb', '{"action":"token_revoked","actor_id":"38fccaae-4320-436d-b8a5-bd6f88b423f1","actor_username":"48503425047","actor_via_sso":false,"log_type":"token"}', '2024-10-04 15:12:22.551518+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e60e4298-ffbf-4b9b-9925-968a37b49b1d', '{"action":"token_refreshed","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-10-05 09:22:38.231508+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd4df5627-2763-407d-a79d-1bf6aed08726', '{"action":"token_revoked","actor_id":"0b4d8517-f465-4bc0-a738-23db4344f58e","actor_username":"48781350347","actor_via_sso":false,"log_type":"token"}', '2024-10-05 09:22:38.241968+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eaf41b7f-7976-4d20-96c6-937b36ba091a', '{"action":"token_refreshed","actor_id":"4c725c3c-6297-4260-97a2-fce1d6fa9f2a","actor_username":"48731700173","actor_via_sso":false,"log_type":"token"}', '2024-10-05 17:22:05.933123+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fcc63985-6b9e-4c3b-9321-1f2047861bb8', '{"action":"token_revoked","actor_id":"4c725c3c-6297-4260-97a2-fce1d6fa9f2a","actor_username":"48731700173","actor_via_sso":false,"log_type":"token"}', '2024-10-05 17:22:05.944627+00', ''),
	('00000000-0000-0000-0000-000000000000', '149eebbd-5b42-4e6e-8584-2f7d7854192a', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-10-06 09:04:58.835336+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b137ebc4-6fcb-4d42-87a5-23b35b97c78a', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-10-06 09:04:58.851201+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eb9dfaff-2250-4ccb-b325-466e53b387c9', '{"action":"token_refreshed","actor_id":"38fccaae-4320-436d-b8a5-bd6f88b423f1","actor_username":"48503425047","actor_via_sso":false,"log_type":"token"}', '2024-10-06 16:17:11.623473+00', ''),
	('00000000-0000-0000-0000-000000000000', '3b3c8c6e-d222-43ba-89e2-2e55659dc3e4', '{"action":"token_revoked","actor_id":"38fccaae-4320-436d-b8a5-bd6f88b423f1","actor_username":"48503425047","actor_via_sso":false,"log_type":"token"}', '2024-10-06 16:17:11.630988+00', ''),
	('00000000-0000-0000-0000-000000000000', '89b5b30e-e6f0-4031-9aa9-2b08caa08e83', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-10-10 18:57:12.208644+00', ''),
	('00000000-0000-0000-0000-000000000000', '8ef387d9-4efd-4921-95a3-cdcb7dc8f210', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-10-10 18:57:12.218516+00', ''),
	('00000000-0000-0000-0000-000000000000', '589b7e12-5224-469e-b050-22e2087afb04', '{"action":"user_confirmation_requested","actor_id":"a3ee37fe-738c-4ad5-a5bb-43ae02846a05","actor_username":"48570178119","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-10-10 19:22:41.651919+00', ''),
	('00000000-0000-0000-0000-000000000000', '0f2f4534-380a-4a50-8e7e-5bec7d730188', '{"action":"user_signedup","actor_id":"a3ee37fe-738c-4ad5-a5bb-43ae02846a05","actor_username":"48570178119","actor_via_sso":false,"log_type":"team"}', '2024-10-10 19:22:48.381984+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd78c1cd6-940e-4bfa-9a1c-c527c6ceb0cd', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-10-10 19:31:56.854423+00', ''),
	('00000000-0000-0000-0000-000000000000', '383f6ea1-a1d7-4627-91e6-c981916adf1d', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-10-10 19:31:56.856343+00', ''),
	('00000000-0000-0000-0000-000000000000', '36cdce00-afe0-4e2a-9b09-b5443de29313', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-10-11 07:25:55.651636+00', ''),
	('00000000-0000-0000-0000-000000000000', '77f130fb-0298-4d9c-8c4f-cbda554011bd', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-10-11 07:25:55.657241+00', ''),
	('00000000-0000-0000-0000-000000000000', '87f1aee9-6b84-4e5b-b2ca-bcab933bd88e', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-10-11 07:39:12.75045+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bc5e5657-ddff-4ffa-a529-d33e7f06b766', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-10-11 07:39:12.753857+00', ''),
	('00000000-0000-0000-0000-000000000000', '3a131cc7-9b8d-4789-999c-8f232070349e', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-10-11 09:33:48.463445+00', ''),
	('00000000-0000-0000-0000-000000000000', '6d5a99e9-6da5-4c7d-b5ea-2d3edea66a30', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-10-11 09:33:48.466074+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ae5e116a-3cc0-4b05-b0ba-af84451d9eb8', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-10-11 10:02:25.609721+00', ''),
	('00000000-0000-0000-0000-000000000000', '9e55d333-9818-465e-b3db-337b2cbfbd41', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-10-11 10:02:25.611789+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b9c4cd3-6f8c-4ae3-8c55-63059d18f62b', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-10-11 17:42:09.941935+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c5cc11b3-29b0-4b1e-97d9-689b481fd12c', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-10-11 17:42:09.947858+00', ''),
	('00000000-0000-0000-0000-000000000000', '40173af2-0c43-424e-8c2a-ef802fc205d7', '{"action":"token_refreshed","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-10-11 19:18:12.884605+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd817b4fc-6b68-420d-b8a9-f383c10dad2e', '{"action":"token_revoked","actor_id":"9a74f0f3-e5a0-4ac5-afbb-faa23d310580","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-10-11 19:18:12.888299+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd8565808-c782-4903-ab38-871526108b5f', '{"action":"user_confirmation_requested","actor_id":"0e5a626b-6b35-4377-8871-28a5950e388a","actor_username":"48690137298","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-10-11 20:14:11.194158+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bdd16ac6-f615-4171-b993-e6feda212208', '{"action":"user_signedup","actor_id":"0e5a626b-6b35-4377-8871-28a5950e388a","actor_username":"48690137298","actor_via_sso":false,"log_type":"team"}', '2024-10-11 20:14:17.611321+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e3e9b85e-4666-434e-bc55-ab0586646502', '{"action":"user_confirmation_requested","actor_id":"cbb58eed-6db6-4cab-b84d-dba0c7a31e97","actor_username":"48572577633","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-10-12 12:51:29.652969+00', ''),
	('00000000-0000-0000-0000-000000000000', '915f03f0-06f9-4a0b-a0a4-3bb5ace36c35', '{"action":"user_signedup","actor_id":"cbb58eed-6db6-4cab-b84d-dba0c7a31e97","actor_username":"48572577633","actor_via_sso":false,"log_type":"team"}', '2024-10-12 12:51:35.502253+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b464ab5c-a4ef-4f34-bec1-872087295257', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-10-12 12:53:45.358911+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fcc868bf-34de-4066-a53f-7bda48f71e09', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-10-12 12:53:45.363463+00', ''),
	('00000000-0000-0000-0000-000000000000', '1b17f654-4730-4f8b-97e0-e8d73b66dc5c', '{"action":"token_refreshed","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-10-12 14:02:00.40416+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bf896e43-1dd0-4681-8d8f-8ecf1067afce', '{"action":"token_revoked","actor_id":"59cfb716-cea2-4397-b995-7998b4d1a48a","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-10-12 14:02:00.406345+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '1dcd0bc0-5f89-46da-bd67-c24238c5d2b1', 'authenticated', 'authenticated', NULL, '$2a$10$eQAiBiUf2LYQUdWhAaY/KOptSjpIaQrsrjFAT9bYNMnL4R0znch2q', NULL, NULL, '', '2024-09-25 07:20:19.377683+00', '', NULL, '', '', NULL, '2024-09-25 07:20:23.677399+00', '{"provider": "phone", "providers": ["phone"]}', '{"sub": "1dcd0bc0-5f89-46da-bd67-c24238c5d2b1", "email_verified": false, "phone_verified": false}', NULL, '2024-09-25 07:15:06.647142+00', '2024-09-25 07:20:23.683459+00', '48504328371', '2024-09-25 07:20:23.672981+00', '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '1c1a5747-82f4-497d-be61-74d279785999', 'authenticated', 'authenticated', NULL, '$2a$10$QJyvqPeCI0k2QgATgLZM0eyWyJfL6UOGPnDj9ZcjhLIPtNeq58LlW', NULL, NULL, '', '2024-10-02 15:06:38.558354+00', '', NULL, '', '', NULL, '2024-10-02 15:06:46.075797+00', '{"provider": "phone", "providers": ["phone"]}', '{"sub": "1c1a5747-82f4-497d-be61-74d279785999", "email_verified": false, "phone_verified": false}', NULL, '2024-10-02 15:06:38.506519+00', '2024-10-02 18:01:16.306989+00', '48691169287', '2024-10-02 15:06:46.070297+00', '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '0b4d8517-f465-4bc0-a738-23db4344f58e', 'authenticated', 'authenticated', NULL, '$2a$10$69vkqbiNYhgFw6a4UJAOWehK4METXBCqJg.0XqPQ5kc2GbOkXLyTi', NULL, NULL, '', '2024-10-03 14:06:23.748363+00', '', NULL, '', '', NULL, '2024-10-03 14:06:37.267748+00', '{"provider": "phone", "providers": ["phone"]}', '{"sub": "0b4d8517-f465-4bc0-a738-23db4344f58e", "email_verified": false, "phone_verified": false}', NULL, '2024-09-19 08:10:53.543016+00', '2024-10-05 09:22:38.260667+00', '48781350347', '2024-10-03 14:06:37.260592+00', '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '3ed46d73-48a7-434e-9e86-21d8bc248e49', 'authenticated', 'authenticated', NULL, '$2a$10$tFWwy5C2k6i6BogkCGlpN.DvVtubtklyv/qmxwzRZQVjP05CEGwB2', NULL, NULL, '', '2024-09-26 13:54:59.698981+00', '', NULL, '', '', NULL, '2024-09-26 13:55:03.528385+00', '{"provider": "phone", "providers": ["phone"]}', '{"sub": "3ed46d73-48a7-434e-9e86-21d8bc248e49", "email_verified": false, "phone_verified": false}', NULL, '2024-09-26 13:54:59.68839+00', '2024-09-26 13:55:03.534049+00', '48511571830', '2024-09-26 13:55:03.525586+00', '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '66cd9414-b49b-4068-8653-4d8ff74a7612', 'authenticated', 'authenticated', NULL, '$2a$10$qe2ebn0zvIcwxhC9SuHSJOpG8BZ80jHB3utiYFN9qS3jrBzxbntn.', NULL, NULL, '', '2024-09-24 11:10:05.805483+00', '', NULL, '', '', NULL, '2024-09-24 11:10:09.139382+00', '{"provider": "phone", "providers": ["phone"]}', '{"sub": "66cd9414-b49b-4068-8653-4d8ff74a7612", "email_verified": false, "phone_verified": false}', NULL, '2024-09-24 07:35:57.544408+00', '2024-09-26 14:23:33.248115+00', '48510386946', '2024-09-24 11:10:09.13459+00', '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'da800d6b-b796-4eae-8923-5000d25249b7', 'authenticated', 'authenticated', NULL, '$2a$10$cLn22NSm0PoPVed2FdQoguX33paE7WMJAh40rE2MB7iM.prB13utm', NULL, NULL, '', '2024-09-23 08:10:44.528825+00', '', NULL, '', '', NULL, '2024-09-23 08:10:47.095623+00', '{"provider": "phone", "providers": ["phone"]}', '{"sub": "da800d6b-b796-4eae-8923-5000d25249b7", "email_verified": false, "phone_verified": false}', NULL, '2024-09-23 08:10:21.838034+00', '2024-09-23 08:10:47.107006+00', '48604214649', '2024-09-23 08:10:47.089523+00', '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '4c725c3c-6297-4260-97a2-fce1d6fa9f2a', 'authenticated', 'authenticated', NULL, '$2a$10$DTxQzG6lYZD34.EjGgLOlOT9aJMjGCj82BO43E1PQkE8jqlhQN55i', NULL, NULL, '', '2024-09-24 11:56:48.313655+00', '', NULL, '', '', NULL, '2024-09-24 11:57:02.306668+00', '{"provider": "phone", "providers": ["phone"]}', '{"sub": "4c725c3c-6297-4260-97a2-fce1d6fa9f2a", "email_verified": false, "phone_verified": false}', NULL, '2024-09-24 11:56:48.275588+00', '2024-10-05 17:22:05.962425+00', '48731700173', '2024-09-24 11:57:02.303321+00', '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'd049f2b2-7128-426c-8930-9653200a8339', 'authenticated', 'authenticated', NULL, '$2a$10$q8yGii9Txco6/pVI/.RpTe.f.YdmnTqvHgjuZxYz3bOEseYiCcppm', NULL, NULL, '', '2024-09-26 16:08:35.177733+00', '', NULL, '', '', NULL, '2024-09-26 16:08:38.86911+00', '{"provider": "phone", "providers": ["phone"]}', '{"sub": "d049f2b2-7128-426c-8930-9653200a8339", "email_verified": false, "phone_verified": false}', NULL, '2024-09-26 16:08:35.165011+00', '2024-10-02 15:29:32.172091+00', '48698517176', '2024-09-26 16:08:38.865573+00', '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '38fccaae-4320-436d-b8a5-bd6f88b423f1', 'authenticated', 'authenticated', NULL, '$2a$10$d7OrAbCcgur/HTm879OLgu.nBcDmAoPMvdnO4HtqvuNoh4x0Fuqbq', NULL, NULL, '', '2024-09-24 21:01:34.768712+00', '', NULL, '', '', NULL, '2024-09-24 21:01:36.684186+00', '{"provider": "phone", "providers": ["phone"]}', '{"sub": "38fccaae-4320-436d-b8a5-bd6f88b423f1", "email_verified": false, "phone_verified": false}', NULL, '2024-09-24 21:01:13.678982+00', '2024-10-06 16:17:11.638479+00', '48503425047', '2024-09-24 21:01:36.680985+00', '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'e69f5821-d277-4c08-8d92-114855a48e94', 'authenticated', 'authenticated', NULL, '$2a$10$tbR9NBxGHi9tbBs.i7CRLOCSdvK8U/0OyXCasPLo8R0eHez6RVW2S', NULL, NULL, '', '2024-09-24 18:06:14.356953+00', '', NULL, '', '', NULL, '2024-09-24 18:06:16.801852+00', '{"provider": "phone", "providers": ["phone"]}', '{"sub": "e69f5821-d277-4c08-8d92-114855a48e94", "email_verified": false, "phone_verified": false}', NULL, '2024-09-24 18:05:45.852948+00', '2024-10-02 12:03:30.517612+00', '48795732777', '2024-09-24 18:06:16.797769+00', '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '0e5a626b-6b35-4377-8871-28a5950e388a', 'authenticated', 'authenticated', NULL, '$2a$10$6lkggWkDY2nBji03tY41fe62T6fvrJ2ecY7RasDtPikQ693pk1uxS', NULL, NULL, '', '2024-10-11 20:14:11.196363+00', '', NULL, '', '', NULL, '2024-10-11 20:14:17.616949+00', '{"provider": "phone", "providers": ["phone"]}', '{"sub": "0e5a626b-6b35-4377-8871-28a5950e388a", "email_verified": false, "phone_verified": false}', NULL, '2024-10-11 20:14:11.153439+00', '2024-10-11 20:14:17.628838+00', '48690137298', '2024-10-11 20:14:17.61212+00', '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'a3ee37fe-738c-4ad5-a5bb-43ae02846a05', 'authenticated', 'authenticated', NULL, '$2a$10$dd3ojNdvOLJjkB4PzJiSxeKJZbXgw9lTAit4CKrF7swtNiQUbPHoC', NULL, NULL, '', '2024-10-10 19:22:41.655418+00', '', NULL, '', '', NULL, '2024-10-10 19:22:48.385885+00', '{"provider": "phone", "providers": ["phone"]}', '{"sub": "a3ee37fe-738c-4ad5-a5bb-43ae02846a05", "email_verified": false, "phone_verified": false}', NULL, '2024-10-10 19:22:41.613461+00', '2024-10-10 19:22:48.397544+00', '48570178119', '2024-10-10 19:22:48.382743+00', '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', 'authenticated', 'authenticated', NULL, '$2a$10$BLqmfkDapaY30woeZfD07urF3EK.9XXUVct0V03Az4tuAHEIqy/7a', NULL, NULL, '', '2024-09-26 09:10:09.580775+00', '', NULL, '', '', NULL, '2024-09-26 09:10:20.507958+00', '{"provider": "phone", "providers": ["phone"]}', '{"sub": "9a74f0f3-e5a0-4ac5-afbb-faa23d310580", "email_verified": false, "phone_verified": false}', NULL, '2024-09-18 19:13:20.109363+00', '2024-10-11 19:18:12.893889+00', '48666978350', '2024-09-26 09:10:20.503307+00', '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'cbb58eed-6db6-4cab-b84d-dba0c7a31e97', 'authenticated', 'authenticated', NULL, '$2a$10$x91bnVw49zW/PTF7sndQR.R9vxpCCW.fGFRrsTh4hClZMAel9az5C', NULL, NULL, '', '2024-10-12 12:51:29.658613+00', '', NULL, '', '', NULL, '2024-10-12 12:51:35.51122+00', '{"provider": "phone", "providers": ["phone"]}', '{"sub": "cbb58eed-6db6-4cab-b84d-dba0c7a31e97", "email_verified": false, "phone_verified": false}', NULL, '2024-10-12 12:51:29.603939+00', '2024-10-12 12:51:35.52949+00', '48572577633', '2024-10-12 12:51:35.50423+00', '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '59cfb716-cea2-4397-b995-7998b4d1a48a', 'authenticated', 'authenticated', NULL, '$2a$10$Ra.psFJPhi6hbwDyp97J2.Dsq8mvCnRr4eUwiUpT/cSLq8SYbRYRC', NULL, NULL, '', '2024-09-25 16:05:58.636268+00', '', NULL, '', '', NULL, '2024-09-25 16:06:06.667446+00', '{"provider": "phone", "providers": ["phone"]}', '{"sub": "59cfb716-cea2-4397-b995-7998b4d1a48a", "email_verified": false, "phone_verified": false}', NULL, '2024-09-18 16:47:14.493371+00', '2024-10-12 14:02:00.413029+00', '48570820237', '2024-09-25 16:06:06.663826+00', '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('d049f2b2-7128-426c-8930-9653200a8339', 'd049f2b2-7128-426c-8930-9653200a8339', '{"sub": "d049f2b2-7128-426c-8930-9653200a8339", "email_verified": false, "phone_verified": false}', 'phone', '2024-09-26 16:08:35.171665+00', '2024-09-26 16:08:35.171716+00', '2024-09-26 16:08:35.171716+00', '07f7e064-f872-42ad-be6a-3c3b46243c19'),
	('1c1a5747-82f4-497d-be61-74d279785999', '1c1a5747-82f4-497d-be61-74d279785999', '{"sub": "1c1a5747-82f4-497d-be61-74d279785999", "email_verified": false, "phone_verified": false}', 'phone', '2024-10-02 15:06:38.543027+00', '2024-10-02 15:06:38.543095+00', '2024-10-02 15:06:38.543095+00', '6f9f70e3-3fe1-4ef7-844a-60e2bb4c2d47'),
	('0e5a626b-6b35-4377-8871-28a5950e388a', '0e5a626b-6b35-4377-8871-28a5950e388a', '{"sub": "0e5a626b-6b35-4377-8871-28a5950e388a", "email_verified": false, "phone_verified": false}', 'phone', '2024-10-11 20:14:11.179051+00', '2024-10-11 20:14:11.179107+00', '2024-10-11 20:14:11.179107+00', '1061d81f-7c7e-4471-96ac-8dd53ed71786'),
	('59cfb716-cea2-4397-b995-7998b4d1a48a', '59cfb716-cea2-4397-b995-7998b4d1a48a', '{"sub": "59cfb716-cea2-4397-b995-7998b4d1a48a", "email_verified": false, "phone_verified": false}', 'phone', '2024-09-18 16:47:14.523559+00', '2024-09-18 16:47:14.523619+00', '2024-09-18 16:47:14.523619+00', '01abd616-f6a3-48da-958d-3839b4443b29'),
	('9a74f0f3-e5a0-4ac5-afbb-faa23d310580', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', '{"sub": "9a74f0f3-e5a0-4ac5-afbb-faa23d310580", "email_verified": false, "phone_verified": false}', 'phone', '2024-09-18 19:13:20.121266+00', '2024-09-18 19:13:20.121321+00', '2024-09-18 19:13:20.121321+00', '3012dc5e-d71a-49db-9ebe-e24812574723'),
	('66cd9414-b49b-4068-8653-4d8ff74a7612', '66cd9414-b49b-4068-8653-4d8ff74a7612', '{"sub": "66cd9414-b49b-4068-8653-4d8ff74a7612", "email_verified": false, "phone_verified": false}', 'phone', '2024-09-24 07:35:57.579836+00', '2024-09-24 07:35:57.579908+00', '2024-09-24 07:35:57.579908+00', '2e96c621-090b-4875-8a82-d99d9242dc3b'),
	('e69f5821-d277-4c08-8d92-114855a48e94', 'e69f5821-d277-4c08-8d92-114855a48e94', '{"sub": "e69f5821-d277-4c08-8d92-114855a48e94", "email_verified": false, "phone_verified": false}', 'phone', '2024-09-24 18:05:45.883198+00', '2024-09-24 18:05:45.88325+00', '2024-09-24 18:05:45.88325+00', '0ce1a666-6ba3-44fa-a173-901acd35bca2'),
	('38fccaae-4320-436d-b8a5-bd6f88b423f1', '38fccaae-4320-436d-b8a5-bd6f88b423f1', '{"sub": "38fccaae-4320-436d-b8a5-bd6f88b423f1", "email_verified": false, "phone_verified": false}', 'phone', '2024-09-24 21:01:13.688283+00', '2024-09-24 21:01:13.688337+00', '2024-09-24 21:01:13.688337+00', '692b4d43-0f3f-4aa6-be3e-e85488cb0588'),
	('0b4d8517-f465-4bc0-a738-23db4344f58e', '0b4d8517-f465-4bc0-a738-23db4344f58e', '{"sub": "0b4d8517-f465-4bc0-a738-23db4344f58e", "email_verified": false, "phone_verified": false}', 'phone', '2024-09-19 08:10:53.576627+00', '2024-09-19 08:10:53.5767+00', '2024-09-19 08:10:53.5767+00', '157285aa-f6e1-4beb-8b76-2f0ec0658f77'),
	('a3ee37fe-738c-4ad5-a5bb-43ae02846a05', 'a3ee37fe-738c-4ad5-a5bb-43ae02846a05', '{"sub": "a3ee37fe-738c-4ad5-a5bb-43ae02846a05", "email_verified": false, "phone_verified": false}', 'phone', '2024-10-10 19:22:41.643017+00', '2024-10-10 19:22:41.643094+00', '2024-10-10 19:22:41.643094+00', 'f54a23eb-839a-4d75-94f8-413a9cc355ba'),
	('cbb58eed-6db6-4cab-b84d-dba0c7a31e97', 'cbb58eed-6db6-4cab-b84d-dba0c7a31e97', '{"sub": "cbb58eed-6db6-4cab-b84d-dba0c7a31e97", "email_verified": false, "phone_verified": false}', 'phone', '2024-10-12 12:51:29.642511+00', '2024-10-12 12:51:29.642583+00', '2024-10-12 12:51:29.642583+00', '18135aba-ff77-4ddb-9f72-d4646d769198'),
	('da800d6b-b796-4eae-8923-5000d25249b7', 'da800d6b-b796-4eae-8923-5000d25249b7', '{"sub": "da800d6b-b796-4eae-8923-5000d25249b7", "email_verified": false, "phone_verified": false}', 'phone', '2024-09-23 08:10:21.874127+00', '2024-09-23 08:10:21.874193+00', '2024-09-23 08:10:21.874193+00', '6bf899ec-0ecf-4103-850b-edbdb1999d3c'),
	('4c725c3c-6297-4260-97a2-fce1d6fa9f2a', '4c725c3c-6297-4260-97a2-fce1d6fa9f2a', '{"sub": "4c725c3c-6297-4260-97a2-fce1d6fa9f2a", "email_verified": false, "phone_verified": false}', 'phone', '2024-09-24 11:56:48.299631+00', '2024-09-24 11:56:48.299693+00', '2024-09-24 11:56:48.299693+00', '2ccd491f-3986-49e0-aec0-30586b4510bb'),
	('1dcd0bc0-5f89-46da-bd67-c24238c5d2b1', '1dcd0bc0-5f89-46da-bd67-c24238c5d2b1', '{"sub": "1dcd0bc0-5f89-46da-bd67-c24238c5d2b1", "email_verified": false, "phone_verified": false}', 'phone', '2024-09-25 07:15:06.681157+00', '2024-09-25 07:15:06.681224+00', '2024-09-25 07:15:06.681224+00', 'f08dd3c8-074d-495b-afb3-f2650710ba0a'),
	('3ed46d73-48a7-434e-9e86-21d8bc248e49', '3ed46d73-48a7-434e-9e86-21d8bc248e49', '{"sub": "3ed46d73-48a7-434e-9e86-21d8bc248e49", "email_verified": false, "phone_verified": false}', 'phone', '2024-09-26 13:54:59.693961+00', '2024-09-26 13:54:59.694013+00', '2024-09-26 13:54:59.694013+00', '48fd14ab-d5aa-4a48-87bc-6620190f4030');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('46197853-238e-4b45-80c0-5483088d87ce', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', '2024-09-24 12:33:08.417953+00', '2024-09-24 12:33:08.417953+00', NULL, 'aal1', NULL, NULL, 'Dart/3.5 (dart:io)', '46.205.199.158', NULL),
	('2b2b85af-8e86-47f4-931d-d6c2f0f2db8f', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', '2024-09-24 13:10:59.416917+00', '2024-09-24 13:10:59.416917+00', NULL, 'aal1', NULL, NULL, 'Dart/3.5 (dart:io)', '46.205.199.158', NULL),
	('45b15fe2-8f2c-4bf8-a701-2588f77f3438', 'e69f5821-d277-4c08-8d92-114855a48e94', '2024-09-24 18:06:16.801929+00', '2024-10-02 12:03:30.530331+00', NULL, 'aal1', NULL, '2024-10-02 12:03:30.530236', 'Dart/3.5 (dart:io)', '31.0.50.94', NULL),
	('96a7a019-353f-4f52-8de0-9e2d0b0ceff7', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', '2024-09-24 13:07:21.255368+00', '2024-09-25 06:12:04.363086+00', NULL, 'aal1', NULL, '2024-09-25 06:12:04.363011', 'Dart/3.5 (dart:io)', '46.205.199.158', NULL),
	('6edbd046-d789-47bb-89fe-dc924a81ae80', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', '2024-09-22 14:19:06.866317+00', '2024-09-22 14:19:06.866317+00', NULL, 'aal1', NULL, NULL, 'Dart/3.4 (dart:io)', '46.204.9.78', NULL),
	('7f8cbaa5-13f1-48d9-b318-238d84399582', '1dcd0bc0-5f89-46da-bd67-c24238c5d2b1', '2024-09-25 07:20:23.677483+00', '2024-09-25 07:20:23.677483+00', NULL, 'aal1', NULL, NULL, 'Dart/3.4 (dart:io)', '5.173.87.62', NULL),
	('38134635-961e-4f2c-a2be-99984e0fdc19', '66cd9414-b49b-4068-8653-4d8ff74a7612', '2024-09-24 11:10:09.139457+00', '2024-09-25 08:01:17.929388+00', NULL, 'aal1', NULL, '2024-09-25 08:01:17.929311', 'Dart/3.4 (dart:io)', '46.134.122.158', NULL),
	('98028e84-f5a8-4212-88f3-7d338ade3798', 'd049f2b2-7128-426c-8930-9653200a8339', '2024-09-26 16:08:38.869183+00', '2024-10-02 15:29:32.174588+00', NULL, 'aal1', NULL, '2024-10-02 15:29:32.174505', 'Dart/3.5 (dart:io)', '31.0.60.34', NULL),
	('567a0779-e128-4c1d-bc70-f19e74d7f1d1', '0b4d8517-f465-4bc0-a738-23db4344f58e', '2024-09-23 19:36:00.8442+00', '2024-10-02 16:11:53.340518+00', NULL, 'aal1', NULL, '2024-10-02 16:11:53.340444', 'Dart/3.4 (dart:io)', '31.0.60.56', NULL),
	('e652e3d7-876a-4153-8d86-59a4355d4b67', '59cfb716-cea2-4397-b995-7998b4d1a48a', '2024-09-25 16:03:40.124945+00', '2024-09-25 16:03:40.124945+00', NULL, 'aal1', NULL, NULL, 'Dart/3.4 (dart:io)', '89.64.34.161', NULL),
	('b97375b0-1001-48ff-957b-e1403f601884', 'da800d6b-b796-4eae-8923-5000d25249b7', '2024-09-23 08:10:47.095699+00', '2024-09-23 08:10:47.095699+00', NULL, 'aal1', NULL, NULL, 'Dart/3.5 (dart:io)', '188.117.151.186', NULL),
	('72788752-2b07-490b-9bca-b64ffc5104df', '59cfb716-cea2-4397-b995-7998b4d1a48a', '2024-09-25 16:06:06.667512+00', '2024-09-25 16:06:06.667512+00', NULL, 'aal1', NULL, NULL, 'Dart/3.5 (dart:io)', '89.64.34.161', NULL),
	('8032c090-82b2-47b1-8846-a7ed0628b1f1', '1c1a5747-82f4-497d-be61-74d279785999', '2024-10-02 15:06:46.075892+00', '2024-10-02 18:01:16.308424+00', NULL, 'aal1', NULL, '2024-10-02 18:01:16.308351', 'Dart/3.5 (dart:io)', '91.123.218.154', NULL),
	('3bd7c823-a02e-45e4-8d1e-55fe698b3c5e', '0b4d8517-f465-4bc0-a738-23db4344f58e', '2024-10-03 14:06:37.267824+00', '2024-10-03 14:06:37.267824+00', NULL, 'aal1', NULL, NULL, 'Dart/3.4 (dart:io)', '46.204.4.87', NULL),
	('fab8a665-1ef1-488c-ac48-cf771ec3f4db', '0b4d8517-f465-4bc0-a738-23db4344f58e', '2024-09-19 08:27:08.69406+00', '2024-10-05 09:22:38.26988+00', NULL, 'aal1', NULL, '2024-10-05 09:22:38.269788', 'Dart/3.5 (dart:io)', '178.43.36.49', NULL),
	('a86e4798-615b-4de4-a40b-04215e0d358a', '4c725c3c-6297-4260-97a2-fce1d6fa9f2a', '2024-09-24 11:57:02.306733+00', '2024-10-05 17:22:05.970657+00', NULL, 'aal1', NULL, '2024-10-05 17:22:05.970564', 'Dart/3.5 (dart:io)', '94.254.154.154', NULL),
	('43f453da-ed06-4be4-8bdd-d938f0a1d11b', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', '2024-09-26 09:10:20.508034+00', '2024-09-26 09:10:20.508034+00', NULL, 'aal1', NULL, NULL, 'Dart/3.5 (dart:io)', '46.205.199.158', NULL),
	('005c8aff-dc98-4c4e-a9b7-2d9ef9e985ae', '38fccaae-4320-436d-b8a5-bd6f88b423f1', '2024-09-24 21:01:36.684257+00', '2024-10-06 16:17:11.640633+00', NULL, 'aal1', NULL, '2024-10-06 16:17:11.640558', 'Dart/3.5 (dart:io)', '46.134.126.240', NULL),
	('80c5bd57-6277-4181-b0c2-7f73494c41d9', '3ed46d73-48a7-434e-9e86-21d8bc248e49', '2024-09-26 13:55:03.528451+00', '2024-09-26 13:55:03.528451+00', NULL, 'aal1', NULL, NULL, 'Dart/3.5 (dart:io)', '94.246.177.111', NULL),
	('c373debd-5245-4e97-a127-d286bd53b450', '66cd9414-b49b-4068-8653-4d8ff74a7612', '2024-09-24 07:36:02.428608+00', '2024-09-26 14:23:33.251063+00', NULL, 'aal1', NULL, '2024-09-26 14:23:33.25099', 'Dart/3.5 (dart:io)', '46.205.199.158', NULL),
	('f29f4cf2-a0c2-49e7-aeaa-f9755025d553', 'a3ee37fe-738c-4ad5-a5bb-43ae02846a05', '2024-10-10 19:22:48.385964+00', '2024-10-10 19:22:48.385964+00', NULL, 'aal1', NULL, NULL, 'Dart/3.4 (dart:io)', '83.26.192.149', NULL),
	('61e527c0-e4c5-4f18-9c32-0e3a5f677756', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', '2024-09-24 13:15:15.923581+00', '2024-10-11 19:18:12.896112+00', NULL, 'aal1', NULL, '2024-10-11 19:18:12.896039', 'Dart/3.5 (dart:io)', '46.205.196.201', NULL),
	('6787a6b4-e92d-4601-8691-4cec9e1b4fb7', '0e5a626b-6b35-4377-8871-28a5950e388a', '2024-10-11 20:14:17.617053+00', '2024-10-11 20:14:17.617053+00', NULL, 'aal1', NULL, NULL, 'Dart/3.5 (dart:io)', '46.134.73.35', NULL),
	('6c95c9af-0c8f-46c6-86df-c0d19ff15f64', 'cbb58eed-6db6-4cab-b84d-dba0c7a31e97', '2024-10-12 12:51:35.511301+00', '2024-10-12 12:51:35.511301+00', NULL, 'aal1', NULL, NULL, 'Dart/3.5 (dart:io)', '46.205.196.215', NULL),
	('d27d4672-080a-4dbd-bf69-212e4578a643', '59cfb716-cea2-4397-b995-7998b4d1a48a', '2024-09-18 16:47:21.453379+00', '2024-10-12 14:02:00.416018+00', NULL, 'aal1', NULL, '2024-10-12 14:02:00.415932', 'Dart/3.5 (dart:io)', '194.61.71.216', NULL),
	('460d3875-1db7-4a8a-ae1f-f4ab1540b7b7', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', '2024-09-24 12:26:57.320002+00', '2024-09-24 12:26:57.320002+00', NULL, 'aal1', NULL, NULL, 'Dart/3.5 (dart:io)', '46.205.199.158', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('d27d4672-080a-4dbd-bf69-212e4578a643', '2024-09-18 16:47:21.463935+00', '2024-09-18 16:47:21.463935+00', 'otp', '424fa178-c81c-4ce4-b1df-c599488fdf9d'),
	('fab8a665-1ef1-488c-ac48-cf771ec3f4db', '2024-09-19 08:27:08.69877+00', '2024-09-19 08:27:08.69877+00', 'otp', '4af6f717-8898-4d19-85ff-484d63c45aa5'),
	('6edbd046-d789-47bb-89fe-dc924a81ae80', '2024-09-22 14:19:06.871983+00', '2024-09-22 14:19:06.871983+00', 'otp', '8ad8d619-07c6-42f1-99bb-219fee0354b0'),
	('b97375b0-1001-48ff-957b-e1403f601884', '2024-09-23 08:10:47.107628+00', '2024-09-23 08:10:47.107628+00', 'otp', '2c11d8ff-93a7-43db-8e2b-d46db194dbdf'),
	('567a0779-e128-4c1d-bc70-f19e74d7f1d1', '2024-09-23 19:36:00.849027+00', '2024-09-23 19:36:00.849027+00', 'otp', '21ed79f3-5dae-4048-82bd-5c4010aafabf'),
	('c373debd-5245-4e97-a127-d286bd53b450', '2024-09-24 07:36:02.442438+00', '2024-09-24 07:36:02.442438+00', 'otp', 'b3a07786-e645-4ca3-a453-c1f6978f3eca'),
	('38134635-961e-4f2c-a2be-99984e0fdc19', '2024-09-24 11:10:09.149126+00', '2024-09-24 11:10:09.149126+00', 'otp', 'e62e7ba2-907d-4c32-9c6e-5f5c5becc8d7'),
	('a86e4798-615b-4de4-a40b-04215e0d358a', '2024-09-24 11:57:02.31477+00', '2024-09-24 11:57:02.31477+00', 'otp', 'd83c5b63-87a9-4058-8ab8-fd72c2fe43b2'),
	('460d3875-1db7-4a8a-ae1f-f4ab1540b7b7', '2024-09-24 12:26:57.328663+00', '2024-09-24 12:26:57.328663+00', 'otp', '4e3d4bcf-19bf-4d8a-b6ee-5f7647791c8f'),
	('46197853-238e-4b45-80c0-5483088d87ce', '2024-09-24 12:33:08.425927+00', '2024-09-24 12:33:08.425927+00', 'otp', '156e9cb7-891b-44f0-a7ce-ee65ee0aa8b3'),
	('96a7a019-353f-4f52-8de0-9e2d0b0ceff7', '2024-09-24 13:07:21.259866+00', '2024-09-24 13:07:21.259866+00', 'otp', 'c9af5ae6-fa18-46a9-b47b-d78c3bbdfbd3'),
	('2b2b85af-8e86-47f4-931d-d6c2f0f2db8f', '2024-09-24 13:10:59.419472+00', '2024-09-24 13:10:59.419472+00', 'otp', 'b0563d94-e15c-4c32-a33f-1b32ce323e12'),
	('61e527c0-e4c5-4f18-9c32-0e3a5f677756', '2024-09-24 13:15:15.930744+00', '2024-09-24 13:15:15.930744+00', 'otp', '68bc2e27-8198-4f25-a380-97abd00d7cb4'),
	('45b15fe2-8f2c-4bf8-a701-2588f77f3438', '2024-09-24 18:06:16.815876+00', '2024-09-24 18:06:16.815876+00', 'otp', '9f06c106-de82-4e69-bf3a-d9e13766195a'),
	('005c8aff-dc98-4c4e-a9b7-2d9ef9e985ae', '2024-09-24 21:01:36.689346+00', '2024-09-24 21:01:36.689346+00', 'otp', '1caaab12-61a3-44f1-a71d-90058007f5b4'),
	('7f8cbaa5-13f1-48d9-b318-238d84399582', '2024-09-25 07:20:23.683981+00', '2024-09-25 07:20:23.683981+00', 'otp', 'd2d9e545-5598-460d-a659-62eea210937b'),
	('e652e3d7-876a-4153-8d86-59a4355d4b67', '2024-09-25 16:03:40.132152+00', '2024-09-25 16:03:40.132152+00', 'otp', 'bec99bbb-d9b1-4e1c-9985-1bfb5fec29cd'),
	('72788752-2b07-490b-9bca-b64ffc5104df', '2024-09-25 16:06:06.670371+00', '2024-09-25 16:06:06.670371+00', 'otp', 'ce310827-4cf0-4861-b3ac-d3421416db00'),
	('43f453da-ed06-4be4-8bdd-d938f0a1d11b', '2024-09-26 09:10:20.516511+00', '2024-09-26 09:10:20.516511+00', 'otp', '7c904845-1717-47f5-91f8-38446b27a507'),
	('80c5bd57-6277-4181-b0c2-7f73494c41d9', '2024-09-26 13:55:03.534479+00', '2024-09-26 13:55:03.534479+00', 'otp', '03bec431-f86d-47a6-b198-3727cfe0b8af'),
	('98028e84-f5a8-4212-88f3-7d338ade3798', '2024-09-26 16:08:38.875496+00', '2024-09-26 16:08:38.875496+00', 'otp', 'aba4a945-457c-4b6d-a61c-2c6310ea67a1'),
	('8032c090-82b2-47b1-8846-a7ed0628b1f1', '2024-10-02 15:06:46.092825+00', '2024-10-02 15:06:46.092825+00', 'otp', '987c5dce-e91a-4082-8be9-98963f529d0a'),
	('3bd7c823-a02e-45e4-8d1e-55fe698b3c5e', '2024-10-03 14:06:37.311989+00', '2024-10-03 14:06:37.311989+00', 'otp', 'a8aa1722-3894-46bf-af0b-9c13c7ca7264'),
	('f29f4cf2-a0c2-49e7-aeaa-f9755025d553', '2024-10-10 19:22:48.398067+00', '2024-10-10 19:22:48.398067+00', 'otp', '3715cbb9-b6de-4e79-bb1c-d21777a9b39e'),
	('6787a6b4-e92d-4601-8691-4cec9e1b4fb7', '2024-10-11 20:14:17.629352+00', '2024-10-11 20:14:17.629352+00', 'otp', 'e51a9b18-e306-48b0-a15a-27823e23cf24'),
	('6c95c9af-0c8f-46c6-86df-c0d19ff15f64', '2024-10-12 12:51:35.53103+00', '2024-10-12 12:51:35.53103+00', 'otp', '1b03155d-fc5c-4406-8b5d-a99a57cb270c');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 109, 'tMsYbCacvTk7dsIAK9x7RA', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-23 10:42:16.317408+00', '2024-09-23 16:35:26.228312+00', 'Q1RZNkbtmzezzsN1IsumYA', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 168, 'Ql6dIyXSLMBhxWIItyHYsg', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', false, '2024-09-26 09:10:20.513605+00', '2024-09-26 09:10:20.513605+00', NULL, '43f453da-ed06-4be4-8bdd-d938f0a1d11b'),
	('00000000-0000-0000-0000-000000000000', 107, 'dpDbQ8fuuNZkBUKNu0K5jg', '0b4d8517-f465-4bc0-a738-23db4344f58e', true, '2024-09-23 10:15:54.924781+00', '2024-09-23 17:42:15.879446+00', 'ySh-TtvNuGgbbPNIkxoGRg', 'fab8a665-1ef1-488c-ac48-cf771ec3f4db'),
	('00000000-0000-0000-0000-000000000000', 170, '45jw02bvQ3BBsg9uCmMuCw', '3ed46d73-48a7-434e-9e86-21d8bc248e49', false, '2024-09-26 13:55:03.531512+00', '2024-09-26 13:55:03.531512+00', NULL, '80c5bd57-6277-4181-b0c2-7f73494c41d9'),
	('00000000-0000-0000-0000-000000000000', 124, 'H2yOLLxL0ETYDTdMm47gUA', '66cd9414-b49b-4068-8653-4d8ff74a7612', true, '2024-09-24 07:36:02.433593+00', '2024-09-26 14:23:33.244537+00', NULL, 'c373debd-5245-4e97-a127-d286bd53b450'),
	('00000000-0000-0000-0000-000000000000', 172, '4jLHXw1pt7uB_nqsrJS2SA', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-26 16:06:33.428573+00', '2024-09-26 20:21:29.421534+00', 'Miz4cDHQ6E2GBg6ykKcBQw', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 111, 'ca5Ghyup_HvBLKp3spgd_w', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-23 16:35:26.23212+00', '2024-09-23 18:45:49.643207+00', 'tMsYbCacvTk7dsIAK9x7RA', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 127, 'FadE_hf2POyBaPfPP_J-mw', '0b4d8517-f465-4bc0-a738-23db4344f58e', true, '2024-09-24 10:43:01.466021+00', '2024-09-28 17:03:15.27172+00', 'tIgZS__iY_qNFEICh2LXMA', 'fab8a665-1ef1-488c-ac48-cf771ec3f4db'),
	('00000000-0000-0000-0000-000000000000', 174, '4ADqaB5q0wLSbwdKXvohNA', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', true, '2024-09-26 16:16:15.712699+00', '2024-09-29 10:15:30.403271+00', '_G4TEg5qTtPBj5JmIMCf9A', '61e527c0-e4c5-4f18-9c32-0e3a5f677756'),
	('00000000-0000-0000-0000-000000000000', 181, 'e2yz-AdihaVkxooS-cGqQg', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-29 11:48:24.3939+00', '2024-09-29 12:57:25.538451+00', 'ax5r9s66T4_lcS4B7VVYZg', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 115, 'davZlyy-2b4HPCCD7bGrbA', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-23 18:45:49.655829+00', '2024-09-23 20:27:49.65682+00', 'ca5Ghyup_HvBLKp3spgd_w', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 183, 'DzmQHedIn7bb8ADhLAsJCQ', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-29 15:48:11.560195+00', '2024-10-01 14:53:03.830532+00', 'bW3jyJSd92GtzuD-aluzSw', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 117, 'WDESyNx1TWudBCAu463_YA', '0b4d8517-f465-4bc0-a738-23db4344f58e', true, '2024-09-23 19:36:00.847351+00', '2024-09-24 06:53:12.476748+00', NULL, '567a0779-e128-4c1d-bc70-f19e74d7f1d1'),
	('00000000-0000-0000-0000-000000000000', 176, 'YM01pNuaYJxGjGEm-yz-JQ', 'e69f5821-d277-4c08-8d92-114855a48e94', true, '2024-09-26 21:10:25.135476+00', '2024-10-02 12:03:30.470926+00', 'yV3gjbHbgq_G6DAU0A6WEg', '45b15fe2-8f2c-4bf8-a701-2588f77f3438'),
	('00000000-0000-0000-0000-000000000000', 112, 'D0ZKCwgXETK_k65zafyIeQ', '0b4d8517-f465-4bc0-a738-23db4344f58e', true, '2024-09-23 17:42:15.88875+00', '2024-09-24 06:53:20.793399+00', 'dpDbQ8fuuNZkBUKNu0K5jg', 'fab8a665-1ef1-488c-ac48-cf771ec3f4db'),
	('00000000-0000-0000-0000-000000000000', 187, 'F8IWzmJbYplzXm1TrqSz-A', 'e69f5821-d277-4c08-8d92-114855a48e94', false, '2024-10-02 12:03:30.503099+00', '2024-10-02 12:03:30.503099+00', 'YM01pNuaYJxGjGEm-yz-JQ', '45b15fe2-8f2c-4bf8-a701-2588f77f3438'),
	('00000000-0000-0000-0000-000000000000', 179, 'Gi43a9OnjtK1xpl381OiXQ', '0b4d8517-f465-4bc0-a738-23db4344f58e', true, '2024-09-28 17:08:53.109346+00', '2024-10-02 12:03:34.659103+00', 'Hmnn06iU4RBJ_agTr4GGTQ', '567a0779-e128-4c1d-bc70-f19e74d7f1d1'),
	('00000000-0000-0000-0000-000000000000', 119, 'BiRAkyBS5StWObh0R0W0AQ', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-23 20:27:49.659328+00', '2024-09-24 07:55:04.318586+00', 'davZlyy-2b4HPCCD7bGrbA', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 185, 'J7EmoZQOPosrLFhpz1e0iw', 'd049f2b2-7128-426c-8930-9653200a8339', true, '2024-09-30 12:34:37.518269+00', '2024-10-02 15:29:32.163778+00', 'Bl-LW2QP8ko2Vr2dyFdFPg', '98028e84-f5a8-4212-88f3-7d338ade3798'),
	('00000000-0000-0000-0000-000000000000', 189, 'tYYtOphVvJLZh0gtIgc_UQ', '0b4d8517-f465-4bc0-a738-23db4344f58e', true, '2024-10-02 12:03:34.659446+00', '2024-10-02 16:11:53.33048+00', 'Gi43a9OnjtK1xpl381OiXQ', '567a0779-e128-4c1d-bc70-f19e74d7f1d1'),
	('00000000-0000-0000-0000-000000000000', 122, 'tIgZS__iY_qNFEICh2LXMA', '0b4d8517-f465-4bc0-a738-23db4344f58e', true, '2024-09-24 06:53:20.794338+00', '2024-09-24 10:43:01.455171+00', 'D0ZKCwgXETK_k65zafyIeQ', 'fab8a665-1ef1-488c-ac48-cf771ec3f4db'),
	('00000000-0000-0000-0000-000000000000', 121, 'n0ucfJpt9k5e5FFwWU-y8w', '0b4d8517-f465-4bc0-a738-23db4344f58e', true, '2024-09-24 06:53:12.47862+00', '2024-09-24 10:43:25.183053+00', 'WDESyNx1TWudBCAu463_YA', '567a0779-e128-4c1d-bc70-f19e74d7f1d1'),
	('00000000-0000-0000-0000-000000000000', 188, 'XDUk0qe62PmgICMQumQYBQ', '0b4d8517-f465-4bc0-a738-23db4344f58e', true, '2024-10-02 12:03:30.498024+00', '2024-10-05 09:22:38.244308+00', 'DR7gVtx3QIj7UfHvPmc18A', 'fab8a665-1ef1-488c-ac48-cf771ec3f4db'),
	('00000000-0000-0000-0000-000000000000', 128, 'wQQT2D6hQJr4I6V2ut26aQ', '0b4d8517-f465-4bc0-a738-23db4344f58e', true, '2024-09-24 10:43:25.183766+00', '2024-09-24 11:57:21.128967+00', 'n0ucfJpt9k5e5FFwWU-y8w', '567a0779-e128-4c1d-bc70-f19e74d7f1d1'),
	('00000000-0000-0000-0000-000000000000', 125, 'ZAot4XduaZxss_KY1zO9Sw', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-24 07:55:04.32051+00', '2024-09-24 14:33:48.435644+00', 'BiRAkyBS5StWObh0R0W0AQ', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 129, 'SASdKNNSvzn7vX_xN2shMw', '66cd9414-b49b-4068-8653-4d8ff74a7612', true, '2024-09-24 11:10:09.142887+00', '2024-09-25 08:01:17.921032+00', NULL, '38134635-961e-4f2c-a2be-99984e0fdc19'),
	('00000000-0000-0000-0000-000000000000', 67, 'iU0pIXVLU9mO1JcJ9WIQEg', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-18 16:47:21.45792+00', '2024-09-18 19:32:15.004554+00', NULL, 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 74, '9_ALbZJnrhN0uNyCuAQKqw', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-18 19:32:15.005509+00', '2024-09-19 06:59:22.315401+00', 'iU0pIXVLU9mO1JcJ9WIQEg', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 76, 'QAnyoV7vW4EetAHjL35uCw', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-19 06:59:22.330359+00', '2024-09-19 08:09:07.951344+00', '9_ALbZJnrhN0uNyCuAQKqw', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 78, 'MixC8Fn-0qnh1ai7XsjUWg', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-19 08:09:07.953572+00', '2024-09-19 09:17:01.552091+00', 'QAnyoV7vW4EetAHjL35uCw', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 83, 'lBcbHIx8J2-cmp72mtnvzA', '0b4d8517-f465-4bc0-a738-23db4344f58e', true, '2024-09-19 08:27:08.695454+00', '2024-09-19 09:39:40.071145+00', NULL, 'fab8a665-1ef1-488c-ac48-cf771ec3f4db'),
	('00000000-0000-0000-0000-000000000000', 85, 'H2nPvKxyP5BZ9QSwjRHQmw', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-19 09:17:01.554657+00', '2024-09-19 13:04:44.356596+00', 'MixC8Fn-0qnh1ai7XsjUWg', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 86, 'gLH62o-0_QqXXsVAe9WX8g', '0b4d8517-f465-4bc0-a738-23db4344f58e', true, '2024-09-19 09:39:40.073929+00', '2024-09-19 17:07:57.526374+00', 'lBcbHIx8J2-cmp72mtnvzA', 'fab8a665-1ef1-488c-ac48-cf771ec3f4db'),
	('00000000-0000-0000-0000-000000000000', 88, '-TGXCRr8Z5_rJD4vhsqtgA', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-19 13:04:44.358695+00', '2024-09-19 19:28:45.044681+00', 'H2nPvKxyP5BZ9QSwjRHQmw', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 91, '-xPPkGgnFjWqHvqW_k9nWg', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-19 19:28:45.047351+00', '2024-09-19 20:41:27.515873+00', '-TGXCRr8Z5_rJD4vhsqtgA', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 92, 'y9CbUS2M0G6-BhnrfKGMTQ', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-19 20:41:27.517262+00', '2024-09-20 06:27:21.780626+00', '-xPPkGgnFjWqHvqW_k9nWg', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 94, 'CfKuiXkpgsHNXZJwmOWXnw', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-20 06:27:21.783162+00', '2024-09-20 19:17:32.886355+00', 'y9CbUS2M0G6-BhnrfKGMTQ', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 96, 'UERCGC5N5xjTtEsPXsXSGA', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-20 19:17:32.896792+00', '2024-09-21 07:41:20.291953+00', 'CfKuiXkpgsHNXZJwmOWXnw', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 97, 'KrQduCac5nU7dL6ejBiCiA', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-21 07:41:20.305596+00', '2024-09-22 14:07:10.259491+00', 'UERCGC5N5xjTtEsPXsXSGA', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 101, 'UheW38ffCboNylUllW_Xng', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', false, '2024-09-22 14:19:06.867881+00', '2024-09-22 14:19:06.867881+00', NULL, '6edbd046-d789-47bb-89fe-dc924a81ae80'),
	('00000000-0000-0000-0000-000000000000', 89, '6Q5xW4MnhjBzYoh_a4BNvw', '0b4d8517-f465-4bc0-a738-23db4344f58e', true, '2024-09-19 17:07:57.537764+00', '2024-09-22 18:10:16.09106+00', 'gLH62o-0_QqXXsVAe9WX8g', 'fab8a665-1ef1-488c-ac48-cf771ec3f4db'),
	('00000000-0000-0000-0000-000000000000', 99, 'Cok7VPXjMimeRXzmoZjmiA', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-22 14:07:10.262776+00', '2024-09-23 07:06:00.861583+00', 'KrQduCac5nU7dL6ejBiCiA', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 106, 'nwfL9MkrLVT2kw7M_IqDYg', 'da800d6b-b796-4eae-8923-5000d25249b7', false, '2024-09-23 08:10:47.10115+00', '2024-09-23 08:10:47.10115+00', NULL, 'b97375b0-1001-48ff-957b-e1403f601884'),
	('00000000-0000-0000-0000-000000000000', 102, 'ySh-TtvNuGgbbPNIkxoGRg', '0b4d8517-f465-4bc0-a738-23db4344f58e', true, '2024-09-22 18:10:16.099871+00', '2024-09-23 10:15:54.920887+00', '6Q5xW4MnhjBzYoh_a4BNvw', 'fab8a665-1ef1-488c-ac48-cf771ec3f4db'),
	('00000000-0000-0000-0000-000000000000', 105, 'Q1RZNkbtmzezzsN1IsumYA', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-23 07:06:00.87551+00', '2024-09-23 10:42:16.31395+00', 'Cok7VPXjMimeRXzmoZjmiA', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 166, 'ffirXj2-j84xuD-VTgbGoA', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', true, '2024-09-26 08:22:26.664742+00', '2024-09-26 10:52:50.133139+00', 'pkO2kfCAkrqIWCfRGFqzSw', '61e527c0-e4c5-4f18-9c32-0e3a5f677756'),
	('00000000-0000-0000-0000-000000000000', 134, 'RjIFXY42Ye_YxuqISi76ug', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', false, '2024-09-24 12:26:57.322147+00', '2024-09-24 12:26:57.322147+00', NULL, '460d3875-1db7-4a8a-ae1f-f4ab1540b7b7'),
	('00000000-0000-0000-0000-000000000000', 135, 'TsNL6lzf-GOEI336BybH6g', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', false, '2024-09-24 12:33:08.419518+00', '2024-09-24 12:33:08.419518+00', NULL, '46197853-238e-4b45-80c0-5483088d87ce'),
	('00000000-0000-0000-0000-000000000000', 171, 'HaIea2ol6WmMveQslZv_FA', '66cd9414-b49b-4068-8653-4d8ff74a7612', false, '2024-09-26 14:23:33.245931+00', '2024-09-26 14:23:33.245931+00', 'H2yOLLxL0ETYDTdMm47gUA', 'c373debd-5245-4e97-a127-d286bd53b450'),
	('00000000-0000-0000-0000-000000000000', 138, '0cqjzOpa9jsCyMUB7uEYnQ', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', false, '2024-09-24 13:10:59.417765+00', '2024-09-24 13:10:59.417765+00', NULL, '2b2b85af-8e86-47f4-931d-d6c2f0f2db8f'),
	('00000000-0000-0000-0000-000000000000', 167, 'Miz4cDHQ6E2GBg6ykKcBQw', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-26 09:03:39.748829+00', '2024-09-26 16:06:33.426234+00', 'h9kRPczr4mtd-NoQFqp4Rw', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 169, '_G4TEg5qTtPBj5JmIMCf9A', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', true, '2024-09-26 10:52:50.134401+00', '2024-09-26 16:16:15.710411+00', 'ffirXj2-j84xuD-VTgbGoA', '61e527c0-e4c5-4f18-9c32-0e3a5f677756'),
	('00000000-0000-0000-0000-000000000000', 141, 'hly4VBSYQltLCTMcg4Qx1Q', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-24 14:33:48.439074+00', '2024-09-24 17:24:14.942942+00', 'ZAot4XduaZxss_KY1zO9Sw', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 140, 'LCvqX7LmOxDIaQ4u4QQ4OA', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', true, '2024-09-24 13:15:15.925629+00', '2024-09-24 19:07:12.579267+00', NULL, '61e527c0-e4c5-4f18-9c32-0e3a5f677756'),
	('00000000-0000-0000-0000-000000000000', 143, 'yV3gjbHbgq_G6DAU0A6WEg', 'e69f5821-d277-4c08-8d92-114855a48e94', true, '2024-09-24 18:06:16.81041+00', '2024-09-26 21:10:25.132852+00', NULL, '45b15fe2-8f2c-4bf8-a701-2588f77f3438'),
	('00000000-0000-0000-0000-000000000000', 133, 'XKsHwdlNqxWi8zEy9BhBnA', '0b4d8517-f465-4bc0-a738-23db4344f58e', true, '2024-09-24 11:57:21.130921+00', '2024-09-24 19:59:36.304947+00', 'wQQT2D6hQJr4I6V2ut26aQ', '567a0779-e128-4c1d-bc70-f19e74d7f1d1'),
	('00000000-0000-0000-0000-000000000000', 144, 'Lt39YzpBu90BNE1KXv29jw', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', true, '2024-09-24 19:07:12.582223+00', '2024-09-25 04:52:07.852446+00', 'LCvqX7LmOxDIaQ4u4QQ4OA', '61e527c0-e4c5-4f18-9c32-0e3a5f677756'),
	('00000000-0000-0000-0000-000000000000', 136, 'TCnETP_GGuB9ey8BnvFpMg', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', true, '2024-09-24 13:07:21.256462+00', '2024-09-25 06:12:04.354853+00', NULL, '96a7a019-353f-4f52-8de0-9e2d0b0ceff7'),
	('00000000-0000-0000-0000-000000000000', 149, 'Ql7mBaApHUPCthA5tLcaZQ', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', false, '2024-09-25 06:12:04.358565+00', '2024-09-25 06:12:04.358565+00', 'TCnETP_GGuB9ey8BnvFpMg', '96a7a019-353f-4f52-8de0-9e2d0b0ceff7'),
	('00000000-0000-0000-0000-000000000000', 142, 'HocG3f2vY_y3EA33uNeSjA', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-24 17:24:14.946392+00', '2024-09-25 06:42:14.793921+00', 'hly4VBSYQltLCTMcg4Qx1Q', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 145, 'Hmnn06iU4RBJ_agTr4GGTQ', '0b4d8517-f465-4bc0-a738-23db4344f58e', true, '2024-09-24 19:59:36.308432+00', '2024-09-28 17:08:53.101799+00', 'XKsHwdlNqxWi8zEy9BhBnA', '567a0779-e128-4c1d-bc70-f19e74d7f1d1'),
	('00000000-0000-0000-0000-000000000000', 152, 'sR9jIUIKotEYesx-Ac3PqA', '1dcd0bc0-5f89-46da-bd67-c24238c5d2b1', false, '2024-09-25 07:20:23.679162+00', '2024-09-25 07:20:23.679162+00', NULL, '7f8cbaa5-13f1-48d9-b318-238d84399582'),
	('00000000-0000-0000-0000-000000000000', 153, 'T6zzgGaOsolZpeaIyF5bsQ', '66cd9414-b49b-4068-8653-4d8ff74a7612', false, '2024-09-25 08:01:17.925161+00', '2024-09-25 08:01:17.925161+00', 'SASdKNNSvzn7vX_xN2shMw', '38134635-961e-4f2c-a2be-99984e0fdc19'),
	('00000000-0000-0000-0000-000000000000', 150, 'c51cmrjKT_a9F8PgFmgAMw', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-25 06:42:14.797903+00', '2024-09-25 10:26:48.599944+00', 'HocG3f2vY_y3EA33uNeSjA', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 175, 'ax5r9s66T4_lcS4B7VVYZg', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-26 20:21:29.424764+00', '2024-09-29 11:48:24.3889+00', '4jLHXw1pt7uB_nqsrJS2SA', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 154, 'r_c55PCFI-hSyasINe63XQ', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-25 10:26:48.60111+00', '2024-09-25 14:58:35.823282+00', 'c51cmrjKT_a9F8PgFmgAMw', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 182, 'bW3jyJSd92GtzuD-aluzSw', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-29 12:57:25.541876+00', '2024-09-29 15:48:11.557791+00', 'e2yz-AdihaVkxooS-cGqQg', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 177, '3HfLczrGbi0ytsdV4r1jiw', '0b4d8517-f465-4bc0-a738-23db4344f58e', true, '2024-09-28 17:03:15.284934+00', '2024-09-30 10:33:55.53946+00', 'FadE_hf2POyBaPfPP_J-mw', 'fab8a665-1ef1-488c-ac48-cf771ec3f4db'),
	('00000000-0000-0000-0000-000000000000', 148, '0byoQdVPY03en9sTgncQGw', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', true, '2024-09-25 04:52:07.861889+00', '2024-09-25 15:52:53.251104+00', 'Lt39YzpBu90BNE1KXv29jw', '61e527c0-e4c5-4f18-9c32-0e3a5f677756'),
	('00000000-0000-0000-0000-000000000000', 173, 'Bl-LW2QP8ko2Vr2dyFdFPg', 'd049f2b2-7128-426c-8930-9653200a8339', true, '2024-09-26 16:08:38.870859+00', '2024-09-30 12:34:37.515335+00', NULL, '98028e84-f5a8-4212-88f3-7d338ade3798'),
	('00000000-0000-0000-0000-000000000000', 160, 'zKoVBgg5YadNs5-VwMzYcg', '59cfb716-cea2-4397-b995-7998b4d1a48a', false, '2024-09-25 16:03:40.126908+00', '2024-09-25 16:03:40.126908+00', NULL, 'e652e3d7-876a-4153-8d86-59a4355d4b67'),
	('00000000-0000-0000-0000-000000000000', 161, '5Ys2KA6j0Q0d-_BTy4GZSA', '59cfb716-cea2-4397-b995-7998b4d1a48a', false, '2024-09-25 16:06:06.668532+00', '2024-09-25 16:06:06.668532+00', NULL, '72788752-2b07-490b-9bca-b64ffc5104df'),
	('00000000-0000-0000-0000-000000000000', 155, 'VFiRaA80J75XJexlQPt_jg', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-25 14:58:35.829006+00', '2024-09-25 16:27:53.512958+00', 'r_c55PCFI-hSyasINe63XQ', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 162, 'rpUjkNWhZk4zdjwxOdvPFQ', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-25 16:27:53.519434+00', '2024-09-25 17:40:14.946458+00', 'VFiRaA80J75XJexlQPt_jg', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 184, 'DR7gVtx3QIj7UfHvPmc18A', '0b4d8517-f465-4bc0-a738-23db4344f58e', true, '2024-09-30 10:33:55.544798+00', '2024-10-02 12:03:30.470922+00', '3HfLczrGbi0ytsdV4r1jiw', 'fab8a665-1ef1-488c-ac48-cf771ec3f4db'),
	('00000000-0000-0000-0000-000000000000', 158, 'sJTRBdmfD_HturWSUa3ong', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', true, '2024-09-25 15:52:53.255579+00', '2024-09-26 05:42:48.941841+00', '0byoQdVPY03en9sTgncQGw', '61e527c0-e4c5-4f18-9c32-0e3a5f677756'),
	('00000000-0000-0000-0000-000000000000', 164, 'G1pAkpo5yh3i2bRJWA03xQ', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', true, '2024-09-26 05:42:48.946804+00', '2024-09-26 07:22:58.889425+00', 'sJTRBdmfD_HturWSUa3ong', '61e527c0-e4c5-4f18-9c32-0e3a5f677756'),
	('00000000-0000-0000-0000-000000000000', 191, 'bBBnda1XShx7yQwA3wqeMg', 'd049f2b2-7128-426c-8930-9653200a8339', false, '2024-10-02 15:29:32.169087+00', '2024-10-02 15:29:32.169087+00', 'J7EmoZQOPosrLFhpz1e0iw', '98028e84-f5a8-4212-88f3-7d338ade3798'),
	('00000000-0000-0000-0000-000000000000', 165, 'pkO2kfCAkrqIWCfRGFqzSw', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', true, '2024-09-26 07:22:58.895694+00', '2024-09-26 08:22:26.661327+00', 'G1pAkpo5yh3i2bRJWA03xQ', '61e527c0-e4c5-4f18-9c32-0e3a5f677756'),
	('00000000-0000-0000-0000-000000000000', 163, 'h9kRPczr4mtd-NoQFqp4Rw', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-09-25 17:40:14.949187+00', '2024-09-26 09:03:39.745624+00', 'rpUjkNWhZk4zdjwxOdvPFQ', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 192, 'Luu2YmTqZmtMP7Eqp0ql0Q', '0b4d8517-f465-4bc0-a738-23db4344f58e', false, '2024-10-02 16:11:53.333896+00', '2024-10-02 16:11:53.333896+00', 'tYYtOphVvJLZh0gtIgc_UQ', '567a0779-e128-4c1d-bc70-f19e74d7f1d1'),
	('00000000-0000-0000-0000-000000000000', 180, 'jKnt2Szj9iYfCUw9kKsYyA', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', true, '2024-09-29 10:15:30.410449+00', '2024-10-02 16:26:30.751097+00', '4ADqaB5q0wLSbwdKXvohNA', '61e527c0-e4c5-4f18-9c32-0e3a5f677756'),
	('00000000-0000-0000-0000-000000000000', 190, 'XPyJzX5-ioIy5Uw-8On_TQ', '1c1a5747-82f4-497d-be61-74d279785999', true, '2024-10-02 15:06:46.085891+00', '2024-10-02 18:01:16.302979+00', NULL, '8032c090-82b2-47b1-8846-a7ed0628b1f1'),
	('00000000-0000-0000-0000-000000000000', 194, 'xr04IS1DwXcX_IMdREoxjQ', '1c1a5747-82f4-497d-be61-74d279785999', false, '2024-10-02 18:01:16.305746+00', '2024-10-02 18:01:16.305746+00', 'XPyJzX5-ioIy5Uw-8On_TQ', '8032c090-82b2-47b1-8846-a7ed0628b1f1'),
	('00000000-0000-0000-0000-000000000000', 195, '2MkTRkoa_elGKQAqdG2JGg', '0b4d8517-f465-4bc0-a738-23db4344f58e', false, '2024-10-03 14:06:37.282569+00', '2024-10-03 14:06:37.282569+00', NULL, '3bd7c823-a02e-45e4-8d1e-55fe698b3c5e'),
	('00000000-0000-0000-0000-000000000000', 147, 'eR0UNMU64a6sai9qjgsiOw', '38fccaae-4320-436d-b8a5-bd6f88b423f1', true, '2024-09-24 21:01:36.686316+00', '2024-10-04 15:12:22.553803+00', NULL, '005c8aff-dc98-4c4e-a9b7-2d9ef9e985ae'),
	('00000000-0000-0000-0000-000000000000', 197, 'ODuFjgWD3_vUnEANGHJSFA', '0b4d8517-f465-4bc0-a738-23db4344f58e', false, '2024-10-05 09:22:38.255531+00', '2024-10-05 09:22:38.255531+00', 'XDUk0qe62PmgICMQumQYBQ', 'fab8a665-1ef1-488c-ac48-cf771ec3f4db'),
	('00000000-0000-0000-0000-000000000000', 132, 'oLP7pjfFI-MN8wYDKTHa7w', '4c725c3c-6297-4260-97a2-fce1d6fa9f2a', true, '2024-09-24 11:57:02.310673+00', '2024-10-05 17:22:05.945293+00', NULL, 'a86e4798-615b-4de4-a40b-04215e0d358a'),
	('00000000-0000-0000-0000-000000000000', 198, 'UvCwr2C-4SBaKqA7CkuueA', '4c725c3c-6297-4260-97a2-fce1d6fa9f2a', false, '2024-10-05 17:22:05.956839+00', '2024-10-05 17:22:05.956839+00', 'oLP7pjfFI-MN8wYDKTHa7w', 'a86e4798-615b-4de4-a40b-04215e0d358a'),
	('00000000-0000-0000-0000-000000000000', 193, 'n6GqS5uKv7-mZXgknXN59Q', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', true, '2024-10-02 16:26:30.752999+00', '2024-10-06 09:04:58.853415+00', 'jKnt2Szj9iYfCUw9kKsYyA', '61e527c0-e4c5-4f18-9c32-0e3a5f677756'),
	('00000000-0000-0000-0000-000000000000', 196, 'jn0N-cCfqclH8LYPL4MTbg', '38fccaae-4320-436d-b8a5-bd6f88b423f1', true, '2024-10-04 15:12:22.562514+00', '2024-10-06 16:17:11.632906+00', 'eR0UNMU64a6sai9qjgsiOw', '005c8aff-dc98-4c4e-a9b7-2d9ef9e985ae'),
	('00000000-0000-0000-0000-000000000000', 186, 'n8UU3x6xU0qZB1bTXi3WOQ', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-10-01 14:53:03.842797+00', '2024-10-10 19:31:56.856903+00', 'DzmQHedIn7bb8ADhLAsJCQ', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 200, '0O3S-AtZ89ODogc40GL3iw', '38fccaae-4320-436d-b8a5-bd6f88b423f1', false, '2024-10-06 16:17:11.635749+00', '2024-10-06 16:17:11.635749+00', 'jn0N-cCfqclH8LYPL4MTbg', '005c8aff-dc98-4c4e-a9b7-2d9ef9e985ae'),
	('00000000-0000-0000-0000-000000000000', 199, 'RuNvlUCb_cCvg8EjfnjU9A', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', true, '2024-10-06 09:04:58.87086+00', '2024-10-10 18:57:12.219174+00', 'n6GqS5uKv7-mZXgknXN59Q', '61e527c0-e4c5-4f18-9c32-0e3a5f677756'),
	('00000000-0000-0000-0000-000000000000', 202, '7VQoof8bX6ltevSzimUiVA', 'a3ee37fe-738c-4ad5-a5bb-43ae02846a05', false, '2024-10-10 19:22:48.393153+00', '2024-10-10 19:22:48.393153+00', NULL, 'f29f4cf2-a0c2-49e7-aeaa-f9755025d553'),
	('00000000-0000-0000-0000-000000000000', 203, 'LmHdXDdLxe_J7vzSs4QWGQ', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-10-10 19:31:56.859015+00', '2024-10-11 07:25:55.659331+00', 'n8UU3x6xU0qZB1bTXi3WOQ', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 201, 'zKESdnNGIyqXAHtis7xeVw', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', true, '2024-10-10 18:57:12.23018+00', '2024-10-11 07:39:12.754428+00', 'RuNvlUCb_cCvg8EjfnjU9A', '61e527c0-e4c5-4f18-9c32-0e3a5f677756'),
	('00000000-0000-0000-0000-000000000000', 205, 'bTOjeDa8FDC7tfR2pXoCqQ', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', true, '2024-10-11 07:39:12.758414+00', '2024-10-11 09:33:48.46809+00', 'zKESdnNGIyqXAHtis7xeVw', '61e527c0-e4c5-4f18-9c32-0e3a5f677756'),
	('00000000-0000-0000-0000-000000000000', 204, 'VVbpG2z2yzw9sB0Z-2-J9w', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-10-11 07:25:55.663236+00', '2024-10-11 10:02:25.61233+00', 'LmHdXDdLxe_J7vzSs4QWGQ', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 207, 'Tiy1vM4bqlv0GWr9zBAdBQ', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-10-11 10:02:25.614694+00', '2024-10-11 17:42:09.95012+00', 'VVbpG2z2yzw9sB0Z-2-J9w', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 206, 'Jnr6Cpp4e3PCZygIltoNLQ', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', true, '2024-10-11 09:33:48.471173+00', '2024-10-11 19:18:12.88972+00', 'bTOjeDa8FDC7tfR2pXoCqQ', '61e527c0-e4c5-4f18-9c32-0e3a5f677756'),
	('00000000-0000-0000-0000-000000000000', 209, '3OAZy8wxpt7imDpq3ZjDrA', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', false, '2024-10-11 19:18:12.892253+00', '2024-10-11 19:18:12.892253+00', 'Jnr6Cpp4e3PCZygIltoNLQ', '61e527c0-e4c5-4f18-9c32-0e3a5f677756'),
	('00000000-0000-0000-0000-000000000000', 210, 'OAy707EvPzHzc_TYj4AOMQ', '0e5a626b-6b35-4377-8871-28a5950e388a', false, '2024-10-11 20:14:17.624089+00', '2024-10-11 20:14:17.624089+00', NULL, '6787a6b4-e92d-4601-8691-4cec9e1b4fb7'),
	('00000000-0000-0000-0000-000000000000', 211, 'ah3SnoE6VrxGX3xDqU5T-g', 'cbb58eed-6db6-4cab-b84d-dba0c7a31e97', false, '2024-10-12 12:51:35.5207+00', '2024-10-12 12:51:35.5207+00', NULL, '6c95c9af-0c8f-46c6-86df-c0d19ff15f64'),
	('00000000-0000-0000-0000-000000000000', 208, 'MfK3Fh9z8g4kcZoVe04Nmw', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-10-11 17:42:09.95729+00', '2024-10-12 12:53:45.365235+00', 'Tiy1vM4bqlv0GWr9zBAdBQ', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 212, 'f_-yY04lloJwOelL1taJhA', '59cfb716-cea2-4397-b995-7998b4d1a48a', true, '2024-10-12 12:53:45.369874+00', '2024-10-12 14:02:00.407589+00', 'MfK3Fh9z8g4kcZoVe04Nmw', 'd27d4672-080a-4dbd-bf69-212e4578a643'),
	('00000000-0000-0000-0000-000000000000', 213, 'wIJtKXMuy3rRrWSdKxM79g', '59cfb716-cea2-4397-b995-7998b4d1a48a', false, '2024-10-12 14:02:00.411114+00', '2024-10-12 14:02:00.411114+00', 'f_-yY04lloJwOelL1taJhA', 'd27d4672-080a-4dbd-bf69-212e4578a643');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."accounts" ("created_at", "id", "phone") VALUES
	('2024-09-26 16:08:35.164637+00', 'd049f2b2-7128-426c-8930-9653200a8339', '48698517176'),
	('2024-10-02 15:06:38.505474+00', '1c1a5747-82f4-497d-be61-74d279785999', '48691169287'),
	('2024-09-18 16:47:14.485586+00', '59cfb716-cea2-4397-b995-7998b4d1a48a', '48570820237'),
	('2024-09-18 19:13:20.108337+00', '9a74f0f3-e5a0-4ac5-afbb-faa23d310580', '48666978350'),
	('2024-09-19 08:10:53.542623+00', '0b4d8517-f465-4bc0-a738-23db4344f58e', '48781350347'),
	('2024-10-10 19:22:41.612572+00', 'a3ee37fe-738c-4ad5-a5bb-43ae02846a05', '48570178119'),
	('2024-10-11 20:14:11.153032+00', '0e5a626b-6b35-4377-8871-28a5950e388a', '48690137298'),
	('2024-10-12 12:51:29.603202+00', 'cbb58eed-6db6-4cab-b84d-dba0c7a31e97', '48572577633'),
	('2024-09-23 08:10:21.835386+00', 'da800d6b-b796-4eae-8923-5000d25249b7', '48604214649'),
	('2024-09-24 07:35:57.543076+00', '66cd9414-b49b-4068-8653-4d8ff74a7612', '48510386946'),
	('2024-09-24 11:56:48.273996+00', '4c725c3c-6297-4260-97a2-fce1d6fa9f2a', '48731700173'),
	('2024-09-24 18:05:45.851332+00', 'e69f5821-d277-4c08-8d92-114855a48e94', '48795732777'),
	('2024-09-24 21:01:13.678596+00', '38fccaae-4320-436d-b8a5-bd6f88b423f1', '48503425047'),
	('2024-09-25 07:15:06.645324+00', '1dcd0bc0-5f89-46da-bd67-c24238c5d2b1', '48504328371'),
	('2024-09-26 13:54:59.688003+00', '3ed46d73-48a7-434e-9e86-21d8bc248e49', '48511571830');


--
-- Data for Name: businesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."businesses" ("id", "created_at", "name", "owner", "stripe_customer") VALUES
	(4, '2024-09-18 16:53:37.618877+00', 'Kwiat Lotosu Iwona Jankowska', '0b4d8517-f465-4bc0-a738-23db4344f58e', 'cus_QoMm2Cispgj0bs'),
	(5, '2024-09-25 04:41:22.483354+00', 'Balipark Sp. z o.o.', 'a3ee37fe-738c-4ad5-a5bb-43ae02846a05', 'cus_QucFlFz7ZJVkxU');


--
-- Data for Name: locals; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."locals" ("id", "created_at", "name", "company", "logo_url", "banner_url", "category_icon_url", "short_description", "enabled") VALUES
	(2, '2024-09-18 16:54:57.265035+00', 'Kwiat Lotosu', 4, 'https://zmhbcupjxmyllfgxwqdt.supabase.co/storage/v1/object/public/locals/images/kwiat-lotosu.jpeg', 'https://zmhbcupjxmyllfgxwqdt.supabase.co/storage/v1/object/public/locals/images/kwiat-lotosu-background.jpeg', NULL, 'Studio Masażu', true),
	(3, '2024-09-25 04:52:01.950086+00', 'Bali Pub', 5, 'https://zmhbcupjxmyllfgxwqdt.supabase.co/storage/v1/object/public/locals/images/bali-pub-logo.png', 'https://zmhbcupjxmyllfgxwqdt.supabase.co/storage/v1/object/public/locals/images/bali-pub-banner.jpg?t=2024-09-25T04%3A49%3A10.485Z', NULL, 'Bar z alkoholem i jedzeniem', true);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."customers" ("id", "created_at", "local", "account", "points", "updated_at") VALUES
	(4, '2024-09-24 11:57:30.846116+00', 2, '4c725c3c-6297-4260-97a2-fce1d6fa9f2a', 0, '2024-09-24 11:57:30.846116+00'),
	(6, '2024-09-28 17:04:13.942209+00', 2, '0b4d8517-f465-4bc0-a738-23db4344f58e', 160, '2024-09-28 17:04:13.942209+00'),
	(7, '2024-10-02 12:04:20.1104+00', 2, 'e69f5821-d277-4c08-8d92-114855a48e94', 160, '2024-10-02 12:04:20.1104+00'),
	(8, '2024-10-02 16:12:03.348093+00', 2, '1c1a5747-82f4-497d-be61-74d279785999', 160, '2024-10-02 16:12:03.348093+00');


--
-- Data for Name: local_cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."local_cards" ("id", "created_at", "name", "short_description", "description", "cost", "type", "actived_on", "expires_on", "iconUrl", "local", "enable") VALUES
	(5, '2024-09-18 19:15:48.705564+00', 'Masaż klasyczny', 'Odbierz 9 masaż klasyczny za darmo', 'Skorzystaj z 8 masaży klasycznych i odbierz 9 za darmo (promocja ograniczona czasowo).', 8, 'stamps', '2024-09-18 19:15:48.705564+00', '2024-11-23 22:59:59+00', NULL, 2, true),
	(4, '2024-09-18 16:58:46.08734+00', 'Masaż relaksacyjny', '30 min. za darmo', 'Uzbieraj 1000 pkt. i wymień je na 30 minut masażu relaksacyjnego za darmo.', 1000, 'points', '2024-09-18 16:58:46.08734+00', NULL, NULL, 2, true),
	(6, '2024-09-23 18:41:38.346456+00', '30% zniżki', 'Na masaż klasyczny', 'Zbierz pieczątki i wymień je na 30% zniżki na masaż klasyczny', 6, 'stamps', '2024-09-23 18:41:38.346456+00', NULL, NULL, 2, true),
	(7, '2024-09-23 19:55:17.180155+00', '25% zniżki', 'Na masaże', 'Wymień punkty i odbierz 25 zniżki na masaże inne niż klasyczne', 500, 'points', '2024-09-23 19:55:17.180155+00', NULL, NULL, 2, true),
	(8, '2024-09-25 15:50:12.50068+00', 'Piwo lane', '11 piwo za darmo', 'Zbierz 10 pieczątek i odbierz 11 piwo lane za darmo', 10, 'stamps', '2024-09-25 15:50:12.50068+00', NULL, NULL, 3, true),
	(9, '2024-09-25 15:50:52.061747+00', '50% zniżki', 'Odbierz drinka za połowe ceny', 'Zbierz punkty i kup drinki 50% taniej', 150, 'points', '2024-09-25 15:50:52.061747+00', NULL, NULL, 3, true);


--
-- Data for Name: customer_cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."customer_cards" ("id", "created_at", "updated_at", "card", "customer", "collected") VALUES
	(4, '2024-09-24 11:57:42.882819+00', '2024-09-24 11:57:42.882819+00', 5, 4, 1),
	(6, '2024-10-02 12:04:49.744771+00', '2024-10-02 12:04:49.744771+00', 6, 7, 1),
	(7, '2024-10-02 16:12:24.56263+00', '2024-10-02 16:12:24.56263+00', 5, 8, 1),
	(8, '2024-10-02 16:12:24.672651+00', '2024-10-02 16:12:24.672651+00', 6, 8, 1);


--
-- Data for Name: geo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."geo" ("id", "lat", "long") VALUES
	(2, 50.2433109720163, 19.03743500568781),
	(3, 50.19325620625611, 19.04177452032924);


--
-- Data for Name: local_addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."local_addresses" ("id", "created_at", "country", "province", "city", "zip_code", "street", "building_number", "apartament_number", "display_address", "local", "geo") VALUES
	(2, '2024-09-18 16:55:41.463849+00', 'poland', 'silesia', 'katowice', '40-115', 'Pułaskiego', '60', NULL, 'Katowice, 3 stawy', 2, 2),
	(3, '2024-09-25 04:55:04.435012+00', 'poland', 'silesia', 'katowice', '40-749', 'Bielska', '1b', NULL, 'Katowice, Park Murcki', 3, 3);


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."employees" ("id", "created_at", "company", "name", "local_address", "account") VALUES
	(2, '2024-09-18 16:56:16.247959+00', 4, 'Iwona', 2, '0b4d8517-f465-4bc0-a738-23db4344f58e'),
	(3, '2024-09-25 15:59:33.841332+00', 5, 'Artur', 3, 'a3ee37fe-738c-4ad5-a5bb-43ae02846a05');


--
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."transactions" ("id", "created_at", "local_address", "customer", "employer", "completed_at", "status") VALUES
	(22, '2024-10-02 12:04:49.61017+00', 2, 7, 2, '2024-10-02 12:04:50.0649+00', 'completed'),
	(23, '2024-10-02 16:12:24.382419+00', 2, 8, 2, '2024-10-02 16:12:25.035108+00', 'completed'),
	(17, '2024-09-24 11:57:42.769105+00', 2, 4, 2, '2024-09-24 11:57:43.126614+00', 'completed'),
	(20, '2024-09-28 17:07:31.494011+00', 2, 6, 2, '2024-09-28 17:07:32.17227+00', 'completed'),
	(21, '2024-09-28 17:08:07.274229+00', 2, 6, 2, '2024-09-28 17:08:11.402768+00', 'completed'),
	(19, '2024-09-28 17:05:30.398636+00', 2, 6, 2, '2024-09-28 17:05:31.018577+00', 'completed');


--
-- Data for Name: transaction_units; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."transaction_units" ("id", "created_at", "local_card", "customer_card", "value", "type", "status", "completed_at", "transaction") VALUES
	(25, '2024-09-24 11:57:42.882819+00', 5, 4, 1, 'add_stamps', 'completed', '2024-09-24 11:57:43.126614+00', 17),
	(28, '2024-09-28 17:05:30.66214+00', NULL, NULL, 160, 'add_points', 'completed', '2024-09-28 17:05:31.018577+00', 19),
	(29, '2024-09-28 17:07:31.934533+00', NULL, NULL, 500, 'add_points', 'completed', '2024-09-28 17:07:32.17227+00', 20),
	(30, '2024-09-28 17:08:07.391032+00', 7, NULL, 500, 'get_reward', 'completed', '2024-09-28 17:08:11.402768+00', 21),
	(31, '2024-10-02 12:04:49.744771+00', 6, 6, 1, 'add_stamps', 'completed', '2024-10-02 12:04:50.0649+00', 22),
	(32, '2024-10-02 12:04:49.868198+00', NULL, NULL, 160, 'add_points', 'completed', '2024-10-02 12:04:50.0649+00', 22),
	(33, '2024-10-02 16:12:24.56263+00', 5, 7, 1, 'add_stamps', 'completed', '2024-10-02 16:12:25.035108+00', 23),
	(34, '2024-10-02 16:12:24.672651+00', 6, 8, 1, 'add_stamps', 'completed', '2024-10-02 16:12:25.035108+00', 23),
	(35, '2024-10-02 16:12:24.781331+00', NULL, NULL, 160, 'add_points', 'completed', '2024-10-02 16:12:25.035108+00', 23);


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") VALUES
	('locals', 'locals', NULL, '2024-07-16 11:20:20.085278+00', '2024-07-16 11:20:20.085278+00', true, false, NULL, NULL, NULL);


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") VALUES
	('810cbbcd-9464-4534-bcbe-63e067705152', 'locals', 'images/fragolina.jpg', NULL, '2024-07-16 11:20:33.269331+00', '2024-07-16 11:20:40.369549+00', '2024-07-16 11:20:33.269331+00', '{"eTag": "\"cfdd38c5b191f52637094ec804f09ae2\"", "size": 5698, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-07-16T11:20:41.000Z", "contentLength": 5698, "httpStatusCode": 200}', '8be4167e-bf65-4644-9a63-a5cdd2f1d623', NULL, NULL),
	('5d0f6de8-927d-4278-9834-b9d733032882', 'locals', 'images/fragolina-banner.jpg', NULL, '2024-07-16 11:25:23.10916+00', '2024-07-16 11:25:32.034965+00', '2024-07-16 11:25:23.10916+00', '{"eTag": "\"f25417b0e460c25174535f6e503a622b\"", "size": 80309, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-07-16T11:25:32.000Z", "contentLength": 80309, "httpStatusCode": 200}', 'f4bcec1c-5d1b-4067-8cc6-e229837f2f93', NULL, NULL),
	('869d644e-0ca8-4bb4-a172-70f32ce6f2dc', 'locals', 'images/kwiat-lotosu-background.jpeg', NULL, '2024-09-08 12:20:10.360755+00', '2024-09-08 12:20:10.360755+00', '2024-09-08 12:20:10.360755+00', '{"eTag": "\"685df83471a0e9ad997345e67ace4717-1\"", "size": 34000, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-09-08T12:20:11.000Z", "contentLength": 34000, "httpStatusCode": 200}', 'd11b5912-2873-4d8d-98d9-a6bcf550da36', NULL, NULL),
	('bd5d8c35-cdee-4041-8a06-e6681380b357', 'locals', 'images/kwiat-lotosu.jpeg', NULL, '2024-09-08 12:20:12.840032+00', '2024-09-08 12:20:12.840032+00', '2024-09-08 12:20:12.840032+00', '{"eTag": "\"00b40ea66ecc23c8be3139d5f3bfe7ed-1\"", "size": 6868, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-09-08T12:20:13.000Z", "contentLength": 6868, "httpStatusCode": 200}', '4a43aacd-af6e-4f5c-aed1-6b97fbd3cd36', NULL, NULL),
	('7375957e-f57b-4019-be9c-fae9006cc08f', 'locals', 'images/bali-pub-banner.jpg', NULL, '2024-09-25 04:48:49.43355+00', '2024-09-25 04:48:49.43355+00', '2024-09-25 04:48:49.43355+00', '{"eTag": "\"94f37f7fb9618c4d7864bbbc036823f6-1\"", "size": 574706, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-09-25T04:48:50.000Z", "contentLength": 574706, "httpStatusCode": 200}', 'b13414e4-dedf-4014-8d71-e7ea600ffaf3', NULL, NULL),
	('dd2a0060-3333-4735-9999-5a7e36a8f3b3', 'locals', 'images/bali-pub-logo.png', NULL, '2024-09-25 04:48:49.70405+00', '2024-09-25 04:48:49.70405+00', '2024-09-25 04:48:49.70405+00', '{"eTag": "\"4221d67ee8693be4a471127440d3137b-1\"", "size": 697828, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2024-09-25T04:48:50.000Z", "contentLength": 697828, "httpStatusCode": 200}', '4ff80f81-3b77-4805-a6dc-3c20515f5dbe', NULL, NULL);


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--

INSERT INTO "supabase_functions"."hooks" ("id", "hook_table_id", "hook_name", "created_at", "request_id") VALUES
	(1, 32831, 'transaction_completed_notification', '2024-09-18 17:03:12.76878+00', 1),
	(2, 32831, 'transaction_completed_notification', '2024-09-18 17:03:12.76878+00', 2),
	(3, 32825, 'reward_confirmation_request_notification', '2024-09-18 17:03:12.76878+00', 3),
	(4, 32831, 'transaction_completed_notification', '2024-09-18 17:04:27.98288+00', 4),
	(5, 32825, 'reward_confirmation_request_notification', '2024-09-18 17:04:27.98288+00', 5),
	(6, 32825, 'reward_confirmation_request_notification', '2024-09-18 17:04:27.98288+00', 6),
	(7, 32831, 'transaction_completed_notification', '2024-09-18 17:04:31.090892+00', 7),
	(8, 32825, 'reward_confirmation_request_notification', '2024-09-18 17:04:31.090892+00', 8),
	(9, 32825, 'reward_confirmation_request_notification', '2024-09-18 17:04:31.090892+00', 9),
	(10, 32831, 'transaction_completed_notification', '2024-09-18 17:05:17.815055+00', 10),
	(11, 32831, 'transaction_completed_notification', '2024-09-18 17:05:17.815055+00', 11),
	(12, 32825, 'reward_confirmation_request_notification', '2024-09-18 17:05:17.815055+00', 12),
	(13, 32831, 'transaction_completed_notification', '2024-09-18 17:05:51.139576+00', 13),
	(14, 32825, 'reward_confirmation_request_notification', '2024-09-18 17:05:51.139576+00', 14),
	(15, 32831, 'transaction_completed_notification', '2024-09-18 17:06:25.594342+00', 15),
	(16, 32825, 'reward_confirmation_request_notification', '2024-09-18 17:06:25.594342+00', 16),
	(17, 32831, 'transaction_completed_notification', '2024-09-18 19:33:23.182872+00', 1),
	(18, 32825, 'reward_confirmation_request_notification', '2024-09-18 19:33:23.182872+00', 2),
	(19, 32831, 'transaction_completed_notification', '2024-09-18 19:33:30.618162+00', 3),
	(20, 32825, 'reward_confirmation_request_notification', '2024-09-18 19:33:30.618162+00', 4),
	(21, 32825, 'reward_confirmation_request_notification', '2024-09-18 19:33:30.618162+00', 5),
	(22, 32831, 'transaction_completed_notification', '2024-09-18 19:34:03.132601+00', 6),
	(23, 32825, 'reward_confirmation_request_notification', '2024-09-18 19:34:03.132601+00', 7),
	(24, 32831, 'transaction_completed_notification', '2024-09-18 19:34:05.206181+00', 8),
	(25, 32825, 'reward_confirmation_request_notification', '2024-09-18 19:34:05.206181+00', 9),
	(26, 32825, 'reward_confirmation_request_notification', '2024-09-18 19:34:05.206181+00', 10),
	(27, 32831, 'transaction_completed_notification', '2024-09-18 19:34:22.374592+00', 11),
	(28, 32831, 'transaction_completed_notification', '2024-09-18 19:34:22.374592+00', 12),
	(29, 32825, 'reward_confirmation_request_notification', '2024-09-18 19:34:22.374592+00', 13),
	(30, 32831, 'transaction_completed_notification', '2024-09-19 08:19:37.973075+00', 14),
	(31, 32831, 'transaction_completed_notification', '2024-09-19 08:19:37.973075+00', 15),
	(32, 32825, 'reward_confirmation_request_notification', '2024-09-19 08:19:37.973075+00', 16),
	(33, 32831, 'transaction_completed_notification', '2024-09-19 08:28:10.608299+00', 17),
	(34, 32831, 'transaction_completed_notification', '2024-09-19 08:28:10.608299+00', 18),
	(35, 32825, 'reward_confirmation_request_notification', '2024-09-19 08:28:10.608299+00', 19),
	(36, 32825, 'reward_confirmation_request_notification', '2024-09-19 08:28:10.608299+00', 20),
	(37, 32831, 'transaction_completed_notification', '2024-09-19 08:29:05.726816+00', 21),
	(38, 32831, 'transaction_completed_notification', '2024-09-19 08:29:05.726816+00', 22),
	(39, 32825, 'reward_confirmation_request_notification', '2024-09-19 08:29:05.726816+00', 23),
	(40, 32825, 'reward_confirmation_request_notification', '2024-09-19 08:29:05.726816+00', 24),
	(41, 32831, 'transaction_completed_notification', '2024-09-22 14:19:25.013925+00', 1),
	(42, 32831, 'transaction_completed_notification', '2024-09-22 14:19:25.013925+00', 2),
	(43, 32825, 'reward_confirmation_request_notification', '2024-09-22 14:19:25.013925+00', 3),
	(44, 32825, 'reward_confirmation_request_notification', '2024-09-22 14:19:25.013925+00', 4),
	(45, 32831, 'transaction_completed_notification', '2024-09-22 14:21:40.392349+00', 5),
	(46, 32825, 'reward_confirmation_request_notification', '2024-09-22 14:21:40.392349+00', 6),
	(47, 32825, 'reward_confirmation_request_notification', '2024-09-22 14:21:40.392349+00', 7),
	(48, 32825, 'reward_confirmation_request_notification', '2024-09-22 14:26:53.044471+00', 8),
	(49, 32831, 'transaction_completed_notification', '2024-09-22 14:26:56.755901+00', 9),
	(50, 32825, 'reward_confirmation_request_notification', '2024-09-22 14:26:56.755901+00', 10),
	(51, 32825, 'reward_confirmation_request_notification', '2024-09-22 14:27:07.110987+00', 11),
	(52, 32825, 'reward_confirmation_request_notification', '2024-09-22 14:27:07.110987+00', 12),
	(53, 32831, 'transaction_completed_notification', '2024-09-22 14:29:24.956549+00', 13),
	(54, 32825, 'reward_confirmation_request_notification', '2024-09-22 14:29:24.956549+00', 14),
	(55, 32825, 'reward_confirmation_request_notification', '2024-09-22 14:29:24.956549+00', 15),
	(56, 32825, 'reward_confirmation_request_notification', '2024-09-22 14:32:34.499852+00', 16),
	(57, 32831, 'transaction_completed_notification', '2024-09-22 14:32:36.216783+00', 17),
	(58, 32825, 'reward_confirmation_request_notification', '2024-09-22 14:32:36.216783+00', 18),
	(59, 32831, 'transaction_completed_notification', '2024-09-22 14:32:51.326543+00', 19),
	(60, 32825, 'reward_confirmation_request_notification', '2024-09-22 14:32:51.326543+00', 20),
	(61, 32831, 'transaction_completed_notification', '2024-09-22 14:32:59.670312+00', 21),
	(62, 32825, 'reward_confirmation_request_notification', '2024-09-22 14:32:59.670312+00', 22),
	(63, 32831, 'transaction_completed_notification', '2024-09-22 14:37:19.446804+00', 23),
	(64, 32825, 'reward_confirmation_request_notification', '2024-09-22 14:37:19.446804+00', 24),
	(65, 32825, 'reward_confirmation_request_notification', '2024-09-22 14:37:19.446804+00', 25),
	(66, 32831, 'transaction_completed_notification', '2024-09-22 14:38:35.111893+00', 26),
	(67, 32825, 'reward_confirmation_request_notification', '2024-09-22 14:38:35.111893+00', 27),
	(68, 32825, 'reward_confirmation_request_notification', '2024-09-22 14:38:35.111893+00', 28),
	(69, 32825, 'reward_confirmation_request_notification', '2024-09-22 14:38:46.917668+00', 29),
	(70, 32825, 'reward_confirmation_request_notification', '2024-09-22 14:38:52.495406+00', 30),
	(71, 32831, 'transaction_completed_notification', '2024-09-22 14:38:53.718073+00', 31),
	(72, 32825, 'reward_confirmation_request_notification', '2024-09-22 14:38:53.718073+00', 32),
	(73, 32831, 'transaction_completed_notification', '2024-09-22 14:38:54.807275+00', 33),
	(74, 32825, 'reward_confirmation_request_notification', '2024-09-22 14:38:54.807275+00', 34),
	(75, 32831, 'transaction_completed_notification', '2024-09-24 11:57:43.126614+00', 35),
	(76, 32831, 'transaction_completed_notification', '2024-09-24 11:57:43.126614+00', 36),
	(77, 32825, 'reward_confirmation_request_notification', '2024-09-24 11:57:43.126614+00', 37),
	(78, 32831, 'transaction_completed_notification', '2024-09-25 16:04:37.880316+00', 38),
	(79, 32831, 'transaction_completed_notification', '2024-09-25 16:04:37.880316+00', 39),
	(80, 32825, 'reward_confirmation_request_notification', '2024-09-25 16:04:37.880316+00', 40),
	(81, 32825, 'reward_confirmation_request_notification', '2024-09-25 16:04:37.880316+00', 41),
	(82, 32831, 'transaction_completed_notification', '2024-09-28 17:05:31.018577+00', 42),
	(83, 32831, 'transaction_completed_notification', '2024-09-28 17:05:31.018577+00', 43),
	(84, 32825, 'reward_confirmation_request_notification', '2024-09-28 17:05:31.018577+00', 44),
	(85, 32831, 'transaction_completed_notification', '2024-09-28 17:07:32.17227+00', 45),
	(86, 32831, 'transaction_completed_notification', '2024-09-28 17:07:32.17227+00', 46),
	(87, 32825, 'reward_confirmation_request_notification', '2024-09-28 17:07:32.17227+00', 47),
	(88, 32831, 'transaction_completed_notification', '2024-09-28 17:08:07.620713+00', 48),
	(89, 32825, 'reward_confirmation_request_notification', '2024-09-28 17:08:07.620713+00', 49),
	(90, 32831, 'transaction_completed_notification', '2024-09-28 17:08:11.402768+00', 50),
	(91, 32825, 'reward_confirmation_request_notification', '2024-09-28 17:08:11.402768+00', 51),
	(92, 32825, 'reward_confirmation_request_notification', '2024-09-28 17:08:11.402768+00', 52),
	(93, 32831, 'transaction_completed_notification', '2024-09-30 06:56:22.759152+00', 53),
	(94, 32831, 'transaction_completed_notification', '2024-09-30 06:56:23.045058+00', 54),
	(95, 32831, 'transaction_completed_notification', '2024-09-30 06:56:23.414756+00', 55),
	(96, 32831, 'transaction_completed_notification', '2024-09-30 06:56:24.362279+00', 56),
	(97, 32831, 'transaction_completed_notification', '2024-09-30 06:56:24.608707+00', 57),
	(98, 32831, 'transaction_completed_notification', '2024-10-02 12:04:50.0649+00', 58),
	(99, 32831, 'transaction_completed_notification', '2024-10-02 12:04:50.0649+00', 59),
	(100, 32825, 'reward_confirmation_request_notification', '2024-10-02 12:04:50.0649+00', 60),
	(101, 32825, 'reward_confirmation_request_notification', '2024-10-02 12:04:50.0649+00', 61),
	(102, 32831, 'transaction_completed_notification', '2024-10-02 16:12:25.035108+00', 62),
	(103, 32831, 'transaction_completed_notification', '2024-10-02 16:12:25.035108+00', 63),
	(104, 32825, 'reward_confirmation_request_notification', '2024-10-02 16:12:25.035108+00', 64),
	(105, 32825, 'reward_confirmation_request_notification', '2024-10-02 16:12:25.035108+00', 65),
	(106, 32825, 'reward_confirmation_request_notification', '2024-10-02 16:12:25.035108+00', 66);


--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 213, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 33, true);


--
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."addresses_id_seq"', 3, true);


--
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."companies_id_seq"', 5, true);


--
-- Name: customer_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."customer_cards_id_seq"', 8, true);


--
-- Name: customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."customer_id_seq"', 8, true);


--
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."employees_id_seq"', 3, true);


--
-- Name: geo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."geo_id_seq"', 3, true);


--
-- Name: local_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."local_cards_id_seq"', 11, true);


--
-- Name: locals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."locals_id_seq"', 3, true);


--
-- Name: transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."transactions_id_seq"', 35, true);


--
-- Name: transactions_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."transactions_id_seq1"', 23, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 106, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
