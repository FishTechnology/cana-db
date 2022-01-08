-- Table: public.scheduleiteration

-- DROP TABLE IF EXISTS public.scheduleiteration;

CREATE TABLE IF NOT EXISTS public.scheduleiteration
(
    id bigint NOT NULL DEFAULT id_generator(),
    scheduleid bigint NOT NULL,
    status character varying COLLATE pg_catalog."default" NOT NULL,
    comments character varying COLLATE pg_catalog."default",
    is_record_video_enabled boolean,
    is_disable_screenshot boolean,
    is_capture_network_traffic boolean,
    startedon timestamp with time zone,
    completedon timestamp with time zone,
    createdon timestamp with time zone,
    modifiedon timestamp with time zone,
    modifiedby character varying COLLATE pg_catalog."default",
    createdby character varying COLLATE pg_catalog."default",
    browsertype character varying COLLATE pg_catalog."default",
    error_message character varying COLLATE pg_catalog."default",
    total_duration character varying COLLATE pg_catalog."default",
    CONSTRAINT scheduleiteration_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.scheduleiteration
    OWNER to "cana-api";