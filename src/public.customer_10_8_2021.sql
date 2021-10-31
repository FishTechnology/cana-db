-- Table: public.customer

-- DROP TABLE public.customer;

CREATE TABLE IF NOT EXISTS public.customer
(
    id bigint NOT NULL DEFAULT next_id(),
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

ALTER TABLE public.customer
    OWNER to postgres;
-- Index: index_username

-- DROP INDEX public.index_username;

CREATE INDEX index_username
    ON public.customer USING btree
    (username COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;