-- Table: public.action_result

-- DROP TABLE public.action_result;

CREATE TABLE IF NOT EXISTS public.action_result
(
    id bigint NOT NULL DEFAULT nextval('action_result_id_seq'::regclass),
    testcase_result_id bigint NOT NULL,
    actionid bigint NOT NULL,
    startedon timestamp with time zone,
    completedon timestamp with time zone,
    status character varying COLLATE pg_catalog."default" NOT NULL,
    error_message character varying COLLATE pg_catalog."default",
    createdon timestamp with time zone,
    modifiedon timestamp with time zone,
    execution_order bigint,
    CONSTRAINT action_result_pkey PRIMARY KEY (id),
    CONSTRAINT action_result_actionid_fkey FOREIGN KEY (actionid)
        REFERENCES public.action (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT action_result_testcase_result_id_fkey FOREIGN KEY (testcase_result_id)
        REFERENCES public.testcase_result (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE public.action_result
    OWNER to postgres;