PGDMP  #                    }            postgres    15.8    17.2 �   G           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            H           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            I           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            J           1262    5    postgres    DATABASE     t   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE postgres;
                     postgres    false            K           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                        postgres    false    3914            L           0    0    DATABASE postgres    ACL     2   GRANT ALL ON DATABASE postgres TO dashboard_user;
                        postgres    false    3914            M           0    0    postgres    DATABASE PROPERTIES     >   ALTER DATABASE postgres SET "app.settings.jwt_exp" TO '3600';
                          postgres    false                        2615    16488    auth    SCHEMA        CREATE SCHEMA auth;
    DROP SCHEMA auth;
                     supabase_admin    false            N           0    0    SCHEMA auth    ACL        GRANT USAGE ON SCHEMA auth TO anon;
GRANT USAGE ON SCHEMA auth TO authenticated;
GRANT USAGE ON SCHEMA auth TO service_role;
GRANT ALL ON SCHEMA auth TO supabase_auth_admin;
GRANT ALL ON SCHEMA auth TO dashboard_user;
GRANT ALL ON SCHEMA auth TO postgres;
                        supabase_admin    false    15                        2615    16388 
   extensions    SCHEMA        CREATE SCHEMA extensions;
    DROP SCHEMA extensions;
                     postgres    false            O           0    0    SCHEMA extensions    ACL     �   GRANT USAGE ON SCHEMA extensions TO anon;
GRANT USAGE ON SCHEMA extensions TO authenticated;
GRANT USAGE ON SCHEMA extensions TO service_role;
GRANT ALL ON SCHEMA extensions TO dashboard_user;
                        postgres    false    13                        2615    16618    graphql    SCHEMA        CREATE SCHEMA graphql;
    DROP SCHEMA graphql;
                     supabase_admin    false                        2615    16607    graphql_public    SCHEMA        CREATE SCHEMA graphql_public;
    DROP SCHEMA graphql_public;
                     supabase_admin    false                        2615    16386 	   pgbouncer    SCHEMA        CREATE SCHEMA pgbouncer;
    DROP SCHEMA pgbouncer;
                  	   pgbouncer    false            P           0    0    SCHEMA public    ACL     �   GRANT USAGE ON SCHEMA public TO postgres;
GRANT USAGE ON SCHEMA public TO anon;
GRANT USAGE ON SCHEMA public TO authenticated;
GRANT USAGE ON SCHEMA public TO service_role;
                        pg_database_owner    false    12                        2615    16599    realtime    SCHEMA        CREATE SCHEMA realtime;
    DROP SCHEMA realtime;
                     supabase_admin    false            Q           0    0    SCHEMA realtime    ACL     �   GRANT USAGE ON SCHEMA realtime TO postgres;
GRANT USAGE ON SCHEMA realtime TO anon;
GRANT USAGE ON SCHEMA realtime TO authenticated;
GRANT USAGE ON SCHEMA realtime TO service_role;
GRANT ALL ON SCHEMA realtime TO supabase_realtime_admin;
                        supabase_admin    false    19                        2615    16536    storage    SCHEMA        CREATE SCHEMA storage;
    DROP SCHEMA storage;
                     supabase_admin    false            R           0    0    SCHEMA storage    ACL       GRANT ALL ON SCHEMA storage TO postgres;
GRANT USAGE ON SCHEMA storage TO anon;
GRANT USAGE ON SCHEMA storage TO authenticated;
GRANT USAGE ON SCHEMA storage TO service_role;
GRANT ALL ON SCHEMA storage TO supabase_storage_admin;
GRANT ALL ON SCHEMA storage TO dashboard_user;
                        supabase_admin    false    14                        2615    16645    vault    SCHEMA        CREATE SCHEMA vault;
    DROP SCHEMA vault;
                     supabase_admin    false            S           0    0    SCHEMA vault    ACL     ;   GRANT USAGE ON SCHEMA vault TO postgres WITH GRANT OPTION;
                        supabase_admin    false    16                        3079    16673 
   pg_graphql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS pg_graphql WITH SCHEMA graphql;
    DROP EXTENSION pg_graphql;
                        false    18            T           0    0    EXTENSION pg_graphql    COMMENT     B   COMMENT ON EXTENSION pg_graphql IS 'pg_graphql: GraphQL support';
                             false    7                        3079    16389    pg_stat_statements 	   EXTENSION     J   CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA extensions;
 #   DROP EXTENSION pg_stat_statements;
                        false    13            U           0    0    EXTENSION pg_stat_statements    COMMENT     u   COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';
                             false    2                        3079    16434    pgcrypto 	   EXTENSION     @   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA extensions;
    DROP EXTENSION pgcrypto;
                        false    13            V           0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                             false    4                        3079    16471    pgjwt 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS pgjwt WITH SCHEMA extensions;
    DROP EXTENSION pgjwt;
                        false    13    4            W           0    0    EXTENSION pgjwt    COMMENT     C   COMMENT ON EXTENSION pgjwt IS 'JSON Web Token API for Postgresql';
                             false    5                        3079    16646    supabase_vault 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS supabase_vault WITH SCHEMA vault;
    DROP EXTENSION supabase_vault;
                        false    16            X           0    0    EXTENSION supabase_vault    COMMENT     C   COMMENT ON EXTENSION supabase_vault IS 'Supabase Vault Extension';
                             false    6                        3079    16423 	   uuid-ossp 	   EXTENSION     C   CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA extensions;
    DROP EXTENSION "uuid-ossp";
                        false    13            Y           0    0    EXTENSION "uuid-ossp"    COMMENT     W   COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';
                             false    3                       1247    16762 	   aal_level    TYPE     K   CREATE TYPE auth.aal_level AS ENUM (
    'aal1',
    'aal2',
    'aal3'
);
    DROP TYPE auth.aal_level;
       auth               supabase_auth_admin    false    15            *           1247    16903    code_challenge_method    TYPE     L   CREATE TYPE auth.code_challenge_method AS ENUM (
    's256',
    'plain'
);
 &   DROP TYPE auth.code_challenge_method;
       auth               supabase_auth_admin    false    15                       1247    16756    factor_status    TYPE     M   CREATE TYPE auth.factor_status AS ENUM (
    'unverified',
    'verified'
);
    DROP TYPE auth.factor_status;
       auth               supabase_auth_admin    false    15                       1247    16750    factor_type    TYPE     R   CREATE TYPE auth.factor_type AS ENUM (
    'totp',
    'webauthn',
    'phone'
);
    DROP TYPE auth.factor_type;
       auth               supabase_auth_admin    false    15            0           1247    16945    one_time_token_type    TYPE     �   CREATE TYPE auth.one_time_token_type AS ENUM (
    'confirmation_token',
    'reauthentication_token',
    'recovery_token',
    'email_change_token_new',
    'email_change_token_current',
    'phone_change_token'
);
 $   DROP TYPE auth.one_time_token_type;
       auth               supabase_auth_admin    false    15            B           1247    17028    action    TYPE     o   CREATE TYPE realtime.action AS ENUM (
    'INSERT',
    'UPDATE',
    'DELETE',
    'TRUNCATE',
    'ERROR'
);
    DROP TYPE realtime.action;
       realtime               supabase_admin    false    19            9           1247    16988    equality_op    TYPE     v   CREATE TYPE realtime.equality_op AS ENUM (
    'eq',
    'neq',
    'lt',
    'lte',
    'gt',
    'gte',
    'in'
);
     DROP TYPE realtime.equality_op;
       realtime               supabase_admin    false    19            <           1247    17003    user_defined_filter    TYPE     j   CREATE TYPE realtime.user_defined_filter AS (
	column_name text,
	op realtime.equality_op,
	value text
);
 (   DROP TYPE realtime.user_defined_filter;
       realtime               supabase_admin    false    19    1081            N           1247    17154 
   wal_column    TYPE     �   CREATE TYPE realtime.wal_column AS (
	name text,
	type_name text,
	type_oid oid,
	value jsonb,
	is_pkey boolean,
	is_selectable boolean
);
    DROP TYPE realtime.wal_column;
       realtime               supabase_admin    false    19            E           1247    17041    wal_rls    TYPE     s   CREATE TYPE realtime.wal_rls AS (
	wal jsonb,
	is_rls_enabled boolean,
	subscription_ids uuid[],
	errors text[]
);
    DROP TYPE realtime.wal_rls;
       realtime               supabase_admin    false    19            !           1255    16534    email()    FUNCTION       CREATE FUNCTION auth.email() RETURNS text
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.email', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'email')
  )::text
$$;
    DROP FUNCTION auth.email();
       auth               supabase_auth_admin    false    15            Z           0    0    FUNCTION email()    COMMENT     X   COMMENT ON FUNCTION auth.email() IS 'Deprecated. Use auth.jwt() -> ''email'' instead.';
          auth               supabase_auth_admin    false    289            [           0    0    FUNCTION email()    ACL     6   GRANT ALL ON FUNCTION auth.email() TO dashboard_user;
          auth               supabase_auth_admin    false    289            j           1255    16732    jwt()    FUNCTION     �   CREATE FUNCTION auth.jwt() RETURNS jsonb
    LANGUAGE sql STABLE
    AS $$
  select 
    coalesce(
        nullif(current_setting('request.jwt.claim', true), ''),
        nullif(current_setting('request.jwt.claims', true), '')
    )::jsonb
$$;
    DROP FUNCTION auth.jwt();
       auth               supabase_auth_admin    false    15            \           0    0    FUNCTION jwt()    ACL     b   GRANT ALL ON FUNCTION auth.jwt() TO postgres;
GRANT ALL ON FUNCTION auth.jwt() TO dashboard_user;
          auth               supabase_auth_admin    false    362                        1255    16533    role()    FUNCTION        CREATE FUNCTION auth.role() RETURNS text
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.role', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'role')
  )::text
$$;
    DROP FUNCTION auth.role();
       auth               supabase_auth_admin    false    15            ]           0    0    FUNCTION role()    COMMENT     V   COMMENT ON FUNCTION auth.role() IS 'Deprecated. Use auth.jwt() -> ''role'' instead.';
          auth               supabase_auth_admin    false    288            ^           0    0    FUNCTION role()    ACL     5   GRANT ALL ON FUNCTION auth.role() TO dashboard_user;
          auth               supabase_auth_admin    false    288                       1255    16532    uid()    FUNCTION     �   CREATE FUNCTION auth.uid() RETURNS uuid
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.sub', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'sub')
  )::uuid
$$;
    DROP FUNCTION auth.uid();
       auth               supabase_auth_admin    false    15            _           0    0    FUNCTION uid()    COMMENT     T   COMMENT ON FUNCTION auth.uid() IS 'Deprecated. Use auth.jwt() -> ''sub'' instead.';
          auth               supabase_auth_admin    false    287            `           0    0    FUNCTION uid()    ACL     4   GRANT ALL ON FUNCTION auth.uid() TO dashboard_user;
          auth               supabase_auth_admin    false    287            a           0    0 D   FUNCTION algorithm_sign(signables text, secret text, algorithm text)    ACL     Y  REVOKE ALL ON FUNCTION extensions.algorithm_sign(signables text, secret text, algorithm text) FROM postgres;
GRANT ALL ON FUNCTION extensions.algorithm_sign(signables text, secret text, algorithm text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.algorithm_sign(signables text, secret text, algorithm text) TO dashboard_user;
       
   extensions               postgres    false    327            b           0    0    FUNCTION armor(bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.armor(bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.armor(bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.armor(bytea) TO dashboard_user;
       
   extensions               postgres    false    322            c           0    0 %   FUNCTION armor(bytea, text[], text[])    ACL     �   REVOKE ALL ON FUNCTION extensions.armor(bytea, text[], text[]) FROM postgres;
GRANT ALL ON FUNCTION extensions.armor(bytea, text[], text[]) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.armor(bytea, text[], text[]) TO dashboard_user;
       
   extensions               postgres    false    323            d           0    0    FUNCTION crypt(text, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.crypt(text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.crypt(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.crypt(text, text) TO dashboard_user;
       
   extensions               postgres    false    337            e           0    0    FUNCTION dearmor(text)    ACL     �   REVOKE ALL ON FUNCTION extensions.dearmor(text) FROM postgres;
GRANT ALL ON FUNCTION extensions.dearmor(text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.dearmor(text) TO dashboard_user;
       
   extensions               postgres    false    324            f           0    0 $   FUNCTION decrypt(bytea, bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    341            g           0    0 .   FUNCTION decrypt_iv(bytea, bytea, bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    343            h           0    0    FUNCTION digest(bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.digest(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.digest(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.digest(bytea, text) TO dashboard_user;
       
   extensions               postgres    false    334            i           0    0    FUNCTION digest(text, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.digest(text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.digest(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.digest(text, text) TO dashboard_user;
       
   extensions               postgres    false    333            j           0    0 $   FUNCTION encrypt(bytea, bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    340            k           0    0 .   FUNCTION encrypt_iv(bytea, bytea, bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    342            l           0    0 "   FUNCTION gen_random_bytes(integer)    ACL     �   REVOKE ALL ON FUNCTION extensions.gen_random_bytes(integer) FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_random_bytes(integer) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_random_bytes(integer) TO dashboard_user;
       
   extensions               postgres    false    311            m           0    0    FUNCTION gen_random_uuid()    ACL     �   REVOKE ALL ON FUNCTION extensions.gen_random_uuid() FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_random_uuid() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_random_uuid() TO dashboard_user;
       
   extensions               postgres    false    312            n           0    0    FUNCTION gen_salt(text)    ACL     �   REVOKE ALL ON FUNCTION extensions.gen_salt(text) FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_salt(text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_salt(text) TO dashboard_user;
       
   extensions               postgres    false    338            o           0    0     FUNCTION gen_salt(text, integer)    ACL     �   REVOKE ALL ON FUNCTION extensions.gen_salt(text, integer) FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_salt(text, integer) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_salt(text, integer) TO dashboard_user;
       
   extensions               postgres    false    339            X           1255    16591    grant_pg_cron_access()    FUNCTION     �  CREATE FUNCTION extensions.grant_pg_cron_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF EXISTS (
    SELECT
    FROM pg_event_trigger_ddl_commands() AS ev
    JOIN pg_extension AS ext
    ON ev.objid = ext.oid
    WHERE ext.extname = 'pg_cron'
  )
  THEN
    grant usage on schema cron to postgres with grant option;

    alter default privileges in schema cron grant all on tables to postgres with grant option;
    alter default privileges in schema cron grant all on functions to postgres with grant option;
    alter default privileges in schema cron grant all on sequences to postgres with grant option;

    alter default privileges for user supabase_admin in schema cron grant all
        on sequences to postgres with grant option;
    alter default privileges for user supabase_admin in schema cron grant all
        on tables to postgres with grant option;
    alter default privileges for user supabase_admin in schema cron grant all
        on functions to postgres with grant option;

    grant all privileges on all tables in schema cron to postgres with grant option;
    revoke all on table cron.job from postgres;
    grant select on table cron.job to postgres with grant option;
  END IF;
END;
$$;
 1   DROP FUNCTION extensions.grant_pg_cron_access();
    
   extensions               postgres    false    13            p           0    0    FUNCTION grant_pg_cron_access()    COMMENT     U   COMMENT ON FUNCTION extensions.grant_pg_cron_access() IS 'Grants access to pg_cron';
       
   extensions               postgres    false    344            q           0    0    FUNCTION grant_pg_cron_access()    ACL     �   REVOKE ALL ON FUNCTION extensions.grant_pg_cron_access() FROM postgres;
GRANT ALL ON FUNCTION extensions.grant_pg_cron_access() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.grant_pg_cron_access() TO dashboard_user;
       
   extensions               postgres    false    344            `           1255    16612    grant_pg_graphql_access()    FUNCTION     i	  CREATE FUNCTION extensions.grant_pg_graphql_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $_$
DECLARE
    func_is_graphql_resolve bool;
BEGIN
    func_is_graphql_resolve = (
        SELECT n.proname = 'resolve'
        FROM pg_event_trigger_ddl_commands() AS ev
        LEFT JOIN pg_catalog.pg_proc AS n
        ON ev.objid = n.oid
    );

    IF func_is_graphql_resolve
    THEN
        -- Update public wrapper to pass all arguments through to the pg_graphql resolve func
        DROP FUNCTION IF EXISTS graphql_public.graphql;
        create or replace function graphql_public.graphql(
            "operationName" text default null,
            query text default null,
            variables jsonb default null,
            extensions jsonb default null
        )
            returns jsonb
            language sql
        as $$
            select graphql.resolve(
                query := query,
                variables := coalesce(variables, '{}'),
                "operationName" := "operationName",
                extensions := extensions
            );
        $$;

        -- This hook executes when `graphql.resolve` is created. That is not necessarily the last
        -- function in the extension so we need to grant permissions on existing entities AND
        -- update default permissions to any others that are created after `graphql.resolve`
        grant usage on schema graphql to postgres, anon, authenticated, service_role;
        grant select on all tables in schema graphql to postgres, anon, authenticated, service_role;
        grant execute on all functions in schema graphql to postgres, anon, authenticated, service_role;
        grant all on all sequences in schema graphql to postgres, anon, authenticated, service_role;
        alter default privileges in schema graphql grant all on tables to postgres, anon, authenticated, service_role;
        alter default privileges in schema graphql grant all on functions to postgres, anon, authenticated, service_role;
        alter default privileges in schema graphql grant all on sequences to postgres, anon, authenticated, service_role;

        -- Allow postgres role to allow granting usage on graphql and graphql_public schemas to custom roles
        grant usage on schema graphql_public to postgres with grant option;
        grant usage on schema graphql to postgres with grant option;
    END IF;

END;
$_$;
 4   DROP FUNCTION extensions.grant_pg_graphql_access();
    
   extensions               supabase_admin    false    13            r           0    0 "   FUNCTION grant_pg_graphql_access()    COMMENT     [   COMMENT ON FUNCTION extensions.grant_pg_graphql_access() IS 'Grants access to pg_graphql';
       
   extensions               supabase_admin    false    352            s           0    0 "   FUNCTION grant_pg_graphql_access()    ACL     Z   GRANT ALL ON FUNCTION extensions.grant_pg_graphql_access() TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    352            ^           1255    16593    grant_pg_net_access()    FUNCTION     6  CREATE FUNCTION extensions.grant_pg_net_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF EXISTS (
    SELECT 1
    FROM pg_event_trigger_ddl_commands() AS ev
    JOIN pg_extension AS ext
    ON ev.objid = ext.oid
    WHERE ext.extname = 'pg_net'
  )
  THEN
    IF NOT EXISTS (
      SELECT 1
      FROM pg_roles
      WHERE rolname = 'supabase_functions_admin'
    )
    THEN
      CREATE USER supabase_functions_admin NOINHERIT CREATEROLE LOGIN NOREPLICATION;
    END IF;

    GRANT USAGE ON SCHEMA net TO supabase_functions_admin, postgres, anon, authenticated, service_role;

    IF EXISTS (
      SELECT FROM pg_extension
      WHERE extname = 'pg_net'
      -- all versions in use on existing projects as of 2025-02-20
      -- version 0.12.0 onwards don't need these applied
      AND extversion IN ('0.2', '0.6', '0.7', '0.7.1', '0.8', '0.10.0', '0.11.0')
    ) THEN
      ALTER function net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) SECURITY DEFINER;
      ALTER function net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) SECURITY DEFINER;

      ALTER function net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) SET search_path = net;
      ALTER function net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) SET search_path = net;

      REVOKE ALL ON FUNCTION net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) FROM PUBLIC;
      REVOKE ALL ON FUNCTION net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) FROM PUBLIC;

      GRANT EXECUTE ON FUNCTION net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) TO supabase_functions_admin, postgres, anon, authenticated, service_role;
      GRANT EXECUTE ON FUNCTION net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) TO supabase_functions_admin, postgres, anon, authenticated, service_role;
    END IF;
  END IF;
END;
$$;
 0   DROP FUNCTION extensions.grant_pg_net_access();
    
   extensions               postgres    false    13            t           0    0    FUNCTION grant_pg_net_access()    COMMENT     S   COMMENT ON FUNCTION extensions.grant_pg_net_access() IS 'Grants access to pg_net';
       
   extensions               postgres    false    350            u           0    0    FUNCTION grant_pg_net_access()    ACL     �   REVOKE ALL ON FUNCTION extensions.grant_pg_net_access() FROM postgres;
