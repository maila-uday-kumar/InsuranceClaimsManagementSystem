CREATE OR REPLACE PROCEDURE generate_claims_report AS
    total_claims NUMBER;
    avg_claim_amount NUMBER;
BEGIN
    SELECT COUNT(*), AVG(CLAIM_AMOUNT)
    INTO total_claims, avg_claim_amount
    FROM InsuranceClaims;

    INSERT INTO ClaimsReports (REPORT_ID, REPORT_DATE, TOTAL_CLAIMS, AVERAGE_CLAIM_AMOUNT)
    VALUES (seq_report_id.nextval, SYSDATE, total_claims, avg_claim_amount);
END;
/