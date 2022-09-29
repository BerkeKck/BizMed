
INSERT INTO MC_PARAMETERS(ID, NAME, NOTE, MC_NAME)
VALUES(680, 'Tedavi uyumu', NULL, 'MCDiabetesNurseForm');


INSERT INTO MC_PARAMETERS_DETAIL(ID, MCP_ID, NAME, NOTE, VALUE, IS_ACTIVE)
VALUES((SELECT MAX(ID)+1 FROM MC_PARAMETERS_DETAIL), 680, 'Var', NULL, 1, '1');

INSERT INTO MC_PARAMETERS_DETAIL(ID, MCP_ID, NAME, NOTE, VALUE, IS_ACTIVE)
VALUES((SELECT MAX(ID)+1 FROM MC_PARAMETERS_DETAIL), 680, 'Yok', NULL, 2, '1');

COMMIT;

// bu sql komutu veritabanındaki parametrelere yenisini manual eklemek için, var yok komutu ve DM tipini eklerken bu kodu kullandım. 