GRANT ALL ON FUNCTION extensions.grant_pg_net_access() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.grant_pg_net_access() TO dashboard_user;
       
   extensions               postgres    false    350            v           0    0 !   FUNCTION hmac(bytea, bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.hmac(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.hmac(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.hmac(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    336            w           0    0    FUNCTION hmac(text, text, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.hmac(text, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.hmac(text, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.hmac(text, text, text) TO dashboard_user;
       
   extensions               postgres    false    335            x           0    0 U  FUNCTION pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision)    ACL     �  REVOKE ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision) FROM postgres;
GRANT ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision) TO dashboard_user;
       
   extensions               postgres    false    345            y           0    0 ^   FUNCTION pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone)    ACL     �  REVOKE ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) FROM postgres;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) TO dashboard_user;
       
   extensions               postgres    false    310            z           0    0 G   FUNCTION pg_stat_statements_reset(userid oid, dbid oid, queryid bigint)    ACL     b  REVOKE ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint) FROM postgres;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint) TO dashboard_user;
       
   extensions               postgres    false    306            {           0    0 >   FUNCTION pgp_armor_headers(text, OUT key text, OUT value text)    ACL     G  REVOKE ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) TO dashboard_user;
       
   extensions               postgres    false    325            |           0    0    FUNCTION pgp_key_id(bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_key_id(bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_key_id(bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_key_id(bytea) TO dashboard_user;
       
   extensions               postgres    false    321            }           0    0 &   FUNCTION pgp_pub_decrypt(bytea, bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) TO dashboard_user;
       
   extensions               postgres    false    295            ~           0    0 ,   FUNCTION pgp_pub_decrypt(bytea, bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    317                       0    0 2   FUNCTION pgp_pub_decrypt(bytea, bytea, text, text)    ACL     #  REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) TO dashboard_user;
       
   extensions               postgres    false    319            �           0    0 ,   FUNCTION pgp_pub_decrypt_bytea(bytea, bytea)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) TO dashboard_user;
       
   extensions               postgres    false    316            �           0    0 2   FUNCTION pgp_pub_decrypt_bytea(bytea, bytea, text)    ACL     #  REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    318            �           0    0 8   FUNCTION pgp_pub_decrypt_bytea(bytea, bytea, text, text)    ACL     5  REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) TO dashboard_user;
       
   extensions               postgres    false    320            �           0    0 %   FUNCTION pgp_pub_encrypt(text, bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) TO dashboard_user;
       
   extensions               postgres    false    284            �           0    0 +   FUNCTION pgp_pub_encrypt(text, bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    286            �           0    0 ,   FUNCTION pgp_pub_encrypt_bytea(bytea, bytea)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) TO dashboard_user;
       
   extensions               postgres    false    285            �           0    0 2   FUNCTION pgp_pub_encrypt_bytea(bytea, bytea, text)    ACL     #  REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    315            �           0    0 %   FUNCTION pgp_sym_decrypt(bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) TO dashboard_user;
       
   extensions               postgres    false    298            �           0    0 +   FUNCTION pgp_sym_decrypt(bytea, text, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) TO dashboard_user;
       
   extensions               postgres    false    300            �           0    0 +   FUNCTION pgp_sym_decrypt_bytea(bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) TO dashboard_user;
       
   extensions               postgres    false    299            �           0    0 1   FUNCTION pgp_sym_decrypt_bytea(bytea, text, text)    ACL        REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) TO dashboard_user;
       
   extensions               postgres    false    301            �           0    0 $   FUNCTION pgp_sym_encrypt(text, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) TO dashboard_user;
       
   extensions               postgres    false    313            �           0    0 *   FUNCTION pgp_sym_encrypt(text, text, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) TO dashboard_user;
       
   extensions               postgres    false    296            �           0    0 +   FUNCTION pgp_sym_encrypt_bytea(bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) TO dashboard_user;
       
   extensions               postgres    false    314            �           0    0 1   FUNCTION pgp_sym_encrypt_bytea(bytea, text, text)    ACL        REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) TO dashboard_user;
       
   extensions               postgres    false    297            ]           1255    16603    pgrst_ddl_watch()    FUNCTION     >  CREATE FUNCTION extensions.pgrst_ddl_watch() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  cmd record;
BEGIN
  FOR cmd IN SELECT * FROM pg_event_trigger_ddl_commands()
  LOOP
    IF cmd.command_tag IN (
      'CREATE SCHEMA', 'ALTER SCHEMA'
    , 'CREATE TABLE', 'CREATE TABLE AS', 'SELECT INTO', 'ALTER TABLE'
    , 'CREATE FOREIGN TABLE', 'ALTER FOREIGN TABLE'
    , 'CREATE VIEW', 'ALTER VIEW'
    , 'CREATE MATERIALIZED VIEW', 'ALTER MATERIALIZED VIEW'
    , 'CREATE FUNCTION', 'ALTER FUNCTION'
    , 'CREATE TRIGGER'
    , 'CREATE TYPE', 'ALTER TYPE'
    , 'CREATE RULE'
    , 'COMMENT'
    )
    -- don't notify in case of CREATE TEMP table or other objects created on pg_temp
    AND cmd.schema_name is distinct from 'pg_temp'
    THEN
      NOTIFY pgrst, 'reload schema';
    END IF;
  END LOOP;
END; $$;
 ,   DROP FUNCTION extensions.pgrst_ddl_watch();
    
   extensions               supabase_admin    false    13            �           0    0    FUNCTION pgrst_ddl_watch()    ACL     R   GRANT ALL ON FUNCTION extensions.pgrst_ddl_watch() TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    349            3           1255    16604    pgrst_drop_watch()    FUNCTION       CREATE FUNCTION extensions.pgrst_drop_watch() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  obj record;
BEGIN
  FOR obj IN SELECT * FROM pg_event_trigger_dropped_objects()
  LOOP
    IF obj.object_type IN (
      'schema'
    , 'table'
    , 'foreign table'
    , 'view'
    , 'materialized view'
    , 'function'
    , 'trigger'
    , 'type'
    , 'rule'
    )
    AND obj.is_temporary IS false -- no pg_temp objects
    THEN
      NOTIFY pgrst, 'reload schema';
    END IF;
  END LOOP;
END; $$;
 -   DROP FUNCTION extensions.pgrst_drop_watch();
    
   extensions               supabase_admin    false    13            �           0    0    FUNCTION pgrst_drop_watch()    ACL     S   GRANT ALL ON FUNCTION extensions.pgrst_drop_watch() TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    307            _           1255    16614    set_graphql_placeholder()    FUNCTION     r  CREATE FUNCTION extensions.set_graphql_placeholder() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $_$
    DECLARE
    graphql_is_dropped bool;
    BEGIN
    graphql_is_dropped = (
        SELECT ev.schema_name = 'graphql_public'
        FROM pg_event_trigger_dropped_objects() AS ev
        WHERE ev.schema_name = 'graphql_public'
    );

    IF graphql_is_dropped
    THEN
        create or replace function graphql_public.graphql(
            "operationName" text default null,
            query text default null,
            variables jsonb default null,
            extensions jsonb default null
        )
            returns jsonb
            language plpgsql
        as $$
            DECLARE
                server_version float;
            BEGIN
                server_version = (SELECT (SPLIT_PART((select version()), ' ', 2))::float);

                IF server_version >= 14 THEN
                    RETURN jsonb_build_object(
                        'errors', jsonb_build_array(
                            jsonb_build_object(
                                'message', 'pg_graphql extension is not enabled.'
                            )
                        )
                    );
                ELSE
                    RETURN jsonb_build_object(
                        'errors', jsonb_build_array(
                            jsonb_build_object(
                                'message', 'pg_graphql is only available on projects running Postgres 14 onwards.'
                            )
                        )
                    );
                END IF;
            END;
        $$;
    END IF;

    END;
$_$;
 4   DROP FUNCTION extensions.set_graphql_placeholder();
    
   extensions               supabase_admin    false    13            �           0    0 "   FUNCTION set_graphql_placeholder()    COMMENT     |   COMMENT ON FUNCTION extensions.set_graphql_placeholder() IS 'Reintroduces placeholder function for graphql_public.graphql';
       
   extensions               supabase_admin    false    351            �           0    0 "   FUNCTION set_graphql_placeholder()    ACL     Z   GRANT ALL ON FUNCTION extensions.set_graphql_placeholder() TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    351            �           0    0 8   FUNCTION sign(payload json, secret text, algorithm text)    ACL     5  REVOKE ALL ON FUNCTION extensions.sign(payload json, secret text, algorithm text) FROM postgres;
GRANT ALL ON FUNCTION extensions.sign(payload json, secret text, algorithm text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.sign(payload json, secret text, algorithm text) TO dashboard_user;
       
   extensions               postgres    false    346            �           0    0 "   FUNCTION try_cast_double(inp text)    ACL     �   REVOKE ALL ON FUNCTION extensions.try_cast_double(inp text) FROM postgres;
GRANT ALL ON FUNCTION extensions.try_cast_double(inp text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.try_cast_double(inp text) TO dashboard_user;
       
   extensions               postgres    false    347            �           0    0    FUNCTION url_decode(data text)    ACL     �   REVOKE ALL ON FUNCTION extensions.url_decode(data text) FROM postgres;
GRANT ALL ON FUNCTION extensions.url_decode(data text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.url_decode(data text) TO dashboard_user;
       
   extensions               postgres    false    305            �           0    0    FUNCTION url_encode(data bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.url_encode(data bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.url_encode(data bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.url_encode(data bytea) TO dashboard_user;
       
   extensions               postgres    false    326            �           0    0    FUNCTION uuid_generate_v1()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_generate_v1() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1() TO dashboard_user;
       
   extensions               postgres    false    302            �           0    0    FUNCTION uuid_generate_v1mc()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_generate_v1mc() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1mc() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1mc() TO dashboard_user;
       
   extensions               postgres    false    303            �           0    0 4   FUNCTION uuid_generate_v3(namespace uuid, name text)    ACL     )  REVOKE ALL ON FUNCTION extensions.uuid_generate_v3(namespace uuid, name text) FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v3(namespace uuid, name text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v3(namespace uuid, name text) TO dashboard_user;
       
   extensions               postgres    false    304            �           0    0    FUNCTION uuid_generate_v4()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_generate_v4() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v4() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v4() TO dashboard_user;
       
   extensions               postgres    false    331            �           0    0 4   FUNCTION uuid_generate_v5(namespace uuid, name text)    ACL     )  REVOKE ALL ON FUNCTION extensions.uuid_generate_v5(namespace uuid, name text) FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v5(namespace uuid, name text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v5(namespace uuid, name text) TO dashboard_user;
       
   extensions               postgres    false    332            �           0    0    FUNCTION uuid_nil()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_nil() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_nil() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_nil() TO dashboard_user;
       
   extensions               postgres    false    290            �           0    0    FUNCTION uuid_ns_dns()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_ns_dns() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_dns() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_dns() TO dashboard_user;
       
   extensions               postgres    false    291            �           0    0    FUNCTION uuid_ns_oid()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_ns_oid() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_oid() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_oid() TO dashboard_user;
       
   extensions               postgres    false    293            �           0    0    FUNCTION uuid_ns_url()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_ns_url() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_url() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_url() TO dashboard_user;
       
   extensions               postgres    false    292            �           0    0    FUNCTION uuid_ns_x500()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_ns_x500() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_x500() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_x500() TO dashboard_user;
       
   extensions               postgres    false    294            �           0    0 8   FUNCTION verify(token text, secret text, algorithm text)    ACL     5  REVOKE ALL ON FUNCTION extensions.verify(token text, secret text, algorithm text) FROM postgres;
GRANT ALL ON FUNCTION extensions.verify(token text, secret text, algorithm text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.verify(token text, secret text, algorithm text) TO dashboard_user;
       
   extensions               postgres    false    348            �           0    0 U   FUNCTION graphql("operationName" text, query text, variables jsonb, extensions jsonb)    ACL       GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO postgres;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO anon;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO authenticated;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO service_role;
          graphql_public               supabase_admin    false    356                       1255    16387    get_auth(text)    FUNCTION     J  CREATE FUNCTION pgbouncer.get_auth(p_usename text) RETURNS TABLE(username text, password text)
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
    RAISE WARNING 'PgBouncer auth request: %', p_usename;

    RETURN QUERY
    SELECT usename::TEXT, passwd::TEXT FROM pg_catalog.pg_shadow
    WHERE usename = p_usename;
END;
$$;
 2   DROP FUNCTION pgbouncer.get_auth(p_usename text);
    	   pgbouncer               supabase_admin    false    11            �           0    0 !   FUNCTION get_auth(p_usename text)    ACL     �   REVOKE ALL ON FUNCTION pgbouncer.get_auth(p_usename text) FROM PUBLIC;
GRANT ALL ON FUNCTION pgbouncer.get_auth(p_usename text) TO pgbouncer;
GRANT ALL ON FUNCTION pgbouncer.get_auth(p_usename text) TO postgres;
       	   pgbouncer               supabase_admin    false    272            c           1255    17147    apply_rls(jsonb, integer)    FUNCTION     �(  CREATE FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer DEFAULT (1024 * 1024)) RETURNS SETOF realtime.wal_rls
    LANGUAGE plpgsql
    AS $$
declare
-- Regclass of the table e.g. public.notes
entity_ regclass = (quote_ident(wal ->> 'schema') || '.' || quote_ident(wal ->> 'table'))::regclass;

-- I, U, D, T: insert, update ...
action realtime.action = (
    case wal ->> 'action'
        when 'I' then 'INSERT'
        when 'U' then 'UPDATE'
        when 'D' then 'DELETE'
        else 'ERROR'
    end
);

-- Is row level security enabled for the table
is_rls_enabled bool = relrowsecurity from pg_class where oid = entity_;

subscriptions realtime.subscription[] = array_agg(subs)
    from
        realtime.subscription subs
    where
        subs.entity = entity_;

-- Subscription vars
roles regrole[] = array_agg(distinct us.claims_role::text)
    from
        unnest(subscriptions) us;

working_role regrole;
claimed_role regrole;
claims jsonb;

subscription_id uuid;
subscription_has_access bool;
visible_to_subscription_ids uuid[] = '{}';

-- structured info for wal's columns
columns realtime.wal_column[];
-- previous identity values for update/delete
old_columns realtime.wal_column[];

error_record_exceeds_max_size boolean = octet_length(wal::text) > max_record_bytes;

-- Primary jsonb output for record
output jsonb;

begin
perform set_config('role', null, true);

columns =
    array_agg(
        (
            x->>'name',
            x->>'type',
            x->>'typeoid',
            realtime.cast(
                (x->'value') #>> '{}',
                coalesce(
                    (x->>'typeoid')::regtype, -- null when wal2json version <= 2.4
                    (x->>'type')::regtype
                )
            ),
            (pks ->> 'name') is not null,
            true
        )::realtime.wal_column
    )
    from
        jsonb_array_elements(wal -> 'columns') x
        left join jsonb_array_elements(wal -> 'pk') pks
            on (x ->> 'name') = (pks ->> 'name');

old_columns =
    array_agg(
        (
            x->>'name',
            x->>'type',
            x->>'typeoid',
            realtime.cast(
                (x->'value') #>> '{}',
                coalesce(
                    (x->>'typeoid')::regtype, -- null when wal2json version <= 2.4
                    (x->>'type')::regtype
                )
            ),
            (pks ->> 'name') is not null,
            true
        )::realtime.wal_column
    )
    from
        jsonb_array_elements(wal -> 'identity') x
        left join jsonb_array_elements(wal -> 'pk') pks
            on (x ->> 'name') = (pks ->> 'name');

for working_role in select * from unnest(roles) loop

    -- Update `is_selectable` for columns and old_columns
    columns =
        array_agg(
            (
                c.name,
                c.type_name,
                c.type_oid,
                c.value,
                c.is_pkey,
                pg_catalog.has_column_privilege(working_role, entity_, c.name, 'SELECT')
            )::realtime.wal_column
        )
        from
            unnest(columns) c;

    old_columns =
            array_agg(
                (
                    c.name,
                    c.type_name,
                    c.type_oid,
                    c.value,
                    c.is_pkey,
                    pg_catalog.has_column_privilege(working_role, entity_, c.name, 'SELECT')
                )::realtime.wal_column
            )
            from
                unnest(old_columns) c;

    if action <> 'DELETE' and count(1) = 0 from unnest(columns) c where c.is_pkey then
        return next (
            jsonb_build_object(
                'schema', wal ->> 'schema',
                'table', wal ->> 'table',
                'type', action
            ),
            is_rls_enabled,
            -- subscriptions is already filtered by entity
            (select array_agg(s.subscription_id) from unnest(subscriptions) as s where claims_role = working_role),
            array['Error 400: Bad Request, no primary key']
        )::realtime.wal_rls;

    -- The claims role does not have SELECT permission to the primary key of entity
    elsif action <> 'DELETE' and sum(c.is_selectable::int) <> count(1) from unnest(columns) c where c.is_pkey then
        return next (
            jsonb_build_object(
                'schema', wal ->> 'schema',
                'table', wal ->> 'table',
                'type', action
            ),
            is_rls_enabled,
            (select array_agg(s.subscription_id) from unnest(subscriptions) as s where claims_role = working_role),
            array['Error 401: Unauthorized']
        )::realtime.wal_rls;

    else
        output = jsonb_build_object(
            'schema', wal ->> 'schema',
            'table', wal ->> 'table',
            'type', action,
            'commit_timestamp', to_char(
                ((wal ->> 'timestamp')::timestamptz at time zone 'utc'),
                'YYYY-MM-DD"T"HH24:MI:SS.MS"Z"'
            ),
            'columns', (
                select
                    jsonb_agg(
                        jsonb_build_object(
                            'name', pa.attname,
                            'type', pt.typname
                        )
                        order by pa.attnum asc
                    )
                from
                    pg_attribute pa
                    join pg_type pt
                        on pa.atttypid = pt.oid
                where
                    attrelid = entity_
                    and attnum > 0
                    and pg_catalog.has_column_privilege(working_role, entity_, pa.attname, 'SELECT')
            )
        )
        -- Add "record" key for insert and update
        || case
            when action in ('INSERT', 'UPDATE') then
                jsonb_build_object(
                    'record',
                    (
                        select
                            jsonb_object_agg(
                                -- if unchanged toast, get column name and value from old record
                                coalesce((c).name, (oc).name),
                                case
                                    when (c).name is null then (oc).value
                                    else (c).value
                                end
                            )
                        from
                            unnest(columns) c
                            full outer join unnest(old_columns) oc
                                on (c).name = (oc).name
                        where
                            coalesce((c).is_selectable, (oc).is_selectable)
                            and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                    )
                )
            else '{}'::jsonb
        end
        -- Add "old_record" key for update and delete
        || case
            when action = 'UPDATE' then
                jsonb_build_object(
                        'old_record',
                        (
                            select jsonb_object_agg((c).name, (c).value)
                            from unnest(old_columns) c
                            where
                                (c).is_selectable
                                and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                        )
                    )
            when action = 'DELETE' then
                jsonb_build_object(
                    'old_record',
                    (
                        select jsonb_object_agg((c).name, (c).value)
                        from unnest(old_columns) c
                        where
                            (c).is_selectable
                            and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                            and ( not is_rls_enabled or (c).is_pkey ) -- if RLS enabled, we can't secure deletes so filter to pkey
                    )
                )
            else '{}'::jsonb
        end;

        -- Create the prepared statement
        if is_rls_enabled and action <> 'DELETE' then
            if (select 1 from pg_prepared_statements where name = 'walrus_rls_stmt' limit 1) > 0 then
                deallocate walrus_rls_stmt;
            end if;
            execute realtime.build_prepared_statement_sql('walrus_rls_stmt', entity_, columns);
        end if;

        visible_to_subscription_ids = '{}';

        for subscription_id, claims in (
                select
                    subs.subscription_id,
                    subs.claims
                from
                    unnest(subscriptions) subs
                where
                    subs.entity = entity_
                    and subs.claims_role = working_role
                    and (
                        realtime.is_visible_through_filters(columns, subs.filters)
                        or (
                          action = 'DELETE'
                          and realtime.is_visible_through_filters(old_columns, subs.filters)
                        )
                    )
        ) loop

            if not is_rls_enabled or action = 'DELETE' then
                visible_to_subscription_ids = visible_to_subscription_ids || subscription_id;
            else
                -- Check if RLS allows the role to see the record
                perform
                    -- Trim leading and trailing quotes from working_role because set_config
                    -- doesn't recognize the role as valid if they are included
                    set_config('role', trim(both '"' from working_role::text), true),
                    set_config('request.jwt.claims', claims::text, true);

                execute 'execute walrus_rls_stmt' into subscription_has_access;

                if subscription_has_access then
                    visible_to_subscription_ids = visible_to_subscription_ids || subscription_id;
                end if;
            end if;
        end loop;

        perform set_config('role', null, true);

        return next (
            output,
            is_rls_enabled,
            visible_to_subscription_ids,
            case
                when error_record_exceeds_max_size then array['Error 413: Payload Too Large']
                else '{}'
            end
        )::realtime.wal_rls;

    end if;
end loop;

perform set_config('role', null, true);
end;
$$;
 G   DROP FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer);
       realtime               supabase_admin    false    1093    19            �           0    0 7   FUNCTION apply_rls(wal jsonb, max_record_bytes integer)    ACL     <  GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO postgres;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO anon;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO authenticated;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO service_role;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO supabase_realtime_admin;
          realtime               supabase_admin    false    355            z           1255    17225 E   broadcast_changes(text, text, text, text, text, record, record, text)    FUNCTION       CREATE FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text DEFAULT 'ROW'::text) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
    -- Declare a variable to hold the JSONB representation of the row
    row_data jsonb := '{}'::jsonb;
BEGIN
    IF level = 'STATEMENT' THEN
        RAISE EXCEPTION 'function can only be triggered for each row, not for each statement';
    END IF;
    -- Check the operation type and handle accordingly
    IF operation = 'INSERT' OR operation = 'UPDATE' OR operation = 'DELETE' THEN
        row_data := jsonb_build_object('old_record', OLD, 'record', NEW, 'operation', operation, 'table', table_name, 'schema', table_schema);
        PERFORM realtime.send (row_data, event_name, topic_name);
    ELSE
        RAISE EXCEPTION 'Unexpected operation type: %', operation;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        RAISE EXCEPTION 'Failed to process the row: %', SQLERRM;
END;

$$;
 �   DROP FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text);
       realtime               supabase_admin    false    19            �           0    0 �   FUNCTION broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text)    ACL     v  GRANT ALL ON FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text) TO postgres;
GRANT ALL ON FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text) TO dashboard_user;
          realtime               supabase_admin    false    378            b           1255    17159 C   build_prepared_statement_sql(text, regclass, realtime.wal_column[])    FUNCTION     �  CREATE FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) RETURNS text
    LANGUAGE sql
    AS $$
      /*
      Builds a sql string that, if executed, creates a prepared statement to
      tests retrive a row from *entity* by its primary key columns.
      Example
          select realtime.build_prepared_statement_sql('public.notes', '{"id"}'::text[], '{"bigint"}'::text[])
      */
          select
      'prepare ' || prepared_statement_name || ' as
          select
              exists(
                  select
                      1
                  from
                      ' || entity || '
                  where
                      ' || string_agg(quote_ident(pkc.name) || '=' || quote_nullable(pkc.value #>> '{}') , ' and ') || '
              )'
          from
              unnest(columns) pkc
          where
              pkc.is_pkey
          group by
              entity
      $$;
 �   DROP FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]);
       realtime               supabase_admin    false    19    1102            �           0    0 s   FUNCTION build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[])    ACL     �  GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO postgres;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO anon;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO authenticated;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO service_role;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO supabase_realtime_admin;
          realtime               supabase_admin    false    354            n           1255    17025    cast(text, regtype)    FUNCTION       CREATE FUNCTION realtime."cast"(val text, type_ regtype) RETURNS jsonb
    LANGUAGE plpgsql IMMUTABLE
    AS $$
    declare
      res jsonb;
    begin
      execute format('select to_jsonb(%L::'|| type_::text || ')', val)  into res;
      return res;
    end
    $$;
 8   DROP FUNCTION realtime."cast"(val text, type_ regtype);
       realtime               supabase_admin    false    19            �           0    0 (   FUNCTION "cast"(val text, type_ regtype)    ACL     �  GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO postgres;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO dashboard_user;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO anon;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO authenticated;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO service_role;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO supabase_realtime_admin;
          realtime               supabase_admin    false    366            y           1255    17020 <   check_equality_op(realtime.equality_op, regtype, text, text)    FUNCTION     U  CREATE FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) RETURNS boolean
    LANGUAGE plpgsql IMMUTABLE
    AS $$
      /*
      Casts *val_1* and *val_2* as type *type_* and check the *op* condition for truthiness
      */
      declare
          op_symbol text = (
              case
                  when op = 'eq' then '='
                  when op = 'neq' then '!='
                  when op = 'lt' then '<'
                  when op = 'lte' then '<='
                  when op = 'gt' then '>'
                  when op = 'gte' then '>='
                  when op = 'in' then '= any'
                  else 'UNKNOWN OP'
              end
          );
          res boolean;
      begin
          execute format(
              'select %L::'|| type_::text || ' ' || op_symbol
              || ' ( %L::'
              || (
                  case
                      when op = 'in' then type_::text || '[]'
                      else type_::text end
              )
              || ')', val_1, val_2) into res;
          return res;
      end;
      $$;
 j   DROP FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text);
       realtime               supabase_admin    false    1081    19            �           0    0 Z   FUNCTION check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text)    ACL       GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO postgres;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO anon;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO authenticated;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO service_role;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO supabase_realtime_admin;
          realtime               supabase_admin    false    377            o           1255    17155 Q   is_visible_through_filters(realtime.wal_column[], realtime.user_defined_filter[])    FUNCTION     �  CREATE FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$
    /*
    Should the record be visible (true) or filtered out (false) after *filters* are applied
    */
        select
            -- Default to allowed when no filters present
            $2 is null -- no filters. this should not happen because subscriptions has a default
            or array_length($2, 1) is null -- array length of an empty array is null
            or bool_and(
                coalesce(
                    realtime.check_equality_op(
                        op:=f.op,
                        type_:=coalesce(
                            col.type_oid::regtype, -- null when wal2json version <= 2.4
                            col.type_name::regtype
                        ),
                        -- cast jsonb to text
                        val_1:=col.value #>> '{}',
                        val_2:=f.value
                    ),
                    false -- if null, filter does not match
                )
            )
        from
            unnest(filters) f
            join unnest(columns) col
                on f.column_name = col.name;
    $_$;
 z   DROP FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]);
       realtime               supabase_admin    false    19    1084    1102            �           0    0 j   FUNCTION is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[])    ACL     n  GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO postgres;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO anon;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO authenticated;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO service_role;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO supabase_realtime_admin;
          realtime               supabase_admin    false    367            |           1255    17166 *   list_changes(name, name, integer, integer)    FUNCTION     �  CREATE FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) RETURNS SETOF realtime.wal_rls
    LANGUAGE sql
    SET log_min_messages TO 'fatal'
    AS $$
      with pub as (
        select
          concat_ws(
            ',',
            case when bool_or(pubinsert) then 'insert' else null end,
            case when bool_or(pubupdate) then 'update' else null end,
            case when bool_or(pubdelete) then 'delete' else null end
          ) as w2j_actions,
          coalesce(
            string_agg(
              realtime.quote_wal2json(format('%I.%I', schemaname, tablename)::regclass),
              ','
            ) filter (where ppt.tablename is not null and ppt.tablename not like '% %'),
            ''
          ) w2j_add_tables
        from
          pg_publication pp
          left join pg_publication_tables ppt
            on pp.pubname = ppt.pubname
        where
          pp.pubname = publication
        group by
          pp.pubname
        limit 1
      ),
      w2j as (
        select
          x.*, pub.w2j_add_tables
        from
          pub,
          pg_logical_slot_get_changes(
            slot_name, null, max_changes,
            'include-pk', 'true',
            'include-transaction', 'false',
            'include-timestamp', 'true',
            'include-type-oids', 'true',
            'format-version', '2',
            'actions', pub.w2j_actions,
            'add-tables', pub.w2j_add_tables
          ) x
      )
      select
        xyz.wal,
        xyz.is_rls_enabled,
        xyz.subscription_ids,
        xyz.errors
      from
        w2j,
        realtime.apply_rls(
          wal := w2j.data::jsonb,
          max_record_bytes := max_record_bytes
        ) xyz(wal, is_rls_enabled, subscription_ids, errors)
      where
        w2j.w2j_add_tables <> ''
        and xyz.subscription_ids[1] is not null
    $$;
 v   DROP FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer);
       realtime               supabase_admin    false    1093    19            �           0    0 f   FUNCTION list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer)    ACL     V  GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO postgres;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO anon;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO authenticated;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO service_role;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO supabase_realtime_admin;
          realtime               supabase_admin    false    380            l           1255    17019    quote_wal2json(regclass)    FUNCTION     �  CREATE FUNCTION realtime.quote_wal2json(entity regclass) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $$
      select
        (
          select string_agg('' || ch,'')
          from unnest(string_to_array(nsp.nspname::text, null)) with ordinality x(ch, idx)
          where
            not (x.idx = 1 and x.ch = '"')
            and not (
              x.idx = array_length(string_to_array(nsp.nspname::text, null), 1)
              and x.ch = '"'
            )
        )
        || '.'
        || (
          select string_agg('' || ch,'')
          from unnest(string_to_array(pc.relname::text, null)) with ordinality x(ch, idx)
          where
            not (x.idx = 1 and x.ch = '"')
            and not (
              x.idx = array_length(string_to_array(nsp.nspname::text, null), 1)
              and x.ch = '"'
            )
          )
      from
        pg_class pc
        join pg_namespace nsp
          on pc.relnamespace = nsp.oid
      where
        pc.oid = entity
    $$;
 8   DROP FUNCTION realtime.quote_wal2json(entity regclass);
       realtime               supabase_admin    false    19            �           0    0 (   FUNCTION quote_wal2json(entity regclass)    ACL     �  GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO postgres;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO anon;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO authenticated;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO service_role;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO supabase_realtime_admin;
          realtime               supabase_admin    false    364            ~           1255    17224     send(jsonb, text, text, boolean)    FUNCTION       CREATE FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  BEGIN
    -- Set the topic configuration
    EXECUTE format('SET LOCAL realtime.topic TO %L', topic);

    -- Attempt to insert the message
    INSERT INTO realtime.messages (payload, event, topic, private, extension)
    VALUES (payload, event, topic, private, 'broadcast');
  EXCEPTION
    WHEN OTHERS THEN
      -- Capture and notify the error
      PERFORM pg_notify(
          'realtime:system',
          jsonb_build_object(
              'error', SQLERRM,
              'function', 'realtime.send',
              'event', event,
              'topic', topic,
              'private', private
          )::text
      );
  END;
END;
$$;
 U   DROP FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean);
       realtime               supabase_admin    false    19            �           0    0 E   FUNCTION send(payload jsonb, event text, topic text, private boolean)    ACL     �   GRANT ALL ON FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean) TO postgres;
