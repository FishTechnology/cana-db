-- Table: public.customer

-- DROP TABLE IF EXISTS public.customer;

CREATE TABLE IF NOT EXISTS public.customer
(
    id bigint NOT NULL DEFAULT id_generator(),
    username character varying COLLATE pg_catalog."default" NOT NULL,
    password character varying COLLATE pg_catalog."default" NOT NULL,
    last_login timestamp with time zone,
    status character varying COLLATE pg_catalog."default" NOT NULL DEFAULT true,
    created_on timestamp with time zone,
    modified_on timestamp with time zone,
    created_by character varying COLLATE pg_catalog."default",
    modified_by character varying COLLATE pg_catalog."default",
    CONSTRAINT customer_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.customer
    OWNER to "cana-api";
-- Index: index_username

-- DROP INDEX IF EXISTS public.index_username;

CREATE INDEX IF NOT EXISTS index_username
    ON public.customer USING btree
    (username COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;