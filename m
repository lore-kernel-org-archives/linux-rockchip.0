Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED153C54752
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 08:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FplxNN81gbs70F6jtp7y7++sTPRryVgh1Ml7BIYMjPY=; b=u5zREy1naU0fs8rURXkB5fnXch
	0HxxLCTJqMdI8r5Q9QrDIB1KO3VJl75AqfvTJzvLayIRwVuIKHuz/E3w+w9hw8GOLXGYPrRPn1xBV
	Z4MmjOjyhyNp3gQyjxLiWy0C0wlxgjdpBn6T9lA+L82l7/7T1gPEVdv0ZajMq6pKkRMZfieDiTdjn
	NiJiIYSDjh37+NnRsm01RfGBGSCvejrxfjYFrzJTSCXd0n7n1ZTIwRW+4aoQ8uvZA1YfqR/aS7zzu
	5NMvV+bq7EezQfetUnOmeK8FIiETvAfQHL9e8tYU1opHovHl8KxQNe81/GYp0863MuQrtjt3JR5G7
	qNvHEo6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjELC-0000000Ea2r-0lA9;
	Wed, 28 Aug 2024 08:47:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjEKz-0000000EZv2-3JFA;
	Wed, 28 Aug 2024 08:47:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=/ehvlQURtyKhPbgpC86U5gspzkOdWuy/BF52NJA+Rqs=; b=lZhG3mPvCA282qd/XMpHUZoHyz
	vgSdVBOE8vRZQX8xsRQWih6JN4nD0x9ES/BcoAmaFd3eID4XGiTTxSJ5lZNzNU3y8YTGb+bMnsCn5
	IhM4F5et3O5hXN/75Gvpm5qgvg2TJhmzAYHGDG7gcAS9j1reNRqRQzLQpOO0csV7k9W8K9H3GLD7y
	1HgmrD6wKR9dsonCjbQft22S8A5KXJLjgMJUFb0sDE/+chyIhuz0nBVnWvqBTnMppeGI8sJ0LHVAF
	Ta0ryN1LozLu/EIbGMe7FvZQ8tHcrp1xAvVc20tFpVFE2vXSc58uIBZwYDhOz52S+9zSSwRjrvWHP
	2rKLHlew==;
Received: from mail-sgaapc01on20701.outbound.protection.outlook.com ([2a01:111:f400:feab::701] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjEKw-0000000B6ub-3WPO;
	Wed, 28 Aug 2024 08:47:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Hnvf9E8FSj5OulG2rh63SX0+oFqBcsg0v2lirgW0bw0xUHho2PhxAehOuhm6xB0Q7mSnXRPOko4BhSfN3gxXSN55GWeDD5+S/BtoPViSiW6pCJM/kc+tLrJc8gvVd7n29l6Da4vpmI6Zmi+a0qql/s1oB3P4ZrcAvtu+G9Cww5kQdcGRBWvLA3ISdWH1jKKyUYLED4ITHzDaAQejbxcHnPt6Ift27HFUGgHm981cDD4dGMCas0SVMahj+jE/lpXc0OQ6WA3gwuvMMVdwv9lTyQoY8oV2ttMZS7mYD2/Wi7M1rAvDGqfwD2mhAs2lh+37785mTVWFf6CZCd5kTlE8AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/ehvlQURtyKhPbgpC86U5gspzkOdWuy/BF52NJA+Rqs=;
 b=OjCIK9djc2bhEqQJJfvizjiAvn9U9NAqsw6Wxe3NTACqlTp9xp79fqycwFf0dVFWgTLVlMmhTTZMivfPfCXHrSoG4jb88OyVJyFFS0BxGZDZSsJrTx6PD3fRxKkv+SLvqClrjZWvzYO7d3mNxP1ZX1iu5tqDok+hklGlukeVzmB4BegE7xc19McSgK0kugiuhW7KGNzhtM7AM6tVU1ZQpnopMFTK/h5/IMXrPaF5g2tdGEB781U3K8Q04QtBMknoD8pTURKiZ3UXGq3uVuH+7t7B7tEsIbyEluSZEZVPGcMJo1pZISHBuJzuhsg+vpWsTjutfAXwYWrFpn9QxA+pOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by TYZPR03MB8412.apcprd03.prod.outlook.com (2603:1096:405:73::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Wed, 28 Aug
 2024 08:47:12 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%4]) with mapi id 15.20.7875.019; Wed, 28 Aug 2024
 08:47:12 +0000