GRANT ALL ON FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean) TO dashboard_user;
          realtime               supabase_admin    false    382            {           1255    17017    subscription_check_filters()    FUNCTION     <
  CREATE FUNCTION realtime.subscription_check_filters() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
    /*
    Validates that the user defined filters for a subscription:
    - refer to valid columns that the claimed role may access
    - values are coercable to the correct column type
    */
    declare
        col_names text[] = coalesce(
                array_agg(c.column_name order by c.ordinal_position),
                '{}'::text[]
            )
            from
                information_schema.columns c
            where
                format('%I.%I', c.table_schema, c.table_name)::regclass = new.entity
                and pg_catalog.has_column_privilege(
                    (new.claims ->> 'role'),
                    format('%I.%I', c.table_schema, c.table_name)::regclass,
                    c.column_name,
                    'SELECT'
                );
        filter realtime.user_defined_filter;
        col_type regtype;

        in_val jsonb;
    begin
        for filter in select * from unnest(new.filters) loop
            -- Filtered column is valid
            if not filter.column_name = any(col_names) then
                raise exception 'invalid column for filter %', filter.column_name;
            end if;

            -- Type is sanitized and safe for string interpolation
            col_type = (
                select atttypid::regtype
                from pg_catalog.pg_attribute
                where attrelid = new.entity
                      and attname = filter.column_name
            );
            if col_type is null then
                raise exception 'failed to lookup type for column %', filter.column_name;
            end if;

            -- Set maximum number of entries for in filter
            if filter.op = 'in'::realtime.equality_op then
                in_val = realtime.cast(filter.value, (col_type::text || '[]')::regtype);
                if coalesce(jsonb_array_length(in_val), 0) > 100 then
                    raise exception 'too many values for `in` filter. Maximum 100';
                end if;
            else
                -- raises an exception if value is not coercable to type
                perform realtime.cast(filter.value, col_type);
            end if;

        end loop;

        -- Apply consistent order to filters so the unique constraint on
        -- (subscription_id, entity, filters) can't be tricked by a different filter order
        new.filters = coalesce(
            array_agg(f order by f.column_name, f.op, f.value),
            '{}'
        ) from unnest(new.filters) f;

        return new;
    end;
    $$;
 5   DROP FUNCTION realtime.subscription_check_filters();
       realtime               supabase_admin    false    19            �           0    0 %   FUNCTION subscription_check_filters()    ACL     �  GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO postgres;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO dashboard_user;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO anon;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO authenticated;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO service_role;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO supabase_realtime_admin;
          realtime               supabase_admin    false    379            t           1255    17052    to_regrole(text)    FUNCTION     �   CREATE FUNCTION realtime.to_regrole(role_name text) RETURNS regrole
    LANGUAGE sql IMMUTABLE
    AS $$ select role_name::regrole $$;
 3   DROP FUNCTION realtime.to_regrole(role_name text);
       realtime               supabase_admin    false    19            �           0    0 #   FUNCTION to_regrole(role_name text)    ACL     �  GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO postgres;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO anon;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO authenticated;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO service_role;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO supabase_realtime_admin;
          realtime               supabase_admin    false    372            }           1255    17218    topic()    FUNCTION     �   CREATE FUNCTION realtime.topic() RETURNS text
    LANGUAGE sql STABLE
    AS $$
select nullif(current_setting('realtime.topic', true), '')::text;
$$;
     DROP FUNCTION realtime.topic();
       realtime               supabase_realtime_admin    false    19            �           0    0    FUNCTION topic()    ACL     n   GRANT ALL ON FUNCTION realtime.topic() TO postgres;
GRANT ALL ON FUNCTION realtime.topic() TO dashboard_user;
          realtime               supabase_realtime_admin    false    381            m           1255    17091 *   can_insert_object(text, text, uuid, jsonb)    FUNCTION     �  CREATE FUNCTION storage.can_insert_object(bucketid text, name text, owner uuid, metadata jsonb) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  INSERT INTO "storage"."objects" ("bucket_id", "name", "owner", "metadata") VALUES (bucketid, name, owner, metadata);
  -- hack to rollback the successful insert
  RAISE sqlstate 'PT200' using
  message = 'ROLLBACK',
  detail = 'rollback successful insert';
END
$$;
 _   DROP FUNCTION storage.can_insert_object(bucketid text, name text, owner uuid, metadata jsonb);
       storage               supabase_storage_admin    false    14            r           1255    17064    extension(text)    FUNCTION     Z  CREATE FUNCTION storage.extension(name text) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
_parts text[];
_filename text;
BEGIN
	select string_to_array(name, '/') into _parts;
	select _parts[array_length(_parts,1)] into _filename;
	-- @todo return the last part instead of 2
	return reverse(split_part(reverse(_filename), '.', 1));
END
$$;
 ,   DROP FUNCTION storage.extension(name text);
       storage               supabase_storage_admin    false    14            q           1255    17063    filename(text)    FUNCTION     �   CREATE FUNCTION storage.filename(name text) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
_parts text[];
BEGIN
	select string_to_array(name, '/') into _parts;
	return _parts[array_length(_parts,1)];
END
$$;
 +   DROP FUNCTION storage.filename(name text);
       storage               supabase_storage_admin    false    14            p           1255    17062    foldername(text)    FUNCTION     �   CREATE FUNCTION storage.foldername(name text) RETURNS text[]
    LANGUAGE plpgsql
    AS $$
DECLARE
_parts text[];
BEGIN
	select string_to_array(name, '/') into _parts;
	return _parts[1:array_length(_parts,1)-1];
END
$$;
 -   DROP FUNCTION storage.foldername(name text);
       storage               supabase_storage_admin    false    14            s           1255    17077    get_size_by_bucket()    FUNCTION        CREATE FUNCTION storage.get_size_by_bucket() RETURNS TABLE(size bigint, bucket_id text)
    LANGUAGE plpgsql
    AS $$
BEGIN
    return query
        select sum((metadata->>'size')::int) as size, obj.bucket_id
        from "storage".objects as obj
        group by obj.bucket_id;
