-- Table: public.system

-- DROP TABLE IF EXISTS public.system;

CREATE TABLE IF NOT EXISTS public.system
(
    id bigint NOT NULL DEFAULT id_generator(),
    key character varying COLLATE pg_catalog."default" NOT NULL,
    value character varying COLLATE pg_catalog."default" NOT NULL,
    comments character varying COLLATE pg_catalog."default",
    isactive boolean NOT NULL,
    createdon timestamp with time zone,
    modifiedon timestamp with time zone,
    createdby character varying COLLATE pg_catalog."default",
    modifiedby character varying COLLATE pg_catalog."default",
    userid bigint NOT NULL,
    applicationid bigint NOT NULL,
    CONSTRAINT system_pkey PRIMARY KEY (id),
    CONSTRAINT system_applicationid_fkey FOREIGN KEY (applicationid)
        REFERENCES public.application (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT system_userid_fkey FOREIGN KEY (userid)
        REFERENCES public.customer (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.system
    OWNER to "cana-api";