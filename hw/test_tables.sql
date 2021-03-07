--
-- PostgreSQL database dump
--

-- Dumped from database version 11.8
-- Dumped by pg_dump version 11.8

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

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: testencounter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.testencounter (
    id text NOT NULL,
    txid bigint NOT NULL,
    cts timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    ts timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    resource_type text DEFAULT 'TestEncounter'::text,
    status public.resource_status NOT NULL,
    resource jsonb NOT NULL
);


ALTER TABLE public.testencounter OWNER TO postgres;

--
-- Name: testpatient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.testpatient (
    id text NOT NULL,
    txid bigint NOT NULL,
    cts timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    ts timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    resource_type text DEFAULT 'TestPatient'::text,
    status public.resource_status NOT NULL,
    resource jsonb NOT NULL
);


ALTER TABLE public.testpatient OWNER TO postgres;

--
-- Data for Name: testencounter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.testencounter (id, txid, cts, ts, resource_type, status, resource) FROM stdin;
60f0b41f-3ada-428b-910a-fd6dba524ce7	3171624	2021-03-04 07:11:34.936818+00	2021-03-04 07:11:34.936818+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "dfb7f0fe-2c25-461b-9a8c-72b1db3d1ba4"}}
dbc4faf0-9b1a-4f83-a737-99f29115b0a0	3171625	2021-03-04 07:11:34.946048+00	2021-03-04 07:11:34.946048+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "dfb7f0fe-2c25-461b-9a8c-72b1db3d1ba4"}}
f1aabf3a-0cce-4427-9e32-bf0a929db23c	3171626	2021-03-04 07:11:34.956731+00	2021-03-04 07:11:34.956731+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "dfb7f0fe-2c25-461b-9a8c-72b1db3d1ba4"}}
6f24dbef-9346-4792-96fd-9dc37d0cc6e3	3171628	2021-03-04 07:11:34.978363+00	2021-03-04 07:11:34.978363+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "149aff6b-0b68-43dc-ad29-51b8199a37aa"}}
1955d072-61f5-45d0-9425-4fb8e93c3cf0	3171629	2021-03-04 07:11:34.988412+00	2021-03-04 07:11:34.988412+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "149aff6b-0b68-43dc-ad29-51b8199a37aa"}}
a525c79c-26ad-4e5a-b14e-7a648cb50681	3171630	2021-03-04 07:11:34.997345+00	2021-03-04 07:11:34.997345+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "149aff6b-0b68-43dc-ad29-51b8199a37aa"}}
9076d83d-97ce-4369-b54b-a9771c5d0613	3171631	2021-03-04 07:11:35.006274+00	2021-03-04 07:11:35.006274+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "149aff6b-0b68-43dc-ad29-51b8199a37aa"}}
cbcc8571-9a9a-4142-bc23-c85b139cc5d7	3171632	2021-03-04 07:11:35.015233+00	2021-03-04 07:11:35.015233+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "149aff6b-0b68-43dc-ad29-51b8199a37aa"}}
fdefbbbf-c3e3-40dd-bb91-9b2514a78f4e	3171634	2021-03-04 07:11:35.031557+00	2021-03-04 07:11:35.031557+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "227ae569-62b1-4477-8b31-883c6710c574"}}
d0297e23-eb9c-45ba-9f8b-7aea1dd3d6b3	3171635	2021-03-04 07:11:35.045297+00	2021-03-04 07:11:35.045297+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "227ae569-62b1-4477-8b31-883c6710c574"}}
19ad85fb-78ac-4de8-a567-d91d136d3dc1	3171616	2021-03-04 07:11:34.856321+00	2021-03-04 07:11:34.856321+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "21ed3794-ff7d-4866-bb03-24f65c08f00e"}}
a7d05eba-05b4-435f-8cfb-fce77fd539c7	3171617	2021-03-04 07:11:34.876411+00	2021-03-04 07:11:34.876411+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "21ed3794-ff7d-4866-bb03-24f65c08f00e"}}
10b7dc16-93cd-48e4-a20e-5bc20118a84b	3171618	2021-03-04 07:11:34.885868+00	2021-03-04 07:11:34.885868+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "21ed3794-ff7d-4866-bb03-24f65c08f00e"}}
2a2e6c94-2687-49dc-ba0e-8a31db5b0013	3171619	2021-03-04 07:11:34.892317+00	2021-03-04 07:11:34.892317+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "21ed3794-ff7d-4866-bb03-24f65c08f00e"}}
88edeb29-7e16-440e-88a3-2f9262721a29	3171620	2021-03-04 07:11:34.899059+00	2021-03-04 07:11:34.899059+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "21ed3794-ff7d-4866-bb03-24f65c08f00e"}}
57e8ac95-7908-4361-b5cd-b549076f7c28	3171622	2021-03-04 07:11:34.921637+00	2021-03-04 07:11:34.921637+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "dfb7f0fe-2c25-461b-9a8c-72b1db3d1ba4"}}
35c44959-2644-4300-a45b-26654122ad3c	3171623	2021-03-04 07:11:34.928275+00	2021-03-04 07:11:34.928275+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "dfb7f0fe-2c25-461b-9a8c-72b1db3d1ba4"}}
d3e96bb5-f026-405a-8eaa-8c05a1dc5e08	3171636	2021-03-04 07:11:35.053322+00	2021-03-04 07:11:35.053322+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "227ae569-62b1-4477-8b31-883c6710c574"}}
ada146f8-a60a-49a8-9ee9-5ffd95edfcdb	3171637	2021-03-04 07:11:35.062614+00	2021-03-04 07:11:35.062614+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "227ae569-62b1-4477-8b31-883c6710c574"}}
56b2f792-2420-4302-9e0b-8def588ed4b9	3171638	2021-03-04 07:11:35.079078+00	2021-03-04 07:11:35.079078+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "227ae569-62b1-4477-8b31-883c6710c574"}}
77857294-5868-493b-8e52-3035635cdfbd	3171640	2021-03-04 07:11:35.099052+00	2021-03-04 07:11:35.099052+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "77841bf0-8c15-4dc5-8e93-516344ca3de4"}}
1bc7d159-d783-4804-9176-5015df0dd097	3171641	2021-03-04 07:11:35.107159+00	2021-03-04 07:11:35.107159+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "77841bf0-8c15-4dc5-8e93-516344ca3de4"}}
3e78d2e6-7f6b-4d20-8be8-f55b03545383	3171642	2021-03-04 07:11:35.117321+00	2021-03-04 07:11:35.117321+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "77841bf0-8c15-4dc5-8e93-516344ca3de4"}}
9eb2e041-4384-4b13-8a4f-1b4d650d9810	3171643	2021-03-04 07:11:35.127628+00	2021-03-04 07:11:35.127628+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "77841bf0-8c15-4dc5-8e93-516344ca3de4"}}
50ca0869-6286-49fc-9def-f86c3e6827c8	3171644	2021-03-04 07:11:35.179477+00	2021-03-04 07:11:35.179477+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "77841bf0-8c15-4dc5-8e93-516344ca3de4"}}
e55bfb2a-d8a6-449e-9724-86b052971bfc	3171646	2021-03-04 07:11:35.214369+00	2021-03-04 07:11:35.214369+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "6656eeab-717c-4bdf-83bb-3f6eab2b03f3"}}
d68fc67e-e119-48b2-8747-84873444066a	3171647	2021-03-04 07:11:35.226808+00	2021-03-04 07:11:35.226808+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "6656eeab-717c-4bdf-83bb-3f6eab2b03f3"}}
54f45f64-c7b8-42f2-855c-8c9eabc1ac62	3171648	2021-03-04 07:11:35.242749+00	2021-03-04 07:11:35.242749+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "6656eeab-717c-4bdf-83bb-3f6eab2b03f3"}}
8f82d504-6173-45c5-b631-e7c8a188cab9	3171649	2021-03-04 07:11:35.255282+00	2021-03-04 07:11:35.255282+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "6656eeab-717c-4bdf-83bb-3f6eab2b03f3"}}
5f3137ca-297a-4a32-879d-81c6d2c61279	3171650	2021-03-04 07:11:35.263984+00	2021-03-04 07:11:35.263984+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "6656eeab-717c-4bdf-83bb-3f6eab2b03f3"}}
fce58150-ad8c-4408-8ab5-e0d447bf85b2	3171652	2021-03-04 07:11:35.28879+00	2021-03-04 07:11:35.28879+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "b4bd9d4c-2e61-4bc6-9201-04056796ceda"}}
2fb9ddf9-5b0d-4a24-be29-bc1184f4ad68	3171653	2021-03-04 07:11:35.298751+00	2021-03-04 07:11:35.298751+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "b4bd9d4c-2e61-4bc6-9201-04056796ceda"}}
a55bac84-3229-494f-8ee5-6e62d72891cc	3171654	2021-03-04 07:11:35.306322+00	2021-03-04 07:11:35.306322+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "b4bd9d4c-2e61-4bc6-9201-04056796ceda"}}
fb83d180-e3b9-47f9-a081-d2c11a4a91c3	3171655	2021-03-04 07:11:35.31684+00	2021-03-04 07:11:35.31684+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "b4bd9d4c-2e61-4bc6-9201-04056796ceda"}}
70674645-d1fe-4ed4-bd35-b414fb0e3eaf	3171656	2021-03-04 07:11:35.325819+00	2021-03-04 07:11:35.325819+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "b4bd9d4c-2e61-4bc6-9201-04056796ceda"}}
1cbd5ad0-7731-4911-ad60-7eb8d5594e9a	3171658	2021-03-04 07:11:35.358988+00	2021-03-04 07:11:35.358988+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "6a653d50-4f20-4dd5-a755-3a99a8af66a6"}}
4f480dce-e484-4c81-b1e0-61a453b3131f	3171659	2021-03-04 07:11:35.372238+00	2021-03-04 07:11:35.372238+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "6a653d50-4f20-4dd5-a755-3a99a8af66a6"}}
4b800249-8dd5-4a3f-b124-21b0648e7528	3171660	2021-03-04 07:11:35.389317+00	2021-03-04 07:11:35.389317+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "6a653d50-4f20-4dd5-a755-3a99a8af66a6"}}
2ff392bd-6da6-446f-92cb-b32904d895f2	3171661	2021-03-04 07:11:35.405801+00	2021-03-04 07:11:35.405801+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "6a653d50-4f20-4dd5-a755-3a99a8af66a6"}}
b4b56c1e-e4a3-4e5e-b224-57fc2eb581aa	3171662	2021-03-04 07:11:35.418464+00	2021-03-04 07:11:35.418464+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "6a653d50-4f20-4dd5-a755-3a99a8af66a6"}}
0fa8dccb-f16d-47a9-955a-31db50c14223	3171664	2021-03-04 07:11:35.4405+00	2021-03-04 07:11:35.4405+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "d533991e-0701-434d-8dfc-50faad9c6990"}}
237d2422-7f1b-479a-b417-5dc7c7006f7c	3171665	2021-03-04 07:11:35.449758+00	2021-03-04 07:11:35.449758+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "d533991e-0701-434d-8dfc-50faad9c6990"}}
694814d1-19d9-4b1f-b66f-eabc1cd75cf4	3171666	2021-03-04 07:11:35.459517+00	2021-03-04 07:11:35.459517+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "d533991e-0701-434d-8dfc-50faad9c6990"}}
f524f4c4-cfd9-42d4-8081-a5d84cc2176f	3171667	2021-03-04 07:11:35.472612+00	2021-03-04 07:11:35.472612+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "d533991e-0701-434d-8dfc-50faad9c6990"}}
da8e577b-50f1-48f2-bd4f-66055b32e901	3171668	2021-03-04 07:11:35.486379+00	2021-03-04 07:11:35.486379+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "d533991e-0701-434d-8dfc-50faad9c6990"}}
caa1ab7f-b45f-4e9e-868e-6129695a81bf	3171669	2021-03-04 07:11:35.505163+00	2021-03-04 07:11:35.505163+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "253dbfcd-24c5-47dd-8d9b-b3db2ee67985"}}
a28507fe-9e84-493c-a439-be93c302d64b	3171670	2021-03-04 07:11:35.513787+00	2021-03-04 07:11:35.513787+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "253dbfcd-24c5-47dd-8d9b-b3db2ee67985"}}
dde8ee96-afe5-49f9-8f7d-dca5098f3e5d	3171671	2021-03-04 07:11:35.529244+00	2021-03-04 07:11:35.529244+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "253dbfcd-24c5-47dd-8d9b-b3db2ee67985"}}
802d4eb9-7a3a-4041-8a6f-218119c98629	3171672	2021-03-04 07:11:35.537361+00	2021-03-04 07:11:35.537361+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "253dbfcd-24c5-47dd-8d9b-b3db2ee67985"}}
8ca59341-c06f-4ee6-9844-c902cc20367a	3171673	2021-03-04 07:11:35.545879+00	2021-03-04 07:11:35.545879+00	TestEncounter	created	{"text": {"div": "<div> Text </div>", "status": "generated"}, "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"}, "subject": {"reference": "253dbfcd-24c5-47dd-8d9b-b3db2ee67985"}}
\.


