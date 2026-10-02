-- ============================================================
-- Practical 10: PL/SQL Blocks
-- Execute on Oracle Live SQL / SQL*Plus / Toad / PL/SQL Developer
-- ============================================================

SET SERVEROUTPUT ON;

-- ------------------------------------------------------------
-- Program 1: PL/SQL Block to Add 2 Numbers
-- ------------------------------------------------------------
DECLARE
    A NUMBER := 10;
    B NUMBER := 20;
    C NUMBER;
BEGIN
    C := A + B;
    DBMS_OUTPUT.PUT_LINE('SUM = ' || C);
END;
/

-- ------------------------------------------------------------
-- Program 2(a): PL/SQL Block to find Area of Rectangle
-- ------------------------------------------------------------
DECLARE
    L NUMBER := 10;
    B NUMBER := 5;
    AREA NUMBER;
BEGIN
    AREA := L * B;
    DBMS_OUTPUT.PUT_LINE('AREA OF RECTANGLE = ' || AREA);
END;
/

-- ------------------------------------------------------------
-- Program 2(b): PL/SQL Block to find Area of Triangle
-- ------------------------------------------------------------
DECLARE
    BASE NUMBER := 10;
    HEIGHT NUMBER := 5;
    AREA NUMBER;
BEGIN
    AREA := 0.5 * BASE * HEIGHT;
    DBMS_OUTPUT.PUT_LINE('AREA OF TRIANGLE = ' || AREA);
END;
/

-- ------------------------------------------------------------
-- Program 2(c): PL/SQL Block to find Area of Square
-- ------------------------------------------------------------
DECLARE
    SIDE NUMBER := 8;
    AREA NUMBER;
BEGIN
    AREA := SIDE * SIDE;
    DBMS_OUTPUT.PUT_LINE('AREA OF SQUARE = ' || AREA);
END;
/

-- ------------------------------------------------------------
-- Program 3: PL/SQL Block to find Maximum of 3 Numbers
-- ------------------------------------------------------------
DECLARE
    A NUMBER := 10;
    B NUMBER := 20;
    C NUMBER := 15;
BEGIN
    IF A >= B AND A >= C THEN
        DBMS_OUTPUT.PUT_LINE('MAXIMUM = ' || A);
    ELSIF B >= A AND B >= C THEN
        DBMS_OUTPUT.PUT_LINE('MAXIMUM = ' || B);
    ELSE
        DBMS_OUTPUT.PUT_LINE('MAXIMUM = ' || C);
    END IF;
END;
/

-- ------------------------------------------------------------
-- Program 4: PL/SQL Block to Print Sum of N Numbers using FOR Loop
-- ------------------------------------------------------------
DECLARE
    N NUMBER := 10;
    SUM1 NUMBER := 0;
BEGIN
    FOR I IN 1..N LOOP
        SUM1 := SUM1 + I;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('SUM = ' || SUM1);
END;
/

-- ------------------------------------------------------------
-- Program 5: PL/SQL Block to Generate Fibonacci Series of N Numbers
-- ------------------------------------------------------------
DECLARE
    N NUMBER := 10;
    A NUMBER := 0;
    B NUMBER := 1;
    C NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('FIBONACCI SERIES:');
    DBMS_OUTPUT.PUT_LINE(A);
    DBMS_OUTPUT.PUT_LINE(B);
    FOR I IN 3..N LOOP
        C := A + B;
        DBMS_OUTPUT.PUT_LINE(C);
        A := B;
        B := C;
    END LOOP;
END;
/
