SELECT Td.ContractNumber, GROUP_CONCAT(Td.TdCode) AS TdCodes, GROUP_CONCAT(Td.Service) AS Services
FROM Td
WHERE Td.Deleted = FALSE
GROUP BY Td.ContractNumber;
