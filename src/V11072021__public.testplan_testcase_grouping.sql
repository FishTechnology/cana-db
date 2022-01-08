-- Table: public.testplan_testcase_grouping

-- DROP TABLE public.testplan_testcase_grouping;

CREATE TABLE IF NOT EXISTS public.testplan_testcase_grouping
(
    testplanid bigint NOT NULL,
    testcaseid bigint NOT NULL,
    isactive boolean NOT NULL,
    createdon timestamp with time zone,
    modifiedon timestamp with time zone,
    createdby character varying COLLATE pg_catalog."default",
    modifiedby character varying COLLATE pg_catalog."default",
    execution_order bigint NOT NULL,
    userid bigint,
    id bigint NOT NULL DEFAULT id_generator(),
    CONSTRAINT testplan_testcase_grouping_pkey PRIMARY KEY (id),
    CONSTRAINT testplan_testcase_grouping_testcaseid_fkey FOREIGN KEY (testcaseid)
        REFERENCES public.testcase (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT testplan_testcase_grouping_testplanid_fkey FOREIGN KEY (testplanid)
        REFERENCES public.testplan (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE public.testplan_testcase_grouping
    OWNER to "cana-api";
-- Index: fki_testplan_testcase_grouping_testcaseid_fkey

-- DROP INDEX public.fki_testplan_testcase_grouping_testcaseid_fkey;

CREATE INDEX fki_testplan_testcase_grouping_testcaseid_fkey
    ON public.testplan_testcase_grouping USING btree
    (testcaseid ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_testplan_testcase_grouping_testplaid_fkey

-- DROP INDEX public.fki_testplan_testcase_grouping_testplaid_fkey;

CREATE INDEX fki_testplan_testcase_grouping_testplaid_fkey
    ON public.testplan_testcase_grouping USING btree
    (testplanid ASC NULLS LAST)
    TABLESPACE pg_default;