use [UsageDataAnalysis]
go

CREATE NONCLUSTERED INDEX [_dta_index_Exceptions_5_85575343__K6_K2_3] ON [dbo].[Exceptions]
(
	[IsFirstInSession] ASC,
	[SessionId] ASC
)
INCLUDE ( 	[ExceptionGroupId]) WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

CREATE STATISTICS [_dta_stat_85575343_2_6] ON [dbo].[Exceptions]([SessionId], [IsFirstInSession])
go

CREATE STATISTICS [_dta_stat_85575343_3_1_2] ON [dbo].[Exceptions]([ExceptionGroupId], [ExceptionId], [SessionId])
go

CREATE STATISTICS [_dta_stat_85575343_6_3_1] ON [dbo].[Exceptions]([IsFirstInSession], [ExceptionGroupId], [ExceptionId])
go

CREATE STATISTICS [_dta_stat_85575343_4_3_6] ON [dbo].[Exceptions]([ThrownAt], [ExceptionGroupId], [IsFirstInSession])
go

CREATE STATISTICS [_dta_stat_85575343_1_2_4_3] ON [dbo].[Exceptions]([ExceptionId], [SessionId], [ThrownAt], [ExceptionGroupId])
go

CREATE STATISTICS [_dta_stat_85575343_4_1_3_6] ON [dbo].[Exceptions]([ThrownAt], [ExceptionId], [ExceptionGroupId], [IsFirstInSession])
go

CREATE STATISTICS [_dta_stat_85575343_2_1_3_6_4] ON [dbo].[Exceptions]([SessionId], [ExceptionId], [ExceptionGroupId], [IsFirstInSession], [ThrownAt])
go

CREATE NONCLUSTERED INDEX [_dta_index_EnvironmentData_5_213575799__K3_K2_4] ON [dbo].[EnvironmentData]
(
	[EnvironmentDataNameId] ASC,
	[SessionId] ASC
)
INCLUDE ( 	[EnvironmentDataValueId]) WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

CREATE STATISTICS [_dta_stat_213575799_4_2] ON [dbo].[EnvironmentData]([EnvironmentDataValueId], [SessionId])
go

CREATE STATISTICS [_dta_stat_213575799_4_3] ON [dbo].[EnvironmentData]([EnvironmentDataValueId], [EnvironmentDataNameId])
go

CREATE NONCLUSTERED INDEX [_dta_index_Sessions_5_2137058649__K10_K6_K7_K8_K9] ON [dbo].[Sessions]
(
	[CommitId] ASC,
	[AppVersionMajor] ASC,
	[AppVersionMinor] ASC,
	[AppVersionBuild] ASC,
	[AppVersionRevision] ASC
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

CREATE NONCLUSTERED INDEX [_dta_index_Sessions_5_2137058649__K10_K11_K5_K2_K3] ON [dbo].[Sessions]
(
	[CommitId] ASC,
	[IsDebug] ASC,
	[UserId] ASC,
	[ClientSessionId] ASC,
	[StartTime] ASC
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

CREATE NONCLUSTERED INDEX [_dta_index_Sessions_5_2137058649__K3_K5] ON [dbo].[Sessions]
(
	[StartTime] ASC,
	[UserId] ASC
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

CREATE NONCLUSTERED INDEX [_dta_index_Sessions_5_2137058649__K1_5_10] ON [dbo].[Sessions]
(
	[SessionId] ASC
)
INCLUDE ( 	[UserId],
	[CommitId]) WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

CREATE STATISTICS [_dta_stat_2137058649_1_5] ON [dbo].[Sessions]([SessionId], [UserId])
go

CREATE STATISTICS [_dta_stat_2137058649_3_1] ON [dbo].[Sessions]([StartTime], [SessionId])
go

CREATE STATISTICS [_dta_stat_2137058649_1_11] ON [dbo].[Sessions]([SessionId], [IsDebug])
go

CREATE STATISTICS [_dta_stat_2137058649_2_11] ON [dbo].[Sessions]([ClientSessionId], [IsDebug])
go

CREATE STATISTICS [_dta_stat_2137058649_5_3_1] ON [dbo].[Sessions]([UserId], [StartTime], [SessionId])
go

CREATE STATISTICS [_dta_stat_2137058649_11_2_1] ON [dbo].[Sessions]([IsDebug], [ClientSessionId], [SessionId])
go

CREATE STATISTICS [_dta_stat_2137058649_2_10_1] ON [dbo].[Sessions]([ClientSessionId], [CommitId], [SessionId])
go

CREATE STATISTICS [_dta_stat_2137058649_10_5_1] ON [dbo].[Sessions]([CommitId], [UserId], [SessionId])
go

CREATE STATISTICS [_dta_stat_2137058649_10_11_2] ON [dbo].[Sessions]([CommitId], [IsDebug], [ClientSessionId])
go

CREATE STATISTICS [_dta_stat_2137058649_11_5_1_2] ON [dbo].[Sessions]([IsDebug], [UserId], [SessionId], [ClientSessionId])
go

CREATE STATISTICS [_dta_stat_2137058649_6_10_7_8] ON [dbo].[Sessions]([AppVersionMajor], [CommitId], [AppVersionMinor], [AppVersionBuild])
go

CREATE STATISTICS [_dta_stat_2137058649_3_5_10_2] ON [dbo].[Sessions]([StartTime], [UserId], [CommitId], [ClientSessionId])
go

CREATE STATISTICS [_dta_stat_2137058649_3_10_1_5] ON [dbo].[Sessions]([StartTime], [CommitId], [SessionId], [UserId])
go

CREATE STATISTICS [_dta_stat_2137058649_10_1_11_2_5] ON [dbo].[Sessions]([CommitId], [SessionId], [IsDebug], [ClientSessionId], [UserId])
go

CREATE STATISTICS [_dta_stat_2137058649_6_7_8_9_10] ON [dbo].[Sessions]([AppVersionMajor], [AppVersionMinor], [AppVersionBuild], [AppVersionRevision], [CommitId])
go

CREATE STATISTICS [_dta_stat_2137058649_11_5_2_3_10] ON [dbo].[Sessions]([IsDebug], [UserId], [ClientSessionId], [StartTime], [CommitId])
go

CREATE STATISTICS [_dta_stat_53575229_1_2] ON [dbo].[Features]([FeatureId], [FeatureName])
go

CREATE STATISTICS [_dta_stat_21575115_2_5] ON [dbo].[FeatureUse]([SessionId], [FeatureId])
go

CREATE STATISTICS [_dta_stat_21575115_3_2] ON [dbo].[FeatureUse]([UseTime], [SessionId])
go

CREATE STATISTICS [_dta_stat_21575115_1_3] ON [dbo].[FeatureUse]([FeatureUseId], [UseTime])
go

CREATE STATISTICS [_dta_stat_21575115_6_2_1_5] ON [dbo].[FeatureUse]([ActivationMethodId], [SessionId], [FeatureUseId], [FeatureId])
go

CREATE STATISTICS [_dta_stat_21575115_2_6_1_3_5] ON [dbo].[FeatureUse]([SessionId], [ActivationMethodId], [FeatureUseId], [UseTime], [FeatureId])
go

CREATE STATISTICS [_dta_stat_149575571_1_2] ON [dbo].[EnvironmentDataValues]([EnvironmentDataValueId], [EnvironmentDataValue])
go

