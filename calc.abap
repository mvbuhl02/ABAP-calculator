*&---------------------------------------------------------------------*
*& Report MVBTR0001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT mvbtr0001.
*
*//========================= CALCULATOR =========================//
*
* Variable declaration
DATA: v_resul TYPE i.

* Selection screen
PARAMETERS:p_num1 TYPE i,
           p_num2 TYPE i,
           p_sum RADIOBUTTON GROUP gr1,
           p_divi RADIOBUTTON GROUP gr1,
           p_subt RADIOBUTTON GROUP gr1,
           p_mult RADIOBUTTON GROUP gr1.

* Arithmetic operations
IF p_sum = 'X'.
  v_resul = p_num1 + p_num2.
ELSEIF p_subt = 'X'.
  v_resul = p_num1 - p_num2.
ELSEIF p_mult = 'X'.
  v_resul = p_num1 * p_num2.
ELSEIF p_divi = 'X'.
  v_resul = p_num1 / p_num2.
ENDIF.

* Print result
WRITE:/ 'RESULT: ', v_resul.