END
$$;
 ,   DROP FUNCTION storage.get_size_by_bucket();
       storage               supabase_storage_admin    false    14            v           1255    17130 L   list_multipart_uploads_with_delimiter(text, text, text, integer, text, text)    FUNCTION     9  CREATE FUNCTION storage.list_multipart_uploads_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer DEFAULT 100, next_key_token text DEFAULT ''::text, next_upload_token text DEFAULT ''::text) RETURNS TABLE(key text, id text, created_at timestamp with time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
    RETURN QUERY EXECUTE
        'SELECT DISTINCT ON(key COLLATE "C") * from (
            SELECT
                CASE
                    WHEN position($2 IN substring(key from length($1) + 1)) > 0 THEN
                        substring(key from 1 for length($1) + position($2 IN substring(key from length($1) + 1)))
                    ELSE
                        key
                END AS key, id, created_at
            FROM
                storage.s3_multipart_uploads
            WHERE
                bucket_id = $5 AND
                key ILIKE $1 || ''%'' AND
                CASE
                    WHEN $4 != '''' AND $6 = '''' THEN
                        CASE
                            WHEN position($2 IN substring(key from length($1) + 1)) > 0 THEN
                                substring(key from 1 for length($1) + position($2 IN substring(key from length($1) + 1))) COLLATE "C" > $4
                            ELSE
                                key COLLATE "C" > $4
                            END
                    ELSE
                        true
                END AND
                CASE
                    WHEN $6 != '''' THEN
                        id COLLATE "C" > $6
                    ELSE
                        true
                    END
            ORDER BY
                key COLLATE "C" ASC, created_at ASC) as e order by key COLLATE "C" LIMIT $3'
        USING prefix_param, delimiter_param, max_keys, next_key_token, bucket_id, next_upload_token;
END;
$_$;
 �   DROP FUNCTION storage.list_multipart_uploads_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer, next_key_token text, next_upload_token text);
       storage               supabase_storage_admin    false    14            u           1255    17093 B   list_objects_with_delimiter(text, text, text, integer, text, text)    FUNCTION     �  CREATE FUNCTION storage.list_objects_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer DEFAULT 100, start_after text DEFAULT ''::text, next_token text DEFAULT ''::text) RETURNS TABLE(name text, id uuid, metadata jsonb, updated_at timestamp with time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
    RETURN QUERY EXECUTE
        'SELECT DISTINCT ON(name COLLATE "C") * from (
            SELECT
                CASE
                    WHEN position($2 IN substring(name from length($1) + 1)) > 0 THEN
                        substring(name from 1 for length($1) + position($2 IN substring(name from length($1) + 1)))
                    ELSE
                        name
                END AS name, id, metadata, updated_at
            FROM
                storage.objects
            WHERE
                bucket_id = $5 AND
                name ILIKE $1 || ''%'' AND
                CASE
                    WHEN $6 != '''' THEN
                    name COLLATE "C" > $6
                ELSE true END
                AND CASE
                    WHEN $4 != '''' THEN
                        CASE
                            WHEN position($2 IN substring(name from length($1) + 1)) > 0 THEN
                                substring(name from 1 for length($1) + position($2 IN substring(name from length($1) + 1))) COLLATE "C" > $4
                            ELSE
                                name COLLATE "C" > $4
                            END
                    ELSE
                        true
                END
            ORDER BY
                name COLLATE "C" ASC) as e order by name COLLATE "C" LIMIT $3'
        USING prefix_param, delimiter_param, max_keys, next_token, bucket_id, start_after;
END;
$_$;
 �   DROP FUNCTION storage.list_objects_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer, start_after text, next_token text);
       storage               supabase_storage_admin    false    14            x           1255    17146    operation()    FUNCTION     �   CREATE FUNCTION storage.operation() RETURNS text
    LANGUAGE plpgsql STABLE
    AS $$
BEGIN
    RETURN current_setting('storage.operation', true);
END;
$$;
 #   DROP FUNCTION storage.operation();
       storage               supabase_storage_admin    false    14            w           1255    17080 ?   search(text, text, integer, integer, integer, text, text, text)    FUNCTION       CREATE FUNCTION storage.search(prefix text, bucketname text, limits integer DEFAULT 100, levels integer DEFAULT 1, offsets integer DEFAULT 0, search text DEFAULT ''::text, sortcolumn text DEFAULT 'name'::text, sortorder text DEFAULT 'asc'::text) RETURNS TABLE(name text, id uuid, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone, metadata jsonb)
    LANGUAGE plpgsql STABLE
    AS $_$
declare
  v_order_by text;
  v_sort_order text;
begin
  case
    when sortcolumn = 'name' then
      v_order_by = 'name';
    when sortcolumn = 'updated_at' then
      v_order_by = 'updated_at';
    when sortcolumn = 'created_at' then
      v_order_by = 'created_at';
    when sortcolumn = 'last_accessed_at' then
      v_order_by = 'last_accessed_at';
    else
      v_order_by = 'name';
  end case;

  case
    when sortorder = 'asc' then
      v_sort_order = 'asc';
    when sortorder = 'desc' then
      v_sort_order = 'desc';
    else
      v_sort_order = 'asc';
  end case;

  v_order_by = v_order_by || ' ' || v_sort_order;

  return query execute
    'with folders as (
       select path_tokens[$1] as folder
       from storage.objects
         where objects.name ilike $2 || $3 || ''%''
           and bucket_id = $4
           and array_length(objects.path_tokens, 1) <> $1
       group by folder
       order by folder ' || v_sort_order || '
     )
     (select folder as "name",
            null as id,
            null as updated_at,
            null as created_at,
            null as last_accessed_at,
            null as metadata from folders)
     union all
     (select path_tokens[$1] as "name",
            id,
            updated_at,
            created_at,
            last_accessed_at,
            metadata
     from storage.objects
     where objects.name ilike $2 || $3 || ''%''
       and bucket_id = $4
       and array_length(objects.path_tokens, 1) = $1
     order by ' || v_order_by || ')
     limit $5
     offset $6' using levels, prefix, search, bucketname, limits, offsets;
end;
$_$;
 �   DROP FUNCTION storage.search(prefix text, bucketname text, limits integer, levels integer, offsets integer, search text, sortcolumn text, sortorder text);
       storage               supabase_storage_admin    false    14            k           1255    17081    update_updated_at_column()    FUNCTION     �   CREATE FUNCTION storage.update_updated_at_column() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW; 
END;
$$;
 2   DROP FUNCTION storage.update_updated_at_column();
       storage               supabase_storage_admin    false    14            �           0    0 m   FUNCTION _crypto_aead_det_decrypt(message bytea, additional bytea, key_id bigint, context bytea, nonce bytea)    ACL     �   GRANT ALL ON FUNCTION vault._crypto_aead_det_decrypt(message bytea, additional bytea, key_id bigint, context bytea, nonce bytea) TO postgres WITH GRANT OPTION;
          vault               supabase_admin    false    330            �           0    0 ]   FUNCTION create_secret(new_secret text, new_name text, new_description text, new_key_id uuid)    ACL     �   GRANT ALL ON FUNCTION vault.create_secret(new_secret text, new_name text, new_description text, new_key_id uuid) TO postgres WITH GRANT OPTION;
          vault               supabase_admin    false    308            �           0    0 m   FUNCTION update_secret(secret_id uuid, new_secret text, new_name text, new_description text, new_key_id uuid)    ACL     �   GRANT ALL ON FUNCTION vault.update_secret(secret_id uuid, new_secret text, new_name text, new_description text, new_key_id uuid) TO postgres WITH GRANT OPTION;
          vault               supabase_admin    false    309            �            1259    16519    audit_log_entries    TABLE     �   CREATE TABLE auth.audit_log_entries (
    instance_id uuid,
    id uuid NOT NULL,
    payload json,
    created_at timestamp with time zone,
    ip_address character varying(64) DEFAULT ''::character varying NOT NULL
);
 #   DROP TABLE auth.audit_log_entries;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE audit_log_entries    COMMENT     R   COMMENT ON TABLE auth.audit_log_entries IS 'Auth: Audit trail for user actions.';
          auth               supabase_auth_admin    false    234            �           0    0    TABLE audit_log_entries    ACL     !  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.audit_log_entries TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.audit_log_entries TO postgres;
GRANT SELECT ON TABLE auth.audit_log_entries TO postgres WITH GRANT OPTION;
          auth               supabase_auth_admin    false    234            �            1259    16907 
   flow_state    TABLE     �  CREATE TABLE auth.flow_state (
    id uuid NOT NULL,
    user_id uuid,
    auth_code text NOT NULL,
    code_challenge_method auth.code_challenge_method NOT NULL,
    code_challenge text NOT NULL,
    provider_type text NOT NULL,
    provider_access_token text,
    provider_refresh_token text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    authentication_method text NOT NULL,
    auth_code_issued_at timestamp with time zone
);
    DROP TABLE auth.flow_state;
       auth         heap r       supabase_auth_admin    false    15    1066            �           0    0    TABLE flow_state    COMMENT     G   COMMENT ON TABLE auth.flow_state IS 'stores metadata for pkce logins';
          auth               supabase_auth_admin    false    251            �           0    0    TABLE flow_state    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.flow_state TO postgres;
GRANT SELECT ON TABLE auth.flow_state TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.flow_state TO dashboard_user;
          auth               supabase_auth_admin    false    251            �            1259    16704 
   identities    TABLE     �  CREATE TABLE auth.identities (
    provider_id text NOT NULL,
    user_id uuid NOT NULL,
    identity_data jsonb NOT NULL,
    provider text NOT NULL,
    last_sign_in_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    email text GENERATED ALWAYS AS (lower((identity_data ->> 'email'::text))) STORED,
    id uuid DEFAULT gen_random_uuid() NOT NULL
);
    DROP TABLE auth.identities;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE identities    COMMENT     U   COMMENT ON TABLE auth.identities IS 'Auth: Stores identities associated to a user.';
          auth               supabase_auth_admin    false    242            �           0    0    COLUMN identities.email    COMMENT     �   COMMENT ON COLUMN auth.identities.email IS 'Auth: Email is a generated column that references the optional email property in the identity_data';
          auth               supabase_auth_admin    false    242            �           0    0    TABLE identities    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.identities TO postgres;
GRANT SELECT ON TABLE auth.identities TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.identities TO dashboard_user;
          auth               supabase_auth_admin    false    242            �            1259    16512 	   instances    TABLE     �   CREATE TABLE auth.instances (
    id uuid NOT NULL,
    uuid uuid,
    raw_base_config text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE auth.instances;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE instances    COMMENT     Q   COMMENT ON TABLE auth.instances IS 'Auth: Manages users across multiple sites.';
          auth               supabase_auth_admin    false    233            �           0    0    TABLE instances    ACL     	  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.instances TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.instances TO postgres;
GRANT SELECT ON TABLE auth.instances TO postgres WITH GRANT OPTION;
          auth               supabase_auth_admin    false    233            �            1259    16794    mfa_amr_claims    TABLE     �   CREATE TABLE auth.mfa_amr_claims (
    session_id uuid NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    authentication_method text NOT NULL,
    id uuid NOT NULL
);
     DROP TABLE auth.mfa_amr_claims;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE mfa_amr_claims    COMMENT     ~   COMMENT ON TABLE auth.mfa_amr_claims IS 'auth: stores authenticator method reference claims for multi factor authentication';
          auth               supabase_auth_admin    false    246            �           0    0    TABLE mfa_amr_claims    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_amr_claims TO postgres;
GRANT SELECT ON TABLE auth.mfa_amr_claims TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_amr_claims TO dashboard_user;
          auth               supabase_auth_admin    false    246            �            1259    16782    mfa_challenges    TABLE       CREATE TABLE auth.mfa_challenges (
    id uuid NOT NULL,
    factor_id uuid NOT NULL,
    created_at timestamp with time zone NOT NULL,
    verified_at timestamp with time zone,
    ip_address inet NOT NULL,
    otp_code text,
    web_authn_session_data jsonb
);
     DROP TABLE auth.mfa_challenges;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE mfa_challenges    COMMENT     _   COMMENT ON TABLE auth.mfa_challenges IS 'auth: stores metadata about challenge requests made';
          auth               supabase_auth_admin    false    245            �           0    0    TABLE mfa_challenges    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_challenges TO postgres;
GRANT SELECT ON TABLE auth.mfa_challenges TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_challenges TO dashboard_user;
          auth               supabase_auth_admin    false    245            �            1259    16769    mfa_factors    TABLE     �  CREATE TABLE auth.mfa_factors (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    friendly_name text,
    factor_type auth.factor_type NOT NULL,
    status auth.factor_status NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    secret text,
    phone text,
    last_challenged_at timestamp with time zone,
    web_authn_credential jsonb,
    web_authn_aaguid uuid
);
    DROP TABLE auth.mfa_factors;
       auth         heap r       supabase_auth_admin    false    1039    15    1036            �           0    0    TABLE mfa_factors    COMMENT     L   COMMENT ON TABLE auth.mfa_factors IS 'auth: stores metadata about factors';
          auth               supabase_auth_admin    false    244            �           0    0    TABLE mfa_factors    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_factors TO postgres;
GRANT SELECT ON TABLE auth.mfa_factors TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_factors TO dashboard_user;
          auth               supabase_auth_admin    false    244            �            1259    16957    one_time_tokens    TABLE     �  CREATE TABLE auth.one_time_tokens (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    token_type auth.one_time_token_type NOT NULL,
    token_hash text NOT NULL,
    relates_to text NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    CONSTRAINT one_time_tokens_token_hash_check CHECK ((char_length(token_hash) > 0))
);
 !   DROP TABLE auth.one_time_tokens;
       auth         heap r       supabase_auth_admin    false    1072    15            �           0    0    TABLE one_time_tokens    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.one_time_tokens TO postgres;
GRANT SELECT ON TABLE auth.one_time_tokens TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.one_time_tokens TO dashboard_user;
          auth               supabase_auth_admin    false    252            �            1259    16501    refresh_tokens    TABLE     8  CREATE TABLE auth.refresh_tokens (
    instance_id uuid,
    id bigint NOT NULL,
    token character varying(255),
    user_id character varying(255),
    revoked boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    parent character varying(255),
    session_id uuid
);
     DROP TABLE auth.refresh_tokens;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE refresh_tokens    COMMENT     n   COMMENT ON TABLE auth.refresh_tokens IS 'Auth: Store of tokens used to refresh JWT tokens once they expire.';
          auth               supabase_auth_admin    false    232            �           0    0    TABLE refresh_tokens    ACL       GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.refresh_tokens TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.refresh_tokens TO postgres;
GRANT SELECT ON TABLE auth.refresh_tokens TO postgres WITH GRANT OPTION;
          auth               supabase_auth_admin    false    232            �            1259    16500    refresh_tokens_id_seq    SEQUENCE     |   CREATE SEQUENCE auth.refresh_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE auth.refresh_tokens_id_seq;
       auth               supabase_auth_admin    false    232    15            �           0    0    refresh_tokens_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE auth.refresh_tokens_id_seq OWNED BY auth.refresh_tokens.id;
          auth               supabase_auth_admin    false    231            �           0    0    SEQUENCE refresh_tokens_id_seq    ACL     �   GRANT ALL ON SEQUENCE auth.refresh_tokens_id_seq TO dashboard_user;
GRANT ALL ON SEQUENCE auth.refresh_tokens_id_seq TO postgres;
          auth               supabase_auth_admin    false    231            �            1259    16836    saml_providers    TABLE     H  CREATE TABLE auth.saml_providers (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    entity_id text NOT NULL,
    metadata_xml text NOT NULL,
    metadata_url text,
    attribute_mapping jsonb,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    name_id_format text,
    CONSTRAINT "entity_id not empty" CHECK ((char_length(entity_id) > 0)),
    CONSTRAINT "metadata_url not empty" CHECK (((metadata_url = NULL::text) OR (char_length(metadata_url) > 0))),
    CONSTRAINT "metadata_xml not empty" CHECK ((char_length(metadata_xml) > 0))
);
     DROP TABLE auth.saml_providers;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE saml_providers    COMMENT     ]   COMMENT ON TABLE auth.saml_providers IS 'Auth: Manages SAML Identity Provider connections.';
          auth               supabase_auth_admin    false    249            �           0    0    TABLE saml_providers    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.saml_providers TO postgres;
GRANT SELECT ON TABLE auth.saml_providers TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.saml_providers TO dashboard_user;
          auth               supabase_auth_admin    false    249            �            1259    16854    saml_relay_states    TABLE     `  CREATE TABLE auth.saml_relay_states (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    request_id text NOT NULL,
    for_email text,
    redirect_to text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    flow_state_id uuid,
    CONSTRAINT "request_id not empty" CHECK ((char_length(request_id) > 0))
);
 #   DROP TABLE auth.saml_relay_states;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE saml_relay_states    COMMENT     �   COMMENT ON TABLE auth.saml_relay_states IS 'Auth: Contains SAML Relay State information for each Service Provider initiated login.';
          auth               supabase_auth_admin    false    250            �           0    0    TABLE saml_relay_states    ACL     !  GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.saml_relay_states TO postgres;
GRANT SELECT ON TABLE auth.saml_relay_states TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.saml_relay_states TO dashboard_user;
          auth               supabase_auth_admin    false    250            �            1259    16527    schema_migrations    TABLE     U   CREATE TABLE auth.schema_migrations (
    version character varying(255) NOT NULL
);
 #   DROP TABLE auth.schema_migrations;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE schema_migrations    COMMENT     X   COMMENT ON TABLE auth.schema_migrations IS 'Auth: Manages updates to the auth system.';
          auth               supabase_auth_admin    false    235            �           0    0    TABLE schema_migrations    ACL     !  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.schema_migrations TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.schema_migrations TO postgres;
GRANT SELECT ON TABLE auth.schema_migrations TO postgres WITH GRANT OPTION;
          auth               supabase_auth_admin    false    235            �            1259    16734    sessions    TABLE     T  CREATE TABLE auth.sessions (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    factor_id uuid,
    aal auth.aal_level,
    not_after timestamp with time zone,
    refreshed_at timestamp without time zone,
    user_agent text,
    ip inet,
    tag text
);
    DROP TABLE auth.sessions;
       auth         heap r       supabase_auth_admin    false    1042    15            �           0    0    TABLE sessions    COMMENT     U   COMMENT ON TABLE auth.sessions IS 'Auth: Stores session data associated to a user.';
          auth               supabase_auth_admin    false    243            �           0    0    COLUMN sessions.not_after    COMMENT     �   COMMENT ON COLUMN auth.sessions.not_after IS 'Auth: Not after is a nullable column that contains a timestamp after which the session should be regarded as expired.';
          auth               supabase_auth_admin    false    243            �           0    0    TABLE sessions    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sessions TO postgres;
GRANT SELECT ON TABLE auth.sessions TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sessions TO dashboard_user;
          auth               supabase_auth_admin    false    243            �            1259    16821    sso_domains    TABLE       CREATE TABLE auth.sso_domains (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    domain text NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    CONSTRAINT "domain not empty" CHECK ((char_length(domain) > 0))
);
    DROP TABLE auth.sso_domains;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE sso_domains    COMMENT     t   COMMENT ON TABLE auth.sso_domains IS 'Auth: Manages SSO email address domain mapping to an SSO Identity Provider.';
          auth               supabase_auth_admin    false    248            �           0    0    TABLE sso_domains    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sso_domains TO postgres;
GRANT SELECT ON TABLE auth.sso_domains TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sso_domains TO dashboard_user;
          auth               supabase_auth_admin    false    248            �            1259    16812    sso_providers    TABLE       CREATE TABLE auth.sso_providers (
    id uuid NOT NULL,
    resource_id text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    CONSTRAINT "resource_id not empty" CHECK (((resource_id = NULL::text) OR (char_length(resource_id) > 0)))
);
    DROP TABLE auth.sso_providers;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE sso_providers    COMMENT     x   COMMENT ON TABLE auth.sso_providers IS 'Auth: Manages SSO identity provider information; see saml_providers for SAML.';
          auth               supabase_auth_admin    false    247            �           0    0     COLUMN sso_providers.resource_id    COMMENT     �   COMMENT ON COLUMN auth.sso_providers.resource_id IS 'Auth: Uniquely identifies a SSO provider according to a user-chosen resource ID (case insensitive), useful in infrastructure as code.';
          auth               supabase_auth_admin    false    247            �           0    0    TABLE sso_providers    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sso_providers TO postgres;
GRANT SELECT ON TABLE auth.sso_providers TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sso_providers TO dashboard_user;
          auth               supabase_auth_admin    false    247            �            1259    16489    users    TABLE     4  CREATE TABLE auth.users (
    instance_id uuid,
    id uuid NOT NULL,
    aud character varying(255),
    role character varying(255),
    email character varying(255),
    encrypted_password character varying(255),
    email_confirmed_at timestamp with time zone,
    invited_at timestamp with time zone,
    confirmation_token character varying(255),
    confirmation_sent_at timestamp with time zone,
    recovery_token character varying(255),
    recovery_sent_at timestamp with time zone,
    email_change_token_new character varying(255),
    email_change character varying(255),
    email_change_sent_at timestamp with time zone,
    last_sign_in_at timestamp with time zone,
    raw_app_meta_data jsonb,
    raw_user_meta_data jsonb,
    is_super_admin boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    phone text DEFAULT NULL::character varying,
    phone_confirmed_at timestamp with time zone,
    phone_change text DEFAULT ''::character varying,
    phone_change_token character varying(255) DEFAULT ''::character varying,
    phone_change_sent_at timestamp with time zone,
    confirmed_at timestamp with time zone GENERATED ALWAYS AS (LEAST(email_confirmed_at, phone_confirmed_at)) STORED,
    email_change_token_current character varying(255) DEFAULT ''::character varying,
    email_change_confirm_status smallint DEFAULT 0,
    banned_until timestamp with time zone,
    reauthentication_token character varying(255) DEFAULT ''::character varying,
    reauthentication_sent_at timestamp with time zone,
    is_sso_user boolean DEFAULT false NOT NULL,
    deleted_at timestamp with time zone,
    is_anonymous boolean DEFAULT false NOT NULL,
    CONSTRAINT users_email_change_confirm_status_check CHECK (((email_change_confirm_status >= 0) AND (email_change_confirm_status <= 2)))
);
    DROP TABLE auth.users;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE users    COMMENT     W   COMMENT ON TABLE auth.users IS 'Auth: Stores user login data within a secure schema.';
          auth               supabase_auth_admin    false    230            �           0    0    COLUMN users.is_sso_user    COMMENT     �   COMMENT ON COLUMN auth.users.is_sso_user IS 'Auth: Set this column to true when the account comes from SSO. These accounts can have duplicate emails.';
          auth               supabase_auth_admin    false    230            �           0    0    TABLE users    ACL     �   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.users TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.users TO postgres;
GRANT SELECT ON TABLE auth.users TO postgres WITH GRANT OPTION;
          auth               supabase_auth_admin    false    230            �           0    0    TABLE pg_stat_statements    ACL     q  REVOKE SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements FROM postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements TO dashboard_user;
       
   extensions               postgres    false    229            �           0    0    TABLE pg_stat_statements_info    ACL     �  REVOKE SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements_info FROM postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements_info TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements_info TO dashboard_user;
       
   extensions               postgres    false    228                       1259    17268 
   entrenador    TABLE     �   CREATE TABLE public.entrenador (
    id_entrenador bigint NOT NULL,
    especialidad character varying(255),
    nombre character varying(255),
    id_equipo bigint
);
    DROP TABLE public.entrenador;
       public         heap r       postgres    false            �           0    0    TABLE entrenador    ACL     7  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.entrenador TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.entrenador TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.entrenador TO service_role;
          public               postgres    false    263                       1259    17267    entrenador_id_entrenador_seq    SEQUENCE     �   ALTER TABLE public.entrenador ALTER COLUMN id_entrenador ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.entrenador_id_entrenador_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    263            �           0    0 %   SEQUENCE entrenador_id_entrenador_seq    ACL     �   GRANT ALL ON SEQUENCE public.entrenador_id_entrenador_seq TO anon;
GRANT ALL ON SEQUENCE public.entrenador_id_entrenador_seq TO authenticated;
GRANT ALL ON SEQUENCE public.entrenador_id_entrenador_seq TO service_role;
          public               postgres    false    262            	           1259    17276    equipo    TABLE     �   CREATE TABLE public.equipo (
    id_equipo bigint NOT NULL,
    ciudad character varying(255),
    fundacion date,
    nombre character varying(255)
);
    DROP TABLE public.equipo;
       public         heap r       postgres    false            �           0    0    TABLE equipo    ACL     +  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.equipo TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.equipo TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.equipo TO service_role;
          public               postgres    false    265                       1259    17275    equipo_id_equipo_seq    SEQUENCE     �   ALTER TABLE public.equipo ALTER COLUMN id_equipo ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.equipo_id_equipo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    265            �           0    0    SEQUENCE equipo_id_equipo_seq    ACL     �   GRANT ALL ON SEQUENCE public.equipo_id_equipo_seq TO anon;
GRANT ALL ON SEQUENCE public.equipo_id_equipo_seq TO authenticated;
GRANT ALL ON SEQUENCE public.equipo_id_equipo_seq TO service_role;
          public               postgres    false    264                       1259    18439    estadisticas_jugador    TABLE       CREATE TABLE public.estadisticas_jugador (
    id_estadisticas bigint NOT NULL,
    asistencias integer,
    goles integer,
    minutos_jugados integer,
    tarjetas_amarillas integer,
    tarjetas_rojas integer,
    id_jugador bigint,
    id_partido bigint
);
 (   DROP TABLE public.estadisticas_jugador;
       public         heap r       postgres    false            �           0    0    TABLE estadisticas_jugador    ACL     U  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.estadisticas_jugador TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.estadisticas_jugador TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.estadisticas_jugador TO service_role;
          public               postgres    false    271                       1259    18438 (   estadisticas_jugador_id_estadisticas_seq    SEQUENCE       ALTER TABLE public.estadisticas_jugador ALTER COLUMN id_estadisticas ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.estadisticas_jugador_id_estadisticas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    271            �           0    0 1   SEQUENCE estadisticas_jugador_id_estadisticas_seq    ACL     �   GRANT ALL ON SEQUENCE public.estadisticas_jugador_id_estadisticas_seq TO anon;
GRANT ALL ON SEQUENCE public.estadisticas_jugador_id_estadisticas_seq TO authenticated;
GRANT ALL ON SEQUENCE public.estadisticas_jugador_id_estadisticas_seq TO service_role;
          public               postgres    false    270                       1259    17290    jugador    TABLE     �   CREATE TABLE public.jugador (
    id_jugador bigint NOT NULL,
    dorlsal integer,
    fecha_nac date,
    nacionalidad character varying(255),
    nombre character varying(255),
    posicion character varying(255),
    id_equipo bigint
);
    DROP TABLE public.jugador;
       public         heap r       postgres    false            �           0    0    TABLE jugador    ACL     .  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.jugador TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.jugador TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.jugador TO service_role;
          public               postgres    false    267            
           1259    17289    jugador_id_jugador_seq    SEQUENCE     �   ALTER TABLE public.jugador ALTER COLUMN id_jugador ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.jugador_id_jugador_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    267            �           0    0    SEQUENCE jugador_id_jugador_seq    ACL     �   GRANT ALL ON SEQUENCE public.jugador_id_jugador_seq TO anon;
GRANT ALL ON SEQUENCE public.jugador_id_jugador_seq TO authenticated;
GRANT ALL ON SEQUENCE public.jugador_id_jugador_seq TO service_role;
          public               postgres    false    266                       1259    17298    partido    TABLE     �   CREATE TABLE public.partido (
    id_partido bigint NOT NULL,
    estadio character varying(255),
    fecha date,
    goles_local integer,
    goles_visita integer,
    equipo_local bigint,
    equipo_visita bigint
);
    DROP TABLE public.partido;
       public         heap r       postgres    false            �           0    0    TABLE partido    ACL     .  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.partido TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.partido TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.partido TO service_role;
          public               postgres    false    269                       1259    17297    partido_id_partido_seq    SEQUENCE     �   ALTER TABLE public.partido ALTER COLUMN id_partido ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.partido_id_partido_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    269            �           0    0    SEQUENCE partido_id_partido_seq    ACL     �   GRANT ALL ON SEQUENCE public.partido_id_partido_seq TO anon;
GRANT ALL ON SEQUENCE public.partido_id_partido_seq TO authenticated;
GRANT ALL ON SEQUENCE public.partido_id_partido_seq TO service_role;
          public               postgres    false    268                       1259    17228    messages    TABLE     w  CREATE TABLE realtime.messages (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL
)
PARTITION BY RANGE (inserted_at);
    DROP TABLE realtime.messages;
       realtime         p       supabase_realtime_admin    false    19            �           0    0    TABLE messages    ACL     �  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.messages TO postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.messages TO dashboard_user;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO anon;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO authenticated;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO service_role;
          realtime               supabase_realtime_admin    false    261            �            1259    16982    schema_migrations    TABLE     y   CREATE TABLE realtime.schema_migrations (
    version bigint NOT NULL,
    inserted_at timestamp(0) without time zone
);
 '   DROP TABLE realtime.schema_migrations;
       realtime         heap r       supabase_admin    false    19            �           0    0    TABLE schema_migrations    ACL     !  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.schema_migrations TO postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.schema_migrations TO dashboard_user;
GRANT SELECT ON TABLE realtime.schema_migrations TO anon;
GRANT SELECT ON TABLE realtime.schema_migrations TO authenticated;
GRANT SELECT ON TABLE realtime.schema_migrations TO service_role;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.schema_migrations TO supabase_realtime_admin;
          realtime               supabase_admin    false    253                        1259    17005    subscription    TABLE     �  CREATE TABLE realtime.subscription (
    id bigint NOT NULL,
    subscription_id uuid NOT NULL,
    entity regclass NOT NULL,
    filters realtime.user_defined_filter[] DEFAULT '{}'::realtime.user_defined_filter[] NOT NULL,
    claims jsonb NOT NULL,
    claims_role regrole GENERATED ALWAYS AS (realtime.to_regrole((claims ->> 'role'::text))) STORED NOT NULL,
    created_at timestamp without time zone DEFAULT timezone('utc'::text, now()) NOT NULL
);
 "   DROP TABLE realtime.subscription;
       realtime         heap r       supabase_admin    false    1084    372    1084    19            �           0    0    TABLE subscription    ACL       GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.subscription TO postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.subscription TO dashboard_user;
GRANT SELECT ON TABLE realtime.subscription TO anon;
GRANT SELECT ON TABLE realtime.subscription TO authenticated;
GRANT SELECT ON TABLE realtime.subscription TO service_role;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.subscription TO supabase_realtime_admin;
          realtime               supabase_admin    false    256            �            1259    17004    subscription_id_seq    SEQUENCE     �   ALTER TABLE realtime.subscription ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME realtime.subscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            realtime               supabase_admin    false    19    256            �           0    0    SEQUENCE subscription_id_seq    ACL     �  GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO postgres;
GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO dashboard_user;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO anon;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO authenticated;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO service_role;
GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO supabase_realtime_admin;
          realtime               supabase_admin    false    255            �            1259    16540    buckets    TABLE     k  CREATE TABLE storage.buckets (
    id text NOT NULL,
    name text NOT NULL,
    owner uuid,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    public boolean DEFAULT false,
    avif_autodetection boolean DEFAULT false,
    file_size_limit bigint,
    allowed_mime_types text[],
    owner_id text
);
    DROP TABLE storage.buckets;
       storage         heap r       supabase_storage_admin    false    14            �           0    0    COLUMN buckets.owner    COMMENT     X   COMMENT ON COLUMN storage.buckets.owner IS 'Field is deprecated, use owner_id instead';
          storage               supabase_storage_admin    false    236            �           0    0    TABLE buckets    ACL     �  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.buckets TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.buckets TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.buckets TO service_role;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.buckets TO postgres;
          storage               supabase_storage_admin    false    236            �            1259    16582 
   migrations    TABLE     �   CREATE TABLE storage.migrations (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    hash character varying(40) NOT NULL,
    executed_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE storage.migrations;
       storage         heap r       supabase_storage_admin    false    14            �           0    0    TABLE migrations    ACL     �  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.migrations TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.migrations TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.migrations TO service_role;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.migrations TO postgres;
          storage               supabase_storage_admin    false    238            �            1259    16555    objects    TABLE     �  CREATE TABLE storage.objects (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    bucket_id text,
    name text,
    owner uuid,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    last_accessed_at timestamp with time zone DEFAULT now(),
    metadata jsonb,
    path_tokens text[] GENERATED ALWAYS AS (string_to_array(name, '/'::text)) STORED,
    version text,
    owner_id text,
    user_metadata jsonb
);
    DROP TABLE storage.objects;
       storage         heap r       supabase_storage_admin    false    14            �           0    0    COLUMN objects.owner    COMMENT     X   COMMENT ON COLUMN storage.objects.owner IS 'Field is deprecated, use owner_id instead';
          storage               supabase_storage_admin    false    237            �           0    0    TABLE objects    ACL     �  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.objects TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.objects TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.objects TO service_role;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.objects TO postgres;
          storage               supabase_storage_admin    false    237                       1259    17095    s3_multipart_uploads    TABLE     j  CREATE TABLE storage.s3_multipart_uploads (
    id text NOT NULL,
    in_progress_size bigint DEFAULT 0 NOT NULL,
    upload_signature text NOT NULL,
    bucket_id text NOT NULL,
    key text NOT NULL COLLATE pg_catalog."C",
    version text NOT NULL,
    owner_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    user_metadata jsonb
);
 )   DROP TABLE storage.s3_multipart_uploads;
       storage         heap r       supabase_storage_admin    false    14            �           0    0    TABLE s3_multipart_uploads    ACL     �   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.s3_multipart_uploads TO service_role;
GRANT SELECT ON TABLE storage.s3_multipart_uploads TO authenticated;
GRANT SELECT ON TABLE storage.s3_multipart_uploads TO anon;
          storage               supabase_storage_admin    false    258                       1259    17109    s3_multipart_uploads_parts    TABLE     �  CREATE TABLE storage.s3_multipart_uploads_parts (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    upload_id text NOT NULL,
    size bigint DEFAULT 0 NOT NULL,
    part_number integer NOT NULL,
    bucket_id text NOT NULL,
    key text NOT NULL COLLATE pg_catalog."C",
    etag text NOT NULL,
    owner_id text,
    version text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);
 /   DROP TABLE storage.s3_multipart_uploads_parts;
       storage         heap r       supabase_storage_admin    false    14            �           0    0     TABLE s3_multipart_uploads_parts    ACL       GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.s3_multipart_uploads_parts TO service_role;
GRANT SELECT ON TABLE storage.s3_multipart_uploads_parts TO authenticated;
GRANT SELECT ON TABLE storage.s3_multipart_uploads_parts TO anon;
          storage               supabase_storage_admin    false    259            �           0    0    TABLE secrets    ACL     J   GRANT SELECT,DELETE ON TABLE vault.secrets TO postgres WITH GRANT OPTION;
          vault               supabase_admin    false    239            �           0    0    TABLE decrypted_secrets    ACL     T   GRANT SELECT,DELETE ON TABLE vault.decrypted_secrets TO postgres WITH GRANT OPTION;
          vault               supabase_admin    false    240            �           2604    16504    refresh_tokens id    DEFAULT     r   ALTER TABLE ONLY auth.refresh_tokens ALTER COLUMN id SET DEFAULT nextval('auth.refresh_tokens_id_seq'::regclass);
 >   ALTER TABLE auth.refresh_tokens ALTER COLUMN id DROP DEFAULT;
       auth               supabase_auth_admin    false    232    231    232            &          0    16519    audit_log_entries 
   TABLE DATA           [   COPY auth.audit_log_entries (instance_id, id, payload, created_at, ip_address) FROM stdin;
    auth               supabase_auth_admin    false    234   $E      4          0    16907 
   flow_state 
   TABLE DATA           �   COPY auth.flow_state (id, user_id, auth_code, code_challenge_method, code_challenge, provider_type, provider_access_token, provider_refresh_token, created_at, updated_at, authentication_method, auth_code_issued_at) FROM stdin;
    auth               supabase_auth_admin    false    251   AE      +          0    16704 
   identities 
   TABLE DATA           ~   COPY auth.identities (provider_id, user_id, identity_data, provider, last_sign_in_at, created_at, updated_at, id) FROM stdin;
    auth               supabase_auth_admin    false    242   ^E      %          0    16512 	   instances 
   TABLE DATA           T   COPY auth.instances (id, uuid, raw_base_config, created_at, updated_at) FROM stdin;
    auth               supabase_auth_admin    false    233   {E      /          0    16794    mfa_amr_claims 
   TABLE DATA           e   COPY auth.mfa_amr_claims (session_id, created_at, updated_at, authentication_method, id) FROM stdin;
    auth               supabase_auth_admin    false    246   �E      .          0    16782    mfa_challenges 
   TABLE DATA           |   COPY auth.mfa_challenges (id, factor_id, created_at, verified_at, ip_address, otp_code, web_authn_session_data) FROM stdin;
    auth               supabase_auth_admin    false    245   �E      -          0    16769    mfa_factors 
   TABLE DATA           �   COPY auth.mfa_factors (id, user_id, friendly_name, factor_type, status, created_at, updated_at, secret, phone, last_challenged_at, web_authn_credential, web_authn_aaguid) FROM stdin;
    auth               supabase_auth_admin    false    244   �E      5          0    16957    one_time_tokens 
   TABLE DATA           p   COPY auth.one_time_tokens (id, user_id, token_type, token_hash, relates_to, created_at, updated_at) FROM stdin;
    auth               supabase_auth_admin    false    252   �E      $          0    16501    refresh_tokens 
   TABLE DATA           |   COPY auth.refresh_tokens (instance_id, id, token, user_id, revoked, created_at, updated_at, parent, session_id) FROM stdin;
    auth               supabase_auth_admin    false    232   F      2          0    16836    saml_providers 
   TABLE DATA           �   COPY auth.saml_providers (id, sso_provider_id, entity_id, metadata_xml, metadata_url, attribute_mapping, created_at, updated_at, name_id_format) FROM stdin;
    auth               supabase_auth_admin    false    249   )F      3          0    16854    saml_relay_states 
   TABLE DATA           �   COPY auth.saml_relay_states (id, sso_provider_id, request_id, for_email, redirect_to, created_at, updated_at, flow_state_id) FROM stdin;
    auth               supabase_auth_admin    false    250   FF      '          0    16527    schema_migrations 
   TABLE DATA           2   COPY auth.schema_migrations (version) FROM stdin;
    auth               supabase_auth_admin    false    235   cF      ,          0    16734    sessions 
   TABLE DATA           �   COPY auth.sessions (id, user_id, created_at, updated_at, factor_id, aal, not_after, refreshed_at, user_agent, ip, tag) FROM stdin;
    auth               supabase_auth_admin    false    243   �G      1          0    16821    sso_domains 
   TABLE DATA           X   COPY auth.sso_domains (id, sso_provider_id, domain, created_at, updated_at) FROM stdin;
    auth               supabase_auth_admin    false    248   �G      0          0    16812    sso_providers 
   TABLE DATA           N   COPY auth.sso_providers (id, resource_id, created_at, updated_at) FROM stdin;
    auth               supabase_auth_admin    false    247   �G      "          0    16489    users 
   TABLE DATA           O  COPY auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous) FROM stdin;
    auth               supabase_auth_admin    false    230   H      <          0    17268 
   entrenador 
   TABLE DATA           T   COPY public.entrenador (id_entrenador, especialidad, nombre, id_equipo) FROM stdin;
    public               postgres    false    263   3H      >          0    17276    equipo 
   TABLE DATA           F   COPY public.equipo (id_equipo, ciudad, fundacion, nombre) FROM stdin;
    public               postgres    false    265   .P      D          0    18439    estadisticas_jugador 
   TABLE DATA           �   COPY public.estadisticas_jugador (id_estadisticas, asistencias, goles, minutos_jugados, tarjetas_amarillas, tarjetas_rojas, id_jugador, id_partido) FROM stdin;
    public               postgres    false    271   �Z      @          0    17290    jugador 
   TABLE DATA           l   COPY public.jugador (id_jugador, dorlsal, fecha_nac, nacionalidad, nombre, posicion, id_equipo) FROM stdin;
    public               postgres    false    267   �]      B          0    17298    partido 
   TABLE DATA           u   COPY public.partido (id_partido, estadio, fecha, goles_local, goles_visita, equipo_local, equipo_visita) FROM stdin;
    public               postgres    false    269   :j      6          0    16982    schema_migrations 
   TABLE DATA           C   COPY realtime.schema_migrations (version, inserted_at) FROM stdin;
    realtime               supabase_admin    false    253   `s      8          0    17005    subscription 
   TABLE DATA           b   COPY realtime.subscription (id, subscription_id, entity, filters, claims, created_at) FROM stdin;
    realtime               supabase_admin    false    256   u      (          0    16540    buckets 
   TABLE DATA           �   COPY storage.buckets (id, name, owner, created_at, updated_at, public, avif_autodetection, file_size_limit, allowed_mime_types, owner_id) FROM stdin;
    storage               supabase_storage_admin    false    236   :u      *          0    16582 
   migrations 
   TABLE DATA           B   COPY storage.migrations (id, name, hash, executed_at) FROM stdin;
    storage               supabase_storage_admin    false    238   Wu      )          0    16555    objects 
   TABLE DATA           �   COPY storage.objects (id, bucket_id, name, owner, created_at, updated_at, last_accessed_at, metadata, version, owner_id, user_metadata) FROM stdin;
    storage               supabase_storage_admin    false    237   z      9          0    17095    s3_multipart_uploads 
   TABLE DATA           �   COPY storage.s3_multipart_uploads (id, in_progress_size, upload_signature, bucket_id, key, version, owner_id, created_at, user_metadata) FROM stdin;
    storage               supabase_storage_admin    false    258   6z      :          0    17109    s3_multipart_uploads_parts 
   TABLE DATA           �   COPY storage.s3_multipart_uploads_parts (id, upload_id, size, part_number, bucket_id, key, etag, owner_id, version, created_at) FROM stdin;
    storage               supabase_storage_admin    false    259   Sz      �          0    16650    secrets 
   TABLE DATA           f   COPY vault.secrets (id, name, description, secret, key_id, nonce, created_at, updated_at) FROM stdin;
    vault               supabase_admin    false    239   pz      �           0    0    refresh_tokens_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('auth.refresh_tokens_id_seq', 1, false);
          auth               supabase_auth_admin    false    231            �           0    0    entrenador_id_entrenador_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.entrenador_id_entrenador_seq', 100, true);
          public               postgres    false    262            �           0    0    equipo_id_equipo_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.equipo_id_equipo_seq', 100, true);
          public               postgres    false    264            �           0    0 (   estadisticas_jugador_id_estadisticas_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.estadisticas_jugador_id_estadisticas_seq', 101, true);
          public               postgres    false    270            �           0    0    jugador_id_jugador_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.jugador_id_jugador_seq', 100, true);
          public               postgres    false    266            �           0    0    partido_id_partido_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.partido_id_partido_seq', 100, true);
          public               postgres    false    268            �           0    0    subscription_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('realtime.subscription_id_seq', 1, false);
          realtime               supabase_admin    false    255            .           2606    16807    mfa_amr_claims amr_id_pk 
   CONSTRAINT     T   ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT amr_id_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY auth.mfa_amr_claims DROP CONSTRAINT amr_id_pk;
       auth                 supabase_auth_admin    false    246                       2606    16525 (   audit_log_entries audit_log_entries_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY auth.audit_log_entries
    ADD CONSTRAINT audit_log_entries_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY auth.audit_log_entries DROP CONSTRAINT audit_log_entries_pkey;
       auth                 supabase_auth_admin    false    234            D           2606    16913    flow_state flow_state_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY auth.flow_state
    ADD CONSTRAINT flow_state_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY auth.flow_state DROP CONSTRAINT flow_state_pkey;
       auth                 supabase_auth_admin    false    251                       2606    16931    identities identities_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY auth.identities DROP CONSTRAINT identities_pkey;
       auth                 supabase_auth_admin    false    242                       2606    16941 1   identities identities_provider_id_provider_unique 
   CONSTRAINT     {   ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_provider_id_provider_unique UNIQUE (provider_id, provider);
 Y   ALTER TABLE ONLY auth.identities DROP CONSTRAINT identities_provider_id_provider_unique;
       auth                 supabase_auth_admin    false    242    242                       2606    16518    instances instances_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY auth.instances
    ADD CONSTRAINT instances_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY auth.instances DROP CONSTRAINT instances_pkey;
       auth                 supabase_auth_admin    false    233            0           2606    16800 C   mfa_amr_claims mfa_amr_claims_session_id_authentication_method_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT mfa_amr_claims_session_id_authentication_method_pkey UNIQUE (session_id, authentication_method);
 k   ALTER TABLE ONLY auth.mfa_amr_claims DROP CONSTRAINT mfa_amr_claims_session_id_authentication_method_pkey;
       auth                 supabase_auth_admin    false    246    246            ,           2606    16788 "   mfa_challenges mfa_challenges_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY auth.mfa_challenges
    ADD CONSTRAINT mfa_challenges_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY auth.mfa_challenges DROP CONSTRAINT mfa_challenges_pkey;
       auth                 supabase_auth_admin    false    245            $           2606    16981 .   mfa_factors mfa_factors_last_challenged_at_key 
   CONSTRAINT     u   ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_last_challenged_at_key UNIQUE (last_challenged_at);
 V   ALTER TABLE ONLY auth.mfa_factors DROP CONSTRAINT mfa_factors_last_challenged_at_key;
       auth                 supabase_auth_admin    false    244            &           2606    16775    mfa_factors mfa_factors_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY auth.mfa_factors DROP CONSTRAINT mfa_factors_pkey;
       auth                 supabase_auth_admin    false    244            H           2606    16966 $   one_time_tokens one_time_tokens_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY auth.one_time_tokens
    ADD CONSTRAINT one_time_tokens_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY auth.one_time_tokens DROP CONSTRAINT one_time_tokens_pkey;
       auth                 supabase_auth_admin    false    252            �           2606    16508 "   refresh_tokens refresh_tokens_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY auth.refresh_tokens DROP CONSTRAINT refresh_tokens_pkey;
       auth                 supabase_auth_admin    false    232            �           2606    16717 *   refresh_tokens refresh_tokens_token_unique 
   CONSTRAINT     d   ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_token_unique UNIQUE (token);
 R   ALTER TABLE ONLY auth.refresh_tokens DROP CONSTRAINT refresh_tokens_token_unique;
       auth                 supabase_auth_admin    false    232            9           2606    16847 +   saml_providers saml_providers_entity_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_entity_id_key UNIQUE (entity_id);
 S   ALTER TABLE ONLY auth.saml_providers DROP CONSTRAINT saml_providers_entity_id_key;
       auth                 supabase_auth_admin    false    249            ;           2606    16845 "   saml_providers saml_providers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY auth.saml_providers DROP CONSTRAINT saml_providers_pkey;
       auth                 supabase_auth_admin    false    249            @           2606    16861 (   saml_relay_states saml_relay_states_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY auth.saml_relay_states DROP CONSTRAINT saml_relay_states_pkey;
       auth                 supabase_auth_admin    false    250                       2606    16531 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 P   ALTER TABLE ONLY auth.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       auth                 supabase_auth_admin    false    235                       2606    16738    sessions sessions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY auth.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY auth.sessions DROP CONSTRAINT sessions_pkey;
       auth                 supabase_auth_admin    false    243            6           2606    16828    sso_domains sso_domains_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY auth.sso_domains
    ADD CONSTRAINT sso_domains_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY auth.sso_domains DROP CONSTRAINT sso_domains_pkey;
       auth                 supabase_auth_admin    false    248            2           2606    16819     sso_providers sso_providers_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY auth.sso_providers
    ADD CONSTRAINT sso_providers_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY auth.sso_providers DROP CONSTRAINT sso_providers_pkey;
       auth                 supabase_auth_admin    false    247            �           2606    16901    users users_phone_key 
   CONSTRAINT     O   ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);
 =   ALTER TABLE ONLY auth.users DROP CONSTRAINT users_phone_key;
       auth                 supabase_auth_admin    false    230            �           2606    16495    users users_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY auth.users DROP CONSTRAINT users_pkey;
       auth                 supabase_auth_admin    false    230            Z           2606    17274    entrenador entrenador_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.entrenador
    ADD CONSTRAINT entrenador_pkey PRIMARY KEY (id_entrenador);
 D   ALTER TABLE ONLY public.entrenador DROP CONSTRAINT entrenador_pkey;
       public                 postgres    false    263            \           2606    17282    equipo equipo_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.equipo
    ADD CONSTRAINT equipo_pkey PRIMARY KEY (id_equipo);
 <   ALTER TABLE ONLY public.equipo DROP CONSTRAINT equipo_pkey;
       public                 postgres    false    265            b           2606    18443 .   estadisticas_jugador estadisticas_jugador_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.estadisticas_jugador
    ADD CONSTRAINT estadisticas_jugador_pkey PRIMARY KEY (id_estadisticas);
 X   ALTER TABLE ONLY public.estadisticas_jugador DROP CONSTRAINT estadisticas_jugador_pkey;
       public                 postgres    false    271            ^           2606    17296    jugador jugador_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.jugador
    ADD CONSTRAINT jugador_pkey PRIMARY KEY (id_jugador);
 >   ALTER TABLE ONLY public.jugador DROP CONSTRAINT jugador_pkey;
       public                 postgres    false    267            `           2606    17302    partido partido_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.partido
    ADD CONSTRAINT partido_pkey PRIMARY KEY (id_partido);
 >   ALTER TABLE ONLY public.partido DROP CONSTRAINT partido_pkey;
       public                 postgres    false    269            X           2606    17242    messages messages_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY realtime.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id, inserted_at);
 B   ALTER TABLE ONLY realtime.messages DROP CONSTRAINT messages_pkey;
       realtime                 supabase_realtime_admin    false    261    261            P           2606    17013    subscription pk_subscription 
   CONSTRAINT     \   ALTER TABLE ONLY realtime.subscription
    ADD CONSTRAINT pk_subscription PRIMARY KEY (id);
 H   ALTER TABLE ONLY realtime.subscription DROP CONSTRAINT pk_subscription;
       realtime                 supabase_admin    false    256            M           2606    16986 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY realtime.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 T   ALTER TABLE ONLY realtime.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       realtime                 supabase_admin    false    253            
           2606    16548    buckets buckets_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY storage.buckets
    ADD CONSTRAINT buckets_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY storage.buckets DROP CONSTRAINT buckets_pkey;
       storage                 supabase_storage_admin    false    236                       2606    16589    migrations migrations_name_key 
   CONSTRAINT     Z   ALTER TABLE ONLY storage.migrations
    ADD CONSTRAINT migrations_name_key UNIQUE (name);
 I   ALTER TABLE ONLY storage.migrations DROP CONSTRAINT migrations_name_key;
       storage                 supabase_storage_admin    false    238                       2606    16587    migrations migrations_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY storage.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY storage.migrations DROP CONSTRAINT migrations_pkey;
       storage                 supabase_storage_admin    false    238                       2606    16565    objects objects_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY storage.objects
    ADD CONSTRAINT objects_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY storage.objects DROP CONSTRAINT objects_pkey;
       storage                 supabase_storage_admin    false    237            V           2606    17118 :   s3_multipart_uploads_parts s3_multipart_uploads_parts_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_pkey PRIMARY KEY (id);
 e   ALTER TABLE ONLY storage.s3_multipart_uploads_parts DROP CONSTRAINT s3_multipart_uploads_parts_pkey;
       storage                 supabase_storage_admin    false    259            T           2606    17103 .   s3_multipart_uploads s3_multipart_uploads_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY storage.s3_multipart_uploads
    ADD CONSTRAINT s3_multipart_uploads_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY storage.s3_multipart_uploads DROP CONSTRAINT s3_multipart_uploads_pkey;
       storage                 supabase_storage_admin    false    258                       1259    16526    audit_logs_instance_id_idx    INDEX     ]   CREATE INDEX audit_logs_instance_id_idx ON auth.audit_log_entries USING btree (instance_id);
 ,   DROP INDEX auth.audit_logs_instance_id_idx;
       auth                 supabase_auth_admin    false    234            �           1259    16727    confirmation_token_idx    INDEX     �   CREATE UNIQUE INDEX confirmation_token_idx ON auth.users USING btree (confirmation_token) WHERE ((confirmation_token)::text !~ '^[0-9 ]*$'::text);
 (   DROP INDEX auth.confirmation_token_idx;
       auth                 supabase_auth_admin    false    230    230            �           1259    16729    email_change_token_current_idx    INDEX     �   CREATE UNIQUE INDEX email_change_token_current_idx ON auth.users USING btree (email_change_token_current) WHERE ((email_change_token_current)::text !~ '^[0-9 ]*$'::text);
 0   DROP INDEX auth.email_change_token_current_idx;
       auth                 supabase_auth_admin    false    230    230            �           1259    16730    email_change_token_new_idx    INDEX     �   CREATE UNIQUE INDEX email_change_token_new_idx ON auth.users USING btree (email_change_token_new) WHERE ((email_change_token_new)::text !~ '^[0-9 ]*$'::text);
 ,   DROP INDEX auth.email_change_token_new_idx;
       auth                 supabase_auth_admin    false    230    230            "           1259    16809    factor_id_created_at_idx    INDEX     ]   CREATE INDEX factor_id_created_at_idx ON auth.mfa_factors USING btree (user_id, created_at);
 *   DROP INDEX auth.factor_id_created_at_idx;
       auth                 supabase_auth_admin    false    244    244            B           1259    16917    flow_state_created_at_idx    INDEX     Y   CREATE INDEX flow_state_created_at_idx ON auth.flow_state USING btree (created_at DESC);
 +   DROP INDEX auth.flow_state_created_at_idx;
       auth                 supabase_auth_admin    false    251                       1259    16897    identities_email_idx    INDEX     [   CREATE INDEX identities_email_idx ON auth.identities USING btree (email text_pattern_ops);
 &   DROP INDEX auth.identities_email_idx;
       auth                 supabase_auth_admin    false    242            �           0    0    INDEX identities_email_idx    COMMENT     c   COMMENT ON INDEX auth.identities_email_idx IS 'Auth: Ensures indexed queries on the email column';
          auth               supabase_auth_admin    false    3607                       1259    16724    identities_user_id_idx    INDEX     N   CREATE INDEX identities_user_id_idx ON auth.identities USING btree (user_id);
 (   DROP INDEX auth.identities_user_id_idx;
       auth                 supabase_auth_admin    false    242            E           1259    16914    idx_auth_code    INDEX     G   CREATE INDEX idx_auth_code ON auth.flow_state USING btree (auth_code);
    DROP INDEX auth.idx_auth_code;
       auth                 supabase_auth_admin    false    251            F           1259    16915    idx_user_id_auth_method    INDEX     f   CREATE INDEX idx_user_id_auth_method ON auth.flow_state USING btree (user_id, authentication_method);
 )   DROP INDEX auth.idx_user_id_auth_method;
       auth                 supabase_auth_admin    false    251    251            *           1259    16920    mfa_challenge_created_at_idx    INDEX     `   CREATE INDEX mfa_challenge_created_at_idx ON auth.mfa_challenges USING btree (created_at DESC);
 .   DROP INDEX auth.mfa_challenge_created_at_idx;
       auth                 supabase_auth_admin    false    245            '           1259    16781 %   mfa_factors_user_friendly_name_unique    INDEX     �   CREATE UNIQUE INDEX mfa_factors_user_friendly_name_unique ON auth.mfa_factors USING btree (friendly_name, user_id) WHERE (TRIM(BOTH FROM friendly_name) <> ''::text);
 7   DROP INDEX auth.mfa_factors_user_friendly_name_unique;
       auth                 supabase_auth_admin    false    244    244    244            (           1259    16926    mfa_factors_user_id_idx    INDEX     P   CREATE INDEX mfa_factors_user_id_idx ON auth.mfa_factors USING btree (user_id);
 )   DROP INDEX auth.mfa_factors_user_id_idx;
       auth                 supabase_auth_admin    false    244            I           1259    16973 #   one_time_tokens_relates_to_hash_idx    INDEX     b   CREATE INDEX one_time_tokens_relates_to_hash_idx ON auth.one_time_tokens USING hash (relates_to);
 5   DROP INDEX auth.one_time_tokens_relates_to_hash_idx;
       auth                 supabase_auth_admin    false    252            J           1259    16972 #   one_time_tokens_token_hash_hash_idx    INDEX     b   CREATE INDEX one_time_tokens_token_hash_hash_idx ON auth.one_time_tokens USING hash (token_hash);
 5   DROP INDEX auth.one_time_tokens_token_hash_hash_idx;
       auth                 supabase_auth_admin    false    252            K           1259    16974 &   one_time_tokens_user_id_token_type_key    INDEX     v   CREATE UNIQUE INDEX one_time_tokens_user_id_token_type_key ON auth.one_time_tokens USING btree (user_id, token_type);
 8   DROP INDEX auth.one_time_tokens_user_id_token_type_key;
       auth                 supabase_auth_admin    false    252    252            �           1259    16731    reauthentication_token_idx    INDEX     �   CREATE UNIQUE INDEX reauthentication_token_idx ON auth.users USING btree (reauthentication_token) WHERE ((reauthentication_token)::text !~ '^[0-9 ]*$'::text);
 ,   DROP INDEX auth.reauthentication_token_idx;
       auth                 supabase_auth_admin    false    230    230            �           1259    16728    recovery_token_idx    INDEX     �   CREATE UNIQUE INDEX recovery_token_idx ON auth.users USING btree (recovery_token) WHERE ((recovery_token)::text !~ '^[0-9 ]*$'::text);
 $   DROP INDEX auth.recovery_token_idx;
       auth                 supabase_auth_admin    false    230    230            �           1259    16509    refresh_tokens_instance_id_idx    INDEX     ^   CREATE INDEX refresh_tokens_instance_id_idx ON auth.refresh_tokens USING btree (instance_id);
 0   DROP INDEX auth.refresh_tokens_instance_id_idx;
       auth                 supabase_auth_admin    false    232            �           1259    16510 &   refresh_tokens_instance_id_user_id_idx    INDEX     o   CREATE INDEX refresh_tokens_instance_id_user_id_idx ON auth.refresh_tokens USING btree (instance_id, user_id);
 8   DROP INDEX auth.refresh_tokens_instance_id_user_id_idx;
       auth                 supabase_auth_admin    false    232    232            �           1259    16723    refresh_tokens_parent_idx    INDEX     T   CREATE INDEX refresh_tokens_parent_idx ON auth.refresh_tokens USING btree (parent);
 +   DROP INDEX auth.refresh_tokens_parent_idx;
       auth                 supabase_auth_admin    false    232            �           1259    16811 %   refresh_tokens_session_id_revoked_idx    INDEX     m   CREATE INDEX refresh_tokens_session_id_revoked_idx ON auth.refresh_tokens USING btree (session_id, revoked);
 7   DROP INDEX auth.refresh_tokens_session_id_revoked_idx;
       auth                 supabase_auth_admin    false    232    232                        1259    16916    refresh_tokens_updated_at_idx    INDEX     a   CREATE INDEX refresh_tokens_updated_at_idx ON auth.refresh_tokens USING btree (updated_at DESC);
 /   DROP INDEX auth.refresh_tokens_updated_at_idx;
       auth                 supabase_auth_admin    false    232            <           1259    16853 "   saml_providers_sso_provider_id_idx    INDEX     f   CREATE INDEX saml_providers_sso_provider_id_idx ON auth.saml_providers USING btree (sso_provider_id);
 4   DROP INDEX auth.saml_providers_sso_provider_id_idx;
       auth                 supabase_auth_admin    false    249            =           1259    16918     saml_relay_states_created_at_idx    INDEX     g   CREATE INDEX saml_relay_states_created_at_idx ON auth.saml_relay_states USING btree (created_at DESC);
 2   DROP INDEX auth.saml_relay_states_created_at_idx;
       auth                 supabase_auth_admin    false    250            >           1259    16868    saml_relay_states_for_email_idx    INDEX     `   CREATE INDEX saml_relay_states_for_email_idx ON auth.saml_relay_states USING btree (for_email);
 1   DROP INDEX auth.saml_relay_states_for_email_idx;
       auth                 supabase_auth_admin    false    250            A           1259    16867 %   saml_relay_states_sso_provider_id_idx    INDEX     l   CREATE INDEX saml_relay_states_sso_provider_id_idx ON auth.saml_relay_states USING btree (sso_provider_id);
 7   DROP INDEX auth.saml_relay_states_sso_provider_id_idx;
       auth                 supabase_auth_admin    false    250                       1259    16919    sessions_not_after_idx    INDEX     S   CREATE INDEX sessions_not_after_idx ON auth.sessions USING btree (not_after DESC);
 (   DROP INDEX auth.sessions_not_after_idx;
       auth                 supabase_auth_admin    false    243                        1259    16810    sessions_user_id_idx    INDEX     J   CREATE INDEX sessions_user_id_idx ON auth.sessions USING btree (user_id);
 &   DROP INDEX auth.sessions_user_id_idx;
       auth                 supabase_auth_admin    false    243            4           1259    16835    sso_domains_domain_idx    INDEX     \   CREATE UNIQUE INDEX sso_domains_domain_idx ON auth.sso_domains USING btree (lower(domain));
 (   DROP INDEX auth.sso_domains_domain_idx;
       auth                 supabase_auth_admin    false    248    248            7           1259    16834    sso_domains_sso_provider_id_idx    INDEX     `   CREATE INDEX sso_domains_sso_provider_id_idx ON auth.sso_domains USING btree (sso_provider_id);
 1   DROP INDEX auth.sso_domains_sso_provider_id_idx;
       auth                 supabase_auth_admin    false    248            3           1259    16820    sso_providers_resource_id_idx    INDEX     j   CREATE UNIQUE INDEX sso_providers_resource_id_idx ON auth.sso_providers USING btree (lower(resource_id));
 /   DROP INDEX auth.sso_providers_resource_id_idx;
       auth                 supabase_auth_admin    false    247    247            )           1259    16979    unique_phone_factor_per_user    INDEX     c   CREATE UNIQUE INDEX unique_phone_factor_per_user ON auth.mfa_factors USING btree (user_id, phone);
 .   DROP INDEX auth.unique_phone_factor_per_user;
       auth                 supabase_auth_admin    false    244    244            !           1259    16808    user_id_created_at_idx    INDEX     X   CREATE INDEX user_id_created_at_idx ON auth.sessions USING btree (user_id, created_at);
 (   DROP INDEX auth.user_id_created_at_idx;
       auth                 supabase_auth_admin    false    243    243            �           1259    16888    users_email_partial_key    INDEX     k   CREATE UNIQUE INDEX users_email_partial_key ON auth.users USING btree (email) WHERE (is_sso_user = false);
 )   DROP INDEX auth.users_email_partial_key;
       auth                 supabase_auth_admin    false    230    230            �           0    0    INDEX users_email_partial_key    COMMENT     }   COMMENT ON INDEX auth.users_email_partial_key IS 'Auth: A partial unique index that applies only when is_sso_user is false';
          auth               supabase_auth_admin    false    3568            �           1259    16725    users_instance_id_email_idx    INDEX     h   CREATE INDEX users_instance_id_email_idx ON auth.users USING btree (instance_id, lower((email)::text));
 -   DROP INDEX auth.users_instance_id_email_idx;
       auth                 supabase_auth_admin    false    230    230            �           1259    16499    users_instance_id_idx    INDEX     L   CREATE INDEX users_instance_id_idx ON auth.users USING btree (instance_id);
 '   DROP INDEX auth.users_instance_id_idx;
       auth                 supabase_auth_admin    false    230            �           1259    16943    users_is_anonymous_idx    INDEX     N   CREATE INDEX users_is_anonymous_idx ON auth.users USING btree (is_anonymous);
 (   DROP INDEX auth.users_is_anonymous_idx;
       auth                 supabase_auth_admin    false    230            N           1259    17243    ix_realtime_subscription_entity    INDEX     \   CREATE INDEX ix_realtime_subscription_entity ON realtime.subscription USING btree (entity);
 5   DROP INDEX realtime.ix_realtime_subscription_entity;
       realtime                 supabase_admin    false    256            Q           1259    17074 /   subscription_subscription_id_entity_filters_key    INDEX     �   CREATE UNIQUE INDEX subscription_subscription_id_entity_filters_key ON realtime.subscription USING btree (subscription_id, entity, filters);
 E   DROP INDEX realtime.subscription_subscription_id_entity_filters_key;
       realtime                 supabase_admin    false    256    256    256                       1259    16554    bname    INDEX     A   CREATE UNIQUE INDEX bname ON storage.buckets USING btree (name);
    DROP INDEX storage.bname;
       storage                 supabase_storage_admin    false    236                       1259    16576    bucketid_objname    INDEX     W   CREATE UNIQUE INDEX bucketid_objname ON storage.objects USING btree (bucket_id, name);
 %   DROP INDEX storage.bucketid_objname;
       storage                 supabase_storage_admin    false    237    237            R           1259    17129    idx_multipart_uploads_list    INDEX     r   CREATE INDEX idx_multipart_uploads_list ON storage.s3_multipart_uploads USING btree (bucket_id, key, created_at);
 /   DROP INDEX storage.idx_multipart_uploads_list;
       storage                 supabase_storage_admin    false    258    258    258                       1259    17094    idx_objects_bucket_id_name    INDEX     f   CREATE INDEX idx_objects_bucket_id_name ON storage.objects USING btree (bucket_id, name COLLATE "C");
 /   DROP INDEX storage.idx_objects_bucket_id_name;
       storage                 supabase_storage_admin    false    237    237                       1259    16577    name_prefix_search    INDEX     X   CREATE INDEX name_prefix_search ON storage.objects USING btree (name text_pattern_ops);
 '   DROP INDEX storage.name_prefix_search;
       storage                 supabase_storage_admin    false    237            y           2620    17018    subscription tr_check_filters    TRIGGER     �   CREATE TRIGGER tr_check_filters BEFORE INSERT OR UPDATE ON realtime.subscription FOR EACH ROW EXECUTE FUNCTION realtime.subscription_check_filters();
 8   DROP TRIGGER tr_check_filters ON realtime.subscription;
       realtime               supabase_admin    false    256    379            x           2620    17082 !   objects update_objects_updated_at    TRIGGER     �   CREATE TRIGGER update_objects_updated_at BEFORE UPDATE ON storage.objects FOR EACH ROW EXECUTE FUNCTION storage.update_updated_at_column();
 ;   DROP TRIGGER update_objects_updated_at ON storage.objects;
       storage               supabase_storage_admin    false    363    237            e           2606    16711 "   identities identities_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY auth.identities DROP CONSTRAINT identities_user_id_fkey;
       auth               supabase_auth_admin    false    242    3575    230            i           2606    16801 -   mfa_amr_claims mfa_amr_claims_session_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT mfa_amr_claims_session_id_fkey FOREIGN KEY (session_id) REFERENCES auth.sessions(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY auth.mfa_amr_claims DROP CONSTRAINT mfa_amr_claims_session_id_fkey;
       auth               supabase_auth_admin    false    243    3615    246            h           2606    16789 1   mfa_challenges mfa_challenges_auth_factor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_challenges
    ADD CONSTRAINT mfa_challenges_auth_factor_id_fkey FOREIGN KEY (factor_id) REFERENCES auth.mfa_factors(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY auth.mfa_challenges DROP CONSTRAINT mfa_challenges_auth_factor_id_fkey;
       auth               supabase_auth_admin    false    244    245    3622            g           2606    16776 $   mfa_factors mfa_factors_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY auth.mfa_factors DROP CONSTRAINT mfa_factors_user_id_fkey;
       auth               supabase_auth_admin    false    3575    244    230            n           2606    16967 ,   one_time_tokens one_time_tokens_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.one_time_tokens
    ADD CONSTRAINT one_time_tokens_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY auth.one_time_tokens DROP CONSTRAINT one_time_tokens_user_id_fkey;
       auth               supabase_auth_admin    false    3575    230    252            c           2606    16744 -   refresh_tokens refresh_tokens_session_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_session_id_fkey FOREIGN KEY (session_id) REFERENCES auth.sessions(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY auth.refresh_tokens DROP CONSTRAINT refresh_tokens_session_id_fkey;
       auth               supabase_auth_admin    false    3615    243    232            k           2606    16848 2   saml_providers saml_providers_sso_provider_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY auth.saml_providers DROP CONSTRAINT saml_providers_sso_provider_id_fkey;
       auth               supabase_auth_admin    false    247    249    3634            l           2606    16921 6   saml_relay_states saml_relay_states_flow_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_flow_state_id_fkey FOREIGN KEY (flow_state_id) REFERENCES auth.flow_state(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY auth.saml_relay_states DROP CONSTRAINT saml_relay_states_flow_state_id_fkey;
       auth               supabase_auth_admin    false    251    250    3652            m           2606    16862 8   saml_relay_states saml_relay_states_sso_provider_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY auth.saml_relay_states DROP CONSTRAINT saml_relay_states_sso_provider_id_fkey;
       auth               supabase_auth_admin    false    3634    250    247            f           2606    16739    sessions sessions_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.sessions
    ADD CONSTRAINT sessions_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 F   ALTER TABLE ONLY auth.sessions DROP CONSTRAINT sessions_user_id_fkey;
       auth               supabase_auth_admin    false    243    230    3575            j           2606    16829 ,   sso_domains sso_domains_sso_provider_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.sso_domains
    ADD CONSTRAINT sso_domains_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY auth.sso_domains DROP CONSTRAINT sso_domains_sso_provider_id_fkey;
       auth               supabase_auth_admin    false    3634    247    248            t           2606    17323 #   partido fk1q3nbh68hi4xmjtvh8kp65mw1    FK CONSTRAINT     �   ALTER TABLE ONLY public.partido
    ADD CONSTRAINT fk1q3nbh68hi4xmjtvh8kp65mw1 FOREIGN KEY (equipo_local) REFERENCES public.equipo(id_equipo);
 M   ALTER TABLE ONLY public.partido DROP CONSTRAINT fk1q3nbh68hi4xmjtvh8kp65mw1;
       public               postgres    false    265    3676    269            v           2606    18444 0   estadisticas_jugador fkf2qbhoo8qtj60gbvsfrqablkj    FK CONSTRAINT     �   ALTER TABLE ONLY public.estadisticas_jugador
    ADD CONSTRAINT fkf2qbhoo8qtj60gbvsfrqablkj FOREIGN KEY (id_jugador) REFERENCES public.jugador(id_jugador);
 Z   ALTER TABLE ONLY public.estadisticas_jugador DROP CONSTRAINT fkf2qbhoo8qtj60gbvsfrqablkj;
       public               postgres    false    267    271    3678            r           2606    17303 &   entrenador fkg82oo5rvhpeu6edjri36kjgkl    FK CONSTRAINT     �   ALTER TABLE ONLY public.entrenador
    ADD CONSTRAINT fkg82oo5rvhpeu6edjri36kjgkl FOREIGN KEY (id_equipo) REFERENCES public.equipo(id_equipo);
 P   ALTER TABLE ONLY public.entrenador DROP CONSTRAINT fkg82oo5rvhpeu6edjri36kjgkl;
       public               postgres    false    263    265    3676            s           2606    17318 #   jugador fki60lqb7emposedyui33q42u1i    FK CONSTRAINT     �   ALTER TABLE ONLY public.jugador
    ADD CONSTRAINT fki60lqb7emposedyui33q42u1i FOREIGN KEY (id_equipo) REFERENCES public.equipo(id_equipo);
 M   ALTER TABLE ONLY public.jugador DROP CONSTRAINT fki60lqb7emposedyui33q42u1i;
       public               postgres    false    3676    265    267            w           2606    18449 0   estadisticas_jugador fkikwv19j65fjjlmss3l4q7ih7h    FK CONSTRAINT     �   ALTER TABLE ONLY public.estadisticas_jugador
    ADD CONSTRAINT fkikwv19j65fjjlmss3l4q7ih7h FOREIGN KEY (id_partido) REFERENCES public.partido(id_partido);
 Z   ALTER TABLE ONLY public.estadisticas_jugador DROP CONSTRAINT fkikwv19j65fjjlmss3l4q7ih7h;
       public               postgres    false    3680    271    269            u           2606    17328 #   partido fkp3l4xr7d0ieyxxk9gp6iyo4sj    FK CONSTRAINT     �   ALTER TABLE ONLY public.partido
    ADD CONSTRAINT fkp3l4xr7d0ieyxxk9gp6iyo4sj FOREIGN KEY (equipo_visita) REFERENCES public.equipo(id_equipo);
 M   ALTER TABLE ONLY public.partido DROP CONSTRAINT fkp3l4xr7d0ieyxxk9gp6iyo4sj;
       public               postgres    false    3676    269    265            d           2606    16566    objects objects_bucketId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.objects
    ADD CONSTRAINT "objects_bucketId_fkey" FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);
 J   ALTER TABLE ONLY storage.objects DROP CONSTRAINT "objects_bucketId_fkey";
       storage               supabase_storage_admin    false    3594    237    236            o           2606    17104 8   s3_multipart_uploads s3_multipart_uploads_bucket_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.s3_multipart_uploads
    ADD CONSTRAINT s3_multipart_uploads_bucket_id_fkey FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);
 c   ALTER TABLE ONLY storage.s3_multipart_uploads DROP CONSTRAINT s3_multipart_uploads_bucket_id_fkey;
       storage               supabase_storage_admin    false    3594    236    258            p           2606    17124 D   s3_multipart_uploads_parts s3_multipart_uploads_parts_bucket_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_bucket_id_fkey FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);
 o   ALTER TABLE ONLY storage.s3_multipart_uploads_parts DROP CONSTRAINT s3_multipart_uploads_parts_bucket_id_fkey;
       storage               supabase_storage_admin    false    3594    259    236            q           2606    17119 D   s3_multipart_uploads_parts s3_multipart_uploads_parts_upload_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_upload_id_fkey FOREIGN KEY (upload_id) REFERENCES storage.s3_multipart_uploads(id) ON DELETE CASCADE;
 o   ALTER TABLE ONLY storage.s3_multipart_uploads_parts DROP CONSTRAINT s3_multipart_uploads_parts_upload_id_fkey;
       storage               supabase_storage_admin    false    259    258    3668                       0    16519    audit_log_entries    ROW SECURITY     =   ALTER TABLE auth.audit_log_entries ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    234                       0    16907 
   flow_state    ROW SECURITY     6   ALTER TABLE auth.flow_state ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    251                       0    16704 
   identities    ROW SECURITY     6   ALTER TABLE auth.identities ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    242                       0    16512 	   instances    ROW SECURITY     5   ALTER TABLE auth.instances ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    233                       0    16794    mfa_amr_claims    ROW SECURITY     :   ALTER TABLE auth.mfa_amr_claims ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    246                       0    16782    mfa_challenges    ROW SECURITY     :   ALTER TABLE auth.mfa_challenges ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    245                       0    16769    mfa_factors    ROW SECURITY     7   ALTER TABLE auth.mfa_factors ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    244                       0    16957    one_time_tokens    ROW SECURITY     ;   ALTER TABLE auth.one_time_tokens ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    252                       0    16501    refresh_tokens    ROW SECURITY     :   ALTER TABLE auth.refresh_tokens ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    232                       0    16836    saml_providers    ROW SECURITY     :   ALTER TABLE auth.saml_providers ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    249                       0    16854    saml_relay_states    ROW SECURITY     =   ALTER TABLE auth.saml_relay_states ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    250                       0    16527    schema_migrations    ROW SECURITY     =   ALTER TABLE auth.schema_migrations ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    235                       0    16734    sessions    ROW SECURITY     4   ALTER TABLE auth.sessions ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    243                       0    16821    sso_domains    ROW SECURITY     7   ALTER TABLE auth.sso_domains ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    248                       0    16812    sso_providers    ROW SECURITY     9   ALTER TABLE auth.sso_providers ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    247                       0    16489    users    ROW SECURITY     1   ALTER TABLE auth.users ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    230                        0    17228    messages    ROW SECURITY     8   ALTER TABLE realtime.messages ENABLE ROW LEVEL SECURITY;          realtime               supabase_realtime_admin    false    261                       0    16540    buckets    ROW SECURITY     6   ALTER TABLE storage.buckets ENABLE ROW LEVEL SECURITY;          storage               supabase_storage_admin    false    236                       0    16582 
   migrations    ROW SECURITY     9   ALTER TABLE storage.migrations ENABLE ROW LEVEL SECURITY;          storage               supabase_storage_admin    false    238                       0    16555    objects    ROW SECURITY     6   ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;          storage               supabase_storage_admin    false    237                       0    17095    s3_multipart_uploads    ROW SECURITY     C   ALTER TABLE storage.s3_multipart_uploads ENABLE ROW LEVEL SECURITY;          storage               supabase_storage_admin    false    258                       0    17109    s3_multipart_uploads_parts    ROW SECURITY     I   ALTER TABLE storage.s3_multipart_uploads_parts ENABLE ROW LEVEL SECURITY;          storage               supabase_storage_admin    false    259            !           6104    16420    supabase_realtime    PUBLICATION     Z   CREATE PUBLICATION supabase_realtime WITH (publish = 'insert, update, delete, truncate');
 $   DROP PUBLICATION supabase_realtime;
                     postgres    false            	           826    16597     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON SEQUENCES TO dashboard_user;
          auth               supabase_auth_admin    false    15            	           826    16598     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON FUNCTIONS TO dashboard_user;
          auth               supabase_auth_admin    false    15            	           826    16596    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     :  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO dashboard_user;
          auth               supabase_auth_admin    false    15            !	           826    16671     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     |   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT ALL ON SEQUENCES TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    13             	           826    16670     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     |   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT ALL ON FUNCTIONS TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    13            	           826    16669    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    13            $	           826    16631     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO service_role;
          graphql               supabase_admin    false    18            #	           826    16630     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO service_role;
          graphql               supabase_admin    false    18            "	           826    16629    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     e  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO service_role;
          graphql               supabase_admin    false    18            	           826    16611     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO service_role;
          graphql_public               supabase_admin    false    17            	           826    16610     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO service_role;
          graphql_public               supabase_admin    false    17            	           826    16609    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO service_role;
          graphql_public               supabase_admin    false    17            	           826    16484     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO service_role;
          public               postgres    false            	           826    16485     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO service_role;
          public               supabase_admin    false            	           826    16483     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO service_role;
          public               postgres    false            	           826    16487     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO service_role;
          public               supabase_admin    false            	           826    16482    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     I  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO service_role;
          public               postgres    false            	           826    16486    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     a  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO service_role;
          public               supabase_admin    false            	           826    16601     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON SEQUENCES TO dashboard_user;
          realtime               supabase_admin    false    19            	           826    16602     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON FUNCTIONS TO dashboard_user;
          realtime               supabase_admin    false    19            	           826    16600    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     8  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO dashboard_user;
          realtime               supabase_admin    false    19            	           826    16539     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO service_role;
          storage               postgres    false    14            	           826    16538     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO service_role;
          storage               postgres    false    14            	           826    16537    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     M  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO service_role;
          storage               postgres    false    14            �           3466    16615    issue_graphql_placeholder    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_graphql_placeholder ON sql_drop
         WHEN TAG IN ('DROP EXTENSION')
   EXECUTE FUNCTION extensions.set_graphql_placeholder();
 .   DROP EVENT TRIGGER issue_graphql_placeholder;
                     supabase_admin    false    351            �           3466    16684    issue_pg_cron_access    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_pg_cron_access ON ddl_command_end
         WHEN TAG IN ('CREATE EXTENSION')
   EXECUTE FUNCTION extensions.grant_pg_cron_access();
 )   DROP EVENT TRIGGER issue_pg_cron_access;
                     supabase_admin    false    344            �           3466    16613    issue_pg_graphql_access    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_pg_graphql_access ON ddl_command_end
         WHEN TAG IN ('CREATE FUNCTION')
   EXECUTE FUNCTION extensions.grant_pg_graphql_access();
 ,   DROP EVENT TRIGGER issue_pg_graphql_access;
                     supabase_admin    false    352            �           3466    16594    issue_pg_net_access    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_pg_net_access ON ddl_command_end
         WHEN TAG IN ('CREATE EXTENSION')
   EXECUTE FUNCTION extensions.grant_pg_net_access();
 (   DROP EVENT TRIGGER issue_pg_net_access;
                     postgres    false    350            �           3466    16616    pgrst_ddl_watch    EVENT TRIGGER     j   CREATE EVENT TRIGGER pgrst_ddl_watch ON ddl_command_end
   EXECUTE FUNCTION extensions.pgrst_ddl_watch();
 $   DROP EVENT TRIGGER pgrst_ddl_watch;
                     supabase_admin    false    349            �           3466    16617    pgrst_drop_watch    EVENT TRIGGER     e   CREATE EVENT TRIGGER pgrst_drop_watch ON sql_drop
   EXECUTE FUNCTION extensions.pgrst_drop_watch();
 %   DROP EVENT TRIGGER pgrst_drop_watch;
                     supabase_admin    false    307            &      x������ � �      4      x������ � �      +      x������ � �      %      x������ � �      /      x������ � �      .      x������ � �      -      x������ � �      5      x������ � �      $      x������ � �      2      x������ � �      3      x������ � �      '   L  x�U�ɕ1�{�G�%��?�)Z��}��,�F�����7=��`N�����ML"Zb��)�e�_S<��䋮[N��i�v�Nv8�M�Dn����~�X�[ܡ�F�Ɠ�H���S� �v^Zp�_�W��͆��/*�Z�;rUk��d�9^�æ��#��`���i;/��p�����[�S��5�C�qf�D��͹���Վ�TsF},:�./������7�p�9�U�"QSP�C홆M�D�&hZ��w7�������Î��w^�AŏZu���"�sS��ܻZ��TS|Q��{_;�EЪ<8{>�4�Cծ����������      ,      x������ � �      1      x������ � �      0      x������ � �      "      x������ � �      <   �  x�uX�r�J���b��DE�������U��um2"Ƽ�gt���~�C\Μ���4HQ�[��6<L�y�&j޻~m�����y��"��C�>wq���M��ÄRu����Q��?z^{,/�h6�F}�?:�Y��gP)e��w�o��G��xg;�ŬB4*�\��hk�~X:���ߚ�f|���������S!�qi�¶�׷nczUP�v���4�C�~aUI�T�|�8�~gb����<�'UQ-���K��!Zo�m���߽���F:��}g�6?7��`TC�L�~�1�v�Ơ��x���6n�ݪdFI"�eÑ��_��{��Cg[��P�
�o�7]����6x<�o|�WIJ���<��n���IF��儩>���yƚ{�ol�O�H(߸�D}ܙ�u8dhM\[�����x�?l�&w�7*))��ÿ�%��@��j��>�r�T��R�g] �G������n�:�Ԕ�`�G�]kZ��yt�O;������t&"«�m��iR�Jg�&���2��o�E�<�%�K`�Љ�p1������z��w�x?�4����h�9:�6|m@�4�TB{��yg��� =A�iNi!ri���EJ	�W
Jߐv��`�g��K���lD��VRZI/��k�I������*�F� j}3�i]Mi#�=.�gV ��l�r*��l&}�İ%�����L���$0��2�]RØ��ѿ�˰���2	�9zn��j����GWoP�/�28�������U�~��ｍ0�e��U��꽶[�	���T{��5�O�S��pv������2�s�e�q=z ؗ���g߇���=��l�a�|f�A�*�(U>�@���}c��Ў?�ZM�Ȁ�x
�ڿ��ǟ<*k(�}>�������|�����ڥ����g�K^��"&�ũ�c��a�P�Jŝ�Ag����~�R�)噈�O>pgV<��79f�H�Ko�����r`WyN�H�C.͚��߰��\������ɞ��W�	��}{�q����5�(��$h�����շ�r���$�3P��:��ʆ
���r�	����Q!���7��s$:�o��'���
�����i�v�����r�"�B��=�b�Ѝ�"�wn�52��REF��0���.mY5��0Tr��2/���r�׬�G4x�QEA�4�/����|�����zU�TH`�5@}A�[�i�q:3K6���Br�W:}1O�)k*D�o'����	ݵ��'v�9�3�N�����r�;v H��Q)��g���,����dP&T���H{k,2�!���ε*S*�D�+�=�K��e�!�PP�Q)��)n�a{��t�eNe!�ON�"����L�#���"�.x��S2WeI�8؏;���̧8~̉�{f6�LUVT�B�;�鰴�MM�͂4�[YS��3�\8��s��1���P%���X�~1��aR�U"�WX��3A&�z���UB�4��9�ݝ����6`�V)U����n��~���u�`��2��7��b7G��y����*)ĳ�׵�uSUU��?E�+���"lr5��Y��&��bX0t'0�~�D�*��پ��� �BbUS����?�3���@a��ў�j1��<�c����0�d?�	�p?�Q�����D��)&NL����9����y|X+��I�)��,?���k�S��y�:�Z���C"\����7�K�>uN���ރ��|��Em��1�8���o�K�<o�j9� ��qeP�K�U5n�"��������򵺦Z$��f���N����IܓS!&�H}��~F���y\M��%�^��)���V5	5"Ȝ��Z/�����a�R#�������q���f�dԈ���t��Ԉb��;k���q,n
jD|����$���$���n�R�����UMI��5�{��s=.|�nSQ#���ב��t��ō����|���S�Ӡ����|��٠��O��L�+��� ��      >   x
  x�uX�v������:x?B��eyE�W��ɐ��Fb��{�l?E�>Μ��n�̀"Ľ�e	��鮮�F���ȼI�7��	ˤ���3g*ՓTl)jo�X�b��+޸�s�j�ۊ���^ż��[��`N��$~�;3����?eJq%���ɹ;_;�e�Q�SK
�f~�Q�|R�+k�9[>�t�m:^y�l�{���>�;sV��s������疉��~m�x;�+ߊq��J?
�y����̻�j����+������l���={l�����,���s���u�82����\/��e[y�,n�zD~X8�����>�ݜ_�S�����n�_w��fb=�-:��(k���n���޿���-���͆+V��>ĪV�R]�Ĺ@TV!�K%��t�8�]�Yݱ��%8��D��@�;�$��&M�)6N���%Sl�_tj��NΧ`�2gͲC���4C?P*@��d#���2i�R�:��E��`�/BH��Tݓ�nd�����_�%7L,6.d���j:�A)Rȏ�g�Ի:�:������z\��bB�玫����^�!�+Ӈn�����iM�n�T+��d݉
�w�ad��M��P�����T�=���^ �1�޺UW�
XU�5�e�\m)6j%i^�T74��T[��A:'D�k����a�P[b��\�#T�4�b�)
=9@���O�t#��n?
��n��G$4c`�?+� 72��D�W����
�ŕ�3���c�n���@JȢ9�T�b��w%���?o� 3=�`��ڔ J.�r���<"�� ���]+ʌ�����+_+�rd8���?-�~��H�݊�4�Ҁ�xfl���sm��hq�mYES�D_��uW�3o���Tb[}�iyU��Zh��-v�d�����tboF;*-=�c��H��)�n�c<���8�N�O���i��Z��xGh�qß�_�J,����؂{�B�!�|#?W�#�_���Ϥ$�Mt��$g��/�K�'0HI������²^k���M�ݒ���;����Qu�'�K$s
�L�-r>Br^�Z%P�x����ҜK��e�O�PB�
h4x�⏸^6JO:A�C��=rh�{��C�%�PAs�V�so%Hs������x����Z}Ӂ�Y��ՙw`1�d��N�Ma����#S�S�ch%�|5м�@�
��k�DI�>�r�*�T�#@�oe%�>��̓e��3V���=H��ʇZRY�3�$�Y쐔�^��3C�T�=��%�]� �Z�2����g���HR{���-���șY󵳈�����]��|ADaYj�es�ٗ��d��#W�qnb��'���e�yY�׶�`�GJ�+8�H��6II���� �]����fl'h;��T�i�6E��%�ԫa��ୢ���D�u���v�1�#��'B+�+Y�q", �R~�|���*�,���3q^r(ݮ�O-�l�A���Rɵ���@=�@}����'�c�*cu��o��������1���1�#OrxH�MΙ��[�4�F�o#K�	y�&/�F����=��Ф��])�Fw���r7��b���Kk�@[Kw��;�� �[�5�SԬL_=��=�3x�M��I4h`�[
��R{�<�cg�Z��a�Y)�gnx�X��G���:�ڴ�5c��.X莉[�z�Q�yW���5��b#��"{v� t�I��D�L*,Ul��!��'e��Z�>�<���������"n)F��H�D#�;�d��n�Z��:F*Zo�����D��\�qE6��|�*�Ɂ�|���H.��<���C���}����ˊ!�Xf�?�ʀ�RԐE�Sť�r7 r�T��[$O����^���7�vL�����si�Id���)
S��ֆ<�'�Z�N�Ro
oU��d�'���À���\mIOw��
��u��I����a��a=��D�j�Xb�ҟ�č��'o���v"�ߛ}�sd��^���0"n>��%6PEփ��u;��|��[�z�������8���T�(�U��v����[�[> \//�V��=�42���q���I��8��R]+p�[��Vb�;Ġ��>^m�''��~?�@�V���h��F
�,W��˪LL�,Y�]M��80K��$�a���p� ��>�ڦ��t� �+ۡ�]%�c::��c��h M�
K2U��\����iR?A�!g�>s(Jg�^����]!�\��[y��:�7�={�@��5�ˬ{he}�hdk&���Z�31{0N18�,̄�}�Kds.�q$Iil-�Y*�0����_apt/�Z@}�{�&D���ٚ1]W��ep��f�%��PJ�b�4f�+�c��et�6���3�EҺe4od� �S�-���}�/-��S-��$������i?1Ą8���֊��yitjB�������[�=�-(����Rsf����A�B���>Yh,\�B�\�r࣫F1^ٯg99-�I�8r�(����:�T"m8hÂ��77�r ��eG{��J2|��9hw6�Ѻ3����_�5�Rc�Z"���b�Tӕ�08EUT���ǚD+��EE�!��>xӹ�=w]���B      D   '  x�MU[��0�6�ٲ�y�.s�s�@��T�:���q���*:t�Ꭿ5.n[~�+�F�����ôG��D^|�o=>�� �$���*屑r;wξ��[�d�d�>e�~���I��L�,0z�&�8z�Ͳ����,c��+� �76��S���Ѷ`vD_�A\g��ch�b՚kze϶��;L�M��5g��~�#�pdW��p�JۧM��
�f:�jVR�7���)�m{��/-H��F��p�^l�����lF��B@������ᢛ�f�@�2��;U��ե,�j�X�M��@gk_ve Г�e��앐E����[l�t���qaZT>�+�,9�̱|�Laӎ��nWо��ڷ��ʱN����7�o�zq-1Q���ᱤC�w��~*�#�Qb,�c<pH1w��&�K�4��$���@�=89H�oT6�N�u�Aۅǒf\���1.x�m���W0^�'a���_��OH{���4�*�w=�
LT�O�A�>�o���u�b����<�j�xNF����x�M��O���葪�p���ߘ��H���Lbqm=$�ʖ�==q�
��#�S}��!�����:�O"�M�Sl�`d��J���׃dk�6��%Q\�Z�JN�#�a�@hr�87�Z�)̷���g�R���w��p"[Jr.���'g8�o�][+� շֵ$e�)���Rv���:���j�}����`c��E$&C._v�.�A8�[><G��D�
�R��ۋ��e/�����rok̩����{]��X�]��zb�f�)?�D�?�	      @   =  x��X�r�8���`����#���Ҩe��q�Lm�n�-x؄$�+e��9t�`j2���= ٔ4�V9�e���s�=!AtGa�n���c]���E�i�?i���l�t���_�k�;���5ߪg�V��j�w���8���XT�G� >
"v-�B�;���w�B�xS)����;5o:�+K/f�B�I��M��$�����k��-�������;�+Q��\�D���n���{�D�r���JXX�H-:�"�&���H\^	�\��_j���O��B#��~�Z�N�{�*������kZ�Z�����KYR��Q�Krv�����l%��;D�n�����
*4o_�,��E!�ZR�a��dC�H�~Q6��~����`�x9�o�PA��Cv��j��q�ZnT=|m�E�w�_�Zֵ���^����'�.�Z&*�Y�'b�6z���Q�k�Ԯ9��P��l7ʿS��@ƍ��S��:�W�*D�R��O[� g��]�V�{����H��t����7�������U ؙ�,ٕܼ:N���{�5�=�E��<Ѣ��@����k�({�N�{$s/5�ԫ;��0b�ŝ�>��5��n=��	@�F�q�!Z�6��T]� u�.��;���
��o�]�Ng�B�#p��}��]�V �;���&�z�&"N�Z�85�ٝh��%��Z��	01��x)�d�6���7;�A�J�Z�VU��q�4� A�'$t������w%��' ��-��Ќ���-PB)�|L�	v�C+:�����Ek	�p��G�K��5��C���؃x���U���10o#7r���Wrۃ��'��Uˁ�(`a�"�	/�^�ȅ�%�T�aV��[���#%>2�՜�roH,{��n�5���p�P�"�OQ��F�ɎA�j��.U;|{�2�����?N�l�Z J	T=��ړX-��r��rE�H�S��7Ky["0��o�='�+�	���"˔��!�G��?h�,�RZ�RW��=A,E���vIЎJv�eG��r�Wl{Y#���=uf��Т�w��� �>���H�� ��EgE5zM�D r��P�D=�x��;,=Y�N�$a�j�H��4�V�ub�VS�I��G�a"��ˊW��=_cv2���"8֢}<|!K�؁)��$4���S���B�Ѽ�PzLP~��1
�,���%R�5t�t���%<�t��
���+E��O�q���=�s^<*^H8Bծy�B��{��;P�^Tƙ��Ԡ��z�w��ǵȍ�yks/Θ���He�� аq�_�P�d�c�`��H�Oz�Ź��Hȳ/��� �7ϼA�0�[�����$�\C�u'g����Ξ�ء��+H(���%ۣߖ��Α��=�,ת�䤠�Em������M�l]��P�N�k3g�����*s/	��� B4�5�&C�s� �Cә��sxID��"pz%Z�=(��GT�o�8@2����Y%	��V>�W�lY�H��J���KD�W:Z�4ӑ�l��٢٧������P�=�ȉ��L��,�{%f��!�q��4�M�#�~�Z)t������d�Ye���[";�I9��P�F|�8+��8F]�O����@�x�2ư[�����(F��),��28�!�?
]_9�?5H��9��g�%�!{��*��]�U��d��V��G��yi@����Z=� `����'knT�/wH�Ү	�o���z�ao|+2��A�^��X��5l�fj��t�����Zɖnҟ$�^�a�O�ԍ璌�ã[����acʰ���I(�:�fY�GԱ%M�ȃ���	2!��l��O��S <!F�
���::��	�V/��y)���^e�b"_
�i���m���M&F�s;�#�!��g��ߪ��{ӕ@V�������du��~�}�0�Х�Q8�
�F�>÷єc����%<�|�D[J�fc�𙟟��7�?l:s���/ ��ԓ�,pSi�eɬe�<���0/�3K�ө�/xY�4��-o��-��)��a�����m����"�cs�Yi9 }�&?*�~�<h�(ټv��,f��f���B݃�݃И�zK����U����u��%nǷ�=c���6@���'7�b-�R�9�C2*�O�.;vB��'�=YjD�iA{5�piv(zH+��ԭ���:_�z#�r���9T.w������l�G���3̏�Y�`m@�PlC���A���8�#�;I1�r���%;�50�#f�;�����(��b�ar/�TKݮ�R��{��`.@@����y�
�ڜ��U�;�,�%�Jm���E_r$fb2:���BY��a�&2����9�e������Y�+)6 A��Z��i�V�er�u�剭p9:�qy]��`�R����"D^����X�%7!}��ǹ����=lTf�u$�5/�&gf���4�N�d)��^��`#���H*���wNk�Z�����W���;b�Ͷ������	��"c�v��a��%ע�$e��*���DA�����G�i�zE@�n�Ec�մarv.Hߐ���#��C���[�PKt/6P�_,��f������L)��"r�tz�T�5�º+XW=r��E�>����CT��#cg^P����a,ʼ8*�N` �u^�Rd���6R5��J�R�H_����G�u��.bM�sYd��9m�b,-���cM�6����{�Q���ˊ\����oT�3ުq#?�I���^��-+��Eh(X�$������rNxִsc��7�fV~��=ݑ $o��1����遌�WNQ��~�[��ڽ ����	�}:b��/���\>��]�,q��h>����G^M�Qd1�$�/J�mVˆcF/5&�L�2&�Oh�%�Yg�z�F9�P5�5�I�Q4���$O��z��k��T����v�>��X�}�@$�{�6/0	��	'o��@
?�W_L�g���Ӿ���zI3pK���v��܊�}�C�7|tG�s���ܕ�{���I��꿺�'G�M�{�vOѶe1B-�BX���owq8ސ�-���-�8OV������7l1s�J����F�~�y�� 	|��      B   	  x��X�n��]w�>�4���R�L�X�F�50�l�R�C�b{Z��/��"�n���{�(َH�"���]]uΩSTb����fVփ����C���U�7+3/��C�a�B$"i&�D����~Un�am��AT�1�HS�(�������Y�c;/�nh��`�Ӂ��}�T�nk��l����|0�����y7ٌ��Q(������̾��x��p�3����;�샭�Yi���@'��y�T\����.�l7͋�[���s�섢XZ�"�"
e&.���>��7��Y[$p����W�ysxu�7 <���
C���w�v��A�/g�������ޗ��i�"�pr�,���b�y@Ղ��� x`��N�I�),E$�L�P�����+�ܙ��[��W�N�T�83�P�TJ����`�g_ו]Q������N�P����ō�����aCq-���Q�~��]��ƶz0��B-"�`��/��ij-��5QS)*f[�D l�\��hq�� Q$R��~Fo�2u�n5�.�������+�� ���D��.�H��i �!�r�r�"�g{{���J��4� �e���3꘷�:�箧���� u(>Z<�`Y"�n�k��C�c�T�ʪ2K:�����hў�ˮ��@�~q(�&6�b0�]��C�n&�B䈊�9nY@���q��Klи`&�wR�vn�/�	?��G!ՖF"�%d��rv%ꃷje2	���:C<���]�r���z�s
ɇR�ԙ���N1�(#�e��ї�%�M�Q�u�RϹ5���yE�X�b�΅���c�`���v�S����d����x �,�1���x��M1���{��2��9�Dcq�.�Yf�2�N���>:&ɜ|8HA�$|`�6Ivl�V=y��v�=�0�Ue�?4?< PZSQY�q�0��P��V˕(
��D��4�0x��Cm��xH���HBڛNK���ޙ�>�� ��5��e�X�as6�4�
8�:�-���%�Cq\�(�TV45*�0䷜���:��E�
1j~Bxx�w���SJV �$�q(��S����.�I�����J �; ��U�wB�$� -_ެ�/Q��_�i,>���8ҼLb~����PS�O�U� ��2�� ޑ���W�b��5��`L"8��	#�2@�D�x��BxM�I:��v"�e�A٠���m$��Na�rqc�3��;��\IP	��ȇ�[ͿС��Y��e�|��K�1	/�ϰ�@�Y@o��r���i�D�?����R��6K�QG���b�`P�2�kʇB�J
�qQ � ��ҳ��`vݑ/�
�I��d�'c�2g�]%q�/Mձ��^jɄ��D܂X���Ϻ�UO@�}8C��*���d�Ϳ��=��D!�P���W�l%�`��8ov{��!Ex� N3%}����U�`o�:�k���V<�U �|�j*���~�J|�4-|���e�����v:.y8F�T���g6�dʅ]�`LB�� kFgFb�
8A�z2]�D�P*:eYHa?E��G߬�8�,���&��nз�$�A�&�/�$�y��%�������X�g��c��ڝtޚL�f��Þ-P���s>��dZ�)]�!1�A�m�y����̀ [5/�v=��Z����³������Z;K����Υ!I� ��c��6:����;Q��8��E���+&BҴ�c�a�y�!9X5�x�~��x�+_a������W�		n�߮���.o\g��idW��sN�L���&�a�ո�+"F;[}���I��� ���1�`�ǳ U������=*�������=a;��5l�f�2#�,�o;�{7|� �f��Ie������W�$�s
�D�2Wow��88�y���{@�r�� Փ���[�z�x�Wͻ��y��C��6 ��۴�{r}�O�V�d	�b����q_v$]S�q���h"�,�0P�F�8Ԯ��x1ʱ��<}u���[��Ch��n�+)C)"����vL����k���)k<&�g7L��/?�PK~�>8���[G������,,�	����ɼ���Zy��G>��6*��B��#��{�V�Rd�y.hÄ���
$�P�h3��e2�Ք�8����v�I+��zZ�z�$�f�������������c��ZS$�_�&�r��(�Zw�*Y�����%�����92�sDgb�)���2 !_�K��e��L�7�"��l�>��dDͣ�����" ��F���d׎qE�>q+�����#�<�f�����K)� ��      6   �  x����m�0��St�|JTf��s�Ki�Rr���|���0>��Ǜ����&�.z�z�v�D���_��qjr���laQ�D��
ij��h��@D��Y�!F��������{�@��xJl��o��(r<r0U��fQ��5�(�,,��@
�(e��D�n��D���,1�D*ji��@O�Qp�H�;�A�Ҧ�s��@m@�9�����ڍe�r;V-����Rj�"�bF��_"0��L�dY���!j�J�D0H���'u��t٤�P��Y��`B��(����r�@�.��3]���|k��(0CY#��N�e�qػJ���t��:��%)��ڿ �Z�֥�"X%�2�!��_�EX���h82�����mt�`m��=^�ޯ7��M�m�`�ꢣ'����q����      8      x������ � �      (      x������ � �      *   �  x�uUI�9]�N����F�,>(��'��}�fٙ�mo��G����Ee����.�.��u^���)�^#�ں�4!	PZ� #I�BȱG@q�0�E�c�#~�!�'t�qY��Bw�OLH8��Z�f�q�X�c�9?��1s��]��Ev:_ۻ�Ŗ9�ѡ��T @�f�#Q�s���/@y��;����>�qn���pt�*V �`��=V�(S���5��9lb_x
Nz�������k�C��9�ܒ���W��^�s`������������.�BA�7��RC� !�(�CEM�G	/�2Mɵw9��t^��N��87��2�H	mݨY���fL �WC��<����ż��zk�u�:ñ��ڢ����ҽ�S�6�,�� ��S��ou��?�GOv��Y{��M*�W��64��*տ��pb7�o�U�����H}3`�hsx;BV���P|����	���]�z�ߌTz�P��H�1��h�D �a�������g ���Q�^��N/7r��۹o�|�7Y�?��W�����"XZ� &��Co"�b��d3�>st0��Y�,c���]����eR���<��$�E�^j1b{7]�>�Š�\&��A�k��fq���a�ӷ�lG���V�,d�k6#rI%T2?�q!�}�0��U��}���e>ȷ��4-`�!.@5 HÃr&�Ea�N�͒'�����M�f��^��T�6�~��
!��n�qa��)�{J�Y_�,S˄�>�^�dN]���.���h9�&��S���[��s�H>�����<��MRƋ.���Y����V*eX�9Qk��㖥 V(��oVy��vԻ����oK{���������myi-b�X7U(J�0T�����	xhJ/F1�$v�_�	]�����E�7�q��td9G$�$2�e�L�[��zK��v@x��ا������벾�ĻL��'�j����U
�HV� MF�"�����,�B����{�r����?I�:�-�$Z%h54� �)��A؃O1?o�vy"z�=�eg�5�q��#��[�fު�>:ג����6���Y?[mO���#�k�MA�Y�֍�-��bK�����5�Ԟ�[ȳ�(�>��7�e��wnF9kN��P$�.����/�E�0e.4Y��ȝ��bi*�s-A��[�6���2�ؚ���֗�a=0��Ӈi����      )      x������ � �      9      x������ � �      :      x������ � �      �      x������ � �     