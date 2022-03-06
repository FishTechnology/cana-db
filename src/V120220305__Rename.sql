ALTER TABLE IF EXISTS public.actionoption
    RENAME condition_type TO control_type;

ALTER TABLE IF EXISTS public.actionoption
    RENAME assert_type TO text_type;

ALTER TABLE IF EXISTS public.actionoption DROP COLUMN IF EXISTS waitduration;

UPDATE public.actionoption SET optiontype= 'CONTROL' WHERE optiontype='WAIT_FOR';