-- 58. 취소되지 않은 진료 예약 조회하기

SELECT A.APNT_NO, B.PT_NAME, B.PT_NO, C.MCDP_CD, C.DR_NAME, A.APNT_YMD
FROM APPOINTMENT A JOIN PATIENT B ON A.PT_NO = B.PT_NO
                    JOIN DOCTOR C on A.MDDR_ID = C.DR_ID
WHERE C.MCDP_CD = 'CS' AND 
        A.APNT_CNCL_YN = 'N' 
        AND DATE_FORMAT(A.APNT_YMD, '%Y-%m-%d') = '2022-04-13'
ORDER BY A.APNT_YMD;