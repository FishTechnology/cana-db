-- Table: public.testcase_result

-- DROP TABLE IF EXISTS public.testcase_result;

CREATE TABLE IF NOT EXISTS public.testcase_result
(
    id bigint NOT NULL DEFAULT id_generator(),
    testplan_result_id bigint NOT NULL,
    testcaseid bigint NOT NULL,
    startedon timestamp with time zone,
    completedon timestamp with time zone,
    status character varying COLLATE pg_catalog."default" NOT NULL,
    error_message character varying COLLATE pg_catalog."default",
    createdon timestamp with time zone,
    modifiedon timestamp with time zone,
    execution_order bigint NOT NULL,
    total_duration character varying COLLATE pg_catalog."default",
    CONSTRAINT testcase_result_pkey PRIMARY KEY (id),
    CONSTRAINT testcase_result_testcaseid_fkey FOREIGN KEY (testcaseid)
        REFERENCES public.testcase (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT testcase_result_testplan_result_id_fkey FOREIGN KEY (testplan_result_id)
        REFERENCES public.testplan_result (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.testcase_result
    OWNER to "cana-api";