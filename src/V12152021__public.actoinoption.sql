-- Table: public.actionoption

-- DROP TABLE IF EXISTS public.actionoption;

CREATE TABLE IF NOT EXISTS public.actionoption
(
    id bigint NOT NULL DEFAULT id_generator(),
    actionid bigint NOT NULL,
    optiontype character varying COLLATE pg_catalog."default" NOT NULL,
    waitduration bigint,
    ordernumber bigint NOT NULL,
    createdon timestamp with time zone,
    modifiedon timestamp with time zone,
    createdby character varying COLLATE pg_catalog."default",
    modifiedby character varying COLLATE pg_catalog."default",
    isactive boolean NOT NULL,
    CONSTRAINT actoinoption_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.actionoption
    OWNER to "cana-api";