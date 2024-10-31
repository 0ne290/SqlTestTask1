SELECT Td.ContractNumber, Ttd.TdCode AS PackageCode, Td.TdCode AS Code, Td.Service
FROM Td JOIN Td AS Ttd ON Ttd.TdCode = Td.RefToPackage;
