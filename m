Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0259CF45DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 02:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HXzVmo2B/OMr45pr+iSj1lVFZ+Q2g6vlW8j++JxGtV4=; b=NGMsShB/UgHqAS
	RHQx8Nn67jodDk89kvzevn6HKAeAFQAloDmDVoCROC5ghZGcBIHikgRO6RM25ei9ql4EWNjvT0UYL
	l5X/yUhQJy+qZDrofOfIuMb9ElbAlx9zAqF1w2cMTiiDZhYbiuC0MWtwv2f6rTl+dFBWSopW+dEhj
	YeZBy54t4EuINpchujRct1nEpJ/3IjkJmFW+L5HIw3y7aMzQi51UBmlJSXBeDF573BmgelX/nWrQm
	zc+DSIcj6hegoV4h9tH3NBVFbAAuLDDqPoVUPAovoz6LVrPfsMfVN9HVWZjzaw2s+FHBD5qSTJsLZ
	NWJ6Y1X7vQFQqieniUOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfUKW-00000006Rbv-1ON3;
	Tue, 13 Jan 2026 02:40:24 +0000
Received: from mail-japaneastazlp170100000.outbound.protection.outlook.com ([2a01:111:f403:c405::] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfUKR-00000006RbF-1F1d;
	Tue, 13 Jan 2026 02:40:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qcUaWO0jDlVWBRgje9SnwPUP1xCJ9mwpOxVCe6fKV8dr6uRH9PL3YkPOalVm6TWO92orDCSYaWDkl8rryNd3J79fh9SlfY5Y8Gp0uF1TNowzwvSvdwxH+s/z+GqoS7Hod8+QFM6nm62cS5B4F22racpOosARrZNkUKG/sVfTAcixSzl5Dy3fInq89LxAP2+RxAGqGJvpevo3deBeE5klWe+yswZG2VGLUpo4oqFE9v+nLIJPda49cpHk70Zwwkf/ERb7idWs34EbZJyRU/i2Eayn4amim3pPCet9teDoztg1B2JD62yX1/Vh2j/6RxuzPVAl7GA1pNeS0eswJ+OgAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ltBdJo5drdtiHi7HLYJKzen/9aJAspcXbTmMt6AEal8=;
 b=eCst/QRDFA1X4yAZDqaMAaEYBr20CmgQ3CE9s+W2hs5j6flEOcOAhJVzMSbEPL+2PqDj7SSFdMqRUUhG1gWcVCrr4jdNw4Tfwgqah6lQ+dpEFUv4D0FFfeZnAf0xAikfRQGnUXBPTYkKm4lckkGsYlzMrtvB7VxJFJqd5eQ5JA6WxwV8Xdl5fcaS9gxrdk49wj43JA1uqdCiQ5cLMGcLUVKh1jq4Uvp+q15W8+MoYyuBVOXHqZ8d3mUoa7UCG/I70j2u5t5ES6FyNoA4PXX8C43+ABjbNUCzcZ2A02V07kNQ669ue2Rv4iwhgQscz6aNf7ftuit8Q4qlHGmdaqAlGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=valinux.co.jp; dmarc=pass action=none
 header.from=valinux.co.jp; dkim=pass header.d=valinux.co.jp; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=valinux.co.jp;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ltBdJo5drdtiHi7HLYJKzen/9aJAspcXbTmMt6AEal8=;
 b=I5PxOho6FjieQn9G2BXeOOgdpQtiFVp+lGOzpZB4a5XuOguljJuz+N/oV02ux0XG7AHPU8oz6Sy2K5ppcgUSae0nLIiRyNhdGfcEPD1yDQSw2qRe3BOElFgtuJ5N4NIYk0ebblXhfGATptvmhK1NWifZxjrM9DiivkKGpTgQO4k=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=valinux.co.jp;
Received: from TY7P286MB7722.JPNP286.PROD.OUTLOOK.COM (2603:1096:405:38f::10)
 by TY7P286MB6708.JPNP286.PROD.OUTLOOK.COM (2603:1096:405:323::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 02:40:14 +0000
Received: from TY7P286MB7722.JPNP286.PROD.OUTLOOK.COM
 ([fe80::2305:327c:28ec:9b32]) by TY7P286MB7722.JPNP286.PROD.OUTLOOK.COM
 ([fe80::2305:327c:28ec:9b32%5]) with mapi id 15.20.9499.005; Tue, 13 Jan 2026
 02:40:14 +0000
Date: Tue, 13 Jan 2026 11:40:13 +0900
From: Koichiro Den <den@valinux.co.jp>
To: Niklas Cassel <cassel@kernel.org>
Cc: jingoohan1@gmail.com, mani@kernel.org, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, robh@kernel.org, bhelgaas@google.com, vigneshr@ti.com, 
	s-vadapalli@ti.com, hongxing.zhu@nxp.com, l.stach@pengutronix.de, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, minghuan.Lian@nxp.com, mingkai.hu@nxp.com, roy.zang@nxp.com, 
	jesper.nilsson@axis.com, heiko@sntech.de, srikanth.thokala@intel.com, 
	marek.vasut+renesas@gmail.com, yoshihiro.shimoda.uh@renesas.com, geert+renesas@glider.be, 
	magnus.damm@gmail.com, christian.bruel@foss.st.com, mcoquelin.stm32@gmail.com, 
	alexandre.torgue@foss.st.com, thierry.reding@gmail.com, jonathanh@nvidia.com, 
	hayashi.kunihiko@socionext.com, mhiramat@kernel.org, kishon@kernel.org, jirislaby@kernel.org, 
	rongqianfeng@vivo.com, 18255117159@163.com, shawn.lin@rock-chips.com, 
	nicolas.frattaroli@collabora.com, linux.amoon@gmail.com, vidyas@nvidia.com, Frank.Li@nxp.com, 
	linux-omap@vger.kernel.org, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, linuxppc-dev@lists.ozlabs.org, 
	linux-arm-kernel@axis.com, linux-rockchip@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v5 3/3] PCI: dwc: ep: Support BAR subrange inbound
 mapping via Address Match Mode iATU
Message-ID: <wtzaqjd3rrzohicar6pkiampzoi7mgazenb37uu6qh2aawl427@tfm2wn3hx7ei>
References: <20260108172403.2629671-1-den@valinux.co.jp>
 <20260108172403.2629671-4-den@valinux.co.jp>
 <aWAZv3ZwdUmo4_wc@ryzen>
 <nqpwi6ewen4kf7jqgon4ljerceqjeaule25dzb6ytas3wslqhp@ddkr3jum6eac>
 <aWC8jGTtKIzVuG-X@ryzen>
 <wvb42kyfcpyii3jql2gm75dd6hqpcd32yat2yb7cg7sl3raw4l@d4mfxk47l6md>
 <aWTedhkOclAVvktO@ryzen>
Content-Disposition: inline
In-Reply-To: <aWTedhkOclAVvktO@ryzen>
X-ClientProxiedBy: TY4PR01CA0023.jpnprd01.prod.outlook.com
 (2603:1096:405:2bf::16) To TY7P286MB7722.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:405:38f::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TY7P286MB7722:EE_|TY7P286MB6708:EE_
X-MS-Office365-Filtering-Correlation-Id: da5138cb-f69f-496b-5526-08de524d147d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|10070799003|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qmJAA5QAJo4iiyEccs9lbFA3b+Gsm5dv58X3h5kI4hGu6dyMfKvyfszLy2V3?=
 =?us-ascii?Q?E6T8oj4IWGyYz3FlvzhQ8JyClzDyJ8QiRaw/B6dUMjiskBQajqn+QpgAby6e?=
 =?us-ascii?Q?E4RunsuvkMJHnetSDoP2zdLnwACl1IMt/6JTYCDOVvts7UKnPSut4cW/8MMV?=
 =?us-ascii?Q?sYE/KsFRzoP2awhtN/CoM5Mn1b9Axi0QBpnLoJFqdhMnn07koXMndMcYgCjI?=
 =?us-ascii?Q?RMTjxeup+IpFudR/eDIDnoP6tXAx18nRTm899ZzpWlNFr7/X9E41RMpM+saR?=
 =?us-ascii?Q?xgpwtljh9AApyFtGtiE5Ay0nAilVzwOfL9RVN3nOnMZX13Yv7KYf7ERQLg/B?=
 =?us-ascii?Q?0I8fY61bOqvyYxeMFTjRgUyiSc56zYhOhIZ26A4pq4Uxpw8DqGuQD/dPtDM2?=
 =?us-ascii?Q?CPvj6mIhQ/5c6xEHdFWRyEdbCrwGUwZGU3IdWaInZ1yOtkyDc5wRwZEDf0hf?=
 =?us-ascii?Q?klRFdlAKuC1V5zRy/lyIV2GZLjEYVlDPkAweAycOSzAgYz6cLiItX+6WbCMH?=
 =?us-ascii?Q?XmsG4ixh8VF5yHz7sjvp1G3F551/zd7YNtHoBKGr5u+wu2qUtQ57Qmn8IGGm?=
 =?us-ascii?Q?Xx/sgVQoKOq5Kiq9p7p45hZA61+o8Ub+3jFzn6ikINI19eiZItF6SMHdZ4LL?=
 =?us-ascii?Q?q48dzJGhGoQAVMe4ceQ5MAL+j5xLrLaf6JTPVWOW0++VqgPdxYDLxS/9/Z+B?=
 =?us-ascii?Q?zpklHHWGVybssanEqoYDG3INWVAs5IXeUQhY4B1FS0Kt8xcsuUTYiIm9mneL?=
 =?us-ascii?Q?8c0qw1aVJzrN77mcUdfIN0ICysEhxf/Lrzjs4AU4zzXzd3YyZnd6ZPKou0AI?=
 =?us-ascii?Q?frzHc/u6tW1VeQXkGPfnK+jjbDlvB8mOGSAvC6TVFId2Nd5r/4MkZdkASdrt?=
 =?us-ascii?Q?E9Ni0gli5E87a3KiOSCHuGjRJLZn44muJPZMJOycP8s/t3XwkQ3sIfEoGz3Y?=
 =?us-ascii?Q?GqBHZP9hNtGSxTWLrTTbpDGbFIYH52cPNZNXEjpLkNj5X8a+h3HBQ9Ku/8BS?=
 =?us-ascii?Q?YYOvTx15W7SxdzqIbs6T9azill6jrCL1HzzA4EIBxsRz6RBMi9TvNJVddvOy?=
 =?us-ascii?Q?fH7vxBLZIuSKCgKr8MwA3gu7KQSh4aPa+2Mirl25Ew2Ijww8L91TrNE0DhPw?=
 =?us-ascii?Q?MPKkhNMaaCPV3Xp4huTKxr17Sp/SnWevg5CelxxoiGltiy7mcX3nv94hYiI6?=
 =?us-ascii?Q?p7/2kG6IymS4m1TkLPZTNIaKTn2JzP00eEFW3IgTEgOzSya1c3GmFvLSV5MJ?=
 =?us-ascii?Q?TdUCu6ydcZ9UeTB9pANvgSTcSKGBSbe+na+9/vfvV3qGjgGw651ZrikhBw+x?=
 =?us-ascii?Q?tCENGSGxlB8k6tXfYhBLC0MUULBu7Detr6sX+qcurt6AM33JABJwHcgOkkaG?=
 =?us-ascii?Q?9G5kGWacdT06FGWnC2/YILhitqSLDxawpy9tI35VRdFaG0ccVeVpMYmkkTXQ?=
 =?us-ascii?Q?PeJt76SQNdIk/VGZ8Gg7HeJ/cShSmwHi2sVXBZCa90chxWDbs61ybQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY7P286MB7722.JPNP286.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(10070799003)(7416014)(376014)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?78d7RcKlAyEmsc57wek1W6zRAdQ8kbcRO9q2Lj9Z4pL3yKKk0/VhdecI0wRU?=
 =?us-ascii?Q?c/lAJDc6P9U61JWeoVznJRcpZj2aqH9EbTt2unkiSRW7o72UX64J2UDnfqCm?=
 =?us-ascii?Q?fj4bimH9oapaDqcjCxiu2MnrtsbhcLTGBk8dy4ZeT04XNR/o+I49uI+mw4xl?=
 =?us-ascii?Q?wH5HUOHifAcGAJmst1fnv9HUTG/ZuMDWZaPgW+VgraEAP/IueAY5CqgELnir?=
 =?us-ascii?Q?kB27yp95B5XoOI4Hebj8Ir477DBzp1iMdSNpoP6aLhpDK2AddfODvdD3SR0S?=
 =?us-ascii?Q?/rPCrZOVkvIwdvjdRYtA2BelOVFiQrnTrMdbWzTBdX7sWNACAu35eDpD5Htg?=
 =?us-ascii?Q?aGYf9K87KpoOrtMvDs3kXoiO2dBTvle8FKbU1v/eV1jeXdAhcgxeNWOPmsJj?=
 =?us-ascii?Q?WoZYbQndtEICSChUIyafKTcAcykp3HaPJjY++ukbJclekybpiumFtqQaApo6?=
 =?us-ascii?Q?vA+4J+uEoa9K27TBRO8c/K3eyuuTtCaXmSNe4C/R7Il0Q45823W/B0dhVtGk?=
 =?us-ascii?Q?UEXf95xPaIqzr37lxGYetCQ3wrY0mVFfSHUS9ci9qtUPk71p7Z4OWq3kyZOX?=
 =?us-ascii?Q?1qZ+Dr8hDYc2JqiTbjhHM5Ngi1TIl74ZeokHpNLKD8Fp5SoeK8kVELaK5ux5?=
 =?us-ascii?Q?TUbC5glUy+esfFJq2kp3SWHSlWIkJ1SBUwX/7+fVA1CX4raX9PQDt7iCNvdF?=
 =?us-ascii?Q?8jbQowKC58cdTcx8HLP4vy/xJAfxjNQObIWjQwfolQsB+RjSbgEkkRUxB0nU?=
 =?us-ascii?Q?/CK+u0p0bxQKOos+TLU+L98jcl9V39dTsnr9LHp6olWQqWYsPWKLICmLK59/?=
 =?us-ascii?Q?pUk48vMI0E2s67+XsECVg6L3MClUB4DiDAEEjZZL8XAUcOVV5m7OrcO4M5XO?=
 =?us-ascii?Q?CO2bEonA/Vp8mKo5TTniFS/i2pkHGRTwBnaD2eA8ePZbgnVtQe4M4Srw+XHB?=
 =?us-ascii?Q?erO9buWEAuGWXhCPuBXsBrUNeALci9gkcaSO/zgaW4BjeqO67dQYLvNwvIV+?=
 =?us-ascii?Q?xj7+F1hdGL/6xjOFuCEUMsXy8JgWr6NVI8A/9OSrZsKJ+wHrecSmEjAWDwii?=
 =?us-ascii?Q?jpx4CiMkX7rvTAniOu9/srrjt3i8rw9plqnrZVFiubTEr/xADbkJUpEBkXYu?=
 =?us-ascii?Q?cs4gBV02rc5E58rQFXxTwrir/WM0SLeq/jmUAw+tjyfMPUBFQk0cIoMmAU0k?=
 =?us-ascii?Q?7ijvIgSamVpZ/j+f8hk9FWTvm1mRnyOW69FUBv12u5j5HN+KphpZdnDkPtSa?=
 =?us-ascii?Q?PEC2bOOBC8953OEfxYVwpREaA6er0v00MmS3QcgVl0OGWTmkAilLaeWgJAzV?=
 =?us-ascii?Q?Edg0fd+psgFhZbBS7bYNrNGF8IokQBXzBXnusS1S8EJPi1Ca9n9Dy55ydoig?=
 =?us-ascii?Q?N1vUD+Bq4kpr0DWyRDctFPSfcRhReWJQUABWUG8K0ps0aDDEuSWzGpkIPmFB?=
 =?us-ascii?Q?qh047JvLaDgzyqLLTseONgC/E8Z11OXCbSb/g4Hip4FYPIpGa6Hk2jUffNXM?=
 =?us-ascii?Q?nQYQ8W0bJ49IEvHC3EpK0SB6g+M7XH/Z/oG1r/DjA+ZQ2avsjY0LSZwclydn?=
 =?us-ascii?Q?BINBY1y/O3NGw97T45jCEZfGN1K04marDsxl3qujqmdTBHQAD1ZR6/YFGmAu?=
 =?us-ascii?Q?R+pL+AarL4wF4DS0Z7BqFGl3yfNH+FWO8XvB3yZDUTgPaEPjvoJqXoGfvInI?=
 =?us-ascii?Q?QX4hMOlvQn4L3/s37dXBHL64FwW19xU3ZZcRIoRBQMsLrWq4ZhPIFqzpAA0A?=
 =?us-ascii?Q?tmxvWkEx7oJjGoxA3JO1RbC7Ze7u/keKd7OP1J735KfZA3+he7fw?=
X-OriginatorOrg: valinux.co.jp
X-MS-Exchange-CrossTenant-Network-Message-Id: da5138cb-f69f-496b-5526-08de524d147d
X-MS-Exchange-CrossTenant-AuthSource: TY7P286MB7722.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2026 02:40:14.3605
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 7a57bee8-f73d-4c5f-a4f7-d72c91c8c111
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z/i0xtbap0ZH1hCEA7MnhOPQIwWsCmqiYd9yMVuAwERTacMEp93SbnVvdZomgrgV7ORP8n/qvKHB+ml3pjX8Mw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY7P286MB6708
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_184019_353506_FE83BD6D 
X-CRM114-Status: GOOD (  25.65  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Jan 12, 2026 at 12:43:50PM +0100, Niklas Cassel wrote:
> Hello Koichiro,
> 
> On Sat, Jan 10, 2026 at 11:29:06PM +0900, Koichiro Den wrote:
> 
> (snip)
> 
> > > Your new feature (epc_features->subrange_mapping) in epc_features appears
> > > to depend on epc_features->dynamic_inbound_mapping, so it is a shame that
> > > we don't have a epc_features->dynamic_inbound_mapping bit, so that this new
> > > feature could have depended on that bit.
> > > 
> > > 	if (epf_bar->use_submap &&
> > > 	    !(epc_features->dynamic_inbound_mapping &&
> > > 	      epc_features->subrange_mapping))
> > > 		return -EINVAL;
> > > 
> > > 
> > > I think adding some documentation is a good step.
> > > 
> > > Perhaps we should also introduce a epc_features->dynamic_inbound_mapping bit?
> > > Since you are making DWC glue drivers return a mutable EPC features, we could
> > > set this bit in the DWC driver after that commit. What do you think?
> > 
> > As you pointed out, support for dynamic_inbound_mapping is needed
> > independently of my series. Given that, it would make sense to handle it
> > either before this series, or to fold it into the next iteration (=v6) of
> > the series if that is preferred.
> 
> Please fold it into the next iteration (=v6).
> 
> It should be a one liner patch in the DWC driver, at least if you put it
> after your "PCI: dwc: Allow glue drivers to return mutable EPC features"
> patch.
> 
> Thank you for all your efforts on improving the endpoint framework.

I just submitted v6:
https://lore.kernel.org/all/20260113023715.3463724-1-den@valinux.co.jp/

Thank you very much for the review,
Koichiro

> 
> 
> Kind regards,
> Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