--
-- Data for Name: testpatient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.testpatient (id, txid, cts, ts, resource_type, status, resource) FROM stdin;
21ed3794-ff7d-4866-bb03-24f65c08f00e	3171614	2021-03-04 07:11:34.82251+00	2021-03-04 07:11:34.82251+00	TestPatient	created	{"name": [{"use": "official", "given": ["Prima"], "family": "Marnitz"}, {"use": "usual", "given": ["Prima"]}], "gender": "male", "address": [{"use": "home", "city": "Moskow", "line": ["090, Moskow St"], "text": "191, Moskow", "type": "both", "period": {"start": "1959-06-12"}}], "telecom": [{"use": "home"}, {"use": "work", "rank": 1, "value": "(02) 6904 3785", "system": "phone"}, {"use": "home", "rank": 2, "value": "(98) 6880 6954", "system": "phone"}], "birthDate": "1958-07-29", "deseasedBoolean": false}
dfb7f0fe-2c25-461b-9a8c-72b1db3d1ba4	3171615	2021-03-04 07:11:34.836609+00	2021-03-04 07:11:34.836609+00	TestPatient	created	{"name": [{"use": "official", "given": ["Felix"], "family": "Jacobssen"}, {"use": "usual", "given": ["Felix"]}], "gender": "male", "address": [{"use": "home", "city": "Munchen", "line": ["607, Munchen St"], "text": "577, Munchen", "type": "both", "period": {"start": "1981-02-31"}}], "telecom": [{"use": "home"}, {"use": "work", "rank": 1, "value": "(34) 1853 4612", "system": "phone"}, {"use": "home", "rank": 2, "value": "(50) 0297 6056", "system": "phone"}], "birthDate": "1957-11-10", "deseasedBoolean": false}
149aff6b-0b68-43dc-ad29-51b8199a37aa	3171621	2021-03-04 07:11:34.908898+00	2021-03-04 07:11:34.908898+00	TestPatient	created	{"name": [{"use": "official", "given": ["Alex"], "family": "Schrader"}, {"use": "usual", "given": ["Alex"]}], "gender": "male", "address": [{"use": "home", "city": "Brie", "line": ["734, Brie St"], "text": "528, Brie", "type": "both", "period": {"start": "1944-11-14"}}], "telecom": [{"use": "home"}, {"use": "work", "rank": 1, "value": "(73) 4986 6684", "system": "phone"}, {"use": "home", "rank": 2, "value": "(44) 0696 3638", "system": "phone"}], "birthDate": "1979-04-16", "deseasedBoolean": false}
227ae569-62b1-4477-8b31-883c6710c574	3171627	2021-03-04 07:11:34.966256+00	2021-03-04 07:11:34.966256+00	TestPatient	created	{"name": [{"use": "official", "given": ["George"], "family": "Morion"}, {"use": "usual", "given": ["George"]}], "gender": "other", "address": [{"use": "home", "city": "Tokyo", "line": ["846, Tokyo St"], "text": "860, Tokyo", "type": "both", "period": {"start": "2014-04-12"}}], "telecom": [{"use": "home"}, {"use": "work", "rank": 1, "value": "(13) 5577 1613", "system": "phone"}, {"use": "home", "rank": 2, "value": "(09) 3922 1475", "system": "phone"}], "birthDate": "1954-05-30", "deseasedBoolean": false}
77841bf0-8c15-4dc5-8e93-516344ca3de4	3171633	2021-03-04 07:11:35.021951+00	2021-03-04 07:11:35.021951+00	TestPatient	created	{"name": [{"use": "official", "given": ["Eddie"], "family": "Marnitz"}, {"use": "usual", "given": ["Eddie"]}], "gender": "male", "address": [{"use": "home", "city": "Tokyo", "line": ["485, Tokyo St"], "text": "535, Tokyo", "type": "both", "period": {"start": "1993-10-21"}}], "telecom": [{"use": "home"}, {"use": "work", "rank": 1, "value": "(32) 0675 1532", "system": "phone"}, {"use": "home", "rank": 2, "value": "(86) 5640 3639", "system": "phone"}], "birthDate": "1976-06-23", "deseasedBoolean": false}
6656eeab-717c-4bdf-83bb-3f6eab2b03f3	3171639	2021-03-04 07:11:35.091879+00	2021-03-04 07:11:35.091879+00	TestPatient	created	{"name": [{"use": "official", "given": ["Anna"], "family": "Mantis"}, {"use": "usual", "given": ["Anna"]}], "gender": "other", "address": [{"use": "home", "city": "Tokyo", "line": ["435, Tokyo St"], "text": "986, Tokyo", "type": "both", "period": {"start": "1945-03-09"}}], "telecom": [{"use": "home"}, {"use": "work", "rank": 1, "value": "(55) 7409 4579", "system": "phone"}, {"use": "home", "rank": 2, "value": "(64) 6031 7818", "system": "phone"}], "birthDate": "1971-09-01", "deseasedBoolean": false}
b4bd9d4c-2e61-4bc6-9201-04056796ceda	3171645	2021-03-04 07:11:35.20382+00	2021-03-04 07:11:35.20382+00	TestPatient	created	{"name": [{"use": "official", "given": ["Holly"], "family": "Lacroix"}, {"use": "usual", "given": ["Holly"]}], "gender": "female", "address": [{"use": "home", "city": "Tokyo", "line": ["912, Tokyo St"], "text": "500, Tokyo", "type": "both", "period": {"start": "1969-11-09"}}], "telecom": [{"use": "home"}, {"use": "work", "rank": 1, "value": "(60) 8351 4630", "system": "phone"}, {"use": "home", "rank": 2, "value": "(35) 3485 4937", "system": "phone"}], "birthDate": "1982-12-28", "deseasedBoolean": false}
6a653d50-4f20-4dd5-a755-3a99a8af66a6	3171651	2021-03-04 07:11:35.274206+00	2021-03-04 07:11:35.274206+00	TestPatient	created	{"name": [{"use": "official", "given": ["Denis"], "family": "Schrader"}, {"use": "usual", "given": ["Denis"]}], "gender": "male", "address": [{"use": "home", "city": "Texas", "line": ["064, Texas St"], "text": "101, Texas", "type": "both", "period": {"start": "1953-04-14"}}], "telecom": [{"use": "home"}, {"use": "work", "rank": 1, "value": "(66) 1017 9847", "system": "phone"}, {"use": "home", "rank": 2, "value": "(66) 6263 5471", "system": "phone"}], "birthDate": "1980-10-11", "deseasedBoolean": false}
d533991e-0701-434d-8dfc-50faad9c6990	3171657	2021-03-04 07:11:35.343111+00	2021-03-04 07:11:35.343111+00	TestPatient	created	{"name": [{"use": "official", "given": ["Emma"], "family": "Williamson"}, {"use": "usual", "given": ["Emma"]}], "gender": "male", "address": [{"use": "home", "city": "Brie", "line": ["410, Brie St"], "text": "889, Brie", "type": "both", "period": {"start": "1996-07-11"}}], "telecom": [{"use": "home"}, {"use": "work", "rank": 1, "value": "(30) 0129 1466", "system": "phone"}, {"use": "home", "rank": 2, "value": "(03) 2043 5878", "system": "phone"}], "birthDate": "2008-05-28", "deseasedBoolean": false}
253dbfcd-24c5-47dd-8d9b-b3db2ee67985	3171663	2021-03-04 07:11:35.428849+00	2021-03-04 07:11:35.428849+00	TestPatient	created	{"name": [{"use": "official", "given": ["Rob"], "family": "Morion"}, {"use": "usual", "given": ["Rob"]}], "gender": "female", "address": [{"use": "home", "city": "Texas", "line": ["495, Texas St"], "text": "313, Texas", "type": "both", "period": {"start": "2004-04-25"}}], "telecom": [{"use": "home"}, {"use": "work", "rank": 1, "value": "(13) 3407 1686", "system": "phone"}, {"use": "home", "rank": 2, "value": "(02) 7084 9331", "system": "phone"}], "birthDate": "1962-12-06", "deseasedBoolean": false}
\.


--
-- Name: testencounter testencounter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.testencounter
    ADD CONSTRAINT testencounter_pkey PRIMARY KEY (id);


--
-- Name: testpatient testpatient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.testpatient
    ADD CONSTRAINT testpatient_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

