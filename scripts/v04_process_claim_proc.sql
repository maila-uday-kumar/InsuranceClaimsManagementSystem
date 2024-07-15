CREATE OR REPLACE PROCEDURE process_claim (
    p_claim_id IN NUMBER,
    p_processing_date IN DATE,
    p_processing_notes IN VARCHAR2,
    p_processing_status IN VARCHAR2
) AS
BEGIN
    INSERT INTO ClaimProcessings (PROCESSING_ID, CLAIM_ID, PROCESSING_DATE, PROCESSING_NOTES, PROCESSING_STATUS)
    VALUES (seq_processing_id.nextval, p_claim_id, p_processing_date, p_processing_notes, p_processing_status);

    UPDATE InsuranceClaims
    SET STATUS = p_processing_status
    WHERE CLAIM_ID = p_claim_id;
END;
/