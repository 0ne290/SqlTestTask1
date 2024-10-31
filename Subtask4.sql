SELECT Td.ContractNumber, Td.TdCode, Td.Service, Td.Deleted, Td.RefToPackage, EMail.EMail
FROM Td JOIN EMail ON EMail.ContractNumber = Td.ContractNumber;
