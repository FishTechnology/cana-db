-- Table: public.application

-- DROP TABLE IF EXISTS public.application;

CREATE TABLE IF NOT EXISTS public.application
(
    id bigint NOT NULL DEFAULT id_generator(),
    name character varying COLLATE pg_catalog."default" NOT NULL,
    createdon timestamp with time zone,
    modifiedon timestamp with time zone,
    createdby character varying COLLATE pg_catalog."default",
    modifiedby character varying COLLATE pg_catalog."default",
    comments character varying COLLATE pg_catalog."default",
    isactive boolean NOT NULL,
    userid bigint NOT NULL,
    CONSTRAINT application_pkey PRIMARY KEY (id),
    CONSTRAINT application_userid_fkey FOREIGN KEY (userid)
        REFERENCES public.customer (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.application
    OWNER to "cana-api";