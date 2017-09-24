CREATE OR REPLACE PROCEDURE TEST_2
IS
    v_number PLS_INTEGER;
BEGIN    
    SELECT 1
    INTO v_number
    FROM DUL; --This wil give an error.
END;
/