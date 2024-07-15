CREATE OR REPLACE PROCEDURE manage_claim (
    p_claim_id IN NUMBER,
    p_policy_number IN VARCHAR2,
    p_claim_date IN DATE,
    p_claim_amount IN NUMBER,
    p_status IN VARCHAR2,
    p_action IN VARCHAR2 -- 'INSERT', 'UPDATE', or 'DELETE'
) AS
BEGIN
    IF p_action = 'INSERT' THEN
        INSERT INTO InsuranceClaims (CLAIM_ID, POLICY_NUMBER, CLAIM_DATE, CLAIM_AMOUNT, STATUS)
        VALUES (p_claim_id, p_policy_number, p_claim_date, p_claim_amount, p_status);
    ELSIF p_action = 'UPDATE' THEN
        UPDATE InsuranceClaims
        SET POLICY_NUMBER = p_policy_number,
            CLAIM_DATE = p_claim_date,
            CLAIM_AMOUNT = p_claim_amount,
            STATUS = p_status
        WHERE CLAIM_ID = p_claim_id;
    ELSIF p_action = 'DELETE' THEN
        DELETE FROM InsuranceClaims
        WHERE CLAIM_ID = p_claim_id;
    ELSE
        RAISE_APPLICATION_ERROR(-20000, 'Invalid action specified');
    END IF;
END;
/