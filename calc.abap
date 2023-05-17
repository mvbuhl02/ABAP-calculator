*&---------------------------------------------------------------------*
*& Report ZMVBTR0001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmvbtr0001.
*
*//========================= CALCULADORA =========================/
*
* Declaração de variável
DATA: v_resul TYPE i.

* Tela de seleção
PARAMETERS:p_num1 TYPE i,
           p_num2 TYPE i,
           p_soma RADIOBUTTON GROUP gr1,
           p_divi RADIOBUTTON GROUP gr1,
           p_subt RADIOBUTTON GROUP gr1,
           p_mult RADIOBUTTON GROUP gr1.

* Efetuando calculos
IF p_soma = 'X'.
  v_resul = p_num1 + p_num2.
ELSEIF p_subt = 'X'.
  v_resul = p_num1 - p_num2.
ELSEIF p_mult = 'X'.
  v_resul = p_num1 * p_num2.
ELSEIF p_divi = 'X'.
  v_resul = p_num1 / p_num2.
ENDIF.

* Imprime resultado
WRITE:/ 'RESULTADO: ', v_resul.