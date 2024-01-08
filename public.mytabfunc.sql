-- FUNCTION: public.mytabfunc()

-- DROP FUNCTION IF EXISTS public.mytabfunc();

CREATE OR REPLACE FUNCTION public.mytabfunc(
	)
    RETURNS bigint
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
declare 
-- variable declaration
begin
 INSERT INTO public.mytable(
	id, name)
	VALUES (1, 'fjhfjhf');
end;
$BODY$;

ALTER FUNCTION public.mytabfunc()
    OWNER TO postgres;
