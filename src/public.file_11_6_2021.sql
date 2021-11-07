-- Table: public.file

-- DROP TABLE public.file;

CREATE TABLE IF NOT EXISTS public.file
(
    id bigint NOT NULL DEFAULT nextval('file_id_seq'::regclass),
    filename character varying COLLATE pg_catalog."default" NOT NULL,
    filesize bigint NOT NULL,
    content character varying COLLATE pg_catalog."default" NOT NULL,
    createdon timestamp with time zone,
    createdby character varying COLLATE pg_catalog."default",
    isactive boolean NOT NULL,
    modifiedon timestamp with time zone,
    modifiedby character varying COLLATE pg_catalog."default",
    CONSTRAINT file_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.file
    OWNER to postgres;