SELECT Td.ContractNumber, Td.TdCode, Td.Service, Td.Deleted, Td.RefToPackage
FROM Td LEFT JOIN EMail ON EMail.ContractNumber = Td.ContractNumber
WHERE EMail.EMail IS NULL;
