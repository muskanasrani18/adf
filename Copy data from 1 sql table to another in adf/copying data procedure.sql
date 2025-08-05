CREATE PROCEDURE ApplyChanges_EmployeeDetails
AS
BEGIN
    DECLARE @last_lsn VARBINARY(10) = (SELECT LastLSN FROM dbo.CDC_Control WHERE TableName = 'EmployeeDetails');
    DECLARE @max_lsn VARBINARY(10) = sys.fn_cdc_get_max_lsn();

    -- Read changes directly from the change table
    SELECT *
    INTO #CDC_Changes
    FROM cdc.dbo_EmployeeDetails_CT
    WHERE __$start_lsn > @last_lsn AND __$start_lsn <= @max_lsn;

    -- Insert new rows
    INSERT INTO dbo.EDetails (Empid, EmpName, EmailId, Gender, Address, PinCode)
    SELECT Empid, EmpName, EmailId, Gender, Address, PinCode
    FROM #CDC_Changes
    WHERE __$operation = 2 -- Insert

    -- Update existing rows
    UPDATE tgt
    SET tgt.EmpName = src.EmpName,
        tgt.EmailId = src.EmailId,
        tgt.Gender = src.Gender,
        tgt.Address = src.Address,
        tgt.PinCode = src.PinCode
    FROM dbo.EDetails tgt
    JOIN #CDC_Changes src ON tgt.Empid = src.Empid
    WHERE src.__$operation = 4 

    -- Delete removed rows
    DELETE tgt
    FROM dbo.EDetails tgt
    JOIN #CDC_Changes src ON tgt.Empid = src.Empid
    WHERE src.__$operation = 1 -- Delete

    -- Update control table
    UPDATE dbo.CDC_Control
    SET LastLSN = @max_lsn
    WHERE TableName = 'EmployeeDetails';

    DROP TABLE #CDC_Changes
END
GO
