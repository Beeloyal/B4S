SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.6

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
	('00000000-0000-0000-0000-000000000000', 'd1a71aa2-1714-469c-aa51-986cf1ec8934', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"lukasjanek99@gmail.com","user_id":"fbb179b3-888c-4d93-b518-ec4f2a1f815a","user_phone":"48666978350"}}', '2024-11-23 18:45:07.376967+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b4a3846-3a25-4a06-b669-001b5110825e', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"lukasjanek99@gmail.com","user_id":"fbb179b3-888c-4d93-b518-ec4f2a1f815a","user_phone":"48666978350"}}', '2024-11-23 19:10:42.42974+00', ''),
	('00000000-0000-0000-0000-000000000000', '6b20ade7-e5a7-440e-8510-b3cc856bcffc', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"lukasjanek99@gmail.com","user_id":"9a22a4bd-37a5-41a3-b4ef-ab128142caff","user_phone":"48666978350"}}', '2024-11-23 19:11:26.153379+00', ''),
	('00000000-0000-0000-0000-000000000000', '0c03d3ea-db75-4b13-939d-f8ef666434f3', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"lukasjanek99@gmail.com","user_id":"9a22a4bd-37a5-41a3-b4ef-ab128142caff","user_phone":"48666978350"}}', '2024-11-23 19:14:09.94754+00', ''),
	('00000000-0000-0000-0000-000000000000', '964572ef-59a7-4af4-894c-0f94f3e94167', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"lukasjanek99@gmail.com","user_id":"7fa142b1-6516-4e82-a2b2-b54b2bb95239","user_phone":"48666978350"}}', '2024-11-23 19:16:26.774283+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eb9384fa-bc91-4f35-a668-0d4d5f44477f', '{"action":"user_recovery_requested","actor_id":"7fa142b1-6516-4e82-a2b2-b54b2bb95239","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-11-23 19:24:35.872296+00', ''),
	('00000000-0000-0000-0000-000000000000', '3559cd9a-d499-4064-8442-07dc60d9dace', '{"action":"login","actor_id":"7fa142b1-6516-4e82-a2b2-b54b2bb95239","actor_username":"48666978350","actor_via_sso":false,"log_type":"account"}', '2024-11-23 19:24:49.405412+00', ''),
	('00000000-0000-0000-0000-000000000000', '8b8ab1fc-5a82-4a27-9cef-5aa786476969', '{"action":"user_modified","actor_id":"7fa142b1-6516-4e82-a2b2-b54b2bb95239","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-11-23 19:24:49.688257+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd1208c7b-a5e5-425a-9ba4-f5823bc60ad5', '{"action":"token_refreshed","actor_id":"7fa142b1-6516-4e82-a2b2-b54b2bb95239","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-11-23 19:24:49.89512+00', ''),
	('00000000-0000-0000-0000-000000000000', '95d1ae86-e5d3-4f8f-b3d7-1898f15b7366', '{"action":"token_revoked","actor_id":"7fa142b1-6516-4e82-a2b2-b54b2bb95239","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-11-23 19:24:49.89556+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a146fc9f-fb90-455a-b648-cb6faf384a14', '{"action":"logout","actor_id":"7fa142b1-6516-4e82-a2b2-b54b2bb95239","actor_username":"48666978350","actor_via_sso":false,"log_type":"account"}', '2024-11-23 19:25:07.398976+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ae4787ee-80a0-40cc-a823-e2a5a783882e', '{"action":"user_confirmation_requested","actor_id":"7fa142b1-6516-4e82-a2b2-b54b2bb95239","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-11-23 19:25:11.068962+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ad127fa9-9dbf-4652-8966-2606954af082', '{"action":"login","actor_id":"7fa142b1-6516-4e82-a2b2-b54b2bb95239","actor_username":"48666978350","actor_via_sso":false,"log_type":"account","traits":{"provider":"phone"}}', '2024-11-23 19:25:11.72911+00', ''),
	('00000000-0000-0000-0000-000000000000', '15b237a8-36db-4e25-a892-1c3c0a606383', '{"action":"user_signedup","actor_id":"7fa142b1-6516-4e82-a2b2-b54b2bb95239","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-11-23 19:25:19.920005+00', ''),
	('00000000-0000-0000-0000-000000000000', '8e731d4b-5a78-4a8c-a1a8-14589225b7b2', '{"action":"user_modified","actor_id":"7fa142b1-6516-4e82-a2b2-b54b2bb95239","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-11-23 19:25:20.073383+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aae33644-5fe2-4536-82ea-6f67db8742e3', '{"action":"token_refreshed","actor_id":"7fa142b1-6516-4e82-a2b2-b54b2bb95239","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-11-23 19:25:20.226431+00', ''),
	('00000000-0000-0000-0000-000000000000', '74c2c39c-5ac0-4f80-9901-5c7539c1a5fb', '{"action":"token_revoked","actor_id":"7fa142b1-6516-4e82-a2b2-b54b2bb95239","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-11-23 19:25:20.226908+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eed3a51e-574b-4158-8345-2c816ac6876c', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"lukasjanek99@gmail.com","user_id":"7fa142b1-6516-4e82-a2b2-b54b2bb95239","user_phone":"48666978350"}}', '2024-11-23 19:26:01.003219+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd5ecf4d4-57ee-4805-8301-9a583a9442a9', '{"action":"user_confirmation_requested","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-11-23 19:26:14.405598+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b0713920-b3b0-4ea7-b4e3-e6f677bd8844', '{"action":"user_signedup","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-11-23 19:26:16.776684+00', ''),
	('00000000-0000-0000-0000-000000000000', '79669549-8e67-45fb-80db-fb8e4f6bd943', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-11-23 19:26:16.929939+00', ''),
	('00000000-0000-0000-0000-000000000000', '7ba1662b-a3d0-48da-8b6e-e438d9d9a5f2', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-11-23 19:26:17.075552+00', ''),
	('00000000-0000-0000-0000-000000000000', '1eefd734-677d-4d7c-90d1-d55627ae44e4', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-11-23 19:26:17.076118+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ed0f113f-ce98-4332-8a2c-3393dc116323', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"lukasjanek99@gmail.com","user_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","user_phone":""}}', '2024-11-24 14:06:17.646832+00', ''),
	('00000000-0000-0000-0000-000000000000', '7987df96-921c-45e5-a3c3-4170b348c762', '{"action":"user_recovery_requested","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-24 14:10:19.807618+00', ''),
	('00000000-0000-0000-0000-000000000000', '1c37c59d-cfe0-4721-89b3-2c5ebe2eaeb4', '{"action":"login","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-24 14:10:37.239734+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cee7e914-2c24-45dd-9b54-13693f36034e', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-24 14:10:37.439068+00', ''),
	('00000000-0000-0000-0000-000000000000', '889d3c15-a6dc-4c85-8a2b-07268a49980d', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-11-24 14:10:37.607897+00', ''),
	('00000000-0000-0000-0000-000000000000', '6cae4e94-61f5-44b0-9e8a-8b546fcb8a40', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-11-24 14:10:37.608365+00', ''),
	('00000000-0000-0000-0000-000000000000', '2964b921-d15e-4e6a-9b5b-7519a6675467', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-11-24 16:38:44.467582+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a0ce87b0-c373-452e-b76c-6a33c90e5bb8', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-11-24 16:38:44.468388+00', ''),
	('00000000-0000-0000-0000-000000000000', '1f914c50-71df-45cf-8c7a-cf95ab5d19c8', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-11-25 18:54:16.298981+00', ''),
	('00000000-0000-0000-0000-000000000000', 'abf3fcef-4846-4db3-86c1-d07620304591', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-11-25 18:54:16.300186+00', ''),
	('00000000-0000-0000-0000-000000000000', '873bbcb7-49a9-4bdd-b798-def8b1bb1983', '{"action":"user_recovery_requested","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-01 17:19:53.946176+00', ''),
	('00000000-0000-0000-0000-000000000000', '032e3774-311b-4ffc-b037-d146c771b992', '{"action":"login","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-01 17:21:58.643755+00', ''),
	('00000000-0000-0000-0000-000000000000', '352fa0ea-c148-49a1-b8c2-78264d986669', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-01 17:21:58.827926+00', ''),
	('00000000-0000-0000-0000-000000000000', '48165f62-fbcf-447a-9b8b-2a87dfc7b69a', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-01 17:21:58.992693+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd4b32a4f-67f2-42f9-bf3d-d8ea4e01ee63', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-01 17:21:58.993099+00', ''),
	('00000000-0000-0000-0000-000000000000', '6b213544-c4b4-435b-a223-22680c516452', '{"action":"logout","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-01 17:37:55.802626+00', ''),
	('00000000-0000-0000-0000-000000000000', '056fd3da-a191-4879-a815-758825ff185c', '{"action":"user_recovery_requested","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-01 17:38:03.238256+00', ''),
	('00000000-0000-0000-0000-000000000000', '6fcaf2df-4327-4702-b94e-baa826bfe4d2', '{"action":"user_recovery_requested","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-01 17:45:51.277219+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f107ea13-70ff-440e-bf04-f6f80927e89a', '{"action":"login","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-01 17:46:17.402875+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ccec4a53-d2db-4b78-828c-fec6a5c94523', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-01 17:46:17.57439+00', ''),
	('00000000-0000-0000-0000-000000000000', '1c425a07-6a84-4dfe-976c-fcdb60da9805', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-01 17:46:17.723359+00', ''),
	('00000000-0000-0000-0000-000000000000', '2acd42de-3523-4634-bd27-7a8a9b6d0a27', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-01 17:46:17.723883+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ea0144c9-cb1e-4d9e-9342-f53885983a0a', '{"action":"logout","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-01 17:50:16.525751+00', ''),
	('00000000-0000-0000-0000-000000000000', '3b7bca54-e916-4f3a-9b2a-837286dda067', '{"action":"user_recovery_requested","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-01 17:50:26.818401+00', ''),
	('00000000-0000-0000-0000-000000000000', '239586ac-4459-4580-9af4-8f557d0c9fb7', '{"action":"login","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-01 17:51:07.053323+00', ''),
	('00000000-0000-0000-0000-000000000000', '9dc7d896-9fd7-4765-876a-8ec47544f0d8', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-01 17:51:07.207708+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dbe319ea-0ee8-4a34-abcf-998a23d0dc3e', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-01 17:51:07.368323+00', ''),
	('00000000-0000-0000-0000-000000000000', '51b2f7bc-07b8-4e1d-9224-1a6490555c33', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-01 17:51:07.368802+00', ''),
	('00000000-0000-0000-0000-000000000000', '5b817a65-539f-4bc2-8837-a45dcadc8c2e', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-01 18:50:36.363881+00', ''),
	('00000000-0000-0000-0000-000000000000', '184eb376-ff44-4247-a13b-5bb078c8f275', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-01 18:50:36.364645+00', ''),
	('00000000-0000-0000-0000-000000000000', 'abad26eb-a5b9-42b6-8df3-acd545ab471e', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-01 19:49:56.334088+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f1f04f2d-8807-4e53-8c49-a8cc4f22272d', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-01 19:49:56.334957+00', ''),
	('00000000-0000-0000-0000-000000000000', '8c54ca5d-2d96-4ad1-bf00-9d63a974aac1', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-01 20:49:16.287086+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b5ba97cc-188a-4864-8a7e-ec4c0a285891', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-01 20:49:16.288087+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bc9fcfe8-d6a9-43a8-9a67-1b32df8000e7', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-09 19:25:18.298517+00', ''),
	('00000000-0000-0000-0000-000000000000', '15cb38ff-4c9a-42d0-bc15-d3149232c72e', '{"action":"user_signedup","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-12-15 14:11:05.033536+00', ''),
	('00000000-0000-0000-0000-000000000000', '7e1a55e2-7170-4547-b7be-7def617aa0fa', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-09 19:25:18.299521+00', ''),
	('00000000-0000-0000-0000-000000000000', '20624ad3-0296-4785-a0f9-18106599ea5e', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-09 20:24:47.450951+00', ''),
	('00000000-0000-0000-0000-000000000000', '0d2f2564-951a-477a-b477-5a7dbdbf81dc', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-09 20:24:47.451612+00', ''),
	('00000000-0000-0000-0000-000000000000', '350d3df3-7119-4967-b593-bc69042b23a9', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-09 21:24:17.194416+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f6b96162-e79c-48d4-847d-fa75026d75c3', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-09 21:24:17.195143+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd51ecf40-9259-47be-afde-b617d57bd65e', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-09 22:23:47.196787+00', ''),
	('00000000-0000-0000-0000-000000000000', '57dc1ca2-c250-45ce-a5e8-d112600e6ee2', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-09 22:23:47.197655+00', ''),
	('00000000-0000-0000-0000-000000000000', '9a5024f0-7717-4873-8df0-28854df6aaa0', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-10 13:05:29.001866+00', ''),
	('00000000-0000-0000-0000-000000000000', '13a466ff-7dda-4608-bc28-9e5111b41c91', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-10 13:05:29.002991+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eb56a164-39db-47c0-8c54-ced9c9fc9ad1', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-11 19:06:52.523118+00', ''),
	('00000000-0000-0000-0000-000000000000', '0bf0af3e-42b5-41d2-8610-70775f5f203c', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-11 19:06:52.524108+00', ''),
	('00000000-0000-0000-0000-000000000000', '7c3eefdb-7be0-486f-8472-84f4abad88a2', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-12 19:30:41.661526+00', ''),
	('00000000-0000-0000-0000-000000000000', '118d601f-b315-4656-84f6-8696b82a4ffe', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-12 19:30:41.662325+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd0673430-6105-4a50-87fa-5e0e7f898de0', '{"action":"logout","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-12 19:41:31.279797+00', ''),
	('00000000-0000-0000-0000-000000000000', 'efd831cf-0ec1-4844-9f89-946eb250985a', '{"action":"user_recovery_requested","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-12 19:42:28.811891+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b9693996-8024-4414-b3df-a1957c658978', '{"action":"login","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-12 19:43:35.766847+00', ''),
	('00000000-0000-0000-0000-000000000000', '672e0754-02a3-45f7-a635-d98f3ffe0eb0', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-12 19:43:36.028681+00', ''),
	('00000000-0000-0000-0000-000000000000', '7166854f-9857-432f-bc86-3437eb88d857', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-12 19:43:36.166406+00', ''),
	('00000000-0000-0000-0000-000000000000', '2be564b9-f342-44aa-9170-0a24e92e2ca0', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-12 19:43:36.166896+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eb21e402-c192-4578-84a7-a19afe7561d6', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-12 19:48:13.562708+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c86d56b7-57ed-44a2-88f3-887ed53f125b', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-12 19:48:13.740416+00', ''),
	('00000000-0000-0000-0000-000000000000', '1f0a1f43-7b1c-42e8-a168-013bd27ca6b3', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-12 19:48:13.740926+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e0361a89-4088-48f4-b273-3174c5986719', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-12 19:53:19.987517+00', ''),
	('00000000-0000-0000-0000-000000000000', '4e36991b-fd56-4fec-ad1c-10c6741ddc17', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-12 19:53:20.161334+00', ''),
	('00000000-0000-0000-0000-000000000000', '2f555ad0-5550-4219-b90f-b760ccf36abf', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-12 19:53:20.162003+00', ''),
	('00000000-0000-0000-0000-000000000000', 'df2554ed-7136-4a3e-8309-dcac6db71fbe', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 10:51:49.300941+00', ''),
	('00000000-0000-0000-0000-000000000000', '2b3e7f48-cf00-438f-a862-df34a7f2384f', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 10:51:49.302061+00', ''),
	('00000000-0000-0000-0000-000000000000', '5bf3fa51-0165-40db-8a0e-48cd855d8347', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 11:51:18.689867+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cb349d0c-4168-4168-833d-711b53c7a589', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 11:51:18.690889+00', ''),
	('00000000-0000-0000-0000-000000000000', '49bfa7ff-96d1-4936-b811-faa3540cdb88', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 12:50:38.652828+00', ''),
	('00000000-0000-0000-0000-000000000000', '0c34bd58-6d1b-4ba4-a3d3-fd6a54aa6703', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 12:50:38.653576+00', ''),
	('00000000-0000-0000-0000-000000000000', '9746d1e3-467e-471f-b80d-9513805e7f51', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 13:49:58.608954+00', ''),
	('00000000-0000-0000-0000-000000000000', '931ee809-8695-47e5-bf21-b6bd5c2311bc', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 13:49:58.609824+00', ''),
	('00000000-0000-0000-0000-000000000000', '3041d727-5e41-4abf-93da-b402f86e9cce', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 14:04:13.691025+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ce4ea1ca-7824-415f-96c6-7192509d65c9', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 14:04:13.884196+00', ''),
	('00000000-0000-0000-0000-000000000000', '8f33d18b-4323-428b-aae6-4bfa42b5146a', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 14:04:13.884715+00', ''),
	('00000000-0000-0000-0000-000000000000', '081ae057-d6ee-4d38-8068-798f9bdf5c8e', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 14:05:39.45897+00', ''),
	('00000000-0000-0000-0000-000000000000', '8c39339f-3b95-45be-a430-7e26fd709c3b', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 14:05:39.656608+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aaa9e1c9-6e7e-45c7-86e0-63e2dbee9e4b', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 14:05:39.65709+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cd43dae5-8eaf-422b-a9ab-f1fc4605e1a1', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 14:08:03.311105+00', ''),
	('00000000-0000-0000-0000-000000000000', '65d0681c-4235-4fc8-bd9e-043e1d574008', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 14:08:03.680412+00', ''),
	('00000000-0000-0000-0000-000000000000', '8092f66c-f35c-40ef-b3f5-6c5f1745e63b', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 14:08:03.680847+00', ''),
	('00000000-0000-0000-0000-000000000000', 'deb97527-94f0-4d3d-83c1-15ba42580063', '{"action":"logout","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-13 14:41:48.005989+00', ''),
	('00000000-0000-0000-0000-000000000000', '42f8c688-0859-4af8-807c-e439e7c03350', '{"action":"user_recovery_requested","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 15:19:08.189923+00', ''),
	('00000000-0000-0000-0000-000000000000', '9f3568ae-231c-41ec-8bc8-1d05b097dfa7', '{"action":"login","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-13 15:19:29.741325+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a526179c-538c-4ab5-abab-6c2ae211aab4', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 15:19:29.999197+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b9a1113-19c2-466d-aafa-dad2235a0e36', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 15:19:30.159523+00', ''),
	('00000000-0000-0000-0000-000000000000', '94914a63-ef54-4a4e-9b42-02d1197e3ff5', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 15:19:30.159967+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b129f9f-7a97-4ac2-a408-ca706dd4073e', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 15:22:15.966541+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a62235af-601e-4720-abba-7551305dada9', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 15:22:16.158316+00', ''),
	('00000000-0000-0000-0000-000000000000', '1663d9d7-fb55-46d0-872f-d36dc4194126', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 15:22:16.158861+00', ''),
	('00000000-0000-0000-0000-000000000000', '53861bd8-8845-4cf6-9807-05730b9b2817', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 15:27:12.135417+00', ''),
	('00000000-0000-0000-0000-000000000000', '54fcdecf-4683-4e64-bfa2-368bdf48db77', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 15:27:12.348942+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bed261f1-b902-4270-83c2-a9cc6f7f2828', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 15:27:12.349549+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f27e4888-36d1-4e51-9ad9-807c298a6264', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 16:10:22.029538+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fb10c8f2-7f43-4e2f-911d-bec7b7adf4b5', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 16:10:22.204051+00', ''),
	('00000000-0000-0000-0000-000000000000', '72963f87-d032-486f-935b-eff83e41b5cf', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 16:10:22.204636+00', ''),
	('00000000-0000-0000-0000-000000000000', '74f5d07c-084c-423f-9f78-6afd13c86575', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 17:08:56.656812+00', ''),
	('00000000-0000-0000-0000-000000000000', '3c80b35f-18d8-4914-91a9-364cccaf1ecf', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 17:08:56.824515+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a078c56a-e955-486b-81dc-eaca4119e6cb', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 17:08:56.825005+00', ''),
	('00000000-0000-0000-0000-000000000000', '8d0640fd-8b84-4f0a-8b53-eb328e60fbc4', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 17:43:35.038335+00', ''),
	('00000000-0000-0000-0000-000000000000', '955b53ce-943c-46f2-99e8-357a6819af20', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 17:43:35.258429+00', ''),
	('00000000-0000-0000-0000-000000000000', '540c8879-b3a8-46f0-be67-5f433aae4bf2', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 17:43:35.258939+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f3eaeb85-19b3-4af9-ab41-0728ef3d1497', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 17:50:53.797861+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f9314e67-a401-4dc5-82b4-b209c86bae61', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 17:50:53.968426+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ba0611af-80f4-4c7c-8f23-bd941115a3aa', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 17:50:53.96892+00', ''),
	('00000000-0000-0000-0000-000000000000', '60e4a8dd-8e0a-4627-b201-28eb9955fbcb', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 17:52:14.82948+00', ''),
	('00000000-0000-0000-0000-000000000000', '812452f8-0784-4e59-b1b6-c0846747c18c', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 17:52:14.998052+00', ''),
	('00000000-0000-0000-0000-000000000000', '4e4d5aa5-a7ba-49ee-8908-ac42a8fd0803', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 17:52:14.998532+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ef85bc09-2122-43d3-bf45-e4f414e2af75', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 17:55:19.181355+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fb8b891a-c67f-4a0a-98c8-4b9a63c59ba3', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 17:55:19.408878+00', ''),
	('00000000-0000-0000-0000-000000000000', '5727cfc3-d4da-4628-a693-96249808d4d4', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 17:55:19.409394+00', ''),
	('00000000-0000-0000-0000-000000000000', '456ed016-a841-44b2-9c68-0088a0e25a62', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 18:00:03.700417+00', ''),
	('00000000-0000-0000-0000-000000000000', '8b2d3902-5811-47ab-ab0e-0370d24fa1e8', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 18:00:03.923587+00', ''),
	('00000000-0000-0000-0000-000000000000', '2673ceae-5b5f-421a-a977-b914a44581db', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 18:00:03.924035+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b906cc24-be73-461f-b5d1-9beb251f3d42', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 18:38:31.774877+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a2807add-1f3f-4b81-9ca7-dccd92ec5d19', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 18:38:31.982461+00', ''),
	('00000000-0000-0000-0000-000000000000', '7e697e71-2bed-4cd6-932c-afd58f9425c9', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 18:38:31.982971+00', ''),
	('00000000-0000-0000-0000-000000000000', '71ed89da-b4ca-47ae-9000-4120de952b58', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 18:44:57.674018+00', ''),
	('00000000-0000-0000-0000-000000000000', '5997f118-a690-4925-ae38-b26202c53905', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 18:44:57.880963+00', ''),
	('00000000-0000-0000-0000-000000000000', '998e0b27-ea8c-4a8e-a3ee-9f4b43cd7ce9', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 18:44:57.881527+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a13bb7df-e54d-4383-a46a-36dafa416c32', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 18:47:59.769503+00', ''),
	('00000000-0000-0000-0000-000000000000', '49069f5e-4206-49f0-a053-a22a681259a2', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 18:48:00.041779+00', ''),
	('00000000-0000-0000-0000-000000000000', '353b893e-1f9a-4363-94bb-7ad682506fa6', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 18:48:00.042414+00', ''),
	('00000000-0000-0000-0000-000000000000', '41afe9cc-d08e-41b0-bcbc-4fd55bef7dbb', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 18:49:22.260107+00', ''),
	('00000000-0000-0000-0000-000000000000', '58788766-d591-4ca4-821a-96cf7aa0f25d', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 18:49:22.543488+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd6df4170-9a5b-40e9-843d-b08d953521e3', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 18:49:22.543917+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cf88b40e-4903-4ec3-8b6f-b501562c7b78', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 18:53:06.614657+00', ''),
	('00000000-0000-0000-0000-000000000000', '122ffbcb-d06d-459a-b6a3-b52c70b4787d', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 18:53:06.80077+00', ''),
	('00000000-0000-0000-0000-000000000000', '1490bc34-31fc-43cb-8886-f389718171a2', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 18:53:06.801156+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b1eac4db-9a35-4b12-938c-67ee1a155f6b', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 19:10:33.798219+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c2e1ea53-9b5e-450d-b37d-9a0b06423b26', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 19:10:33.991264+00', ''),
	('00000000-0000-0000-0000-000000000000', '3e5b92e5-38f2-4465-be0a-280f06c97703', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 19:10:33.991897+00', ''),
	('00000000-0000-0000-0000-000000000000', '505b329c-b4b3-45d9-8b85-7555ded61b91', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 19:11:02.021895+00', ''),
	('00000000-0000-0000-0000-000000000000', '95be56fe-4b82-4d98-8ae0-00f24ec3fde9', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 19:11:02.255233+00', ''),
	('00000000-0000-0000-0000-000000000000', '5169a758-3acc-4976-83ff-94b5bf4441de', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 19:11:02.255774+00', ''),
	('00000000-0000-0000-0000-000000000000', '804a1817-4f69-44e8-8ed8-027eeee1a939', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 19:21:01.13808+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c537d250-4176-4a26-a008-6a76dd3cf722', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 19:21:01.345988+00', ''),
	('00000000-0000-0000-0000-000000000000', '394a4a61-a23b-45b8-8eea-a6269e47dbd8', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 19:21:01.346562+00', ''),
	('00000000-0000-0000-0000-000000000000', '1b625404-235b-4e8b-aac0-ce05cacde206', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 19:21:07.730197+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ffcc4750-95c4-477d-ba02-ea884848b0c6', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 19:21:07.912597+00', ''),
	('00000000-0000-0000-0000-000000000000', '0ea810d5-43dc-4b4c-8fbd-b5c1606034ac', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 19:21:07.913195+00', ''),
	('00000000-0000-0000-0000-000000000000', '803f8015-b5cd-4593-bbe2-84b7093fa065', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-13 19:28:38.287558+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cdcb1b8f-df63-490c-9780-3c3256140610', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 19:28:38.466122+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f919e753-af2f-43c5-857b-75ae94ae6f2d', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 19:28:38.466753+00', ''),
	('00000000-0000-0000-0000-000000000000', '2c7bd6f1-6135-4a75-8745-e9e02fa028af', '{"action":"logout","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-13 19:30:42.491805+00', ''),
	('00000000-0000-0000-0000-000000000000', '36be73a2-24cd-4b7d-87e4-fe34f5113f52', '{"action":"user_recovery_requested","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-12-13 19:31:40.065595+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e3f8de45-5cae-4d7a-baa0-832e9fd37ad4', '{"action":"user_signedup","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-12-13 19:31:43.899123+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd0996756-c65c-4ca1-9efd-049c48206747', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-13 19:31:44.053632+00', ''),
	('00000000-0000-0000-0000-000000000000', 'caa9594a-3f1c-4fd7-94a1-a7325929da35', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-13 19:31:44.205437+00', ''),
	('00000000-0000-0000-0000-000000000000', '935e352b-b9bc-4b7b-a3fb-472eec65e2f4', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-13 19:31:44.206076+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c45ddbac-5dfa-4530-bc1e-e85f650531ff', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-13 19:32:21.648911+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bc1f36e2-9531-44f3-8967-4633cfbc236f', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-13 19:32:21.809479+00', ''),
	('00000000-0000-0000-0000-000000000000', '81127030-bee0-4163-a1c8-0afc991bec2e', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-13 19:32:21.80994+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ffe902c4-ad0c-4be3-8c56-bf390de8b99d', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-13 19:43:11.729064+00', ''),
	('00000000-0000-0000-0000-000000000000', '046521e0-5d4e-4eb3-a0f2-2e134886f0a8', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-13 19:43:11.927578+00', ''),
	('00000000-0000-0000-0000-000000000000', '4b61a0a1-6f7b-4a78-9e58-b39d91cd42f9', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-13 19:43:11.928115+00', ''),
	('00000000-0000-0000-0000-000000000000', '65bbb358-b63a-496c-90c4-28880e5b4436', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-13 20:26:12.085948+00', ''),
	('00000000-0000-0000-0000-000000000000', '04772e24-cc4a-491c-89eb-e3be46d330b3', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-13 20:26:12.277355+00', ''),
	('00000000-0000-0000-0000-000000000000', '10feaa32-136c-437e-b75c-d20485707fda', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-13 20:26:12.277771+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ba18afb5-8fbf-430d-b66a-0e2234515bc7', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-13 21:25:41.632394+00', ''),
	('00000000-0000-0000-0000-000000000000', '3718a974-0e59-43de-a5df-d06b136cde34', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-13 21:25:41.63318+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd43e4fc3-c37c-44ec-a26e-6350e9616058', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-13 22:25:01.669295+00', ''),
	('00000000-0000-0000-0000-000000000000', '40586ec8-3a3e-4683-b9f2-768fadc2ca00', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-13 22:25:01.670095+00', ''),
	('00000000-0000-0000-0000-000000000000', '3a5608ef-1df3-4478-af57-db1a0d6d208e', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-14 09:27:44.063661+00', ''),
	('00000000-0000-0000-0000-000000000000', '6c4f2e66-29af-4c76-9f04-b2e8acd2a19c', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-14 09:27:44.064496+00', ''),
	('00000000-0000-0000-0000-000000000000', '41e0673a-072d-4b33-b0e6-0dd7aa457b8d', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-14 09:30:53.686455+00', ''),
	('00000000-0000-0000-0000-000000000000', '442db256-a773-4f26-b65d-2458db30a6ee', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-14 09:30:53.873483+00', ''),
	('00000000-0000-0000-0000-000000000000', '618bb324-a3e4-4689-9401-dce7aa302b05', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-14 09:30:53.874007+00', ''),
	('00000000-0000-0000-0000-000000000000', '3260fa37-5538-4cee-a0a0-b21f8dde335e', '{"action":"logout","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"account"}', '2024-12-14 09:32:07.593741+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ca9594e5-7fef-41a7-81db-f33c438e78c8', '{"action":"user_recovery_requested","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-14 09:32:23.810871+00', ''),
	('00000000-0000-0000-0000-000000000000', '6ee2329c-f784-46c9-a21d-16a8fd0a15a3', '{"action":"login","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-14 09:32:49.942381+00', ''),
	('00000000-0000-0000-0000-000000000000', '5b8bcd36-5e43-4509-b615-454570b7a0c5', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-14 09:32:50.099325+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b2a534c3-5a7a-4cf3-b680-f7e58ae42f46', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 09:32:50.271442+00', ''),
	('00000000-0000-0000-0000-000000000000', '494bf057-0afa-4e2f-a71b-9aa3c5f6bdff', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 09:32:50.272123+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ec34be87-5973-4deb-9ffb-bca04b56ce5c', '{"action":"logout","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-14 09:40:22.287095+00', ''),
	('00000000-0000-0000-0000-000000000000', '9d90fb7c-1e5d-4ce2-b876-23ed19773730', '{"action":"user_recovery_requested","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-12-14 09:40:31.591272+00', ''),
	('00000000-0000-0000-0000-000000000000', '1a3fb7e3-5aeb-4dbf-bcef-cc98d81c8fb7', '{"action":"user_signedup","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-12-14 09:40:35.471055+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b6987737-f323-485f-98d7-e27b434cf26d', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-14 09:40:35.662725+00', ''),
	('00000000-0000-0000-0000-000000000000', '4e12f2ad-4011-4d50-8751-ea58944196a3', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-14 09:40:35.800462+00', ''),
	('00000000-0000-0000-0000-000000000000', '035f6848-cfa2-477b-bc7c-3ca0b68c34ed', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-14 09:40:35.800951+00', ''),
	('00000000-0000-0000-0000-000000000000', '839f1350-48d4-4af7-b1e5-f3f459ac8540', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-14 09:42:10.576567+00', ''),
	('00000000-0000-0000-0000-000000000000', '344e7f11-231d-4db4-b1a9-291ef7f18144', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-14 09:42:10.739604+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c98e0449-cd47-40e6-bdaf-51f3b8180375', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-14 09:42:10.74002+00', ''),
	('00000000-0000-0000-0000-000000000000', '04b55848-1aef-404d-80d0-3d5bacdee5cb', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-14 09:43:26.484729+00', ''),
	('00000000-0000-0000-0000-000000000000', '27c7f1a6-d39c-4dec-b215-3195b20df324', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-14 09:43:26.635414+00', ''),
	('00000000-0000-0000-0000-000000000000', '863ba517-bfe6-4c0b-b6c2-0f8bbca34d2b', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-14 09:43:26.635871+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f206b86c-4660-45e0-ac78-f6b63723638e', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-14 09:44:55.275889+00', ''),
	('00000000-0000-0000-0000-000000000000', '5d2f90e4-524a-4f96-931b-d54435f722e6', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-14 09:44:55.438651+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f14e360b-c154-4a0c-a328-f3fc03023dbf', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-14 09:44:55.43907+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ff793254-ee02-4490-ac7a-d0981d43b552', '{"action":"logout","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"account"}', '2024-12-14 10:05:25.775809+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ae4ce1d9-ebea-4f6d-9fa1-b1cb06505b71', '{"action":"user_recovery_requested","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-14 10:05:38.388124+00', ''),
	('00000000-0000-0000-0000-000000000000', '3e53cd3c-64b6-4d9b-b1d0-99dc91fd00e4', '{"action":"login","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-14 10:06:16.802943+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c9c25950-77e2-4446-bd11-6314e4d6c0a5', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-14 10:06:16.976396+00', ''),
	('00000000-0000-0000-0000-000000000000', '33b30339-2169-45c2-b454-13850296fbd6', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 10:06:17.167595+00', ''),
	('00000000-0000-0000-0000-000000000000', '9ab5802b-8693-4427-892b-e2cf634d6dce', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 10:06:17.168122+00', ''),
	('00000000-0000-0000-0000-000000000000', '637d5477-ea56-4d09-93a2-c9c8b2369802', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 11:05:44.915682+00', ''),
	('00000000-0000-0000-0000-000000000000', 'abd29438-db5e-47b7-8e98-da83978f2dc5', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 11:05:44.916382+00', ''),
	('00000000-0000-0000-0000-000000000000', '941370ce-cb0b-4d4b-a59a-8511d51523a9', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 12:05:04.94064+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c60d63cf-4a63-4c7d-97bc-c47b232dcd19', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 12:05:04.94155+00', ''),
	('00000000-0000-0000-0000-000000000000', '98df7e3c-6955-491c-9d2a-0ee0642a986f', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 13:04:24.832259+00', ''),
	('00000000-0000-0000-0000-000000000000', '9bacff54-8463-4117-90af-e4b17ca227e1', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 13:04:24.833002+00', ''),
	('00000000-0000-0000-0000-000000000000', '618eebfd-0ff5-41d1-9aed-eff454d85b5d', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 14:03:50.088697+00', ''),
	('00000000-0000-0000-0000-000000000000', '2cfee3ff-f64c-434d-b386-1261eca4ee79', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 14:03:50.089444+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e5c23aaf-833c-4f78-86f9-57984e14d1f2', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 15:03:20.084906+00', ''),
	('00000000-0000-0000-0000-000000000000', '555b1a2c-1bec-4b57-b2c6-785c0537e423', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 15:03:20.085851+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f66ffbfb-641d-4a5d-9d74-c0fb0073a8e9', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 16:02:50.061795+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd66c8158-0000-426f-918d-6bb9092b6757', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 16:02:50.06264+00', ''),
	('00000000-0000-0000-0000-000000000000', '17cd0313-875e-488f-a479-d610087f90f5', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-14 16:34:09.567813+00', ''),
	('00000000-0000-0000-0000-000000000000', '45889b37-1172-44bb-9cea-e71496e53233', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 16:34:09.768629+00', ''),
	('00000000-0000-0000-0000-000000000000', '5cb86475-e089-4a18-ac44-2045ed7a583c', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 16:34:09.76921+00', ''),
	('00000000-0000-0000-0000-000000000000', '289eb192-aa79-405b-895b-8fa77654d310', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-14 17:06:19.725474+00', ''),
	('00000000-0000-0000-0000-000000000000', '0615f937-241b-4e90-9781-420d70d65c8b', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 17:06:20.017538+00', ''),
	('00000000-0000-0000-0000-000000000000', '196101cc-9a65-483b-a1bd-6a818393572e', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 17:06:20.018162+00', ''),
	('00000000-0000-0000-0000-000000000000', '6b0f05d5-f566-432d-80dd-4889c831dcd9', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-14 17:06:31.791883+00', ''),
	('00000000-0000-0000-0000-000000000000', '154f1acc-bff1-40c0-98d8-16ac060688a6', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 17:06:31.970985+00', ''),
	('00000000-0000-0000-0000-000000000000', '22062159-befa-4745-8ec1-842032105467', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 17:06:31.971564+00', ''),
	('00000000-0000-0000-0000-000000000000', '3af66df5-1d8b-4f7a-bdbc-a297799ee12c', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-14 17:09:10.091688+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cbc12140-6bd6-40a0-8c13-021b8c162e8e', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 17:09:10.266417+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ddb45f76-0185-426c-870e-04cdda3d6bad', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 17:09:10.266938+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a39a6160-dfa9-4d54-ad00-93a3e3db52e5', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-14 18:08:23.160148+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b714ac41-75bd-4a85-8214-284ae9369d97', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 18:08:23.340788+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f9bcddd1-23fe-4698-a02e-18875f9dcb9a', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 18:08:23.34119+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c4d4bd4c-a05f-4922-9c4c-3dfef6e0fe89', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-14 18:09:37.897525+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c4572ac9-1bab-422e-949a-a44e516ce8d3', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 18:09:38.071046+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cdb735be-5339-4e3b-add9-f7417105ddee', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 18:09:38.071506+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c16ed623-9a08-4beb-abe6-4848ea21d834', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 19:09:07.528189+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eba20a6d-60cf-47a3-a766-ba56a487ced4', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 19:09:07.529228+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b8c059c1-8bc6-4429-97e2-c93cb1ec4495', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-14 19:20:02.821248+00', ''),
	('00000000-0000-0000-0000-000000000000', '82579dd0-1255-4c4d-a11c-b0ec00e2aa5d', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 19:20:03.04129+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd011bcc1-52ac-4109-8a67-90446b516f19', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 19:20:03.041978+00', ''),
	('00000000-0000-0000-0000-000000000000', '2df9ca90-4bb8-4798-a699-7514102506eb', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-14 19:40:07.817903+00', ''),
	('00000000-0000-0000-0000-000000000000', '03d50821-62d5-4588-bfcc-c18db2b349fc', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 19:40:07.984489+00', ''),
	('00000000-0000-0000-0000-000000000000', '8257e48c-824d-4b02-a339-6f20d0c28712', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 19:40:07.984977+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bbdf77bd-aa04-497e-b61f-4a9c200da4b4', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-14 19:48:31.064236+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e279ea23-3a2e-41d5-ae72-e98da2c74da1', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 19:48:31.444399+00', ''),
	('00000000-0000-0000-0000-000000000000', 'edf95432-fbdb-4a3a-9cc1-843c2af503f0', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 19:48:31.444878+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b7998b25-afbe-4230-b708-fdb62caa2ea4', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-14 19:49:45.322038+00', ''),
	('00000000-0000-0000-0000-000000000000', '553bf148-f2c8-4db7-a78a-63823b666703', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 19:49:45.475664+00', ''),
	('00000000-0000-0000-0000-000000000000', '02ea3f48-08c6-496c-b6fb-7ba1063c2ea3', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 19:49:45.476064+00', ''),
	('00000000-0000-0000-0000-000000000000', '487df5b5-474c-4a53-a5eb-8b8cb1d07fec', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-14 20:16:00.90226+00', ''),
	('00000000-0000-0000-0000-000000000000', '880d444d-372d-462c-bb58-2df3e030a534', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 20:16:01.122289+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd777a079-3c86-4331-a3a1-86ffda7fdfac', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 20:16:01.122841+00', ''),
	('00000000-0000-0000-0000-000000000000', '031ee958-8f8a-4bb3-8c8b-f69f7e698b42', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-14 20:22:26.739298+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a382a97a-1067-4b4b-9690-9841025bbe80', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 20:22:27.087572+00', ''),
	('00000000-0000-0000-0000-000000000000', '1cf9290f-a00e-4538-823e-9a0d0c0b8b37', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-14 20:22:27.088253+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd47e78bb-4e15-467c-8ce2-5ad2680f8a9a', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 12:37:34.428749+00', ''),
	('00000000-0000-0000-0000-000000000000', '4bbde760-4fb6-41cd-bee7-5f1c34abd1a2', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 12:37:34.429457+00', ''),
	('00000000-0000-0000-0000-000000000000', '302baf18-5da5-44de-8de2-1b747fbd37bf', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 13:37:04.006009+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e2c705bf-36c2-424a-bb05-451caf64cc0d', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 13:37:04.007214+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e66a3e6b-4f5c-4963-bed3-c9f60658f26d', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-15 13:37:13.620703+00', ''),
	('00000000-0000-0000-0000-000000000000', '58477084-680f-4b30-9717-a7790b24d53e', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 13:37:13.779164+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e9c487a8-476d-447b-8038-bdc4bd0059cf', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 13:37:13.77959+00', ''),
	('00000000-0000-0000-0000-000000000000', '5364adb9-eb8e-4c30-baa7-9b0f3202e8a5', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-15 14:01:29.229594+00', ''),
	('00000000-0000-0000-0000-000000000000', '44e8952c-1ce1-4e39-904e-b3b88e29531a', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 14:01:29.493668+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f9dae9a3-7874-46b3-bee3-2ddb019d8b55', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 14:01:29.494294+00', ''),
	('00000000-0000-0000-0000-000000000000', '127163ac-801e-46d9-a0e8-5ced1473548f', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-15 14:03:20.150309+00', ''),
	('00000000-0000-0000-0000-000000000000', '5229dae8-bf67-4481-8f4b-9b5e44987b65', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 14:03:20.707311+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd5228a22-a5be-46f7-bd44-906a64ba84d9', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 14:03:20.707779+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e85b2cf9-aec1-4e7e-a97d-64bc2d84686f', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-15 14:04:28.932118+00', ''),
	('00000000-0000-0000-0000-000000000000', '20b9d104-8934-4d46-9296-7abd653e43f5', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 14:04:29.131243+00', ''),
	('00000000-0000-0000-0000-000000000000', '56e97d67-7a68-4f27-bfe3-bcdfb85c81ee', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 14:04:29.131844+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bbaaaa6a-634e-4652-9998-7cf3f3f6398b', '{"action":"logout","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-15 14:06:38.573203+00', ''),
	('00000000-0000-0000-0000-000000000000', '6100f77f-ac6c-4fdd-88a8-b9733b33c3f9', '{"action":"user_recovery_requested","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-12-15 14:06:43.933042+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a5e33b59-c1c9-48cf-8d0a-e67bc5e2414b', '{"action":"user_signedup","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-12-15 14:06:47.528375+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e636965a-4243-4034-a3f2-11ce054fc5fb', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-15 14:06:47.733558+00', ''),
	('00000000-0000-0000-0000-000000000000', '434be7e7-8b02-4fdb-9435-21ddc3219c7b', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-15 14:06:47.905145+00', ''),
	('00000000-0000-0000-0000-000000000000', '57cf2f37-0178-4ff0-b993-a681636f76c2', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-15 14:06:47.905583+00', ''),
	('00000000-0000-0000-0000-000000000000', '69b23db7-07c7-420b-86dc-c0cb319f8c1a', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-15 14:08:02.351839+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bf5774ff-3bae-4a77-8641-11443c4611d7', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-15 14:08:02.504806+00', ''),
	('00000000-0000-0000-0000-000000000000', '91b72e0d-6c91-4238-8ec8-1b189d38847a', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-15 14:08:02.50545+00', ''),
	('00000000-0000-0000-0000-000000000000', 'baec3fe3-4eb1-4bf7-b125-a650137ba869', '{"action":"logout","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"account"}', '2024-12-15 14:10:51.351406+00', ''),
	('00000000-0000-0000-0000-000000000000', '15496d15-eb45-46d5-8b06-8a9ae479344f', '{"action":"user_recovery_requested","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-12-15 14:11:02.828247+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a63bc430-ab72-4ba3-89e5-2e0a4fba20c5', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-15 14:11:05.239051+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dfbda140-5390-4fe4-9861-c31fe38947b5', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-15 14:11:05.422354+00', ''),
	('00000000-0000-0000-0000-000000000000', '9569b9b9-df5e-4e7f-9d7a-1e3837d0d302', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-15 14:11:05.422782+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ba4eb817-624e-4fe6-b4ef-0cd121cb0151', '{"action":"logout","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"account"}', '2024-12-15 14:11:46.388183+00', ''),
	('00000000-0000-0000-0000-000000000000', '6fb28a2b-1285-4299-a1e7-df4adf38ec8e', '{"action":"user_recovery_requested","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-15 14:12:08.114754+00', ''),
	('00000000-0000-0000-0000-000000000000', '00259903-3a1c-4cb7-9d17-be4dff0a1677', '{"action":"login","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-15 14:12:33.331123+00', ''),
	('00000000-0000-0000-0000-000000000000', '55083c6d-56e4-4b61-a58d-4eb436ea266b', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-15 14:12:33.502193+00', ''),
	('00000000-0000-0000-0000-000000000000', '9b0b3996-c2b3-4dfa-bb7f-70eb3260507d', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 14:12:33.707826+00', ''),
	('00000000-0000-0000-0000-000000000000', '354e6569-b35a-4bab-ba3a-c747dbbd4ba5', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 14:12:33.708393+00', ''),
	('00000000-0000-0000-0000-000000000000', '18f9de7a-3d96-4fe7-9ff0-557b6e8ef9b9', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-15 14:30:17.805387+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd6798d42-6318-47f6-8abc-764bb340d20a', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 14:30:17.954076+00', ''),
	('00000000-0000-0000-0000-000000000000', '89e47d86-305d-4edf-b3b4-4ffd3393742f', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 14:30:17.954771+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b9b3749-1469-46bc-94c0-dd1219a64d7f', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-15 14:41:30.773377+00', ''),
	('00000000-0000-0000-0000-000000000000', '6277d29d-ace4-4bdc-abf0-5a9b2e3dce71', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 14:41:30.957616+00', ''),
	('00000000-0000-0000-0000-000000000000', '5493b08b-406a-4aef-b062-7e4b2ee574e5', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 14:41:30.958078+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bdafbcfa-1588-48f5-bf0d-38feba638289', '{"action":"logout","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-15 14:51:51.221762+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e2a98701-33d9-4011-90a6-5167e2780bbf', '{"action":"user_recovery_requested","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-15 14:52:08.484595+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd220e7d8-e805-4f56-b91f-bab80335bb4f', '{"action":"login","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-15 14:52:42.484617+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b2e6d71c-8f18-4553-81d9-879c146fdde7', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-15 14:52:42.687411+00', ''),
	('00000000-0000-0000-0000-000000000000', '21106a9f-5de4-46e4-8b15-807278c7ccc8', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 14:52:42.833752+00', ''),
	('00000000-0000-0000-0000-000000000000', '6ac03218-78a5-4ce4-8cd7-27b1ce513ca3', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 14:52:42.834235+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a5175613-5acd-4f17-a942-321c71cf8270', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-15 15:02:12.381346+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a609f47c-4caa-4f72-a500-31662d31d860', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 15:02:13.00111+00', ''),
	('00000000-0000-0000-0000-000000000000', '090a275a-3388-41c5-b617-ef551e9e201f', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 15:02:13.001523+00', ''),
	('00000000-0000-0000-0000-000000000000', '68b82800-583d-49f9-9340-6a08e4080231', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 17:44:20.522388+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f39f79ff-ee9b-4225-9115-b43f4d99bd34', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 17:44:20.523149+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cc4835c9-202a-4618-a498-265c5639c2d3', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-15 19:21:56.221982+00', ''),
	('00000000-0000-0000-0000-000000000000', '0abe4515-2411-4fde-8ea9-623831631bd8', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-15 19:21:56.222921+00', ''),
	('00000000-0000-0000-0000-000000000000', '2b90d992-be5b-4e0f-bd19-3b09e13c9f2c', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-15 19:21:56.642685+00', ''),
	('00000000-0000-0000-0000-000000000000', '362d20bb-b4fc-4da0-a600-c4f48afe86b2', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-15 19:21:56.78564+00', ''),
	('00000000-0000-0000-0000-000000000000', '57d4ebca-51ac-418d-8738-764eeaad82b1', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-15 19:21:56.786177+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e72b58db-9c35-4249-89da-8dd11a68c678', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-15 19:37:49.791943+00', ''),
	('00000000-0000-0000-0000-000000000000', '01600a57-2e40-4d1a-ae42-0f7a14300e65', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-15 19:37:49.978363+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd891cb58-828f-4b55-b575-b466bae1af61', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-15 19:37:49.979042+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b7170f93-e0f3-4d67-a5d4-87be90e31145', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 19:46:42.34597+00', ''),
	('00000000-0000-0000-0000-000000000000', '09bbe045-d84e-4771-860f-fe8dce1a4778', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-15 19:46:42.346805+00', ''),
	('00000000-0000-0000-0000-000000000000', '2175f003-6572-426f-bc7c-53d9dbe4df9b', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-15 19:48:52.881316+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fc0d3f0c-7af0-41ad-9a86-a5e474d594a5', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-15 19:48:53.057425+00', ''),
	('00000000-0000-0000-0000-000000000000', '9a757934-4823-475e-bc5e-bde3e6dd5f5e', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-15 19:48:53.058095+00', ''),
	('00000000-0000-0000-0000-000000000000', '390e4d3b-da68-4715-8d7f-e0211f5e94b1', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-15 19:51:06.540981+00', ''),
	('00000000-0000-0000-0000-000000000000', '363bdd22-8da1-4912-b50c-d57a9581835e', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-15 19:51:06.720776+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd8235c69-5d1e-4297-9200-a1f4cec7f574', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-15 19:51:06.72119+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dad58672-ab14-4e9c-a24c-3931e772e98e', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-15 19:51:49.022473+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e6f88ee1-ea02-4e6c-8070-1628c1083ff9', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-15 19:51:49.202685+00', ''),
	('00000000-0000-0000-0000-000000000000', '5938d8a0-7708-42d1-b83a-6feebd2e2aeb', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-15 19:51:49.203133+00', ''),
	('00000000-0000-0000-0000-000000000000', '4045a6ab-3783-4a6b-a329-16cb01d42d21', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-16 08:02:38.711666+00', ''),
	('00000000-0000-0000-0000-000000000000', '31e756b0-4673-4bcf-8b90-392977fd66d2', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-16 08:02:38.712728+00', ''),
	('00000000-0000-0000-0000-000000000000', '13f56217-b9f3-4528-8b34-ad77d6d2049d', '{"action":"user_recovery_requested","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-12-16 11:52:04.56608+00', ''),
	('00000000-0000-0000-0000-000000000000', '4f85da80-3177-4304-87b8-2cea2fda1340', '{"action":"user_signedup","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-12-16 11:52:11.986387+00', ''),
	('00000000-0000-0000-0000-000000000000', '21822caf-03eb-4177-b4e7-8ae5f134d432', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-16 11:52:12.790907+00', ''),
	('00000000-0000-0000-0000-000000000000', '3f91e104-6c84-4b1c-983c-d95d26b899a3', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 11:52:13.48278+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c0b8f4d8-0629-4706-814f-3b654fc0edbd', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 11:52:13.483797+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd94222e4-332e-4ded-b540-8abf054642e2', '{"action":"logout","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"account"}', '2024-12-16 11:52:26.373601+00', ''),
	('00000000-0000-0000-0000-000000000000', '92c1d052-0b9f-486b-8220-3c38e3a76a53', '{"action":"user_recovery_requested","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-12-16 12:01:54.89994+00', ''),
	('00000000-0000-0000-0000-000000000000', '1c6a1c44-50fc-47ef-88a4-32c5bbdfdbef', '{"action":"user_signedup","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-12-16 12:01:57.814578+00', ''),
	('00000000-0000-0000-0000-000000000000', '877a488b-bea8-463c-b40b-b49eb1877723', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-16 12:01:59.053965+00', ''),
	('00000000-0000-0000-0000-000000000000', '4d14f45c-39f2-43d6-9cf1-66a8c2c9cc7e', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 12:01:59.470227+00', ''),
	('00000000-0000-0000-0000-000000000000', '87d6201b-f426-498f-a97a-dfa7263e3ffe', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 12:01:59.470952+00', ''),
	('00000000-0000-0000-0000-000000000000', 'be928c71-edae-4447-81a1-c2528000e15d', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-16 12:04:53.444471+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd737b2d0-ecf9-40fd-906c-5f58912a8fa1', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 12:04:53.886175+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dbfcab37-2eee-4b82-9f00-95c1b73da3b6', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 12:04:53.886807+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eab2d369-658a-4a7b-b68e-4e96d97cbbd0', '{"action":"logout","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"account"}', '2024-12-16 12:06:59.828622+00', ''),
	('00000000-0000-0000-0000-000000000000', '371758df-b652-49cc-a2f3-badd78733594', '{"action":"user_recovery_requested","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-12-16 13:23:16.442474+00', ''),
	('00000000-0000-0000-0000-000000000000', 'be82a400-c80f-43ed-97ff-0bfa20f4ee7c', '{"action":"user_signedup","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-12-16 13:23:19.699822+00', ''),
	('00000000-0000-0000-0000-000000000000', '9b7bfbab-574b-485c-ac23-78d6f3e0b381', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-16 13:23:20.080837+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b7f0a0c2-a5bc-45c6-8804-f763a02986a7', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 13:23:20.243477+00', ''),
	('00000000-0000-0000-0000-000000000000', '1b7fb67a-b6f2-42e0-b628-ade2a1cdd60d', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 13:23:20.243883+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e2f22c15-acfa-4930-8cc2-38d18dc8e546', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:07:36.064352+00', ''),
	('00000000-0000-0000-0000-000000000000', '9ef38971-8cb4-4fd2-80f1-284c16c5404f', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:07:36.065329+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b14e0348-2763-4be4-89d0-11ad24db3117', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-16 14:07:36.252994+00', ''),
	('00000000-0000-0000-0000-000000000000', 'efa9702f-f67a-4de8-b750-444a6f564997', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:07:36.396512+00', ''),
	('00000000-0000-0000-0000-000000000000', '01b7abeb-4945-4e37-b717-3f982795fc52', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:07:36.397091+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dce0b062-3b76-4dbe-9106-8b4765ead61e', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-16 14:21:42.582005+00', ''),
	('00000000-0000-0000-0000-000000000000', '95b955c5-675e-439e-92cd-564d30ea1e74', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:21:42.826745+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f8f082c5-9505-46f7-ad2b-33ff729cddca', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:21:42.827332+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f68d1aed-3ae2-4a4a-b0f1-b48a890c87a4', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-16 14:22:29.462549+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c37f06a4-9cd2-4c56-bf8b-7e5de3802d72', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:22:29.80497+00', ''),
	('00000000-0000-0000-0000-000000000000', '184e9424-45b2-4ded-9a85-a0d72796d8ef', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:22:29.805417+00', ''),
	('00000000-0000-0000-0000-000000000000', '3a38b301-eb37-4d90-a98b-f48ecbb5c018', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-16 14:23:08.121155+00', ''),
	('00000000-0000-0000-0000-000000000000', '5a937cb3-4753-470b-974f-5a0db6f36b1b', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:23:08.406756+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd8a0cc2a-5c0c-482a-b2cb-f13f6155c00b', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:23:08.407198+00', ''),
	('00000000-0000-0000-0000-000000000000', '2e614215-d34c-445e-b019-9131e42d4c28', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-16 14:23:23.889929+00', ''),
	('00000000-0000-0000-0000-000000000000', '2bf1d113-c6d7-41c9-ac8a-b1f9d76b8536', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:23:24.153596+00', ''),
	('00000000-0000-0000-0000-000000000000', '1e20a79c-4f06-4099-9fd7-59dfc5470d11', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:23:24.154045+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a3885b52-84f8-45f4-9226-cfe3d7d73f35', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-16 14:25:18.150023+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f7066af7-904b-4efd-9e16-40b42bd260f9', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:25:18.414633+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b3c13ec7-17d3-4521-b1e3-7fb97cf5f395', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:25:18.415202+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd7a76afb-42c2-4c76-bcba-1c80dd9d6757', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-16 14:29:25.014278+00', ''),
	('00000000-0000-0000-0000-000000000000', '8b634f38-d48e-4214-8abc-3fc53d6736f5', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:29:25.199019+00', ''),
	('00000000-0000-0000-0000-000000000000', '0944e8cf-6e86-466a-899e-a604ee1ac24e', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:29:25.199524+00', ''),
	('00000000-0000-0000-0000-000000000000', '442b7cbb-d2b9-4e81-b621-55d88ab2d978', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-16 14:38:42.867834+00', ''),
	('00000000-0000-0000-0000-000000000000', '391b5696-f823-404d-9307-0d0a1f96cc4f', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:38:43.029781+00', ''),
	('00000000-0000-0000-0000-000000000000', '30c49368-bbc7-4cbc-94b0-f73b9c7e33e7', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:38:43.030402+00', ''),
	('00000000-0000-0000-0000-000000000000', '1e552e1d-e363-40b5-8401-c4efa7870016', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-16 14:38:52.125107+00', ''),
	('00000000-0000-0000-0000-000000000000', '19e2a7db-2394-4181-adba-9b6789f7063e', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:38:52.286511+00', ''),
	('00000000-0000-0000-0000-000000000000', '18b369d0-2440-4fb2-ab57-20c3cb0092fb', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:38:52.287168+00', ''),
	('00000000-0000-0000-0000-000000000000', '12d1a6c5-7392-4bf0-9327-21f88f6f0230', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-16 14:39:12.887041+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd174d7f5-a9a1-41c8-9058-59e94e319a8b', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:39:13.100449+00', ''),
	('00000000-0000-0000-0000-000000000000', '5889e405-c183-4c5a-b20a-2f16ed76b7c3', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:39:13.101076+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a226383e-4259-4ec9-ab1a-e709093cf5db', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-16 14:39:30.276391+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e903b48b-d1da-4cc0-938b-bed627eb2969', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:39:30.492074+00', ''),
	('00000000-0000-0000-0000-000000000000', '0fff901b-5758-4ea8-9c12-9cd376fbf6e9', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-16 14:39:30.492607+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ec777ce4-611d-49bf-929c-2c1de3450eb0', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-16 20:07:03.696491+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b8646939-88d1-4383-a47c-ebe5e007445d', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-16 20:07:03.697187+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd9839b6e-6aa2-4eb9-8be1-7d1d4af9aac6', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 07:12:20.825616+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ef2b1131-d1fb-4323-8fe0-e27857aa7dc3', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 07:12:20.82662+00', ''),
	('00000000-0000-0000-0000-000000000000', '7fd5053c-97b0-4ce7-8865-397839ba3953', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-17 07:55:48.629548+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cc46a29d-bd14-46e9-87b0-b625167262aa', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-17 07:55:48.630298+00', ''),
	('00000000-0000-0000-0000-000000000000', '2a98288d-1872-4dce-83eb-56f35a5279c2', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-17 07:56:44.316871+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c58f81d1-2d64-4724-bce5-9bb970bbcaf8', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-17 07:56:58.471218+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd4d72b18-345e-4b60-b897-8b42077bc4d7', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-17 07:57:02.345635+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a8ba4bd4-9c68-411a-bed7-df788b8c274b', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-17 07:57:02.346302+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e60edb24-1acb-4755-bb45-c550830bb642', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 08:26:00.282512+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a2c1bc2e-e90a-448e-be13-21b4cb1a414e', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 08:26:00.283367+00', ''),
	('00000000-0000-0000-0000-000000000000', '0dff252f-8a22-463d-be9e-191f7580f5a6', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 14:52:19.620362+00', ''),
	('00000000-0000-0000-0000-000000000000', '6124bf7a-055e-4460-a3dc-cf454f526b75', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 14:52:19.621111+00', ''),
	('00000000-0000-0000-0000-000000000000', '840c4fa2-337e-41ca-a830-aeff1134c19e', '{"action":"user_confirmation_requested","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"user","traits":{"provider":"phone"}}', '2024-12-17 16:54:03.820201+00', ''),
	('00000000-0000-0000-0000-000000000000', '2bf00a99-e535-438a-9acf-2ba7300cf517', '{"action":"user_signedup","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"team"}', '2024-12-17 16:54:12.685811+00', ''),
	('00000000-0000-0000-0000-000000000000', '923f689d-dd22-47be-b856-961f0ae1fab4', '{"action":"user_modified","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"user"}', '2024-12-17 16:54:12.913245+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e61f3e63-3d6a-4f9b-aed4-8427e0e5247f', '{"action":"token_refreshed","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-12-17 16:54:13.057818+00', ''),
	('00000000-0000-0000-0000-000000000000', '7aa024ba-e07c-4483-91df-abcfd22555c6', '{"action":"token_revoked","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-12-17 16:54:13.058354+00', ''),
	('00000000-0000-0000-0000-000000000000', '4d81e04b-c5de-4962-b268-7bccd01bae60', '{"action":"user_recovery_requested","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-12-17 16:56:08.047767+00', ''),
	('00000000-0000-0000-0000-000000000000', 'de09952c-b4c6-4d27-a790-86d5a4781bad', '{"action":"user_signedup","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"team"}', '2024-12-17 16:56:12.978829+00', ''),
	('00000000-0000-0000-0000-000000000000', '543ecfd0-3acd-4437-bf16-9b9da772ce53', '{"action":"user_modified","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"user"}', '2024-12-17 16:56:13.138586+00', ''),
	('00000000-0000-0000-0000-000000000000', '2a18ce5d-6cad-4324-8f6d-4a7a09e4a923', '{"action":"token_refreshed","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-12-17 16:56:13.327318+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a96afd25-a9e9-4e19-813c-edbf58ad763c', '{"action":"token_revoked","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-12-17 16:56:13.327865+00', ''),
	('00000000-0000-0000-0000-000000000000', '793ae60d-2e73-4cb1-b1bb-2362c366969d', '{"action":"user_modified","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"user"}', '2024-12-17 16:56:28.624425+00', ''),
	('00000000-0000-0000-0000-000000000000', '3b8954dc-2ca6-4e3a-bf62-ed62c952e731', '{"action":"user_modified","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"user"}', '2024-12-17 16:56:40.943173+00', ''),
	('00000000-0000-0000-0000-000000000000', '9600138f-dd92-4f0a-880b-ee3520a73841', '{"action":"token_refreshed","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-12-17 16:56:47.548118+00', ''),
	('00000000-0000-0000-0000-000000000000', '285ce24d-4279-4081-b8a7-ee33e18adfd4', '{"action":"token_revoked","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-12-17 16:56:47.548617+00', ''),
	('00000000-0000-0000-0000-000000000000', '331ff2b5-7062-48f0-b1d7-25a279dc4e4b', '{"action":"user_recovery_requested","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-12-17 21:42:37.934067+00', ''),
	('00000000-0000-0000-0000-000000000000', '1912482c-bd55-4802-85b2-5ba02e85ae2d', '{"action":"user_signedup","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"team"}', '2024-12-17 21:42:59.68958+00', ''),
	('00000000-0000-0000-0000-000000000000', '318f30c8-629b-4d80-b9f5-f5b15a65090a', '{"action":"user_modified","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"user"}', '2024-12-17 21:42:59.963981+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c35f6978-d142-41e3-b014-a6bef12abc8c', '{"action":"token_refreshed","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-12-17 21:43:00.269024+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dc43f7fe-9f60-4138-839a-2f202735b0b8', '{"action":"token_revoked","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-12-17 21:43:00.269646+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c8be27dc-cd1c-4690-b08f-e55582f3a974', '{"action":"user_recovery_requested","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-12-18 06:52:36.405202+00', ''),
	('00000000-0000-0000-0000-000000000000', '237a6f1c-45ed-4920-b0e7-aeac7e4641f0', '{"action":"user_signedup","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-12-18 06:52:39.605239+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a76a46c2-3a71-4973-b279-a9bb94e1f1ec', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-18 06:52:39.760183+00', ''),
	('00000000-0000-0000-0000-000000000000', '7a8329e0-ed8f-4096-a14f-b4eef31cd980', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-18 06:52:39.915766+00', ''),
	('00000000-0000-0000-0000-000000000000', '44e95c2c-ca93-458b-a1e2-e69c96439a7f', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-18 06:52:39.916551+00', ''),
	('00000000-0000-0000-0000-000000000000', '325857f2-7b43-49d0-8487-38d7ab36a9ba', '{"action":"logout","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"account"}', '2024-12-18 06:53:09.385939+00', ''),
	('00000000-0000-0000-0000-000000000000', '1085320b-6b52-4a69-aa73-40f8243a6981', '{"action":"user_recovery_requested","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-18 06:53:13.993373+00', ''),
	('00000000-0000-0000-0000-000000000000', '58a5f566-8d4c-4e0b-b9df-6b837037ad96', '{"action":"login","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-18 06:53:33.294405+00', ''),
	('00000000-0000-0000-0000-000000000000', '62a6986e-08a6-4a63-992a-98a2a5fc2c67', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-18 06:53:33.444504+00', ''),
	('00000000-0000-0000-0000-000000000000', '42bc6a61-455e-4090-863b-83bb68ac77d6', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-19 18:00:52.772186+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c395bcac-d700-424e-a39b-305998698862', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-18 06:53:33.588603+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a8262153-2a32-4c79-8d77-9a43bf897ee0', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-18 06:53:33.589949+00', ''),
	('00000000-0000-0000-0000-000000000000', '020d38a0-a473-49bc-9e97-9407d460ed14', '{"action":"logout","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-18 06:54:23.153632+00', ''),
	('00000000-0000-0000-0000-000000000000', '4cedc50e-6c5e-4097-904f-5232f9ccf83a', '{"action":"user_recovery_requested","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-12-18 06:54:32.835885+00', ''),
	('00000000-0000-0000-0000-000000000000', '2633d76b-ddbe-45e4-bca7-365a048ca014', '{"action":"user_signedup","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-12-18 06:54:34.933697+00', ''),
	('00000000-0000-0000-0000-000000000000', '75a3f2db-1e15-493d-9d5f-46dac03c1135', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-18 06:54:35.107332+00', ''),
	('00000000-0000-0000-0000-000000000000', '846a1df1-79ce-4b8f-bd88-abfa7e56f29b', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-18 06:54:35.243546+00', ''),
	('00000000-0000-0000-0000-000000000000', '079f5f76-c07b-4e2e-a513-e23095999d79', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-18 06:54:35.24421+00', ''),
	('00000000-0000-0000-0000-000000000000', '25e4bc15-5791-4d20-9148-eff7ee51c638', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-18 06:55:32.6888+00', ''),
	('00000000-0000-0000-0000-000000000000', '413e94a1-f904-4376-9d52-36403ff745d8', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-18 06:55:32.689515+00', ''),
	('00000000-0000-0000-0000-000000000000', '93bd421f-ceb0-4e38-8349-dfd7b9f7d212', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-18 06:55:32.996301+00', ''),
	('00000000-0000-0000-0000-000000000000', '2f485bf1-8724-4369-9d06-bf04a3f3e3a1', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-18 06:55:33.13371+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bfd62ccc-a726-4a68-8765-97b1c549291c', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-18 06:55:33.134413+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f3d8cf75-bc8a-4fb7-bca1-d2cbad9970c2', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-18 07:00:53.867435+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fa9e46d3-5eea-4272-ac3b-0dd4c110324f', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-18 07:00:54.096655+00', ''),
	('00000000-0000-0000-0000-000000000000', '241f612c-f8a6-496c-901b-2bd0d813700a', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-18 07:00:54.097145+00', ''),
	('00000000-0000-0000-0000-000000000000', '5f92b39d-845c-48e6-9ba1-81de212e21b5', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-18 07:02:21.952508+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f1980e42-497a-4db6-ab43-9d628ca34dbd', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-18 07:02:22.119869+00', ''),
	('00000000-0000-0000-0000-000000000000', '49d3d1e0-2d92-4a5f-901c-fd1260b21b6c', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-18 07:02:22.120491+00', ''),
	('00000000-0000-0000-0000-000000000000', '3dea212a-b7c3-411b-a338-1a724013976b', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-18 07:59:34.18601+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fddff2a7-b678-4a7e-bb6f-1a060e4b2d43', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-18 07:59:34.187001+00', ''),
	('00000000-0000-0000-0000-000000000000', '32344126-77ff-41b1-a479-667ebc9d43bf', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-18 07:59:34.370579+00', ''),
	('00000000-0000-0000-0000-000000000000', '94e42f37-2290-4010-85fd-45c86a0b4b6d', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-18 07:59:34.609081+00', ''),
	('00000000-0000-0000-0000-000000000000', '962f10e5-11bd-449e-94e2-c3c842d31e95', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-18 07:59:34.609641+00', ''),
	('00000000-0000-0000-0000-000000000000', '0786f46b-cedf-4d42-bbfc-02986bdb29f9', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-18 09:27:28.609075+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a1f23b5f-efbf-43db-85dd-eef3a79e3a24', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-18 09:27:28.61009+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f6df49cc-98bb-490d-af25-7f3389f61417', '{"action":"logout","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-18 09:27:31.179193+00', ''),
	('00000000-0000-0000-0000-000000000000', '0960c47f-79fb-415e-8771-2e470290b6b1', '{"action":"token_refreshed","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-12-19 16:38:36.113236+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ffabc44b-aee3-4ea6-95d7-1afdf06f5bd5', '{"action":"token_revoked","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-12-19 16:38:36.114118+00', ''),
	('00000000-0000-0000-0000-000000000000', '95c03ec3-f4f6-4ea5-ad7e-d3477d2d6cef', '{"action":"user_modified","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"user"}', '2024-12-19 16:38:36.437052+00', ''),
	('00000000-0000-0000-0000-000000000000', '9784425b-1849-47db-9dec-6b49e776e469', '{"action":"token_refreshed","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-12-19 16:38:36.57023+00', ''),
	('00000000-0000-0000-0000-000000000000', '0a6dff6f-c53b-49de-a8c2-d456916c0174', '{"action":"token_revoked","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-12-19 16:38:36.570694+00', ''),
	('00000000-0000-0000-0000-000000000000', '682b5ac7-d7f6-40e4-bf94-249a6aa7a79d', '{"action":"logout","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"account"}', '2024-12-19 16:54:05.03984+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bf1be090-4194-4e40-8278-98b0eeeb7bc9', '{"action":"user_recovery_requested","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-12-19 16:54:41.618281+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f6bbd46e-6415-41d3-aab5-d4a2b8a7bd12', '{"action":"user_signedup","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"team"}', '2024-12-19 16:54:46.115594+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eb15d33b-fc71-42aa-9f91-e072ffa56f61', '{"action":"user_modified","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"user"}', '2024-12-19 16:54:46.2771+00', ''),
	('00000000-0000-0000-0000-000000000000', '875f5e59-cc04-40a3-9117-2bb33cc3380f', '{"action":"token_refreshed","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-12-19 16:54:46.473756+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f11d9cea-6ac4-425c-b223-97a6832e92bf', '{"action":"token_revoked","actor_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","actor_username":"48570820237","actor_via_sso":false,"log_type":"token"}', '2024-12-19 16:54:46.479767+00', ''),
	('00000000-0000-0000-0000-000000000000', '08818988-9da0-40f7-9908-72702d0ed63b', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"trekoxs@gmail.com","user_id":"6cc68c2c-0106-4e09-9f52-d7159812e35f","user_phone":"48570820237"}}', '2024-12-19 17:03:20.492105+00', ''),
	('00000000-0000-0000-0000-000000000000', '55644a9f-bab8-450b-b3d6-d9c1a4c90f03', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 17:37:57.947187+00', ''),
	('00000000-0000-0000-0000-000000000000', '1620d7a5-15bc-4f2e-82c0-62ae06cb3f30', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 17:37:57.947874+00', ''),
	('00000000-0000-0000-0000-000000000000', '3a57688a-1e1e-45ba-b774-7550bfd4a356', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-19 17:37:58.293349+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c77cc4ff-ab29-4631-bdb6-1eb5d7d4976f', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 17:37:58.431583+00', ''),
	('00000000-0000-0000-0000-000000000000', '19cf552a-b4e0-4f3e-a477-6741ec1ee469', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 17:37:58.432006+00', ''),
	('00000000-0000-0000-0000-000000000000', '53f7dc9f-c1c3-4993-bd75-edd0e9a05373', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-19 17:40:51.947696+00', ''),
	('00000000-0000-0000-0000-000000000000', '1f2a1297-6845-4920-a17a-449670482e23', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 17:40:52.103336+00', ''),
	('00000000-0000-0000-0000-000000000000', '22e09647-0461-49a6-991a-5229d7fba0a8', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 17:40:52.103893+00', ''),
	('00000000-0000-0000-0000-000000000000', 'be28ce1d-371e-453f-9a13-655f86d5feed', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-19 17:46:35.390423+00', ''),
	('00000000-0000-0000-0000-000000000000', 'acab30a7-f498-42ec-bcfb-6f7b3cc29889', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 17:46:35.6492+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e0fd9d6b-a6ef-4cc4-99b9-0dad213c2237', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 17:46:35.649681+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e73cea99-38db-4cfd-863d-c0a731704b30', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-19 17:54:38.863828+00', ''),
	('00000000-0000-0000-0000-000000000000', '4d31683b-0d5f-41ba-b970-3482a08fb42a', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 17:54:39.06041+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ada3954f-9e70-4736-8860-55683234e93b', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 17:54:39.061105+00', ''),
	('00000000-0000-0000-0000-000000000000', '726d4b6f-ff34-469a-b6be-120cec7a98f8', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-19 17:55:08.933589+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd886f92f-a695-44eb-ad67-1d3bcc492936', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 17:55:09.217929+00', ''),
	('00000000-0000-0000-0000-000000000000', '7e3b6060-5366-4aeb-8e39-c56da2cf04b0', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 17:55:09.218401+00', ''),
	('00000000-0000-0000-0000-000000000000', '2f00bc23-77e2-48d4-9847-848ee2f0c284', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 18:00:53.005369+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f990170b-206e-44e8-8349-592f48a1d40d', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 18:00:53.006454+00', ''),
	('00000000-0000-0000-0000-000000000000', '66bcb8c7-3d44-4500-982f-4ccba4329a75', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-19 18:02:31.102006+00', ''),
	('00000000-0000-0000-0000-000000000000', '3821e005-ec8a-41b5-9d25-180bc342bd7b', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 18:02:31.744907+00', ''),
	('00000000-0000-0000-0000-000000000000', '196d8f94-64ee-452f-a142-2daee69fcaa4', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 18:02:31.745572+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ee9e5985-9a03-4e41-8ed6-fa1d8496ddbc', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-19 18:06:15.452479+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e3af0c49-007d-4ef5-9fa3-7e78f935670f', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 18:06:15.607188+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e4191176-d6c8-43ed-9094-a93a72c0c65e', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 18:06:15.607796+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e0594295-583d-44d0-a4b0-f200560c3fff', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-19 18:08:29.376977+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dba11fdf-fa34-4718-b4e4-6d699277a7a1', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 18:08:29.553579+00', ''),
	('00000000-0000-0000-0000-000000000000', '1ecdfcb1-1d7b-461a-84d6-5c977c59df43', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 18:08:29.55397+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b65d46fa-6a59-436e-ab4e-19b978668981', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-19 18:09:40.799092+00', ''),
	('00000000-0000-0000-0000-000000000000', '6478d948-47c0-42f9-a12a-14175e990154', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 18:09:40.981843+00', ''),
	('00000000-0000-0000-0000-000000000000', '1e41a145-3fda-4b5f-a5ad-1e83a0134d71', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 18:09:40.982253+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e2a76dd0-52e8-4b49-8685-1e743923c988', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-19 18:10:48.856742+00', ''),
	('00000000-0000-0000-0000-000000000000', '47a47833-dddb-424a-961b-c62d38b1ab15', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 18:10:49.051378+00', ''),
	('00000000-0000-0000-0000-000000000000', '02ba42ed-54d1-441f-b223-5485c6e24f87', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 18:10:49.051792+00', ''),
	('00000000-0000-0000-0000-000000000000', '7fa2af4e-df6e-47b4-927f-dd2f3cb36cdf', '{"action":"user_recovery_requested","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-19 18:12:52.181336+00', ''),
	('00000000-0000-0000-0000-000000000000', '024a7b49-0e3a-4b1a-a785-6802512a043b', '{"action":"login","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-19 18:13:05.608119+00', ''),
	('00000000-0000-0000-0000-000000000000', '21c822e9-83de-4728-bd7d-8a33c3293f0e', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-19 18:13:05.783874+00', ''),
	('00000000-0000-0000-0000-000000000000', '69350a49-6238-4fcd-8880-e4e6ad09d3d0', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-19 18:13:05.938403+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c6d8c3e3-d301-45a0-8ba5-b59e53c3f2cb', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-19 18:13:05.938945+00', ''),
	('00000000-0000-0000-0000-000000000000', '5ee889e8-f24e-48cb-b837-60da0bbe8ac9', '{"action":"user_recovery_requested","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-19 19:49:18.874839+00', ''),
	('00000000-0000-0000-0000-000000000000', '497efbb8-65d7-467e-b150-dd37da984c17', '{"action":"login","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-19 19:49:32.85782+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ea5551ea-becb-457b-8581-13d4761627d9', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-19 19:49:33.027761+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fdad1228-9e91-4e20-a982-3c7f99293503', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-19 19:49:33.186773+00', ''),
	('00000000-0000-0000-0000-000000000000', '83b60333-7f6c-4e57-afa0-3efa09e31148', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-19 19:49:33.187324+00', ''),
	('00000000-0000-0000-0000-000000000000', '2da97bd2-acb6-42fd-acab-12afeab1abda', '{"action":"user_recovery_requested","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user","traits":{"channel":"sms"}}', '2024-12-19 19:52:20.784577+00', ''),
	('00000000-0000-0000-0000-000000000000', '67ef8d8f-12bc-4460-b8c1-5156d05c20b6', '{"action":"user_signedup","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"team"}', '2024-12-19 19:52:23.468004+00', ''),
	('00000000-0000-0000-0000-000000000000', '2756d519-df2a-45e1-b944-7566a5687221', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-19 19:52:23.618679+00', ''),
	('00000000-0000-0000-0000-000000000000', 'be737501-eaba-482b-9487-69e42cd57964', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 19:52:23.761189+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b9d78ab2-d15a-4078-a8eb-d1cbb7af89c2', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 19:52:23.761669+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f73d2748-250e-4713-9ef5-b6a8c8f05d8b', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 19:55:00.16052+00', ''),
	('00000000-0000-0000-0000-000000000000', '186793d1-d7a8-4aaa-a5a6-79aa9010d386', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 19:55:00.161415+00', ''),
	('00000000-0000-0000-0000-000000000000', '51a25f1b-9e82-4f64-a6b8-1b9be1719c7c', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-19 19:55:00.339326+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f8f9873c-d04c-48a7-8de6-55ff5cb95423', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 19:55:00.480661+00', ''),
	('00000000-0000-0000-0000-000000000000', '30dd086e-c1c3-4b69-86f3-237bcffd1038', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 19:55:00.481143+00', ''),
	('00000000-0000-0000-0000-000000000000', '0e9e6edd-72d2-413d-98e0-40f9ebbc8a32', '{"action":"logout","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"account"}', '2024-12-19 19:55:04.377145+00', ''),
	('00000000-0000-0000-0000-000000000000', '2c1ebca9-992d-48fa-9e21-4c39f9119e6d', '{"action":"user_recovery_requested","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-19 19:55:18.641947+00', ''),
	('00000000-0000-0000-0000-000000000000', '441bb164-b921-4336-a51d-605c70296324', '{"action":"login","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-19 19:55:50.904289+00', ''),
	('00000000-0000-0000-0000-000000000000', '42110d68-88e1-4480-9192-0aac3235d0c8', '{"action":"user_modified","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-12-19 19:55:51.1331+00', ''),
	('00000000-0000-0000-0000-000000000000', '3e362fbf-a886-4ecd-a01b-fea7c8424146', '{"action":"token_refreshed","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-19 19:55:51.253053+00', ''),
	('00000000-0000-0000-0000-000000000000', '1f169441-fe1b-4a9b-8d8b-6324b0eca49b', '{"action":"token_revoked","actor_id":"dc91436a-cdf2-4bd2-8208-8b3443972808","actor_username":"lukasjanek99@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-19 19:55:51.253641+00', ''),
	('00000000-0000-0000-0000-000000000000', '75bcae6b-b8bc-4d61-98a3-31482e75eeb6', '{"action":"user_modified","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"user"}', '2024-12-19 20:06:22.043434+00', ''),
	('00000000-0000-0000-0000-000000000000', '3155bc38-da8d-4e6e-a46d-78d376972c3f', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 20:06:22.169602+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cd3cd672-ae00-43ea-b355-5409fdcb29a7', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-19 20:06:22.170015+00', ''),
	('00000000-0000-0000-0000-000000000000', '77634b23-e283-47fc-84cb-c9b5de8b6654', '{"action":"token_refreshed","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-20 14:36:39.425162+00', ''),
	('00000000-0000-0000-0000-000000000000', '635cd9a2-3af0-4124-ac9c-3d093356f936', '{"action":"token_revoked","actor_id":"1d56fb23-62f4-462e-8c02-764c910075ab","actor_username":"48666978350","actor_via_sso":false,"log_type":"token"}', '2024-12-20 14:36:39.426873+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") VALUES
	('f69a212b-de1b-4a14-ad82-6d3cd5af0597', '7fa142b1-6516-4e82-a2b2-b54b2bb95239', 'a230f36e-a5e4-41dc-b0ab-245d6be3f51c', 's256', 'agJ7Wq23R6Wj4RmTUPu8G_yysY1pUlNAGpHfBHGvzFc', 'magiclink', '', '', '2024-11-23 19:24:35.867736+00', '2024-11-23 19:24:35.867736+00', 'magiclink', NULL),
	('83be2293-be58-420b-bf00-9049d45c6d28', 'dc91436a-cdf2-4bd2-8208-8b3443972808', '436d387d-370d-4e24-887e-3d699349f407', 's256', 'FayWXBH-ArhQcFpagkcS7hT4CeZAOaA7vfk7LYmVvKk', 'magiclink', '', '', '2024-11-24 14:10:19.805939+00', '2024-11-24 14:10:19.805939+00', 'magiclink', NULL),
	('c740b8e3-a862-4b17-b6ff-428cea4ab685', 'dc91436a-cdf2-4bd2-8208-8b3443972808', 'b8b94403-b3c7-4115-a081-2317948a855c', 's256', 'uYStanKevfXHqQJtCmAk015v9MyOOhFx7hq1tyQ6OzQ', 'magiclink', '', '', '2024-12-01 17:19:53.944341+00', '2024-12-01 17:19:53.944341+00', 'magiclink', NULL),
	('c7fb8a9c-dc2c-4ff1-b289-d8cdba60aff9', 'dc91436a-cdf2-4bd2-8208-8b3443972808', '3aa67bed-659b-4fcd-9f0f-f824ef2f4a83', 's256', 'D_wS3hZkrnaJQmXVmEqesi9rP9CI1pD9giFQcdNI9Yc', 'magiclink', '', '', '2024-12-01 17:38:03.237123+00', '2024-12-01 17:38:03.237123+00', 'magiclink', NULL),
	('41a75227-68ad-48a3-bf07-e6adbc592908', 'dc91436a-cdf2-4bd2-8208-8b3443972808', '1af0f759-2047-489c-9e32-81df5a047e43', 's256', '5mqrkOGb0vR852p8K09tE7l28cyCWx1AC2Ld54eyVJU', 'magiclink', '', '', '2024-12-01 17:45:51.275683+00', '2024-12-01 17:45:51.275683+00', 'magiclink', NULL),
	('4c44fe68-86e0-41b6-b351-51f31c725492', 'dc91436a-cdf2-4bd2-8208-8b3443972808', 'a9bc7b19-f612-4da2-889b-752f8ef6682f', 's256', 'Y8mf5CkHiedsL6w5BIsRmVuUhXIspaNo3A1iCsj7p08', 'magiclink', '', '', '2024-12-01 17:50:26.816988+00', '2024-12-01 17:50:26.816988+00', 'magiclink', NULL),
	('54ba2597-32be-45eb-bff6-71fbdb380046', 'dc91436a-cdf2-4bd2-8208-8b3443972808', '4a6733ab-3897-4811-bed3-9085760e7b01', 's256', 'Wcl5nByqqxcPyBvo_GU4mEA7dMPu1ECBaXIxOU_blkY', 'magiclink', '', '', '2024-12-12 19:42:28.810114+00', '2024-12-12 19:42:28.810114+00', 'magiclink', NULL),
	('1895735d-a3d5-4010-bf53-d566e2d468ea', 'dc91436a-cdf2-4bd2-8208-8b3443972808', '61614ac2-ad77-45fe-a296-d326b4f490eb', 's256', 'z605pUxJokPCwekoHuzRQ0LmnLqcGUqfF7-3oarHYKU', 'magiclink', '', '', '2024-12-13 15:19:08.1863+00', '2024-12-13 15:19:08.1863+00', 'magiclink', NULL),
	('41eef2de-102d-486d-8eda-8fb6f7e51b99', 'dc91436a-cdf2-4bd2-8208-8b3443972808', 'a473ffdd-13c1-49f4-af8f-d0639aefbfde', 's256', 'riCyGLep5dnXD17Q6Xkh9pWckJt33-yiUxElFeJIng8', 'magiclink', '', '', '2024-12-14 09:32:23.809512+00', '2024-12-14 09:32:23.809512+00', 'magiclink', NULL),
	('2ea9c25a-2919-4461-b214-2f2fd47f9a2f', 'dc91436a-cdf2-4bd2-8208-8b3443972808', 'd2dfb571-d25b-4fe0-a591-9ab61d88649f', 's256', 'KtciSqV0zb9x57h7rW5W4m0mdoMnZtf8QixCJ4A_K-4', 'magiclink', '', '', '2024-12-14 10:05:38.386802+00', '2024-12-14 10:05:38.386802+00', 'magiclink', NULL),
	('208c939e-ef9a-4ce1-b06a-4b7856ca9941', 'dc91436a-cdf2-4bd2-8208-8b3443972808', 'e0adf4aa-32d7-44bb-bed2-786581075ead', 's256', 'Hrf8I5Neul50bx1YybFXxvjuXumR5YJH-dFbNwHSLuY', 'magiclink', '', '', '2024-12-15 14:12:08.112021+00', '2024-12-15 14:12:08.112021+00', 'magiclink', NULL),
	('10bf52f7-ed8e-4831-8951-e983642d1b4f', 'dc91436a-cdf2-4bd2-8208-8b3443972808', '0e9b9d77-1e9e-4887-94ab-4ca82e66ee4e', 's256', 'X1ychMdycE4RI2eXGs4Zy0dG_1CCfMpBF10-v3MgzIU', 'magiclink', '', '', '2024-12-15 14:52:08.482971+00', '2024-12-15 14:52:08.482971+00', 'magiclink', NULL),
	('88015140-a7a4-4533-893d-6b2d89063d6a', 'dc91436a-cdf2-4bd2-8208-8b3443972808', '14176a27-5d15-40b6-aa5c-383d19ac7164', 's256', 'H9tpCUj3ZBN3XkV0nwJCK-bsuPjTC-oUUueZ2Z4NqN8', 'magiclink', '', '', '2024-12-18 06:53:13.991826+00', '2024-12-18 06:53:13.991826+00', 'magiclink', NULL),
	('e5b7a166-5ec2-4eb5-841f-ba2c949ea25d', 'dc91436a-cdf2-4bd2-8208-8b3443972808', 'db28f43f-9158-4876-99de-8c08c93c0c07', 's256', 'nPFzcyp-M7xrKdjUjlwMhH7DtEaG2pkNGMd0S5VXnJQ', 'magiclink', '', '', '2024-12-19 18:12:52.179051+00', '2024-12-19 18:12:52.179051+00', 'magiclink', NULL),
	('a180652d-dbf0-4438-a483-0c5649844a45', 'dc91436a-cdf2-4bd2-8208-8b3443972808', 'dcdb4822-61de-43c5-a267-b1985f0fa25b', 's256', 'dEr8qcKe9o5pzq71i6SZ9UF15bf3jhSWkmPDAmKj1Aw', 'magiclink', '', '', '2024-12-19 19:49:18.873072+00', '2024-12-19 19:49:18.873072+00', 'magiclink', NULL),
	('f176b0f7-a602-4402-a90e-c6c6b0422ae8', 'dc91436a-cdf2-4bd2-8208-8b3443972808', '9cc73226-e224-4260-bfac-e1dc9fe5678f', 's256', 'PSywM4CeskEExKzUgTVL7fTM0rVmnpRbOFtZHP5WnPo', 'magiclink', '', '', '2024-12-19 19:55:18.640537+00', '2024-12-19 19:55:18.640537+00', 'magiclink', NULL);


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', 'dc91436a-cdf2-4bd2-8208-8b3443972808', 'authenticated', 'authenticated', 'lukasjanek99@gmail.com', '$2a$10$TK0GXLWor5lPtlhih4FfwOAQR4zDNEa3yyhWFJ8JC8KSfyDD6vH.a', '2024-11-24 14:06:17.649228+00', NULL, '', NULL, '', '2024-12-19 19:55:18.642399+00', '', '', NULL, '2024-12-19 19:55:50.905883+00', '{"provider": "email", "providers": ["email"]}', '{"app_id": "app.beeloyal.employer.beta", "app_version": "v1.0.0+256", "display_name": "Jan"}', NULL, '2024-11-24 14:06:17.643155+00', '2024-12-19 19:55:51.255433+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '1d56fb23-62f4-462e-8c02-764c910075ab', 'authenticated', 'authenticated', 'jan.lukas@beeloyal.app', '$2a$10$EbWecpUlk3zYPMW0cf/6Su.jlscQ8p.bOTOWjn8NDYOcRf/T7EZ0y', '2024-12-17 07:56:58.47382+00', NULL, '', '2024-12-19 19:52:20.785601+00', '', NULL, '', '', '2024-12-17 07:56:42.770082+00', '2024-12-19 19:52:23.47114+00', '{"provider": "phone", "providers": ["phone", "email"]}', '{"sub": "1d56fb23-62f4-462e-8c02-764c910075ab", "app_id": "app.beeloyal.customer.beta", "app_version": "v1.0.0+257", "email_verified": false, "phone_verified": false}', NULL, '2024-11-23 19:26:14.401887+00', '2024-12-20 14:36:39.429058+00', '48666978350', '2024-12-19 19:52:23.468583+00', '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('1d56fb23-62f4-462e-8c02-764c910075ab', '1d56fb23-62f4-462e-8c02-764c910075ab', '{"sub": "1d56fb23-62f4-462e-8c02-764c910075ab", "email_verified": false, "phone_verified": false}', 'phone', '2024-11-23 19:26:14.404096+00', '2024-11-23 19:26:14.404128+00', '2024-11-23 19:26:14.404128+00', 'e0e9c49c-b622-466a-8b6f-c12a4e50a746'),
	('dc91436a-cdf2-4bd2-8208-8b3443972808', 'dc91436a-cdf2-4bd2-8208-8b3443972808', '{"sub": "dc91436a-cdf2-4bd2-8208-8b3443972808", "email": "lukasjanek99@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-11-24 14:06:17.645151+00', '2024-11-24 14:06:17.645792+00', '2024-11-24 14:06:17.645792+00', 'c2f12f96-35cf-47fa-89b8-040df1d07812'),
	('1d56fb23-62f4-462e-8c02-764c910075ab', '1d56fb23-62f4-462e-8c02-764c910075ab', '{"sub": "1d56fb23-62f4-462e-8c02-764c910075ab", "email": "jan.lukas@beeloyal.app", "email_verified": true, "phone_verified": false}', 'email', '2024-12-17 07:56:58.472176+00', '2024-12-17 07:56:58.472213+00', '2024-12-17 07:56:58.474877+00', '31ea5a28-98da-4a6f-aa69-81ce2fa02291');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('26816947-08d0-45dd-9fa8-87b6d45454e8', 'dc91436a-cdf2-4bd2-8208-8b3443972808', '2024-12-14 10:06:16.805043+00', '2024-12-16 08:02:38.716735+00', NULL, 'aal1', NULL, '2024-12-16 08:02:38.716677', 'Dart/3.5 (dart:io)', '46.205.198.21', NULL),
	('58189b52-0baa-44d6-9501-2cacba34651f', '1d56fb23-62f4-462e-8c02-764c910075ab', '2024-12-16 13:23:19.703962+00', '2024-12-16 13:23:20.246865+00', NULL, 'aal1', NULL, '2024-12-16 13:23:20.246813', 'Dart/3.5 (dart:io)', '46.205.198.234', NULL),
	('756db59f-1db0-401b-b826-3d3db8d84367', '1d56fb23-62f4-462e-8c02-764c910075ab', '2024-11-23 19:26:16.780005+00', '2024-12-19 18:10:49.054363+00', NULL, 'aal1', NULL, '2024-12-19 18:10:49.054272', 'Dart/3.5 (dart:io)', '46.205.198.234', NULL),
	('d379c80e-ce6a-4e4b-9f99-1106bb042dc4', 'dc91436a-cdf2-4bd2-8208-8b3443972808', '2024-12-19 18:13:05.609949+00', '2024-12-19 18:13:05.941938+00', NULL, 'aal1', NULL, '2024-12-19 18:13:05.941851', 'Dart/3.5 (dart:io)', '46.205.198.234', NULL),
	('236e6b0e-b655-4af5-b0fc-94f2c26f7349', 'dc91436a-cdf2-4bd2-8208-8b3443972808', '2024-12-19 19:49:32.860166+00', '2024-12-19 19:49:33.189908+00', NULL, 'aal1', NULL, '2024-12-19 19:49:33.18982', 'Dart/3.5 (dart:io)', '46.205.198.234', NULL),
	('0a6eba1c-bcff-46fd-b995-97e11745075a', '1d56fb23-62f4-462e-8c02-764c910075ab', '2024-12-17 07:56:58.476545+00', '2024-12-17 07:56:58.476545+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '46.205.198.234', NULL),
	('1bbd3177-3b43-4a7a-8df3-3363535d0a23', 'dc91436a-cdf2-4bd2-8208-8b3443972808', '2024-12-19 19:55:50.905944+00', '2024-12-19 19:55:51.256415+00', NULL, 'aal1', NULL, '2024-12-19 19:55:51.256341', 'Dart/3.5 (dart:io)', '46.205.198.234', NULL),
	('82ed7e9b-97d4-4beb-a3df-2fcd5c3a600e', '1d56fb23-62f4-462e-8c02-764c910075ab', '2024-12-19 19:52:23.471191+00', '2024-12-20 14:36:39.430675+00', NULL, 'aal1', NULL, '2024-12-20 14:36:39.430593', 'Dart/3.5 (dart:io)', '46.205.198.234', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('756db59f-1db0-401b-b826-3d3db8d84367', '2024-11-23 19:26:16.781794+00', '2024-11-23 19:26:16.781794+00', 'otp', '9e5b608a-5553-4dc6-a112-63f9332ab0ff'),
	('26816947-08d0-45dd-9fa8-87b6d45454e8', '2024-12-14 10:06:16.807446+00', '2024-12-14 10:06:16.807446+00', 'otp', '0f79bd28-e557-4b79-90c3-42f41bca51fe'),
	('58189b52-0baa-44d6-9501-2cacba34651f', '2024-12-16 13:23:19.706853+00', '2024-12-16 13:23:19.706853+00', 'otp', '71167421-6719-497a-9e63-bcffbee55821'),
	('0a6eba1c-bcff-46fd-b995-97e11745075a', '2024-12-17 07:56:58.477933+00', '2024-12-17 07:56:58.477933+00', 'otp', 'cd897645-c834-4bcd-8eaf-3ce94dde5349'),
	('d379c80e-ce6a-4e4b-9f99-1106bb042dc4', '2024-12-19 18:13:05.612261+00', '2024-12-19 18:13:05.612261+00', 'otp', '09eff6c9-e378-4237-8442-e4914beb1132'),
	('236e6b0e-b655-4af5-b0fc-94f2c26f7349', '2024-12-19 19:49:32.862236+00', '2024-12-19 19:49:32.862236+00', 'otp', '92870315-bb45-4d89-94ef-746a6b41e98a'),
	('82ed7e9b-97d4-4beb-a3df-2fcd5c3a600e', '2024-12-19 19:52:23.473157+00', '2024-12-19 19:52:23.473157+00', 'otp', 'bd3ca296-b704-41ed-bc0f-3d1428ecdafe'),
	('1bbd3177-3b43-4a7a-8df3-3363535d0a23', '2024-12-19 19:55:50.907513+00', '2024-12-19 19:55:50.907513+00', 'otp', '3ef3578b-7d85-403c-9d48-9007f1536b31');


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
	('00000000-0000-0000-0000-000000000000', 175, 'FpCiNzbJLRfyxEfZtPJ-gg', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-19 17:37:57.948747+00', '2024-12-19 17:37:58.432331+00', '44G1geUFHS84wXajC_mPQg', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 176, 'hYh-6B-DpJw6sa_mxqsaOA', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-19 17:37:58.432567+00', '2024-12-19 17:40:52.104339+00', 'FpCiNzbJLRfyxEfZtPJ-gg', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 6, 'gaIZ-bD1He6Ch24lq6V_uQ', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-11-23 19:26:16.780595+00', '2024-11-23 19:26:17.076788+00', NULL, '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 178, 'GqM6kc9HcvA11m4jvPZ6og', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-19 17:46:35.650538+00', '2024-12-19 17:54:39.061621+00', 'j1gn84_FnQCkobCAbef8Xw', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 181, 'Ey2UI4ooVgDpjogc8McVGA', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-19 18:00:53.007396+00', '2024-12-19 18:02:31.746045+00', 'COa_vMWtLinvIvQ7WzY9zw', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 26, '1vfJe4wMbYsB6IVu6qUiRw', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-11 19:06:52.525374+00', '2024-12-15 19:21:56.223346+00', 'QyBAGe_NaYGAVny6BU23yw', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 76, 'oy8jdaExaOcSduYghaRi0g', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-14 10:06:16.805786+00', '2024-12-14 10:06:17.1686+00', NULL, '26816947-08d0-45dd-9fa8-87b6d45454e8'),
	('00000000-0000-0000-0000-000000000000', 116, 'OAhy65QZMfU6vSMhT0GBLw', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-15 19:21:56.224134+00', '2024-12-15 19:21:56.786616+00', '1vfJe4wMbYsB6IVu6qUiRw', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 77, 'riURBPjnTVxhhQ5v4Np_-w', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-14 10:06:17.16922+00', '2024-12-14 11:05:44.91674+00', 'oy8jdaExaOcSduYghaRi0g', '26816947-08d0-45dd-9fa8-87b6d45454e8'),
	('00000000-0000-0000-0000-000000000000', 183, 'SMmPLZn_gqAOvoieXXc5oA', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-19 18:06:15.609056+00', '2024-12-19 18:08:29.554491+00', 'D6D0DY8mpHAdEHLmLV8B4w', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 78, 'fk36vSANxF2lqXve3A5c8g', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-14 11:05:44.917236+00', '2024-12-14 12:05:04.94215+00', 'riURBPjnTVxhhQ5v4Np_-w', '26816947-08d0-45dd-9fa8-87b6d45454e8'),
	('00000000-0000-0000-0000-000000000000', 117, 'gi88BKu4DK4PS4tUB7rx8Q', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-15 19:21:56.78695+00', '2024-12-15 19:37:49.97947+00', 'OAhy65QZMfU6vSMhT0GBLw', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 79, 'n9ImQZ5nZBfoSt_3qICJsw', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-14 12:05:04.942753+00', '2024-12-14 13:04:24.833389+00', 'fk36vSANxF2lqXve3A5c8g', '26816947-08d0-45dd-9fa8-87b6d45454e8'),
	('00000000-0000-0000-0000-000000000000', 80, 'qHWaPP5KPL3IF-eYcuVKEQ', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-14 13:04:24.833947+00', '2024-12-14 14:03:50.089841+00', 'n9ImQZ5nZBfoSt_3qICJsw', '26816947-08d0-45dd-9fa8-87b6d45454e8'),
	('00000000-0000-0000-0000-000000000000', 81, 'RAhiE-BjlehEtbUUMSMyPw', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-14 14:03:50.090373+00', '2024-12-14 15:03:20.086374+00', 'qHWaPP5KPL3IF-eYcuVKEQ', '26816947-08d0-45dd-9fa8-87b6d45454e8'),
	('00000000-0000-0000-0000-000000000000', 82, 'fzvb4u-4A1OVDNSed0KaTw', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-14 15:03:20.08713+00', '2024-12-14 16:02:50.063611+00', 'RAhiE-BjlehEtbUUMSMyPw', '26816947-08d0-45dd-9fa8-87b6d45454e8'),
	('00000000-0000-0000-0000-000000000000', 118, 'Obdu3u9OxkQCBegQndhvog', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-15 19:37:49.980297+00', '2024-12-15 19:48:53.058581+00', 'gi88BKu4DK4PS4tUB7rx8Q', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 83, 'xKcRfYdEuX50qKDjWCzHaw', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-14 16:02:50.06429+00', '2024-12-14 16:34:09.770078+00', 'fzvb4u-4A1OVDNSed0KaTw', '26816947-08d0-45dd-9fa8-87b6d45454e8'),
	('00000000-0000-0000-0000-000000000000', 84, 'OWIE4D6PcKmazpVk9aUJRA', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-14 16:34:09.770729+00', '2024-12-14 17:06:20.018697+00', 'xKcRfYdEuX50qKDjWCzHaw', '26816947-08d0-45dd-9fa8-87b6d45454e8'),
	('00000000-0000-0000-0000-000000000000', 120, 'soME2ROrM3zkq8PuH1dX_A', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-15 19:48:53.059211+00', '2024-12-15 19:51:06.721532+00', 'Obdu3u9OxkQCBegQndhvog', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 85, 'jwIUaosPfE0f4lAYZdBmBQ', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-14 17:06:20.01937+00', '2024-12-14 17:06:31.972035+00', 'OWIE4D6PcKmazpVk9aUJRA', '26816947-08d0-45dd-9fa8-87b6d45454e8'),
	('00000000-0000-0000-0000-000000000000', 86, 'C-44eodDrddWI6RIfFdgpQ', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-14 17:06:31.972528+00', '2024-12-14 17:09:10.267413+00', 'jwIUaosPfE0f4lAYZdBmBQ', '26816947-08d0-45dd-9fa8-87b6d45454e8'),
	('00000000-0000-0000-0000-000000000000', 121, 'LPe_7LRIUb5Gzr9WBfyH3Q', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-15 19:51:06.721977+00', '2024-12-15 19:51:49.203546+00', 'soME2ROrM3zkq8PuH1dX_A', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 87, 'jOuDQFI9U8BC56EWRMMsmg', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-14 17:09:10.267882+00', '2024-12-14 18:08:23.341533+00', 'C-44eodDrddWI6RIfFdgpQ', '26816947-08d0-45dd-9fa8-87b6d45454e8'),
	('00000000-0000-0000-0000-000000000000', 88, 'XmRRWD49t0kcinlqQTFvZg', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-14 18:08:23.342009+00', '2024-12-14 18:09:38.071835+00', 'jOuDQFI9U8BC56EWRMMsmg', '26816947-08d0-45dd-9fa8-87b6d45454e8'),
	('00000000-0000-0000-0000-000000000000', 96, 'SeN93YL3qxVr0fApRGWCig', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-14 20:22:27.089391+00', '2024-12-16 08:02:38.713172+00', 'qiVp0L48faA-TfT5tmWH1g', '26816947-08d0-45dd-9fa8-87b6d45454e8'),
	('00000000-0000-0000-0000-000000000000', 89, 'oUC17akSF-3uTWTe5vFiJg', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-14 18:09:38.072333+00', '2024-12-14 19:09:07.529705+00', 'XmRRWD49t0kcinlqQTFvZg', '26816947-08d0-45dd-9fa8-87b6d45454e8'),
	('00000000-0000-0000-0000-000000000000', 123, 'l4fpClpvWylAnxaCDrj0SA', 'dc91436a-cdf2-4bd2-8208-8b3443972808', false, '2024-12-16 08:02:38.714035+00', '2024-12-16 08:02:38.714035+00', 'SeN93YL3qxVr0fApRGWCig', '26816947-08d0-45dd-9fa8-87b6d45454e8'),
	('00000000-0000-0000-0000-000000000000', 7, 'QyBAGe_NaYGAVny6BU23yw', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-11-23 19:26:17.077241+00', '2024-12-11 19:06:52.524652+00', 'gaIZ-bD1He6Ch24lq6V_uQ', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 90, '2ztZK8KVgOPktn9AwuuvDQ', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-14 19:09:07.530267+00', '2024-12-14 19:20:03.042468+00', 'oUC17akSF-3uTWTe5vFiJg', '26816947-08d0-45dd-9fa8-87b6d45454e8'),
	('00000000-0000-0000-0000-000000000000', 91, 'ByBrcYy_SaT9kvFm0S6IFw', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-14 19:20:03.043215+00', '2024-12-14 19:40:07.985359+00', '2ztZK8KVgOPktn9AwuuvDQ', '26816947-08d0-45dd-9fa8-87b6d45454e8'),
	('00000000-0000-0000-0000-000000000000', 92, 'NV-ZwkH_xP-ULU9UPSHvFw', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-14 19:40:07.985882+00', '2024-12-14 19:48:31.445326+00', 'ByBrcYy_SaT9kvFm0S6IFw', '26816947-08d0-45dd-9fa8-87b6d45454e8'),
	('00000000-0000-0000-0000-000000000000', 93, 'STxd0MAKopLDXu2CN3xQag', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-14 19:48:31.445793+00', '2024-12-14 19:49:45.47638+00', 'NV-ZwkH_xP-ULU9UPSHvFw', '26816947-08d0-45dd-9fa8-87b6d45454e8'),
	('00000000-0000-0000-0000-000000000000', 94, 'PC9CQsU6qefvBItkwSf07w', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-14 19:49:45.476815+00', '2024-12-14 20:16:01.123308+00', 'STxd0MAKopLDXu2CN3xQag', '26816947-08d0-45dd-9fa8-87b6d45454e8'),
	('00000000-0000-0000-0000-000000000000', 95, 'qiVp0L48faA-TfT5tmWH1g', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-14 20:16:01.123934+00', '2024-12-14 20:22:27.088748+00', 'PC9CQsU6qefvBItkwSf07w', '26816947-08d0-45dd-9fa8-87b6d45454e8'),
	('00000000-0000-0000-0000-000000000000', 129, 'D4U9aK2jLbR2YP5XQ_aovw', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-16 13:23:19.704965+00', '2024-12-16 13:23:20.244605+00', NULL, '58189b52-0baa-44d6-9501-2cacba34651f'),
	('00000000-0000-0000-0000-000000000000', 130, 'SxWhpaKiWWIAq28aWIDU6Q', '1d56fb23-62f4-462e-8c02-764c910075ab', false, '2024-12-16 13:23:20.245053+00', '2024-12-16 13:23:20.245053+00', 'D4U9aK2jLbR2YP5XQ_aovw', '58189b52-0baa-44d6-9501-2cacba34651f'),
	('00000000-0000-0000-0000-000000000000', 122, '6PvifDTuFq0RuQXk_R3LbQ', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-15 19:51:49.203872+00', '2024-12-16 14:07:36.065747+00', 'LPe_7LRIUb5Gzr9WBfyH3Q', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 131, 'vI68dakii-q5m3C30Dsaew', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-16 14:07:36.066307+00', '2024-12-16 14:07:36.397495+00', '6PvifDTuFq0RuQXk_R3LbQ', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 132, 'l5VCll0pJzN3Q2pjK2wIlw', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-16 14:07:36.397852+00', '2024-12-16 14:21:42.827841+00', 'vI68dakii-q5m3C30Dsaew', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 133, 'sRV94hl2omK5T7-BirCeNA', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-16 14:21:42.828449+00', '2024-12-16 14:22:29.805748+00', 'l5VCll0pJzN3Q2pjK2wIlw', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 134, 'r6Xkf4sigforarNZTWDxTQ', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-16 14:22:29.806013+00', '2024-12-16 14:23:08.407626+00', 'sRV94hl2omK5T7-BirCeNA', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 135, '4xTAmeyG_KyckbZwQtDEwg', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-16 14:23:08.408083+00', '2024-12-16 14:23:24.15453+00', 'r6Xkf4sigforarNZTWDxTQ', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 136, 'FIS4ylNR6DKUqLBA4sR_Zg', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-16 14:23:24.154935+00', '2024-12-16 14:25:18.415671+00', '4xTAmeyG_KyckbZwQtDEwg', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 137, 'p8BdeCwUHbLmLIOvMYo8nQ', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-16 14:25:18.416283+00', '2024-12-16 14:29:25.200039+00', 'FIS4ylNR6DKUqLBA4sR_Zg', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 138, 'uDGv8xDN6wUwL_qEwz-bdQ', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-16 14:29:25.200725+00', '2024-12-16 14:38:43.030871+00', 'p8BdeCwUHbLmLIOvMYo8nQ', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 139, 'fcMO039e76NR8ceXQjAYiw', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-16 14:38:43.031486+00', '2024-12-16 14:38:52.287581+00', 'uDGv8xDN6wUwL_qEwz-bdQ', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 140, 'ibZpBHCiyar4P6UfqPfXxg', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-16 14:38:52.28788+00', '2024-12-16 14:39:13.101493+00', 'fcMO039e76NR8ceXQjAYiw', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 141, '9tQfDR8YbxUsI56WpzNXUg', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-16 14:39:13.101782+00', '2024-12-16 14:39:30.492951+00', 'ibZpBHCiyar4P6UfqPfXxg', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 167, '44G1geUFHS84wXajC_mPQg', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-18 07:02:22.121766+00', '2024-12-19 17:37:57.948176+00', 'SHGRbVIPPof0kJt-7d5WkQ', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 177, 'j1gn84_FnQCkobCAbef8Xw', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-19 17:40:52.10502+00', '2024-12-19 17:46:35.650073+00', 'hYh-6B-DpJw6sa_mxqsaOA', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 142, 'uTf2TwCGmAX4piDR-FsMqg', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-16 14:39:30.493416+00', '2024-12-17 07:55:48.630845+00', '9tQfDR8YbxUsI56WpzNXUg', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 146, 'sLjXngSYJvtyfc_h3GGrqw', '1d56fb23-62f4-462e-8c02-764c910075ab', false, '2024-12-17 07:56:58.477183+00', '2024-12-17 07:56:58.477183+00', NULL, '0a6eba1c-bcff-46fd-b995-97e11745075a'),
	('00000000-0000-0000-0000-000000000000', 145, 'Wt1KZ12IM9nfSklmwhfLhg', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-17 07:55:48.631634+00', '2024-12-17 07:57:02.347062+00', 'uTf2TwCGmAX4piDR-FsMqg', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 179, 'VcgR5l92yUauNi5kHPOMVQ', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-19 17:54:39.06227+00', '2024-12-19 17:55:09.218754+00', 'GqM6kc9HcvA11m4jvPZ6og', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 180, 'COa_vMWtLinvIvQ7WzY9zw', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-19 17:55:09.219056+00', '2024-12-19 18:00:53.006864+00', 'VcgR5l92yUauNi5kHPOMVQ', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 182, 'D6D0DY8mpHAdEHLmLV8B4w', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-19 18:02:31.746812+00', '2024-12-19 18:06:15.608409+00', 'Ey2UI4ooVgDpjogc8McVGA', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 184, 'PRVJcLW4KrDGqZvP1Ms6jQ', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-19 18:08:29.554969+00', '2024-12-19 18:09:40.982634+00', 'SMmPLZn_gqAOvoieXXc5oA', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 185, 'NT2AVt5MZb-x2Vr4fwyDbQ', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-19 18:09:40.983089+00', '2024-12-19 18:10:49.052177+00', 'PRVJcLW4KrDGqZvP1Ms6jQ', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 186, '1gTRttWIiT9uRWHHppsQVg', '1d56fb23-62f4-462e-8c02-764c910075ab', false, '2024-12-19 18:10:49.052642+00', '2024-12-19 18:10:49.052642+00', 'NT2AVt5MZb-x2Vr4fwyDbQ', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 187, 'UxkdM8XqlpdWohn3XA1kkQ', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-19 18:13:05.610901+00', '2024-12-19 18:13:05.93943+00', NULL, 'd379c80e-ce6a-4e4b-9f99-1106bb042dc4'),
	('00000000-0000-0000-0000-000000000000', 188, 'zBIVo1R56WRHoOuibi7zwg', 'dc91436a-cdf2-4bd2-8208-8b3443972808', false, '2024-12-19 18:13:05.94003+00', '2024-12-19 18:13:05.94003+00', 'UxkdM8XqlpdWohn3XA1kkQ', 'd379c80e-ce6a-4e4b-9f99-1106bb042dc4'),
	('00000000-0000-0000-0000-000000000000', 189, 'qUCpKsop7b6p-1tD1MVnhQ', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-19 19:49:32.86096+00', '2024-12-19 19:49:33.187745+00', NULL, '236e6b0e-b655-4af5-b0fc-94f2c26f7349'),
	('00000000-0000-0000-0000-000000000000', 190, 'cbbNwS5yDWJC4TERhcIDzg', 'dc91436a-cdf2-4bd2-8208-8b3443972808', false, '2024-12-19 19:49:33.188247+00', '2024-12-19 19:49:33.188247+00', 'qUCpKsop7b6p-1tD1MVnhQ', '236e6b0e-b655-4af5-b0fc-94f2c26f7349'),
	('00000000-0000-0000-0000-000000000000', 147, 'U4rz29rcpjlvUTrNo36fAQ', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-17 07:57:02.3475+00', '2024-12-18 06:55:32.689898+00', 'Wt1KZ12IM9nfSklmwhfLhg', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 191, 'b4afxAPSO3hyIMgT8ZQqAA', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-19 19:52:23.472032+00', '2024-12-19 19:52:23.762402+00', NULL, '82ed7e9b-97d4-4beb-a3df-2fcd5c3a600e'),
	('00000000-0000-0000-0000-000000000000', 164, 'XINvv5URFCidGSwHbLKKLA', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-18 06:55:32.690255+00', '2024-12-18 06:55:33.134789+00', 'U4rz29rcpjlvUTrNo36fAQ', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 165, 'c4XtowdcMew2nNJMhuydmA', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-18 06:55:33.135036+00', '2024-12-18 07:00:54.097574+00', 'XINvv5URFCidGSwHbLKKLA', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 166, 'SHGRbVIPPof0kJt-7d5WkQ', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-18 07:00:54.098181+00', '2024-12-18 07:02:22.120986+00', 'c4XtowdcMew2nNJMhuydmA', '756db59f-1db0-401b-b826-3d3db8d84367'),
	('00000000-0000-0000-0000-000000000000', 195, 'vSKWdak0z5KkEU1ByqcpJA', 'dc91436a-cdf2-4bd2-8208-8b3443972808', true, '2024-12-19 19:55:50.906571+00', '2024-12-19 19:55:51.254067+00', NULL, '1bbd3177-3b43-4a7a-8df3-3363535d0a23'),
	('00000000-0000-0000-0000-000000000000', 196, 'iV8zXK-qKw_CCQfl6pMIqA', 'dc91436a-cdf2-4bd2-8208-8b3443972808', false, '2024-12-19 19:55:51.254447+00', '2024-12-19 19:55:51.254447+00', 'vSKWdak0z5KkEU1ByqcpJA', '1bbd3177-3b43-4a7a-8df3-3363535d0a23'),
	('00000000-0000-0000-0000-000000000000', 192, '95mS3vPhu2ULdV_lrz9uWA', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-19 19:52:23.762973+00', '2024-12-19 20:06:22.170351+00', 'b4afxAPSO3hyIMgT8ZQqAA', '82ed7e9b-97d4-4beb-a3df-2fcd5c3a600e'),
	('00000000-0000-0000-0000-000000000000', 197, '3Z-a6ka6odX1zfeeJtC4oQ', '1d56fb23-62f4-462e-8c02-764c910075ab', true, '2024-12-19 20:06:22.170871+00', '2024-12-20 14:36:39.427354+00', '95mS3vPhu2ULdV_lrz9uWA', '82ed7e9b-97d4-4beb-a3df-2fcd5c3a600e'),
	('00000000-0000-0000-0000-000000000000', 198, 'MX251qpmyBULX-DVcJ4Acg', '1d56fb23-62f4-462e-8c02-764c910075ab', false, '2024-12-20 14:36:39.428167+00', '2024-12-20 14:36:39.428167+00', '3Z-a6ka6odX1zfeeJtC4oQ', '82ed7e9b-97d4-4beb-a3df-2fcd5c3a600e');


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
-- Data for Name: businesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."businesses" ("id", "created_at", "name", "owner", "stripe_customer", "subscription_status", "subscription_id", "subscription_period_end") VALUES
	(1, '2024-12-19 17:37:33.11052+00', 'Polish Business Network', 'dc91436a-cdf2-4bd2-8208-8b3443972808', 'cus_123', 'active', NULL, NULL);


--
-- Data for Name: locals; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."locals" ("id", "created_at", "name", "business", "logo_url", "banner_url", "category_icon_url", "short_description", "enabled") VALUES
	(1, '2024-12-19 17:37:33.11052+00', 'Restauracja Staropolska', 1, 'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4', 'https://images.unsplash.com/photo-1514933651103-005eec06c04b', NULL, 'Tradycyjna polska kuchnia w sercu miasta', true),
	(2, '2024-12-19 17:37:33.11052+00', 'Trattoria Roma', 1, 'https://images.unsplash.com/photo-1555396273-367ea4eb4db5', 'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4', NULL, 'Autentyczna włoska kuchnia', true),
	(3, '2024-12-19 17:37:33.11052+00', 'Sushi Master', 1, 'https://images.unsplash.com/photo-1579871494447-9811cf80d66c', 'https://images.unsplash.com/photo-1553621042-f6e147245754', NULL, 'Najlepsze sushi w mieście', true),
	(4, '2024-12-19 17:37:33.11052+00', 'Burger House', 1, 'https://images.unsplash.com/photo-1550547660-d9450f859349', 'https://images.unsplash.com/photo-1550547660-d9450f859349', NULL, 'Soczyte burgery rzemieślnicze', true),
	(5, '2024-12-19 17:37:33.11052+00', 'Vegan Corner', 1, 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd', 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd', NULL, 'Kreatywna kuchnia roślinna', true),
	(21, '2024-12-19 17:37:33.11052+00', 'Beauty Studio Glamour', 1, 'https://images.unsplash.com/photo-1560066984-138dadb4c035', 'https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9', NULL, 'Kompleksowe usługi kosmetyczne', true),
	(22, '2024-12-19 17:37:33.11052+00', 'Nail Art Studio', 1, 'https://images.unsplash.com/photo-1610992015732-2449b0bb0a86', 'https://images.unsplash.com/photo-1632345031435-8727f6897d53', NULL, 'Artystyczna stylizacja paznokci', true),
	(23, '2024-12-19 17:37:33.11052+00', 'Salon Urody Venus', 1, 'https://images.unsplash.com/photo-1516975080664-ed2fc6a32937', 'https://images.unsplash.com/photo-1516975080664-ed2fc6a32937', NULL, 'Twoje miejsce relaksu i piękna', true),
	(41, '2024-12-19 17:37:33.11052+00', 'Classic Barber', 1, 'https://images.unsplash.com/photo-1585747860715-2ba37e788b70', 'https://images.unsplash.com/photo-1503951914875-452162b0f3f1', NULL, 'Tradycyjny męski salon', true),
	(42, '2024-12-19 17:37:33.11052+00', 'Gentlemens Club', 1, 'https://images.unsplash.com/photo-1503951914875-452162b0f3f1', 'https://images.unsplash.com/photo-1503951914875-452162b0f3f1', NULL, 'Ekskluzywny salon dla panów', true),
	(43, '2024-12-19 17:37:33.11052+00', 'Urban Barber', 1, 'https://images.unsplash.com/photo-1599351431202-1e0f0137899a', 'https://images.unsplash.com/photo-1599351431202-1e0f0137899a', NULL, 'Nowoczesne strzyżenie i stylizacja', true),
	(61, '2024-12-19 17:37:33.11052+00', 'Premium Car Rental', 1, 'https://images.unsplash.com/photo-1549317661-bd32c8ce0db2', 'https://images.unsplash.com/photo-1511919884226-fd3cad34687c', NULL, 'Luksusowe samochody na wynajem', true),
	(62, '2024-12-19 17:37:33.11052+00', 'City Cars', 1, 'https://images.unsplash.com/photo-1549317661-bd32c8ce0db2', 'https://images.unsplash.com/photo-1511919884226-fd3cad34687c', NULL, 'Ekonomiczny wynajem samochodów', true),
	(63, '2024-12-19 17:37:33.11052+00', 'Electric Ride', 1, 'https://images.unsplash.com/photo-1549317661-bd32c8ce0db2', 'https://images.unsplash.com/photo-1511919884226-fd3cad34687c', NULL, 'Wynajem samochodów elektrycznych', true),
	(71, '2024-12-19 17:37:33.11052+00', 'Kwiaciarnia Pod Różą', 1, 'https://images.unsplash.com/photo-1558350315-8aa00e8e4590', 'https://images.unsplash.com/photo-1563241527-3004b7be0ffd', NULL, 'Artystyczna kwiaciarnia', true),
	(72, '2024-12-19 17:37:33.11052+00', 'Flower Power', 1, 'https://images.unsplash.com/photo-1558350315-8aa00e8e4590', 'https://images.unsplash.com/photo-1563241527-3004b7be0ffd', NULL, 'Kwiaty na każdą okazję', true),
	(73, '2024-12-19 17:37:33.11052+00', 'Green Point', 1, 'https://images.unsplash.com/photo-1558350315-8aa00e8e4590', 'https://images.unsplash.com/photo-1563241527-3004b7be0ffd', NULL, 'Rośliny doniczkowe i bukiety', true),
	(81, '2024-12-19 17:37:33.11052+00', 'Wellness & Spa', 1, 'https://images.unsplash.com/photo-1544161515-4ab6ce6db874', 'https://images.unsplash.com/photo-1540555700478-4be289fbecef', NULL, 'Kompleksowy relaks i odnowa', true),
	(82, '2024-12-19 17:37:33.11052+00', 'Thai Massage', 1, 'https://images.unsplash.com/photo-1544161515-4ab6ce6db874', 'https://images.unsplash.com/photo-1540555700478-4be289fbecef', NULL, 'Tradycyjny masaż tajski', true),
	(83, '2024-12-19 17:37:33.11052+00', 'Spa Paradise', 1, 'https://images.unsplash.com/photo-1544161515-4ab6ce6db874', 'https://images.unsplash.com/photo-1540555700478-4be289fbecef', NULL, 'Luksusowe zabiegi spa', true),
	(91, '2024-12-19 17:37:33.11052+00', 'Make Up Art', 1, 'https://images.unsplash.com/photo-1596704017254-9b121068fb31', 'https://images.unsplash.com/photo-1487412947147-5cebf100ffc2', NULL, 'Profesjonalny makijaż', true),
	(92, '2024-12-19 17:37:33.11052+00', 'Beauty Zone', 1, 'https://images.unsplash.com/photo-1596704017254-9b121068fb31', 'https://images.unsplash.com/photo-1487412947147-5cebf100ffc2', NULL, 'Makijaż i stylizacja', true),
	(93, '2024-12-19 17:37:33.11052+00', 'Makeup Pro', 1, 'https://images.unsplash.com/photo-1596704017254-9b121068fb31', 'https://images.unsplash.com/photo-1487412947147-5cebf100ffc2', NULL, 'Studio makijażu', true),
	(6, '2024-12-19 17:40:38.210448+00', 'Restauracja Polska', 1, 'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4', 'https://images.unsplash.com/photo-1514933651103-005eec06c04b', NULL, 'Tradycyjna kuchnia polska', true),
	(7, '2024-12-19 17:40:38.210448+00', 'Bistro Miejskie', 1, 'https://images.unsplash.com/photo-1555396273-367ea4eb4db5', 'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4', NULL, 'Nowoczesna kuchnia fusion', true),
	(24, '2024-12-19 17:40:38.210448+00', 'Studio Piękna', 1, 'https://images.unsplash.com/photo-1560066984-138dadb4c035', 'https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9', NULL, 'Profesjonalne zabiegi kosmetyczne', true),
	(25, '2024-12-19 17:40:38.210448+00', 'Beauty Express', 1, 'https://images.unsplash.com/photo-1516975080664-ed2fc6a32937', 'https://images.unsplash.com/photo-1516975080664-ed2fc6a32937', NULL, 'Szybkie zabiegi kosmetyczne', true),
	(31, '2024-12-19 17:40:38.210448+00', 'Salon Urody Deluxe', 1, 'https://images.unsplash.com/photo-1560066984-138dadb4c035', 'https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9', NULL, 'Luksusowe zabiegi kosmetyczne', true),
	(32, '2024-12-19 17:40:38.210448+00', 'Beauty & Spa Center', 1, 'https://images.unsplash.com/photo-1544161515-4ab6ce6db874', 'https://images.unsplash.com/photo-1540555700478-4be289fbecef', NULL, 'Centrum urody i relaksu', true),
	(33, '2024-12-19 17:40:38.210448+00', 'Instytut Piękna', 1, 'https://images.unsplash.com/photo-1560066984-138dadb4c035', 'https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9', NULL, 'Profesjonalne zabiegi', true),
	(44, '2024-12-19 17:40:38.210448+00', 'Barber King', 1, 'https://images.unsplash.com/photo-1585747860715-2ba37e788b70', 'https://images.unsplash.com/photo-1503951914875-452162b0f3f1', NULL, 'Królewskie strzyżenie', true),
	(45, '2024-12-19 17:40:38.210448+00', 'Gentleman Style', 1, 'https://images.unsplash.com/photo-1585747860715-2ba37e788b70', 'https://images.unsplash.com/photo-1503951914875-452162b0f3f1', NULL, 'Męski salon premium', true),
	(64, '2024-12-19 17:40:38.210448+00', 'Auto Premium', 1, 'https://images.unsplash.com/photo-1549317661-bd32c8ce0db2', 'https://images.unsplash.com/photo-1511919884226-fd3cad34687c', NULL, 'Luksusowe samochody', true),
	(65, '2024-12-19 17:40:38.210448+00', 'Car Share Plus', 1, 'https://images.unsplash.com/photo-1549317661-bd32c8ce0db2', 'https://images.unsplash.com/photo-1511919884226-fd3cad34687c', NULL, 'Współdzielenie samochodów', true),
	(84, '2024-12-19 17:40:38.210448+00', 'Spa & Wellness Center', 1, 'https://images.unsplash.com/photo-1544161515-4ab6ce6db874', 'https://images.unsplash.com/photo-1540555700478-4be289fbecef', NULL, 'Centrum odnowy biologicznej', true),
	(85, '2024-12-19 17:40:38.210448+00', 'Relax Zone', 1, 'https://images.unsplash.com/photo-1544161515-4ab6ce6db874', 'https://images.unsplash.com/photo-1540555700478-4be289fbecef', NULL, 'Strefa relaksu i masażu', true),
	(200, '2024-12-19 18:06:06.659487+00', 'Silesia Steakhouse', 1, 'https://images.unsplash.com/photo-1544025162-d76694265947', 'https://images.unsplash.com/photo-1514516345957-556ca7d90a29', 'https://img.icons8.com/fluency/96/steak.png', 'Premium steakhouse z najlepszą wołowiną', true),
	(201, '2024-12-19 18:06:06.659487+00', 'Beauty Zone Silesia', 1, 'https://images.unsplash.com/photo-1570172619644-dfd03ed5d881', 'https://images.unsplash.com/photo-1487412912498-0447578fcca8', 'https://img.icons8.com/fluency/96/beauty-salon.png', 'Ekskluzywny salon kosmetyczny', true),
	(202, '2024-12-19 18:06:06.659487+00', 'Silesia Barber Club', 1, 'https://images.unsplash.com/photo-1503951914875-452162b0f3f1', 'https://images.unsplash.com/photo-1512690459411-b9245aed614b', 'https://img.icons8.com/fluency/96/barber-pole.png', 'Profesjonalny salon barberski', true),
	(203, '2024-12-19 18:06:06.659487+00', 'Asian Fusion Kitchen', 1, 'https://images.unsplash.com/photo-1552531268-3fe8c3fc8d84', 'https://images.unsplash.com/photo-1590846406792-0adc7f938f1d', 'https://img.icons8.com/fluency/96/restaurant.png', 'Kuchnia azjatycka fusion', true),
	(204, '2024-12-19 18:06:06.659487+00', 'Silesia Spa & Wellness', 1, 'https://images.unsplash.com/photo-1540555700478-4be289fbecef', 'https://images.unsplash.com/photo-1583417319070-4a69db38a482', 'https://img.icons8.com/fluency/96/spa.png', 'Centrum odnowy biologicznej', true),
	(205, '2024-12-19 18:06:06.659487+00', 'Nail Art Studio Silesia', 1, 'https://images.unsplash.com/photo-1610992015732-2449b0bb0a86', 'https://images.unsplash.com/photo-1607779097040-26e80aa4576b', 'https://img.icons8.com/fluency/96/nail-polish.png', 'Artystyczna stylizacja paznokci', true);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."customers" ("id", "created_at", "local", "account", "points", "updated_at", "phone", "points_multiplier") VALUES
	(8, '2024-12-19 20:03:53.056782+00', 200, '1d56fb23-62f4-462e-8c02-764c910075ab', 209, '2024-12-19 20:03:53.056782+00', '48666978350', 2.15),
	(9, '2024-12-19 20:08:26.946356+00', 2, '1d56fb23-62f4-462e-8c02-764c910075ab', 107, '2024-12-19 20:08:26.946356+00', '48666978350', 2.15),
	(10, '2024-12-19 20:08:40.892905+00', 92, '1d56fb23-62f4-462e-8c02-764c910075ab', 322, '2024-12-19 20:08:40.892905+00', '48666978350', 2.15);


--
-- Data for Name: local_cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."local_cards" ("id", "created_at", "name", "short_description", "description", "cost", "type", "actived_on", "expires_on", "iconUrl", "local", "enable") VALUES
	(1, '2024-12-19 17:37:33.11052+00', 'Karta Smakosza', 'Zbieraj punkty za posiłki', 'Zjedz 10 dań, 11-te otrzymasz gratis!', 10, 'stamps', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 1, true),
	(2, '2024-12-19 17:37:33.11052+00', 'Karta Smakosza', 'Zbieraj punkty za posiłki', 'Zjedz 10 dań, 11-te otrzymasz gratis!', 10, 'points', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 2, true),
	(3, '2024-12-19 17:37:33.11052+00', 'Karta Smakosza', 'Zbieraj punkty za posiłki', 'Zjedz 10 dań, 11-te otrzymasz gratis!', 10, 'stamps', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 3, true),
	(4, '2024-12-19 17:37:33.11052+00', 'Karta Smakosza', 'Zbieraj punkty za posiłki', 'Zjedz 10 dań, 11-te otrzymasz gratis!', 10, 'points', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 4, true),
	(5, '2024-12-19 17:37:33.11052+00', 'Karta Smakosza', 'Zbieraj punkty za posiłki', 'Zjedz 10 dań, 11-te otrzymasz gratis!', 10, 'stamps', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 5, true),
	(21, '2024-12-19 17:37:33.11052+00', 'Beauty Club Card', 'Punkty za zabiegi kosmetyczne', 'Za każde 100 zł otrzymasz 10 punktów. Wymień punkty na zabiegi!', 100, 'stamps', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 21, true),
	(22, '2024-12-19 17:37:33.11052+00', 'Beauty Club Card', 'Punkty za zabiegi kosmetyczne', 'Za każde 100 zł otrzymasz 10 punktów. Wymień punkty na zabiegi!', 100, 'points', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 22, true),
	(23, '2024-12-19 17:37:33.11052+00', 'Beauty Club Card', 'Punkty za zabiegi kosmetyczne', 'Za każde 100 zł otrzymasz 10 punktów. Wymień punkty na zabiegi!', 100, 'stamps', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 23, true),
	(41, '2024-12-19 17:37:33.11052+00', 'Barber Card', 'Program lojalnościowy barbera', 'Każda 10-ta wizyta gratis!', 10, 'stamps', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 41, true),
	(42, '2024-12-19 17:37:33.11052+00', 'Barber Card', 'Program lojalnościowy barbera', 'Każda 10-ta wizyta gratis!', 10, 'points', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 42, true),
	(43, '2024-12-19 17:37:33.11052+00', 'Barber Card', 'Program lojalnościowy barbera', 'Każda 10-ta wizyta gratis!', 10, 'stamps', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 43, true),
	(61, '2024-12-19 17:37:33.11052+00', 'Car Rental VIP', 'Punkty za wypożyczenia', 'Zbieraj punkty za wypożyczenia, wymień na darmowe dni!', 200, 'stamps', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 61, true),
	(62, '2024-12-19 17:37:33.11052+00', 'Car Rental VIP', 'Punkty za wypożyczenia', 'Zbieraj punkty za wypożyczenia, wymień na darmowe dni!', 200, 'points', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 62, true),
	(63, '2024-12-19 17:37:33.11052+00', 'Car Rental VIP', 'Punkty za wypożyczenia', 'Zbieraj punkty za wypożyczenia, wymień na darmowe dni!', 200, 'stamps', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 63, true),
	(71, '2024-12-19 17:37:33.11052+00', 'Kwiatowa Karta', 'Pieczątki za bukiety', 'Kup 5 bukietów, 6-ty otrzymasz gratis!', 5, 'stamps', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 71, true),
	(72, '2024-12-19 17:37:33.11052+00', 'Kwiatowa Karta', 'Pieczątki za bukiety', 'Kup 5 bukietów, 6-ty otrzymasz gratis!', 5, 'points', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 72, true),
	(73, '2024-12-19 17:37:33.11052+00', 'Kwiatowa Karta', 'Pieczątki za bukiety', 'Kup 5 bukietów, 6-ty otrzymasz gratis!', 5, 'stamps', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 73, true),
	(81, '2024-12-19 17:37:33.11052+00', 'Spa & Wellness Card', 'Program wellness', 'Zbieraj punkty za masaże i zabiegi!', 100, 'stamps', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 81, true),
	(82, '2024-12-19 17:37:33.11052+00', 'Spa & Wellness Card', 'Program wellness', 'Zbieraj punkty za masaże i zabiegi!', 100, 'points', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 82, true),
	(83, '2024-12-19 17:37:33.11052+00', 'Spa & Wellness Card', 'Program wellness', 'Zbieraj punkty za masaże i zabiegi!', 100, 'stamps', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 83, true),
	(91, '2024-12-19 17:37:33.11052+00', 'Makeup Artist Card', 'Punkty za makijaże', 'Każdy 5-ty makijaż 50% taniej!', 50, 'stamps', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 91, true),
	(92, '2024-12-19 17:37:33.11052+00', 'Makeup Artist Card', 'Punkty za makijaże', 'Każdy 5-ty makijaż 50% taniej!', 50, 'points', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 92, true),
	(93, '2024-12-19 17:37:33.11052+00', 'Makeup Artist Card', 'Punkty za makijaże', 'Każdy 5-ty makijaż 50% taniej!', 50, 'stamps', '2024-12-19 17:37:33.11052+00', '2025-12-19 17:37:33.11052+00', NULL, 93, true),
	(6, '2024-12-19 17:40:38.210448+00', 'Karta Smakosza', 'Program lojalnościowy', 'Zbieraj punkty i wymieniaj na nagrody', 50, 'points', '2024-12-19 17:40:38.210448+00', '2025-12-19 17:40:38.210448+00', NULL, 6, true),
	(7, '2024-12-19 17:40:38.210448+00', 'Karta Smakosza', 'Program lojalnościowy', 'Zbieraj punkty i wymieniaj na nagrody', 50, 'stamps', '2024-12-19 17:40:38.210448+00', '2025-12-19 17:40:38.210448+00', NULL, 7, true),
	(24, '2024-12-19 17:40:38.210448+00', 'Beauty Club Card', 'Program lojalnościowy', 'Zbieraj punkty i wymieniaj na nagrody', 50, 'points', '2024-12-19 17:40:38.210448+00', '2025-12-19 17:40:38.210448+00', NULL, 24, true),
	(25, '2024-12-19 17:40:38.210448+00', 'Beauty Club Card', 'Program lojalnościowy', 'Zbieraj punkty i wymieniaj na nagrody', 50, 'stamps', '2024-12-19 17:40:38.210448+00', '2025-12-19 17:40:38.210448+00', NULL, 25, true),
	(31, '2024-12-19 17:40:38.210448+00', 'Beauty Club Card', 'Program lojalnościowy', 'Zbieraj punkty i wymieniaj na nagrody', 50, 'stamps', '2024-12-19 17:40:38.210448+00', '2025-12-19 17:40:38.210448+00', NULL, 31, true),
	(32, '2024-12-19 17:40:38.210448+00', 'Beauty Club Card', 'Program lojalnościowy', 'Zbieraj punkty i wymieniaj na nagrody', 50, 'points', '2024-12-19 17:40:38.210448+00', '2025-12-19 17:40:38.210448+00', NULL, 32, true),
	(33, '2024-12-19 17:40:38.210448+00', 'Beauty Club Card', 'Program lojalnościowy', 'Zbieraj punkty i wymieniaj na nagrody', 50, 'stamps', '2024-12-19 17:40:38.210448+00', '2025-12-19 17:40:38.210448+00', NULL, 33, true),
	(44, '2024-12-19 17:40:38.210448+00', 'Barber Card', 'Program lojalnościowy', 'Zbieraj punkty i wymieniaj na nagrody', 50, 'points', '2024-12-19 17:40:38.210448+00', '2025-12-19 17:40:38.210448+00', NULL, 44, true),
	(45, '2024-12-19 17:40:38.210448+00', 'Barber Card', 'Program lojalnościowy', 'Zbieraj punkty i wymieniaj na nagrody', 50, 'stamps', '2024-12-19 17:40:38.210448+00', '2025-12-19 17:40:38.210448+00', NULL, 45, true),
	(64, '2024-12-19 17:40:38.210448+00', 'Car Rental VIP', 'Program lojalnościowy', 'Zbieraj punkty i wymieniaj na nagrody', 50, 'points', '2024-12-19 17:40:38.210448+00', '2025-12-19 17:40:38.210448+00', NULL, 64, true),
	(65, '2024-12-19 17:40:38.210448+00', 'Car Rental VIP', 'Program lojalnościowy', 'Zbieraj punkty i wymieniaj na nagrody', 50, 'stamps', '2024-12-19 17:40:38.210448+00', '2025-12-19 17:40:38.210448+00', NULL, 65, true),
	(84, '2024-12-19 17:40:38.210448+00', 'Spa & Wellness Card', 'Program lojalnościowy', 'Zbieraj punkty i wymieniaj na nagrody', 50, 'points', '2024-12-19 17:40:38.210448+00', '2025-12-19 17:40:38.210448+00', NULL, 84, true),
	(85, '2024-12-19 17:40:38.210448+00', 'Spa & Wellness Card', 'Program lojalnościowy', 'Zbieraj punkty i wymieniaj na nagrody', 50, 'stamps', '2024-12-19 17:40:38.210448+00', '2025-12-19 17:40:38.210448+00', NULL, 85, true),
	(200, '2024-12-19 18:06:06.659487+00', 'Karta Steak Master', 'Ekskluzywny program dla miłośników steków', 'Zbieraj punkty za każde zamówienie. 2500 punktów = Tomahawk Steak gratis!', 2500, 'points', '2024-12-19 18:06:06.659487+00', '2025-12-19 18:06:06.659487+00', NULL, 200, true),
	(201, '2024-12-19 18:06:06.659487+00', 'Karta Wine & Dine', 'Program dla koneserów win', 'Kolekcjonuj stemple za wina. 15 stempli = butelka premium gratis', 15, 'stamps', '2024-12-19 18:06:06.659487+00', '2025-12-19 18:06:06.659487+00', NULL, 200, true),
	(202, '2024-12-19 18:06:06.659487+00', 'Karta Lunch Special', 'Program lunchowy', 'Zbieraj punkty w porze lunchu. 1000 punktów = lunch dla dwojga', 1000, 'points', '2024-12-19 18:06:06.659487+00', '2025-12-19 18:06:06.659487+00', NULL, 200, true),
	(203, '2024-12-19 18:06:06.659487+00', 'Beauty VIP Card', 'Program dla stałych klientów', 'Zbieraj punkty za zabiegi. 3000 punktów = dowolny zabieg premium', 3000, 'points', '2024-12-19 18:06:06.659487+00', '2025-12-19 18:06:06.659487+00', NULL, 201, true),
	(204, '2024-12-19 18:06:06.659487+00', 'Express Beauty Card', 'Program ekspresowy', 'Zbieraj stemple za ekspresowe zabiegi. 10 stempli = zabieg gratis', 10, 'stamps', '2024-12-19 18:06:06.659487+00', '2025-12-19 18:06:06.659487+00', NULL, 201, true),
	(205, '2024-12-19 18:06:06.659487+00', 'Gentlemans Card', 'Ekskluzywny program barberski', 'Kolekcjonuj stemple. 8 stempli = kompletna metamorfoza gratis', 8, 'stamps', '2024-12-19 18:06:06.659487+00', '2025-12-19 18:06:06.659487+00', NULL, 202, true),
	(206, '2024-12-19 18:06:06.659487+00', 'Asian Fusion Card', 'Program lojalnościowy', 'Zbieraj punkty za dania. 1500 punktów = kolacja degustacyjna', 1500, 'points', '2024-12-19 18:06:06.659487+00', '2025-12-19 18:06:06.659487+00', NULL, 203, true),
	(207, '2024-12-19 18:06:06.659487+00', 'Sushi Master Card', 'Karta Sushi Mastera', 'Zbieraj stemple za zestawy sushi. 12 stempli = premium set', 12, 'stamps', '2024-12-19 18:06:06.659487+00', '2025-12-19 18:06:06.659487+00', NULL, 203, true),
	(208, '2024-12-19 18:06:06.659487+00', 'Wellness Premium', 'Program wellness', 'Zbieraj punkty za masaże i zabiegi. 2800 punktów = day spa', 2800, 'points', '2024-12-19 18:06:06.659487+00', '2025-12-19 18:06:06.659487+00', NULL, 204, true),
	(209, '2024-12-19 18:06:06.659487+00', 'Massage Card', 'Karta masażu', 'Zbieraj stemple za masaże. 5 stempli = masaż premium', 5, 'stamps', '2024-12-19 18:06:06.659487+00', '2025-12-19 18:06:06.659487+00', NULL, 204, true),
	(210, '2024-12-19 18:06:06.659487+00', 'Aqua Zone Card', 'Program basenowy', 'Zbieraj punkty za strefę wodną. 800 punktów = dzień w aqua zone', 800, 'points', '2024-12-19 18:06:06.659487+00', '2025-12-19 18:06:06.659487+00', NULL, 204, true),
	(211, '2024-12-19 18:06:06.659487+00', 'Nail Art VIP', 'Program dla stałych klientek', 'Zbieraj punkty za stylizacje. 500 punktów = zdobienie premium', 500, 'points', '2024-12-19 18:06:06.659487+00', '2025-12-19 18:06:06.659487+00', NULL, 205, true),
	(212, '2024-12-19 18:06:06.659487+00', 'Express Manicure Card', 'Program manicure', 'Zbieraj stemple za manicure. 6 stempli = manicure hybrydowy', 6, 'stamps', '2024-12-19 18:06:06.659487+00', '2025-12-19 18:06:06.659487+00', NULL, 205, true);


--
-- Data for Name: customer_cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."customer_cards" ("id", "created_at", "updated_at", "card", "customer", "collected") VALUES
	(5, '2024-12-19 20:03:55.668976+00', '2024-12-19 20:03:55.668976+00', 201, 8, 2);


--
-- Data for Name: local_addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."local_addresses" ("id", "created_at", "country", "city", "display_address", "local", "geo") VALUES
	(3, '2024-12-19 17:40:44.458463+00', 'poland', 'Warszawa', 'ul. Mokotowska 63', 3, 3),
	(4, '2024-12-19 17:40:44.458463+00', 'poland', 'Warszawa', 'ul. Puławska 28', 4, 4),
	(5, '2024-12-19 17:40:44.458463+00', 'poland', 'Warszawa', 'ul. Złota 59', 5, 5),
	(23, '2024-12-19 17:40:44.458463+00', 'poland', 'Kraków', 'ul. Floriańska 45', 23, 23),
	(24, '2024-12-19 17:40:44.458463+00', 'poland', 'Kraków', 'ul. Szewska 22', 24, 24),
	(25, '2024-12-19 17:40:44.458463+00', 'poland', 'Kraków', 'ul. Starowiślna 15', 25, 25),
	(31, '2024-12-19 17:40:44.458463+00', 'poland', 'Łódź', 'ul. Piotrkowska 86', 31, 31),
	(32, '2024-12-19 17:40:44.458463+00', 'poland', 'Łódź', 'ul. Manufakturowa 1', 32, 32),
	(33, '2024-12-19 17:40:44.458463+00', 'poland', 'Łódź', 'ul. Sienkiewicza 67', 33, 33),
	(63, '2024-12-19 17:40:44.458463+00', 'poland', 'Wrocław', 'ul. Oławska 12', 63, 63),
	(64, '2024-12-19 17:40:44.458463+00', 'poland', 'Wrocław', 'pl. Grunwaldzki 22', 64, 64),
	(65, '2024-12-19 17:40:44.458463+00', 'poland', 'Wrocław', 'ul. Ruska 51', 65, 65),
	(43, '2024-12-19 17:40:44.458463+00', 'poland', 'Poznań', 'ul. Święty Marcin 75', 43, 43),
	(44, '2024-12-19 17:40:44.458463+00', 'poland', 'Poznań', 'ul. Ratajczaka 44', 44, 44),
	(45, '2024-12-19 17:40:44.458463+00', 'poland', 'Poznań', 'ul. Głogowska 432', 45, 45),
	(83, '2024-12-19 17:40:44.458463+00', 'poland', 'Gdańsk', 'ul. Długi Targ 4', 83, 83),
	(84, '2024-12-19 17:40:44.458463+00', 'poland', 'Gdańsk', 'ul. Szeroka 12', 84, 84),
	(85, '2024-12-19 17:40:44.458463+00', 'poland', 'Gdańsk', 'ul. Wajdeloty 21', 85, 85),
	(91, '2024-12-19 17:40:44.458463+00', 'poland', 'Szczecin', 'al. Niepodległości 36', 91, 91),
	(1, '2024-12-19 17:37:33.11052+00', 'poland', 'Warszawa', 'ul. Nowy Świat 15/17', 1, 1),
	(2, '2024-12-19 17:37:33.11052+00', 'poland', 'Warszawa', 'ul. Marszałkowska 104/122', 2, 2),
	(21, '2024-12-19 17:37:33.11052+00', 'poland', 'Kraków', 'Rynek Główny 25', 21, 21),
	(22, '2024-12-19 17:37:33.11052+00', 'poland', 'Kraków', 'ul. Grodzka 5', 22, 22),
	(41, '2024-12-19 17:37:33.11052+00', 'poland', 'Poznań', 'Stary Rynek 37', 41, 41),
	(42, '2024-12-19 17:37:33.11052+00', 'poland', 'Poznań', 'ul. Półwiejska 42', 42, 42),
	(61, '2024-12-19 17:37:33.11052+00', 'poland', 'Wrocław', 'Rynek 13', 61, 61),
	(62, '2024-12-19 17:37:33.11052+00', 'poland', 'Wrocław', 'ul. Świdnicka 8', 62, 62),
	(81, '2024-12-19 17:37:33.11052+00', 'poland', 'Gdańsk', 'ul. Długa 35', 81, 81),
	(82, '2024-12-19 17:37:33.11052+00', 'poland', 'Gdańsk', 'ul. Piwna 15', 82, 82),
	(92, '2024-12-19 17:40:44.458463+00', 'poland', 'Szczecin', 'ul. Rayskiego 23', 92, 92),
	(93, '2024-12-19 17:40:44.458463+00', 'poland', 'Szczecin', 'ul. Bogusława 8', 93, 93),
	(200, '2024-12-19 18:06:06.659487+00', 'poland', 'Katowice', 'ul. Chorzowska 107', 200, 200),
	(201, '2024-12-19 18:06:06.659487+00', 'poland', 'Katowice', 'ul. Chorzowska 109', 201, 201),
	(202, '2024-12-19 18:06:06.659487+00', 'poland', 'Katowice', 'ul. Chorzowska 111', 202, 202),
	(203, '2024-12-19 18:06:06.659487+00', 'poland', 'Katowice', 'ul. Chorzowska 113', 203, 203),
	(204, '2024-12-19 18:06:06.659487+00', 'poland', 'Katowice', 'ul. Grundmanna 22', 204, 204),
	(205, '2024-12-19 18:06:06.659487+00', 'poland', 'Katowice', 'ul. Grundmanna 24', 205, 205);


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: geo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."geo" ("id", "lat", "long", "local_address") VALUES
	(1, 52.2297, 21.0122, 1),
	(2, 52.2269, 21.0127, 2),
	(21, 50.0617, 19.9373, 21),
	(22, 50.0614, 19.9378, 22),
	(41, 52.4082, 16.9335, 41),
	(42, 52.4011, 16.9097, 42),
	(61, 51.1098, 17.0326, 61),
	(62, 51.1079, 17.0333, 62),
	(81, 54.3488, 18.6531, 81),
	(82, 54.3491, 18.6527, 82),
	(3, 52.2215, 21.018, 3),
	(4, 52.2088, 21.0234, 4),
	(5, 52.2298, 21.0118, 5),
	(23, 50.0621, 19.9379, 23),
	(24, 50.0637, 19.9384, 24),
	(25, 50.0572, 19.9449, 25),
	(31, 51.7706, 19.4739, 31),
	(32, 51.7796, 19.4438, 32),
	(33, 51.7657, 19.4831, 33),
	(63, 51.1089, 17.0346, 63),
	(64, 51.1123, 17.0526, 64),
	(65, 51.1097, 17.0305, 65),
	(43, 52.4082, 16.9335, 43),
	(44, 52.4062, 16.9251, 44),
	(45, 52.3889, 16.896, 45),
	(83, 54.3489, 18.6536, 83),
	(84, 54.3491, 18.6527, 84),
	(85, 54.3801, 18.6047, 85),
	(91, 53.4285, 14.5528, 91),
	(92, 53.4308, 14.5481, 92),
	(93, 53.4249, 14.5553, 93),
	(200, 50.272, 19.0007, 200),
	(201, 50.2735, 19.0015, 201),
	(203, 50.2718, 19.0045, 203),
	(204, 50.2725, 19.0052, 204),
	(205, 50.271, 18.9975, 205),
	(202, 50.2705, 19.0013, 202);


--
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."transactions" ("id", "created_at", "local_address", "customer", "completed_at", "status", "executor") VALUES
	(38, '2024-12-19 20:03:55.597221+00', 200, 8, '2024-12-19 20:03:55.766628+00', 'completed', 'dc91436a-cdf2-4bd2-8208-8b3443972808'),
	(39, '2024-12-19 20:04:55.736928+00', 200, 8, '2024-12-19 20:04:55.879845+00', 'completed', 'dc91436a-cdf2-4bd2-8208-8b3443972808'),
	(40, '2024-12-19 20:05:32.604009+00', 200, 8, '2024-12-19 20:05:56.206144+00', 'completed', 'dc91436a-cdf2-4bd2-8208-8b3443972808'),
	(41, '2024-12-19 20:06:40.198769+00', 200, 8, '2024-12-19 20:06:45.129404+00', 'completed', 'dc91436a-cdf2-4bd2-8208-8b3443972808'),
	(42, '2024-12-19 20:08:30.129926+00', 2, 9, '2024-12-19 20:08:30.343312+00', 'completed', 'dc91436a-cdf2-4bd2-8208-8b3443972808'),
	(43, '2024-12-19 20:08:44.589335+00', 92, 10, '2024-12-19 20:08:44.732382+00', 'completed', 'dc91436a-cdf2-4bd2-8208-8b3443972808');


--
-- Data for Name: transaction_units; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."transaction_units" ("id", "created_at", "local_card", "customer_card", "value", "type", "status", "completed_at", "transaction") VALUES
	(44, '2024-12-19 20:03:55.668976+00', 201, 5, 2, 'add_stamps', 'completed', '2024-12-19 20:03:55.766628+00', 38),
	(45, '2024-12-19 20:04:55.807205+00', NULL, NULL, 2709, 'add_points', 'completed', '2024-12-19 20:04:55.879845+00', 39),
	(46, '2024-12-19 20:05:32.681412+00', 200, NULL, 2500, 'get_reward', 'canceled', NULL, 40),
	(47, '2024-12-19 20:06:40.269639+00', 200, NULL, 2500, 'get_reward', 'completed', '2024-12-19 20:06:45.129404+00', 41),
	(48, '2024-12-19 20:08:30.211254+00', NULL, NULL, 107, 'add_points', 'completed', '2024-12-19 20:08:30.343312+00', 42),
	(49, '2024-12-19 20:08:44.656188+00', NULL, NULL, 322, 'add_points', 'completed', '2024-12-19 20:08:44.732382+00', 43);


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
	('dd2a0060-3333-4735-9999-5a7e36a8f3b3', 'locals', 'images/bali-pub-logo.png', NULL, '2024-09-25 04:48:49.70405+00', '2024-09-25 04:48:49.70405+00', '2024-09-25 04:48:49.70405+00', '{"eTag": "\"4221d67ee8693be4a471127440d3137b-1\"", "size": 697828, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2024-09-25T04:48:50.000Z", "contentLength": 697828, "httpStatusCode": 200}', '4ff80f81-3b77-4805-a6dc-3c20515f5dbe', NULL, NULL),
	('62219d06-787b-4a1b-a42d-b22bf589c23c', 'locals', 'images/black-logo.png', NULL, '2024-12-15 19:11:48.55212+00', '2024-12-15 19:11:48.55212+00', '2024-12-15 19:11:48.55212+00', '{"eTag": "\"293c64e4fcfbd890143bbd8a836919a6-1\"", "size": 10096, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2024-12-15T19:11:49.000Z", "contentLength": 10096, "httpStatusCode": 200}', '79691365-b7d7-41d8-a0d4-d6bb99b224b4', NULL, NULL);


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
	(1, 2330903, 'transaction_completed_notification', '2024-12-15 14:01:50.147183+00', 1),
	(2, 2330903, 'transaction_completed_notification', '2024-12-15 14:01:50.147183+00', 2),
	(3, 2330897, 'reward_confirmation_request_notification', '2024-12-15 14:01:50.147183+00', 3),
	(4, 2330903, 'transaction_completed_notification', '2024-12-15 14:07:31.097308+00', 4),
	(5, 2330903, 'transaction_completed_notification', '2024-12-15 14:07:31.097308+00', 5),
	(6, 2330897, 'reward_confirmation_request_notification', '2024-12-15 14:07:31.097308+00', 6),
	(7, 2330903, 'transaction_completed_notification', '2024-12-15 14:18:14.306741+00', 7),
	(8, 2330903, 'transaction_completed_notification', '2024-12-15 14:18:14.306741+00', 8),
	(9, 2330897, 'reward_confirmation_request_notification', '2024-12-15 14:18:14.306741+00', 9),
	(10, 2330903, 'transaction_completed_notification', '2024-12-15 14:25:09.193898+00', 10),
	(11, 2330903, 'transaction_completed_notification', '2024-12-15 14:25:09.193898+00', 11),
	(12, 2330897, 'reward_confirmation_request_notification', '2024-12-15 14:25:09.193898+00', 12),
	(13, 2330903, 'transaction_completed_notification', '2024-12-15 14:26:24.744027+00', 13),
	(14, 2330903, 'transaction_completed_notification', '2024-12-15 14:26:24.744027+00', 14),
	(15, 2330897, 'reward_confirmation_request_notification', '2024-12-15 14:26:24.744027+00', 15),
	(16, 2330903, 'transaction_completed_notification', '2024-12-15 14:30:32.904814+00', 16),
	(17, 2330903, 'transaction_completed_notification', '2024-12-15 14:30:32.904814+00', 17),
	(18, 2330897, 'reward_confirmation_request_notification', '2024-12-15 14:30:32.904814+00', 18),
	(19, 2330903, 'transaction_completed_notification', '2024-12-15 14:32:22.499092+00', 19),
	(20, 2330897, 'reward_confirmation_request_notification', '2024-12-15 14:32:22.499092+00', 20),
	(21, 2330903, 'transaction_completed_notification', '2024-12-15 14:47:03.624964+00', 21),
	(22, 2330897, 'reward_confirmation_request_notification', '2024-12-15 14:47:03.624964+00', 22),
	(23, 2330903, 'transaction_completed_notification', '2024-12-15 14:48:22.040521+00', 23),
	(24, 2330903, 'transaction_completed_notification', '2024-12-15 14:48:22.040521+00', 24),
	(25, 2330897, 'reward_confirmation_request_notification', '2024-12-15 14:48:22.040521+00', 25),
	(26, 2330903, 'transaction_completed_notification', '2024-12-15 14:48:26.748122+00', 26),
	(27, 2330903, 'transaction_completed_notification', '2024-12-15 14:48:26.748122+00', 27),
	(28, 2330897, 'reward_confirmation_request_notification', '2024-12-15 14:48:26.748122+00', 28),
	(29, 2330903, 'transaction_completed_notification', '2024-12-15 14:48:29.659411+00', 29),
	(30, 2330903, 'transaction_completed_notification', '2024-12-15 14:48:29.659411+00', 30),
	(31, 2330897, 'reward_confirmation_request_notification', '2024-12-15 14:48:29.659411+00', 31),
	(32, 2330903, 'transaction_completed_notification', '2024-12-15 14:48:33.012599+00', 32),
	(33, 2330903, 'transaction_completed_notification', '2024-12-15 14:48:33.012599+00', 33),
	(34, 2330897, 'reward_confirmation_request_notification', '2024-12-15 14:48:33.012599+00', 34),
	(35, 2330903, 'transaction_completed_notification', '2024-12-15 14:48:37.282606+00', 35),
	(36, 2330903, 'transaction_completed_notification', '2024-12-15 14:48:37.282606+00', 36),
	(37, 2330897, 'reward_confirmation_request_notification', '2024-12-15 14:48:37.282606+00', 37),
	(38, 2330903, 'transaction_completed_notification', '2024-12-15 14:48:41.436896+00', 38),
	(39, 2330897, 'reward_confirmation_request_notification', '2024-12-15 14:48:41.436896+00', 39),
	(40, 2330897, 'reward_confirmation_request_notification', '2024-12-15 14:48:41.436896+00', 40),
	(41, 2330903, 'transaction_completed_notification', '2024-12-15 14:48:46.094621+00', 41),
	(42, 2330897, 'reward_confirmation_request_notification', '2024-12-15 14:48:46.094621+00', 42),
	(43, 2330897, 'reward_confirmation_request_notification', '2024-12-15 14:48:46.094621+00', 43),
	(44, 2330903, 'transaction_completed_notification', '2024-12-15 14:53:09.823243+00', 44),
	(45, 2330897, 'reward_confirmation_request_notification', '2024-12-15 14:53:09.823243+00', 45),
	(46, 2330903, 'transaction_completed_notification', '2024-12-15 14:53:21.510176+00', 46),
	(47, 2330897, 'reward_confirmation_request_notification', '2024-12-15 14:53:21.510176+00', 47),
	(48, 2330903, 'transaction_completed_notification', '2024-12-15 14:58:49.820242+00', 48),
	(49, 2330897, 'reward_confirmation_request_notification', '2024-12-15 14:58:49.820242+00', 49),
	(50, 2330903, 'transaction_completed_notification', '2024-12-15 14:59:36.161792+00', 50),
	(51, 2330897, 'reward_confirmation_request_notification', '2024-12-15 14:59:36.161792+00', 51),
	(52, 2330903, 'transaction_completed_notification', '2024-12-15 15:00:12.976582+00', 52),
	(53, 2330897, 'reward_confirmation_request_notification', '2024-12-15 15:00:12.976582+00', 53),
	(54, 2330903, 'transaction_completed_notification', '2024-12-15 15:01:04.903007+00', 54),
	(55, 2330897, 'reward_confirmation_request_notification', '2024-12-15 15:01:04.903007+00', 55),
	(56, 2330903, 'transaction_completed_notification', '2024-12-15 15:01:28.108479+00', 56),
	(57, 2330897, 'reward_confirmation_request_notification', '2024-12-15 15:01:28.108479+00', 57),
	(58, 2330903, 'transaction_completed_notification', '2024-12-15 15:01:38.37584+00', 58),
	(59, 2330897, 'reward_confirmation_request_notification', '2024-12-15 15:01:38.37584+00', 59),
	(60, 2330903, 'transaction_completed_notification', '2024-12-15 15:01:54.869809+00', 60),
	(61, 2330897, 'reward_confirmation_request_notification', '2024-12-15 15:01:54.869809+00', 61),
	(62, 2330903, 'transaction_completed_notification', '2024-12-15 15:02:38.864179+00', 62),
	(63, 2330897, 'reward_confirmation_request_notification', '2024-12-15 15:02:38.864179+00', 63),
	(64, 2330903, 'transaction_completed_notification', '2024-12-15 15:02:40.803335+00', 64),
	(65, 2330897, 'reward_confirmation_request_notification', '2024-12-15 15:02:40.803335+00', 65),
	(66, 2330903, 'transaction_completed_notification', '2024-12-15 15:02:42.827584+00', 66),
	(67, 2330897, 'reward_confirmation_request_notification', '2024-12-15 15:02:42.827584+00', 67),
	(68, 2330903, 'transaction_completed_notification', '2024-12-15 15:02:44.960762+00', 68),
	(69, 2330897, 'reward_confirmation_request_notification', '2024-12-15 15:02:44.960762+00', 69),
	(70, 2330903, 'transaction_completed_notification', '2024-12-15 15:02:46.659763+00', 70),
	(71, 2330897, 'reward_confirmation_request_notification', '2024-12-15 15:02:46.659763+00', 71),
	(72, 2330903, 'transaction_completed_notification', '2024-12-15 15:02:48.427152+00', 72),
	(73, 2330897, 'reward_confirmation_request_notification', '2024-12-15 15:02:48.427152+00', 73),
	(74, 2330903, 'transaction_completed_notification', '2024-12-15 15:02:50.071532+00', 74),
	(75, 2330897, 'reward_confirmation_request_notification', '2024-12-15 15:02:50.071532+00', 75),
	(76, 2330903, 'transaction_completed_notification', '2024-12-15 17:48:52.483143+00', 76),
	(77, 2330903, 'transaction_completed_notification', '2024-12-15 17:48:52.483143+00', 77),
	(78, 2330897, 'reward_confirmation_request_notification', '2024-12-15 17:48:52.483143+00', 78),
	(79, 2330903, 'transaction_completed_notification', '2024-12-15 17:49:58.121726+00', 79),
	(80, 2330903, 'transaction_completed_notification', '2024-12-15 17:49:58.121726+00', 80),
	(81, 2330897, 'reward_confirmation_request_notification', '2024-12-15 17:49:58.121726+00', 81),
	(82, 2330903, 'transaction_completed_notification', '2024-12-15 19:48:36.67681+00', 82),
	(83, 2330897, 'reward_confirmation_request_notification', '2024-12-15 19:48:36.67681+00', 83),
	(84, 2330903, 'transaction_completed_notification', '2024-12-15 19:51:15.599023+00', 84),
	(85, 2330897, 'reward_confirmation_request_notification', '2024-12-15 19:51:15.599023+00', 85),
	(86, 2330897, 'reward_confirmation_request_notification', '2024-12-15 19:51:15.599023+00', 86),
	(87, 2330903, 'transaction_completed_notification', '2024-12-16 13:28:07.851522+00', 87),
	(88, 2330897, 'reward_confirmation_request_notification', '2024-12-16 13:28:07.851522+00', 88),
	(89, 2330897, 'reward_confirmation_request_notification', '2024-12-16 13:28:07.851522+00', 89),
	(90, 2330903, 'transaction_completed_notification', '2024-12-16 13:28:24.562941+00', 90),
	(91, 2330897, 'reward_confirmation_request_notification', '2024-12-16 13:28:24.562941+00', 91),
	(92, 2330903, 'transaction_completed_notification', '2024-12-17 08:26:53.516562+00', 92),
	(93, 2330897, 'reward_confirmation_request_notification', '2024-12-17 08:26:53.516562+00', 93),
	(94, 2330897, 'reward_confirmation_request_notification', '2024-12-17 08:26:53.516562+00', 94),
	(95, 2330903, 'transaction_completed_notification', '2024-12-17 08:27:28.819692+00', 95),
	(96, 2330897, 'reward_confirmation_request_notification', '2024-12-17 08:27:28.819692+00', 96),
	(97, 2330903, 'transaction_completed_notification', '2024-12-17 21:43:39.185813+00', 97),
	(98, 2330903, 'transaction_completed_notification', '2024-12-17 21:43:39.185813+00', 98),
	(99, 2330897, 'reward_confirmation_request_notification', '2024-12-17 21:43:39.185813+00', 99),
	(100, 2330903, 'transaction_completed_notification', '2024-12-17 21:44:10.117312+00', 100),
	(101, 2330903, 'transaction_completed_notification', '2024-12-17 21:44:10.117312+00', 101),
	(102, 2330897, 'reward_confirmation_request_notification', '2024-12-17 21:44:10.117312+00', 102),
	(103, 2330903, 'transaction_completed_notification', '2024-12-18 06:54:58.993152+00', 103),
	(104, 2330897, 'reward_confirmation_request_notification', '2024-12-18 06:54:58.993152+00', 104),
	(105, 2330897, 'reward_confirmation_request_notification', '2024-12-18 06:54:58.993152+00', 105),
	(106, 2330903, 'transaction_completed_notification', '2024-12-18 06:55:40.126322+00', 106),
	(107, 2330897, 'reward_confirmation_request_notification', '2024-12-18 06:55:40.126322+00', 107),
	(108, 2330897, 'reward_confirmation_request_notification', '2024-12-18 06:55:40.126322+00', 108),
	(109, 2330903, 'transaction_completed_notification', '2024-12-18 07:01:04.105694+00', 109),
	(110, 2330897, 'reward_confirmation_request_notification', '2024-12-18 07:01:04.105694+00', 110),
	(111, 2330897, 'reward_confirmation_request_notification', '2024-12-18 07:01:04.105694+00', 111),
	(112, 2330903, 'transaction_completed_notification', '2024-12-18 07:01:16.268367+00', 112),
	(113, 2330897, 'reward_confirmation_request_notification', '2024-12-18 07:01:16.268367+00', 113),
	(114, 2330897, 'reward_confirmation_request_notification', '2024-12-18 07:01:16.268367+00', 114),
	(115, 2330903, 'transaction_completed_notification', '2024-12-18 07:01:40.538349+00', 115),
	(116, 2330897, 'reward_confirmation_request_notification', '2024-12-18 07:01:40.538349+00', 116),
	(117, 2330903, 'transaction_completed_notification', '2024-12-18 07:01:42.557756+00', 117),
	(118, 2330897, 'reward_confirmation_request_notification', '2024-12-18 07:01:42.557756+00', 118),
	(119, 2330897, 'reward_confirmation_request_notification', '2024-12-18 07:01:42.557756+00', 119),
	(120, 2330903, 'transaction_completed_notification', '2024-12-18 07:01:59.403957+00', 120),
	(121, 2330897, 'reward_confirmation_request_notification', '2024-12-18 07:01:59.403957+00', 121),
	(122, 2330903, 'transaction_completed_notification', '2024-12-18 07:02:39.016883+00', 122),
	(123, 2330897, 'reward_confirmation_request_notification', '2024-12-18 07:02:39.016883+00', 123),
	(124, 2330897, 'reward_confirmation_request_notification', '2024-12-18 07:02:39.016883+00', 124),
	(125, 2330903, 'transaction_completed_notification', '2024-12-19 18:14:02.632868+00', 125),
	(126, 2330903, 'transaction_completed_notification', '2024-12-19 18:14:02.632868+00', 126),
	(127, 2330897, 'reward_confirmation_request_notification', '2024-12-19 18:14:02.632868+00', 127),
	(128, 2330897, 'reward_confirmation_request_notification', '2024-12-19 18:14:02.632868+00', 128),
	(129, 2330903, 'transaction_completed_notification', '2024-12-19 19:57:20.817942+00', 129),
	(130, 2330903, 'transaction_completed_notification', '2024-12-19 19:57:20.817942+00', 130),
	(131, 2330897, 'reward_confirmation_request_notification', '2024-12-19 19:57:20.817942+00', 131),
	(132, 2330903, 'transaction_completed_notification', '2024-12-19 19:59:09.029314+00', 132),
	(133, 2330903, 'transaction_completed_notification', '2024-12-19 19:59:09.029314+00', 133),
	(134, 2330897, 'reward_confirmation_request_notification', '2024-12-19 19:59:09.029314+00', 134),
	(135, 2330903, 'transaction_completed_notification', '2024-12-19 20:00:28.435157+00', 135),
	(136, 2330903, 'transaction_completed_notification', '2024-12-19 20:00:28.435157+00', 136),
	(137, 2330897, 'reward_confirmation_request_notification', '2024-12-19 20:00:28.435157+00', 137),
	(138, 2330903, 'transaction_completed_notification', '2024-12-19 20:03:55.766628+00', 138),
	(139, 2330903, 'transaction_completed_notification', '2024-12-19 20:03:55.766628+00', 139),
	(140, 2330897, 'reward_confirmation_request_notification', '2024-12-19 20:03:55.766628+00', 140),
	(141, 2330903, 'transaction_completed_notification', '2024-12-19 20:04:55.879845+00', 141),
	(142, 2330903, 'transaction_completed_notification', '2024-12-19 20:04:55.879845+00', 142),
	(143, 2330897, 'reward_confirmation_request_notification', '2024-12-19 20:04:55.879845+00', 143),
	(144, 2330903, 'transaction_completed_notification', '2024-12-19 20:05:32.751686+00', 144),
	(145, 2330897, 'reward_confirmation_request_notification', '2024-12-19 20:05:32.751686+00', 145),
	(146, 2330903, 'transaction_completed_notification', '2024-12-19 20:05:56.206144+00', 146),
	(147, 2330897, 'reward_confirmation_request_notification', '2024-12-19 20:05:56.206144+00', 147),
	(148, 2330903, 'transaction_completed_notification', '2024-12-19 20:06:40.347464+00', 148),
	(149, 2330897, 'reward_confirmation_request_notification', '2024-12-19 20:06:40.347464+00', 149),
	(150, 2330903, 'transaction_completed_notification', '2024-12-19 20:06:45.129404+00', 150),
	(151, 2330897, 'reward_confirmation_request_notification', '2024-12-19 20:06:45.129404+00', 151),
	(152, 2330897, 'reward_confirmation_request_notification', '2024-12-19 20:06:45.129404+00', 152),
	(153, 2330903, 'transaction_completed_notification', '2024-12-19 20:08:30.343312+00', 153),
	(154, 2330903, 'transaction_completed_notification', '2024-12-19 20:08:30.343312+00', 154),
	(155, 2330897, 'reward_confirmation_request_notification', '2024-12-19 20:08:30.343312+00', 155),
	(156, 2330903, 'transaction_completed_notification', '2024-12-19 20:08:44.732382+00', 156),
	(157, 2330903, 'transaction_completed_notification', '2024-12-19 20:08:44.732382+00', 157),
	(158, 2330897, 'reward_confirmation_request_notification', '2024-12-19 20:08:44.732382+00', 158);


--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 198, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 33, true);


--
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."addresses_id_seq"', 4, true);


--
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."companies_id_seq"', 3, true);


--
-- Name: customer_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."customer_cards_id_seq"', 5, true);


--
-- Name: customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."customer_id_seq"', 10, true);


--
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."employees_id_seq"', 1, true);


--
-- Name: geo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."geo_id_seq"', 1, false);


--
-- Name: local_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."local_cards_id_seq"', 1, false);


--
-- Name: locals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."locals_id_seq"', 1, false);


--
-- Name: transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."transactions_id_seq"', 49, true);


--
-- Name: transactions_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."transactions_id_seq1"', 43, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 158, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
