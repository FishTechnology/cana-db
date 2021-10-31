-- Table: public.actoinoption

-- DROP TABLE public.actoinoption;

CREATE TABLE IF NOT EXISTS public.actoinoption
(
    id bigint NOT NULL DEFAULT nextval('actoinoption_id_seq'::regclass),
    actionid bigint NOT NULL,
    optiontype character varying COLLATE pg_catalog."default" NOT NULL,
    "waitDuration" bigint,
    "order" bigint NOT NULL,
    createdon timestamp with time zone,
    modifiedon timestamp with time zone,
    createdby character varying COLLATE pg_catalog."default",
    modifiedby character varying COLLATE pg_catalog."default",
    isactive boolean NOT NULL,
    CONSTRAINT actoinoption_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.actoinoption
    OWNER to postgres;