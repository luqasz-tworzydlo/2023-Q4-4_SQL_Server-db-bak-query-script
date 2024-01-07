USE [13_Tworzydlo_NewSQLdb_ZTB]
GO
ALTER TABLE [Auto_p] ADD [Od_daty] date NOT NULL
ALTER TABLE [Auto_p] ADD CONSTRAINT [wart_domniemana_Od_daty]
							DEFAULT '2018-01-01' FOR [Od_daty]