From: Jacobe Zang <jacobe.zang@wesion.com>
Date: Wed, 28 Aug 2024 16:45:40 +0800
Subject: [PATCH v13 1/2] arm64: dts: rockchip: Add AP6275P wireless support
 to Khadas Edge 2
Message-Id: <20240828-dts-v13-1-6bff9896d649@wesion.com>
References: <20240828-dts-v13-0-6bff9896d649@wesion.com>
In-Reply-To: <20240828-dts-v13-0-6bff9896d649@wesion.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 asahi@lists.linux.dev, Jacobe Zang <jacobe.zang@wesion.com>, 
 Muhammed Efe Cetin <efectn@protonmail.com>, 
 Arend van Spriel <arend.vanspriel@broadcom.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1724834828; l=1327;
 i=jacobe.zang@wesion.com; s=20240828; h=from:subject:message-id;
 bh=KW5MeIG/M5nvcsKi414Zrtbcsoco1mY3Ri3vJRZ5wRk=;
 b=5cKI0jkgM8p62ugK1DjSPjoVgLw3VVR6SDLGlXT46J1YvK+TUxodA4JI8sPthYjQ87GGDHu33
 KuPIkCZNwYRCO1xNJjBhikn2G/Ii0Y3pXHBqkfN237wrnb4cfR9DGzS
X-Developer-Key: i=jacobe.zang@wesion.com; a=ed25519;
 pk=CkP5TjIqHSwHJwZXTGtadoXZucYvakXcO3HjbR6FoeU=
