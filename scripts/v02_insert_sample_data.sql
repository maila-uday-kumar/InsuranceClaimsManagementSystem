-- Inserting sample data into InsuranceClaims
INSERT INTO InsuranceClaims (CLAIM_ID, POLICY_NUMBER, CLAIM_DATE, CLAIM_AMOUNT, STATUS)
VALUES (1, 'POL001', TO_DATE('2024-01-15', 'YYYY-MM-DD'), 1500.00, 'Pending');

INSERT INTO InsuranceClaims (CLAIM_ID, POLICY_NUMBER, CLAIM_DATE, CLAIM_AMOUNT, STATUS)
VALUES (2, 'POL002', TO_DATE('2024-02-20', 'YYYY-MM-DD'), 2500.00, 'Approved');

-- Inserting sample data into ClaimProcessings
INSERT INTO ClaimProcessings (PROCESSING_ID, CLAIM_ID, PROCESSING_DATE, PROCESSING_NOTES, PROCESSING_STATUS)
VALUES (1, 1, TO_DATE('2024-01-16', 'YYYY-MM-DD'), 'Claim under review', 'In Progress');

INSERT INTO ClaimProcessings (PROCESSING_ID, CLAIM_ID, PROCESSING_DATE, PROCESSING_NOTES, PROCESSING_STATUS)
VALUES (2, 2, TO_DATE('2024-02-21', 'YYYY-MM-DD'), 'Claim approved and processed', 'Completed');