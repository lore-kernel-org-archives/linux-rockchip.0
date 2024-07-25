Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3623C3DA49
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jul 2024 13:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lqffTprTwWV3eapfv3qtD+tvJlJfz55RM86ypJMVK18=; b=kjrloe3YxzQw63qirk2rKtqDjc
	R6K/cEE39YsyqW6v2KBHFh6X52FjaZSa7TM2DJalvE6KM/hhyvFD+ADEORDaTCPvrp5MjfU3sToNf
	3HxdpgQRLTUCuPRssGNIcEuODaCqERaVcU0nC//k9LkgZa61fVphXM6+4TGqe8KYUvjtjXALguO1I
	x2WlceIKkrcuyIhJnXJKiWxRCpf33hOF2jb6/Ojzu3dVHbUY3L4YRtcQphxW9pLTcV9T41w+NRCRT
	n+aAz/1x0hVHpplrLehw7mga+uyDzyrdkwlRbIobjAn9krRzjSsfRmNqOBdNNtI5lJ9PZEyuxpXkA
	Elr/8WEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWyY6-000000015Uc-1cWg;
	Thu, 25 Jul 2024 13:30:26 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWyWC-000000014Vt-06Rc;
	Thu, 25 Jul 2024 13:28:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P0Sp0XhLdLNrckxTmbjApHCY+d/YUiXbdIVzf7lN+/XpGD1POh9yPVnmp5Z4if2EYKWH3ESyRM9gRwWfQ36J2eoIUoXH33ayNAwTcWkM22jovbJTEVksTfxTiKUo+PlQ67998YHxeoI27M9QHlUfmPH7Rf7L0s5KK1MilG94Spcx4+bf0GFTxdmXLy0+vtcTsFoA2uwjO6JHRsW2QDS7CG0OhGVjMVay7sEP9IgpgA5f02rI4aIPMK+pc0aRlpY8lmqDEzUYYG5BRjN1jtqX8EpxqL/NYR5j2+t9VZL3AROFbqhwqSP1b4Fnqr/J6lmjUXnmOKxfS2fx6xvkdUBZyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BOz94KksZbowomQ61lp6xZjrFFg4NqyshzZRPsQz5zg=;
 b=n+RamgmhlreBpj7mar/fxBw1oSZ75Gzys6SGSFkN27bVSsMb7u5Pg/QtgMPGszcDJ/3OkXntryjLEo+MINcPZgsuNDLIKIMW8Opx1CgfL/ciOAuGcVU60Uryrkc1/cpH9v2kQJYVpm5Nsd14HTNFzEPvWqQgZRjoSFYoBF5NQdhVDvds7Hi0QattXLLZjROT2OUoY2EUrpbZVGkiJ2G0HA+WX36OLkgGAw1/BS9ZHmwM1JxArpeAexe963f7PNLJs3TAoTCE7ogZtHK/TPyX6h9yDNyd6RDqcdFmzE3qFXgH1lRQg/Vbb0bxoQWNeU9apC3Omfg6t6TTkFgxeS737Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BOz94KksZbowomQ61lp6xZjrFFg4NqyshzZRPsQz5zg=;
 b=jE/7Pgjpb95EQ4PckqINBhdxwSINTa9AoAwx8XRwuVyCSA6CqECxGWz9WUtZtY3W9XDkkDja5J4gAapdrXrd3eNaFBAdrN1unWmeO+U2bIcNwa+6G3ZKn49AsaFVsKCrLbAWAajSQ8ZPLl95481mcuVdiKRQVjMWpUlu1ndp7D8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from DU0PR04MB9562.eurprd04.prod.outlook.com (2603:10a6:10:321::10)
 by DU4PR04MB10670.eurprd04.prod.outlook.com (2603:10a6:10:58d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.28; Thu, 25 Jul
 2024 13:28:19 +0000
Received: from DU0PR04MB9562.eurprd04.prod.outlook.com
 ([fe80::ad4d:8d53:1663:d181]) by DU0PR04MB9562.eurprd04.prod.outlook.com
 ([fe80::ad4d:8d53:1663:d181%4]) with mapi id 15.20.7784.016; Thu, 25 Jul 2024
 13:28:19 +0000
From: Farouk Bouabid <farouk.bouabid@cherry.de>
Date: Thu, 25 Jul 2024 15:27:51 +0200
Subject: [PATCH v6 5/8] arm64: dts: rockchip: add tsd,mule-i2c-mux on
 rk3588-jaguar
Message-Id: <20240725-dev-mule-i2c-mux-v6-5-f9f6d7b60fb2@cherry.de>
References: <20240725-dev-mule-i2c-mux-v6-0-f9f6d7b60fb2@cherry.de>
In-Reply-To: <20240725-dev-mule-i2c-mux-v6-0-f9f6d7b60fb2@cherry.de>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Farouk Bouabid <farouk.bouabid@cherry.de>, 
 Quentin Schulz <quentin.schulz@cherry.de>, Peter Rosin <peda@axentia.se>, 
 Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.0
X-ClientProxiedBy: VI1P189CA0008.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:802:2a::21) To DU0PR04MB9562.eurprd04.prod.outlook.com
 (2603:10a6:10:321::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR04MB9562:EE_|DU4PR04MB10670:EE_
X-MS-Office365-Filtering-Correlation-Id: 93471893-51cf-44a9-6490-08dcacada5fe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|52116014|376014|7416014|366016|921020|38350700014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RThjdXJ4UHFzZ2Fvc050V1A4YTB5VjZIU01VVGVkVXcrMGFOVi9OaWliVzZt?=
 =?utf-8?B?b3pYQU5OMjhUdFdxVjJBTGZoNjZJeGhpUG9TaHZBdi9JMlZUMG53VWNseFFT?=
 =?utf-8?B?anJIV0dmczhyd2hXdDRTcEZIYzlHdmQzZ0dzTXhvMkpCNWlLWnpSQ2NsaWVx?=
 =?utf-8?B?bmt4a1plbFQwL0NycWFUR3l2cTYrczJMazh0OUNFM09TOVpiWWpoVy9BM0V2?=
 =?utf-8?B?Z0dkNit5eDNsbzlVNVdNVG8vUHRqaVJaRDBOY3BYQnAvRE5PR2VkNk9iK0FB?=
 =?utf-8?B?ZkVVbHdKb0ZnT281U1VTcUFoZkxUTVJWZnJNZkd0enFKUGwvanRHRFd5NDI4?=
 =?utf-8?B?RWtIQmNjY092L3JKNWMxOXB6NEpXczV3QU92UVZoTmxLZEFWQWVCa1dkRnJi?=
 =?utf-8?B?QTExMXMvSTMvMHBjL0dsVDJSQnZxaHNYVG9LYVRhbTdQQks4UnAxV0pCd2tP?=
 =?utf-8?B?RjRlOFRrQkx1TlYxRjhCTWhqWVFLOHJEZGFYTkh2UzlJWnM1NnFTcEdoSnNT?=
 =?utf-8?B?ZHN0elN4Z2xPNyttSktxcU9ENEwrSERzNmdhR2ppdXlLakRsSzcxaElRMHNS?=
 =?utf-8?B?dDJLdFhwVDVVeGpCUmx0Z3ZEV0JIV0tkbjRCSjJ2QlN1RnFoM2dUTjNEUkpm?=
 =?utf-8?B?R2xFQkZmb3I1UUIyN2k5Q0U5cEJsRXN2TWRqbzFRY0RjZ1dtL1hseHcyazFZ?=
 =?utf-8?B?UzEyTnAzdEZvZWVmc3BOZXVBWWwyc3B6M3U5SkVQdjRXaE5xZzE1TW9nQk1s?=
 =?utf-8?B?cHplOUhrRFFqWmIxWm81aWxJK1NGWGJxc3ZtWlNsZ29VS0JuOGdFeE9EaWY0?=
 =?utf-8?B?SVplTnRQWlRYYUU5SU5DTFFzWjdqL0M1V2ZuckVmbDFmaE9wTlg2aDlSOHdu?=
 =?utf-8?B?c1c4cFdyb1JnUHNhakdxenNXTXl2YzNNNi8rb3BFbGhvNW5ZNE1Ea1JDMHVv?=
 =?utf-8?B?ditrYTEyVFRFVUdkZTRUVGZrZkQ1TjcvM0Mya1pQZ2s0ZUJ5WEJuMDJBcS9L?=
 =?utf-8?B?c1pjU0NrazVURyszc0t4ak5kZUZVakZrQ3orUDBLeENGL1pueGRseEJ5MFFa?=
 =?utf-8?B?OFp4bm4xSEVRUnRHajVrSmR1OUxKNkQwOTNKbThtbTBFcDRCdXZhSldrY1JU?=
 =?utf-8?B?Y1Z2cGlXU012cXdhVmFuVXMrbENrTmtPTklTYTEyQkh2bkNIMUplMERHTTNl?=
 =?utf-8?B?KzlsYmp1Y2RzZzNiMVM2a3ZRQndUc1BMM203RmFrdC9hSTVBc2pLWHhmZStn?=
 =?utf-8?B?R01pV0x1UjVGNEtGMzJTWTRGRm94N1BSdEZ0TDFvcERGbnNFTm9CdCtBNWg1?=
 =?utf-8?B?U0tBU1NGTGZlUWFkS2ZMeWNSeVpmN0RVcVdFZjF4RWFUUWxrcmhEZlpubWZm?=
 =?utf-8?B?MEZXL2ZtN1k5TzM2WDlhMU9RVkNna1IxdUJXVGNZMWZTekNFeGZvTmZENHFs?=
 =?utf-8?B?RXNzSGY0MmVZUGVjc1M3eCtiVDFmSXJlRFBic011dnpiT1M1d1RwbGk0NmZu?=
 =?utf-8?B?N2ZkWVVsMHo4QzRUVUc1WUxHNFY5Z0JacmdWU2RIUnM1M3l2Q1hVY0lZV0xZ?=
 =?utf-8?B?bzdqUWhBZHRVUjlxblZqRkdjL1hhOUtSc0ZQamJna3h1bVV4Y1d1WGh2Z1hy?=
 =?utf-8?B?aTBsNmhoMWNYM1VpVE4wQk9UTEtMY01menZwYWpqNG5FU29LSTgxdnJOVlVz?=
 =?utf-8?B?eUswa2tnMEoxVmVsZWtMMlZTYXNQNlZteG1uR0lHSElqbVNxVElwQTFaUk41?=
 =?utf-8?B?OUhnKzJUSU0zNDdQSHRRb2x2YkU5MVdVVDB6STdjbzlLbmNpZEFnTWFuQlhl?=
 =?utf-8?B?TzIzdUlvZHR3Tmh0NG00K2pCRXNJWGtoRGt6UmZtalNNOUtNMkMyNUpzME94?=
 =?utf-8?B?T1hXY3o5b1creStuSC9aaFhkcHNPWVZwNDVqajIvV29XT0NVV3pHcThUZkU1?=
 =?utf-8?Q?OE8zW+xQcTQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR04MB9562.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(376014)(7416014)(366016)(921020)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWRRSmMrTEFDNm1yNVFmeWVyK1E2ZW1ZQXUxOGQ0NWpVMTMrNnNTcTZ0T1N3?=
 =?utf-8?B?bXUzdnRYT01iNjFiMHhsQk9oZGJhdEIrcUNXaGtob2tQaTM3R3VHMXBuRE45?=
 =?utf-8?B?L3EwaVgza01zZmZXVFEvd2I1VEdGYmJRazZOdkZzZG9oWW0rTGYvNHptYUNI?=
 =?utf-8?B?bURGV3RZK3p3cjlvU1J6Z2VDSjBLcXRkS08wc2czVzcwenU0c0VGTUpjMzR5?=
 =?utf-8?B?R3JuRmNRa1p4N0Q5MzFCQlNnRHN3cUxSdjBrS2FFSWUyQW9jeWJlYWtaUk5u?=
 =?utf-8?B?b2NJYko2S092emROQnRNTi9HK0dyK3EyK3FZemltVFRZUjlQYWtwMGQzYVFx?=
 =?utf-8?B?S25KNWFETHJGVWdiUksxMEM5TU0vUzRmY1IyU2l4allEYjVoRWc0bUVYc09j?=
 =?utf-8?B?S1pqOGNRVjEzSE81U2hnaVp3VXRJQmIwUUltcnZsbzVYZ3RXbzVGZEhUZXRJ?=
 =?utf-8?B?bWNUN2c5N1Bhb2pwVWF6Yno3Q25DNjBvVENXZUl6bWxZSjUvYlVBRG9TcHRu?=
 =?utf-8?B?YTJ2ZXZlM2Q2Rm90VWNXUlpPa0VqczFvaFRVTktiU3drMzY4czArUVYwMDND?=
 =?utf-8?B?ZkdwOEVnNm5lK0ZuOHNCMXVnK2FvZEI5Tmc0WWViSG1XTGZpd25ZeGs3ZFJy?=
 =?utf-8?B?Rkx5VUJjWk5jMThSRXBhOHcyaTVIMGJDRG9SNFFGb3RCaThhYTE5UVpqelVL?=
 =?utf-8?B?MmUrdjA0bzhsN2QvakRmelpaR3Q4Wnp6c1ZrcW5CaTRLWFJtY1JzNTVLSmtR?=
 =?utf-8?B?Z0s2N1FkUGVpcmN1ZnNMTyt2U3E1K2prRUFmcnE4SWtoSk4yWDlIT2dkV3oz?=
 =?utf-8?B?ZGVGbHZQWWswZTFoQXFITlM5WURBT091YjRsMXZGL1FBcUJUZGcvYld1YXNY?=
 =?utf-8?B?Z2sxWHRTTUsvclJiazkxMkV2dFlYbi9wY0tQY3lZcnJlY2VUanMrZk16Q1c4?=
 =?utf-8?B?dndKUy9pOWl1QXZQVEgzR2lvRXJKM3h4TDlKeTNZaWxpY1l5MGdqV1dqQUhh?=
 =?utf-8?B?S2huN25IVlo3ZWNDNVYwbzY0MUpyTmt6dkhleVpHWjVzRXZMVnBEQ2xVTk8v?=
 =?utf-8?B?ZThJUXlOclhjOXg3cVAvVjA2bkJmUTNPV2Rkc0k1Rzk0Q3owRHRpelRIeXVs?=
 =?utf-8?B?WmhWS1Z6bGhUSUtXL0NiaXg2K0ZCOVllMDRqanV6dFJiYjZiK2pDYUhIVkxN?=
 =?utf-8?B?SjA5M3FXNEwvc1I5aUJ1MURDQkFDVWVSaW12bVJmTytxd2t2VEJQeGxEdWsw?=
 =?utf-8?B?enpTaDJTSWFzM29MTm5qTVRMclNzWDZzc1FKdDBwRUs5MXQ4WGRIVTNzNmRL?=
 =?utf-8?B?akJzTnlBeUNFQk5vWkxmMEt0bzdta09KVmVYTE90MFNlYjQ2SlkzRjMvVXJY?=
 =?utf-8?B?bVhCb0xvV0ljeE5EZ25ZNHQxRGlkaUJkTmIrbFFPUmhvVk00U3d3VjRwOEU0?=
 =?utf-8?B?R3dZOW9uai9FMXpCdDVBaDJqbVN4TUNvVy9ZNFA1TTBuN3V3UTZKMDAvNmJi?=
 =?utf-8?B?VE5uSE1ydlRFU0RjSTlESjQ0M1VXU1VkUnpLQnc3L2Fsdm5LTDR5ZThSN2pa?=
 =?utf-8?B?ek9odjIyc3IzZzJUR0Q0blVWQkdCdXY2SFpyNFBhNktYRW9qWmFKbXdmTkxm?=
 =?utf-8?B?QTI0aXp2U0svbVd6V0c5MlY3OXBBeHhsUFBXek5qSFg2TnFzdEhxYzA0SlNR?=
 =?utf-8?B?T1Jrc1loSzFnVEg0V1dNMkR0bmRvWE5uWC9WVHVMSTlNby9ZN3g2MjF5OXRj?=
 =?utf-8?B?aDRNZ2FHSHF5MWUvRGVlNndEVmVuWEJOV2R1cWp2bGkrK04yWCttRVQrOS9D?=
 =?utf-8?B?VWJZS0FGdFdZQkRMUzJ1bmNBNHFXZGttODl2MlM3QTROUFJOMVlkbnRjaDNh?=
 =?utf-8?B?NnppRWk4WllqT0pJM0JRZkJRN2EvSE9UY0lPU1pRSG4yRVh2OGNSYXVQaVZX?=
 =?utf-8?B?cnAra05BOCtDV05RK1RTY3hUblpNN3QwRURCN2VKQzZUekdCNjJJWVNsOVJW?=
 =?utf-8?B?eTJodWhwOUN2RGhTWjZPbW5ZRTZxR2JOODFKbG1nQmpDZ2pZNGtyZlZqeU9w?=
 =?utf-8?B?ZVZjblZWaERsdGVDeDkrZHprN0hpK3plNVE3TFFWaVRIYVFjQ1dFaHFNMDA5?=
 =?utf-8?B?YmtzS3lzTkNhYzVNM1B3WnJvaDR5THlKWGdXUFdZRzFYTmtSM29aZ0NFR3pX?=
 =?utf-8?B?SVE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 93471893-51cf-44a9-6490-08dcacada5fe
X-MS-Exchange-CrossTenant-AuthSource: DU0PR04MB9562.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2024 13:28:19.5078
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JbbVxIiLDU2+yLDLgSgTnJBsAFDloeBXUU8Pp6lTaog9e+uSA3TKMDlQLNSjvRdWo+iC92VfV9wZ/gVDlO4U52/1yb+NdNJ2ao88kmRyGXM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU4PR04MB10670
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240725_062828_175706_E06B20D9 
X-CRM114-Status: GOOD (  10.93  )
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

Add the tsd,mule-i2c-mux alongside with the amc6821 (tsd,mule) and isl1208
as a default device on the mux.

Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts | 25 +++++++++++++++++++------
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
index 31d2f8994f85..56f87a603581 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
@@ -32,6 +32,7 @@ button-bios-disable {
 
 	aliases {
 		ethernet0 = &gmac0;
+		i2c10 = &i2c10;
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
 		rtc0 = &rtc_twi;
@@ -276,8 +277,25 @@ &i2c0 {
 	status = "okay";
 
 	fan@18 {
-		compatible = "ti,amc6821";
+		compatible = "tsd,mule", "ti,amc6821";
 		reg = <0x18>;
+
+		i2c-mux {
+			compatible = "tsd,mule-i2c-mux";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			i2c10: i2c@0 {
+				reg = <0x0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				rtc_twi: rtc@6f {
+					compatible = "isil,isl1208";
+					reg = <0x6f>;
+				};
+			};
+		};
 	};
 
 	vdd_npu_s0: regulator@42 {
@@ -313,11 +331,6 @@ regulator-state-mem {
 			regulator-off-in-suspend;
 		};
 	};
-
-	rtc_twi: rtc@6f {
-		compatible = "isil,isl1208";
-		reg = <0x6f>;
-	};
 };
 
 &i2c1 {

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