X-ClientProxiedBy: TYCPR01CA0082.jpnprd01.prod.outlook.com
 (2603:1096:405:3::22) To TYZPR03MB7001.apcprd03.prod.outlook.com
 (2603:1096:400:26a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR03MB7001:EE_|TYZPR03MB8412:EE_
X-MS-Office365-Filtering-Correlation-Id: f5d8bcd3-084b-4781-2272-08dcc73e029c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|52116014|7416014|366016|1800799024|376014|38350700014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bmxkMFMyT21QVUpnMDBBTjlDYWx2eFpGekVJVmZEQy84YVJDTCt0QVM1a1lX?=
 =?utf-8?B?MHhaSURLelVMcXJSTDZQU3M2c2FxTC9uT2doNmhzL0twQnljQnVvV21ibVYr?=
 =?utf-8?B?eWMrZzJPWlhMOWQ0UXFlV0RYSzJMajZhWTRxdmhDOFBydmUzckZxZWkvT3Za?=
 =?utf-8?B?MGJjZjFqdHlSazYxTjBEdW5rOFNVZ1FXamZxNDNWMzR5NERuWkxYYUszOWJB?=
 =?utf-8?B?VEZqYlRuempaQ3BOL1FJZWRoTlA0ckFGN0w4Z2dCTnBBb0Vib2Z3dXdwVDNy?=
 =?utf-8?B?NEFidXNQa0hzYkgzT3BNcWhYWkpqa1UzU093RmpGdUhnK1g5SVA3bGR1NFFJ?=
 =?utf-8?B?ZG9KcVNJeXBxbm13TEw3MUdBSno1U3hoTzRvV2lreVBMRDBtNlVOK25LOTUr?=
 =?utf-8?B?ajZWVG9IUHk2bjJRVkhzRENCR3ZtSTI3SFpxbHBQVG5xSXE2WlFsQzNvSkhC?=
 =?utf-8?B?YmVhNUtoSXNPcmtnSG9zaFZZVFZyQmQ5MnFXRER0TTZMZThaRFlEcnp5N0tY?=
 =?utf-8?B?WDh1NUlCR3BKNEVjOUFXVm9aSUlYRUxSZmQ2K1V3YkFKcWZTSnZmZ0szTmFo?=
 =?utf-8?B?NTd2dm9OMGFVajNWdms2Z0hIbUlGclBaenF4L0JYbkQ1RGd1Z2U4UkFuOE1u?=
 =?utf-8?B?VTY5T1Z2am9Qc3g4OU1PTmlMNnBmekU2cGM0akJXeDdLN2grcUpyQzBhdThn?=
 =?utf-8?B?U2VTcjQwNEFNOVIyQlU2VnJCOFdma3V4ZE4vYlJUUndtZGc4enBOcm5Ib0o1?=
 =?utf-8?B?eTRlT1JKSTlpS0hOZk1BRWgwNzRGUUlYK2l1V2dxRklNcFFJZXEwV0NDRzlv?=
 =?utf-8?B?eTllVEE4QU9PWmV6ckFyZTdybEtxcTltZWZ3UHJKU0tXVTdNU2MyeGpMcFQw?=
 =?utf-8?B?WE9pZ2JSUHJBT3oweUNTa3pabWxRdmprZ2tOZFlTWm51Q2tuVmJSdWhOVTJ4?=
 =?utf-8?B?Q2VYaGR4ZmJVcEMwbDVJMU9QOEtwTWFIUkl0Mkx5TjNHRXJub2s3SSs1dDFW?=
 =?utf-8?B?UGdOU1MzeE0rZjVFTTdNUE94ZW1EQ2dpVWp6Z29wbm1wRk1vS2YzUnJvTjlh?=
 =?utf-8?B?L0h6bUJhNkwwRzdPbUpITTY3aHNCNCtIRzFOa3Exa3BoYThpYVN3WTk2T3ZG?=
 =?utf-8?B?TGppelFIdXdoRk5uTVU3bFh6L20yU1lTQXdUenVoUzZ2YkZobXZkWStiaUxO?=
 =?utf-8?B?R0hVbzVUMmNYUitid21VNWl3d1VMejdmbzBwaWM5bFNDbUl2UzBGZHdzOEN4?=
 =?utf-8?B?L0NEdzBKTmh6NEE5dkwwcEcvd01tRjU5SFVFcXdoekFielVYajJycS9nNEw5?=
 =?utf-8?B?VGI5aDBIaTFjME1HNEc2N2FzSzFZQmErVnZKQWx6WWNscjc4L0JpcDNxQTF1?=
 =?utf-8?B?ZTBCVDRhUGtXQzY1WFRyejZnR3p4b0UwZ3FwZWdxeG9mV2x1QithVWx5eGtM?=
 =?utf-8?B?eUdVd2pIam5iejA2VklHdFZmSXNyVnB0N1lXNjdqc0FGeFB6azVQd2orM0g5?=
 =?utf-8?B?Z00vZGNlc0l1eU4rNjMwOWxOSDBEZGhaeFFBYzlTMDFvZzNmdU8vN1NWWlg3?=
 =?utf-8?B?ZGNzWjFaRUhiVm1NZnYyMFA5VUJudzRmWDB2R2svbWhKS2hFZC9ndDk5Nzdo?=
 =?utf-8?B?K2FCcGxNbVZ3RDhMRWtpUk5xeHR6akQ5SmxIMUtxakVJVVdtQXN0ampHSDJy?=
 =?utf-8?B?TnhIY0E0cFJZalFnOS9YNnlOcldpTHdpdVBCKzV2RkVwSmVLbjJ2TzErbVdl?=
 =?utf-8?B?anYvS3RtdDRtU2ZhV0xsM1N3c1pTREpwUnU3U0VvVWtFbzFjSXVoZDRSR1Ba?=
 =?utf-8?B?N1BUUVFhWE1TRzBOUzdNbkhLK21OUjFDaFU0M2QwVG9nc2xyVXowWkRLaEpl?=
 =?utf-8?B?M1NxTkx0YXp6WStKMkNJK2N0clpwT25ocWdmbS9aUVlwREE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(7416014)(366016)(1800799024)(376014)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UE9iV0RnVytFR21UdTlCUEZhOU14RmNBcEFYVlZ2ZkVuNnUrUHg4bEpVVWow?=
 =?utf-8?B?akVabGVFWWczMWZScHdRYUh2S25LUVJNVHkyc3ltQk1UdkVabzF1K2RxN3lx?=
 =?utf-8?B?YjZSVU45Tit0bStjZXppWDkrem9SV2swb25DdGZ2YjJBQi9nbnR0ZmJxWVpv?=
 =?utf-8?B?Y29iYTFsS0o0SHV4a3FOOStoS2JXc2xSMWlvakR2aHFmcXAzd1h6N1E3Mk9B?=
 =?utf-8?B?aHlGK1RqL3FzdkExbVg1WFN6cXE4L2lXTW00cWlObDEwRloySTZzdE9yWlVO?=
 =?utf-8?B?RDI1SytxZlZDUTUzeS9vbWt0NDdKeklENnZIZm5qSCtBZzQzZThRN2tBNER0?=
 =?utf-8?B?cTZyUzdWS01FV0xzMjVkNGpJM3NBcFJyR1ladElqR2RpY3lqU2MxT1h2V2Zn?=
 =?utf-8?B?QUhxYkE3c2ZBZlVnNXVGSTZFUjVRcEkrSjZEK3R0dnFZT1p5Q2Q2QWhCL1gy?=
 =?utf-8?B?V0w4eGw1MlgwTnFWaCt3Yyt1VUNWZmVHY3N6Zkh1KytFMnA3cTFUNkdsbWx5?=
 =?utf-8?B?anN6L0U1YTk0cnczRzhleVlWWmJIYmtUL3dtUUpIWkwxSUh4dGR0QmM2WDVZ?=
 =?utf-8?B?aWdTczY1ZkZLWEtWa3doSnBVV0ZHb2hTV3ZBdmxlM0s4ZnVMbXNzb0dvSW1L?=
 =?utf-8?B?SlI0RW5wRFhPcHlVZzlQcXBGK1g4d050MjVuWFh2b1ZSbFFpVkwwa2FTT2hp?=
 =?utf-8?B?RGNxcC9oM2hvZ0ZMZi9oNkU4ZDVGb2o1RkNoaXpmRHREemNLQ1AvMDF4b21P?=
 =?utf-8?B?K2pwdTVYQmFrenVwTmw1Rmp5T3lFdTdUc3Ira01lU1pNdkxqRWVCR2sxZllU?=
 =?utf-8?B?ODBkZXJmVndSTFRnZ3ZXaTR6WkZXNWhpTzJqdTJFZ09MdWVubTJ1TytLRDNj?=
 =?utf-8?B?cmRScEg3ME56UjdXOVBUYStaZ25XT012QzJ4WnZpaWZMQWJhM2Qrek5vL2ZO?=
 =?utf-8?B?eUpYbVVmQ2YxZzNpL0RtKzFDV2xLdHVCM0lxUllaWlZyQU9sbUlFNlNqVVdy?=
 =?utf-8?B?R3N1enN1YVUxVU1qT2s2QmIrWXJxU3c2SEIxS05uTWZZSGJmcDhqalBGK2Iv?=
 =?utf-8?B?MmxXZUk0c3ViNU8rNzBUSW1RV2pVYkkzT2NaTy9LVGx4a3NqVTF3MUJCUTU3?=
 =?utf-8?B?QlZnTkQ5Y3l4Z3JXUUN0VFprK2laMStsYVBEbVFVemhlYkhGUTRyaDRibEdO?=
 =?utf-8?B?YU9sNUVYK0VoWU5uZ2k1bTVtQkd0cFRUQTJEQUtsU25NdkZrQlY2eCt3ZWZT?=
 =?utf-8?B?cWZvRmZobzZsSUU0TXlDZXMxak5xSVZoVzhxWkFVN1gySHp0UExleUwxREpK?=
 =?utf-8?B?bXJ6dFZOa3l4bE9nOURGaW8vRU9CYng2UkxhSnd0aEVjRzJ3M1F1Nnc5S1BB?=
 =?utf-8?B?R2d0NEJVSnpnb2krK1lGUk1MQnV3NWdKd3NhdFRQOVdrK3dNVVhGVDk1ZTQ1?=
 =?utf-8?B?VFk3S1MwZVN3aGdTMHFwdG53WkxFbDBXMUZlQ214ZG1jclJzK2dSQ2paU3l0?=
 =?utf-8?B?ODU4djdjdUxLaE8wMGVLL0ljVGIzTHVHQmQ4U1gxZGdUdkhPWWtTNFd2OVlW?=
 =?utf-8?B?eVZlYlQ4Uk1MMElJVXIrc2N1NTRSVlM4UFlDUWtQcTVHK0ZrbExSTkVITjZ2?=
 =?utf-8?B?ZDRpQjB3MDBuKytQYVVQQ0pWc2FJNm1FNnYvYWRpNjNQS1k2MDVKNzUrbGx5?=
 =?utf-8?B?V3RQd3hINmVsWUJmdUgzSG9YSzZGNEZXNUJHTHp2MUpNS3oyZXVYVmFCL0N3?=
 =?utf-8?B?NzJtc3g2eFhZdWdFVjBQTkhQUkNNUHd4TCtRaDJVamNwRElQS1FJWG1JcVBC?=
 =?utf-8?B?aWNneGtEYUxYc0FEUWNwUUZsUnN4RVBHUERpcWJIeVE2ZzRNNHpxb04rTlFz?=
 =?utf-8?B?Y3REZGNmbHNucE9PKy9qNVRSNkdnRFdiZ3lBZG1acUxqME1KSFhpSm9yL2hm?=
 =?utf-8?B?RkwxRm5ISWJNa1F1YzNtRS92RmZPQ0VhTnd4UUJqUURlRTVkTGhGM1VJdmVS?=
 =?utf-8?B?NDZFQW5GTGR6QWpWaWdqVGxNWE52K082QmJDMjVxZGkvVkZnSUgzUWM4eVJu?=
 =?utf-8?B?V0dKYnliQUl3V0tocWJOZjNTQWhKdmRPVW8wUlZGSkY1S292QUlwOEo2R1NX?=
 =?utf-8?Q?0Aqm9uDugYE+vTc31/ulm5B4O?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5d8bcd3-084b-4781-2272-08dcc73e029c
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 08:47:12.6213
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7EqiRIKv+Rqhw3mg1qdAyBaeMzM3MJnkbQzz6BGIXMA/hIniChJz92Fv6OWtwZiN/6VxWCVtPtdgVt1FCKfn1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR03MB8412
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_094730_921063_45B650D7 
X-CRM114-Status: GOOD (  10.41  )
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

Khadas Edge2 uses the PCI-e Ampak AP6275P 2T2R Wi-Fi 6 module. The
pcie@0 node can be used as Bridge1, so the wifi@0 node is used as a
device under the Bridge1.

Co-developed-by: Muhammed Efe Cetin <efectn@protonmail.com>
Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
Reviewed-by: Arend van Spriel <arend.vanspriel@broadcom.com>
Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
index dbddfc3bb4641..3d0f55c123d92 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
@@ -283,6 +283,22 @@ &pcie2x1l2 {
 	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie_wl>;
 	status = "okay";
+
+	pcie@0,0 {
+		reg = <0x400000 0 0 0 0>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+		ranges;
+		device_type = "pci";
+		bus-range = <0x40 0x4f>;
+
+		wifi: wifi@0,0 {
+			compatible = "pci14e4,449d", "brcm,bcm4329-fmac";
+			reg = <0x410000 0 0 0 0>;
+			clocks = <&hym8563>;
+			clock-names = "lpo";
+		};
+	};
 };
 
 &pwm11 {

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
