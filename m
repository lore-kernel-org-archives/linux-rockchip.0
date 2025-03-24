Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A281C3600D
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Mar 2025 09:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xUrOO6PG7xmOWJiWkA9+0XNrNXLB0LIgv2spOC58Jak=; b=S4qSX9jWyGpS219Vml7bdzD8Hy
	1Hxl41UdYz+YOszCQW8WoCLiCIWS/WRxv5+7BsS9C5rLytrA4RBIVDsNFN11R+eG0Eqz/mXzMp8sR
	MjbBwmx+1iKMW1WkbUnnQbD0bwLAgTTYce4c6Z6RMrrdlQc2f5XzLvOLEGKSQSc8PU/5agJ6gy72W
	/PD1SbkZHlemb/KsInKdfbpokb40bsgp0KDFyDX9SrQptG32ivxA97kUWqyeKIQS/zYKepOJqz2mV
	yo82NMPYobU/7Vbj3WRVlBEqbkRKB7Uz42oYUy9W6TSj4qZ7Oy2Ak0SC6baC7HzUzCrSTQgXRODJ8
	4F6zl8OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twe3Y-00000002hpi-04LX;
	Mon, 24 Mar 2025 09:25:16 +0000
Received: from mail-vi1eur03on20615.outbound.protection.outlook.com ([2a01:111:f403:260c::615] helo=EUR03-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twe1a-00000002hcF-0cvr;
	Mon, 24 Mar 2025 09:23:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PP3KlrY5KIGcy3vf2fhitK1uiSnwqIzGYvEo3wpo85QO/MJHIeGJu5ZuHtEbRQB2boE/47Jy+d3rMbAxU0rhaYXSOt3SegoDpCNpUztqNeA+xWNHu3O7fIiE0X6sLQYEjplvdygx8O9GNWAaLbx1YKk7anPdfGUKPo19MWx+5mK4Ddt88P7lNPX+EeIAA5Jd01EGhmmixY3ZeIaGS1ai1eZCOIbItSX37JIfxqTovRp2NeD7ZqeRNxRQi3DgTt9+YMVJCIX9n58uQz96g2J2kLNvSDSrQsVpif7rAgnQ9MPyoUy9LpigG0IRedDhfcjonv0zCEOBhcohj/YqpiCqqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zceYDfKsgKfFDKb00eSSV0lXSMpbeL+YgKnu0L/z7A8=;
 b=G18gs0wjCmNMJFw4fznLq3b0UbRoRsGihuZarwBT1roAN7aeJzynEiAZ2k+Q/jix8z5d3siuLD8r8v5rtGxzzs5hH83pNN1900E9zenLU29wdPWuMwEOBVsgYG6lPiHZd7DuLS23v9MBR6Qeu39V57sjzW20k37BDhBgt8M6xPHv4cFJeveFDgBjqbDAc5vPfs5xUBQyYD3foD7fxBBwVnSlKObvVENUn7t2BUXfBzVb66UnJk8kn5pg2zQqCf273RB/2/NhS4yM+KQ3f+P624tV4qXCCxsFjrWHEO84tK8f2XZU3RsAW3KSg5IPBSxwGOLBCrONCweU80Yct5XKEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zceYDfKsgKfFDKb00eSSV0lXSMpbeL+YgKnu0L/z7A8=;
 b=FSuKGQL+oVqu9Dex6WM9f8ZCztQLHRlCT2N2FiadhYJ+YbNBjHaev0Xrp2heFdbcv4uj7rk3IIJsPX/R5ZPKtcMaoeTYYYt3nu9nmfUvJcUuErSJwzEoK8T+qq5FO6bQ/SuzlvNgEjZbmsuoFgTMvsdLozESklic98anm+TS2Oo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by GVXPR04MB10045.eurprd04.prod.outlook.com (2603:10a6:150:11a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Mon, 24 Mar
 2025 09:23:06 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%6]) with mapi id 15.20.8534.040; Mon, 24 Mar 2025
 09:23:06 +0000
Message-ID: <2ece5cca-50ea-4ec9-927e-e757c9c10c18@cherry.de>
Date: Mon, 24 Mar 2025 10:23:03 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Remove overdrive-mode OPPs from
 RK3588J SoC dtsi
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, stable@vger.kernel.org,
 Alexey Charkov <alchark@gmail.com>
References: <f929da061de35925ea591c969f985430e23c4a7e.1742526811.git.dsimic@manjaro.org>
 <71b7c81b-6a4e-442b-a661-04d63639962a@cherry.de>
 <960c038ad9f7b83fe14d0ded388b42f7@manjaro.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <960c038ad9f7b83fe14d0ded388b42f7@manjaro.org>
X-ClientProxiedBy: FR0P281CA0159.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b3::15) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|GVXPR04MB10045:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b007707-f870-45f4-87cf-08dd6ab57b98
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014|13003099007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UEFweCtDcUJqa0FGbVQxNWF2UWQvYjEwOFVSMDRSL3hvWXZJNldzSHdoSkJR?=
 =?utf-8?B?cmNSUVUvaDJRUTdGdThXNThLbXJ0aHBQaEFVTkhRVndDbS9hVHVIV25kV1pG?=
 =?utf-8?B?c2ZmNFBLN3FLMVlES2pUMXpicFRkSks4cmd2RDY3VjI0OXJIK3UzV2VBcHdX?=
 =?utf-8?B?UGVWNTJxQU1mUHR4UlUycUJoNG9veE42U0ZVcjRScDRhSFdiQnlMNksyQTdQ?=
 =?utf-8?B?bDREMzFGQnQ3UHAwWkV2QWE2cGplL1J0WjE3REZZNktLS2lZUUl2NmpRRHNL?=
 =?utf-8?B?WGVBS3BvWS9nR29sTXpGL0pybnUzcE16K2xJeXczd3pld1huSTJFVm9nQzRz?=
 =?utf-8?B?US84VlllVG5lZEdQTkNiSDBHbnBIVVAraXhGTjl3TTRzbnNYMWtZS3VDMld4?=
 =?utf-8?B?TGhqbWJnVTcwQ1FOUHRJK2toVGNQb3RiZ2JiSmhLcEd1eXdhL2I2MnJlajZn?=
 =?utf-8?B?Z1VIdzBpUElYRjl1NjA3eWZIVFlyOTRTSGIxdi81c2p6a1pjRHZtMStpOUVv?=
 =?utf-8?B?aFZDays5dVJQQ1Rjdmc2NXNYYkdLc0c0czhacElFUGNKQ0ZlbSswSENhTklY?=
 =?utf-8?B?eUFYbFlIK0Fvb2VVdytuVzVTSW9NTnMwSUQ1Y2huL011RllhTDhVcG1aVC80?=
 =?utf-8?B?akhrR2JML01qbnliclU2Tm5lditPYjRad284Wjk3UFJuWk5CZHRWYkpqMita?=
 =?utf-8?B?WnF4VzdmZno2ZEM2ZmJNaHlweWU0NjBOdmxRaTdqbG9VVVpDc2dXNVFldGNq?=
 =?utf-8?B?NjNMYzhQVzY4b3BzS1lid3pUcFg4TlVBMk5YS0IzMlIySnRGZlM3dlQ1Tkp5?=
 =?utf-8?B?bXYvemFKeGRYclJ4VzN4OFpVZFR4WFJHRWwzcmZJUUpxcXRJUHk3UlU3eWta?=
 =?utf-8?B?U3hmWHYvZHdIeFRjT0JwQ2ZBMFZOOTRpNFprMXpwNUJaNnIzckQ4Y2hhTTZL?=
 =?utf-8?B?RmN5blFZc1VRWmpTbHhSQm1oODRSaHlDU2xRbmpDUEhQYkZkdThFMXhaRUM4?=
 =?utf-8?B?dU5OWVZTNGMwZ3Nhalg1cFBnblJUcFEySytGUDJDZjdCVWpvQ1FmbHh6Mkh4?=
 =?utf-8?B?N3hnN3AzYWZEZkNBdnZ1UE15TXlmV0lraGhlWVcxNnQxdzdqNGlvRllPMXN6?=
 =?utf-8?B?MlZEa2N4TmtlbWg1RmdZMnF1dEUvVTdTejlac0V1czcwbEFBVEFTQjlnY3p3?=
 =?utf-8?B?NlJtUUhVVytIVThRSG5MYWhrMkxkS3FxUHk1ZU01WWlnRk50ZktiVENGKzRZ?=
 =?utf-8?B?OXBFaGpCSC90WGcyNERMOEF0Y0FmdVZ3R3ZKeVJGK0FmNFQ3OTFrM2owd2J2?=
 =?utf-8?B?U0p0cXBwR0JRbUhCSFV0dWFlc0pvb1hMdVovclh0REp4YnF1Z2tOK1p5bkk4?=
 =?utf-8?B?K3pzLzMrdUJ0WXJMci9BOXh4N1l6VVdKY3dsQzNuMlh1Z2hOZVhMZk9zbHpQ?=
 =?utf-8?B?ZytlakpmRWE5RHVKK0NsdmNWNzRacW5seHlKQUU0d1JrRUVmMy9NLzl5aHBZ?=
 =?utf-8?B?bkpaTW8zVXBoUzMrWFZ0WDdNb0F5alV4cm1JeG5ENTdhcjh3b2lJSUViK21M?=
 =?utf-8?B?Tkl1emFDdlBUbTRJQ0xFZ2s3VzFUY1BUMmNMVk1LMlBKbmRNbjBIbG5oUWVZ?=
 =?utf-8?B?V1hBbWRYendGSUNnRFprc2JIWWVPNUJURWFKR0w4aXNmT01BTUdzNVdpVEIz?=
 =?utf-8?B?djk3QXBVSTJHU21HTmpwUHBJVXZDZFNsaUlSODdkZUJUTis2akxLYkIxeStm?=
 =?utf-8?B?OHc5N0dydzRMaE9CUi9xMWkvSkZiTFYvdEkxbWdjcnVFNkZ1aEU5NE5QVjQ2?=
 =?utf-8?B?Q0JTajJHWDVuZjYzTFY1Zz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZkpBNHJUd0g0eEc2MExCSSt6VWlPTDlDVmJKaTgyT3VRRnZtd1MzeCswaTRP?=
 =?utf-8?B?ekVWNENKdGh6a3dIS3ZycjQ5ekJxOUdaSHVsT2g4aTM2cXlLNWcxTVpWM2U2?=
 =?utf-8?B?blFMR3ZxUUczTFpzd0lHdDJNNlJqS1ljaWljb0dVQTFZRUJoU2YvbW5FQXhX?=
 =?utf-8?B?OTJxeGhlVnlhS09SMjB5K2svdGUwU01vYjdVTUVleG5lODAya1Byc0lLblhx?=
 =?utf-8?B?Lys3QzdadkVMdXpPZ1dGMGZmdGd0cUR2TE5hdDlKcGlnWVBoenV3L2tkZEJs?=
 =?utf-8?B?Uy80ajROVnlyemJiSjVsTVlzTXVpN2NhVXE3Z3dacmwxdmJiWDlOOXpvVTVH?=
 =?utf-8?B?ZTY3dHhhRDNkZmFXeWd5c0w5elo0dnNkd2Zhemx1YkhoNnVSTzFGOFRmeU43?=
 =?utf-8?B?aGEvR0o5UDhBcWZ2L2t4bHdrU2VxaWFIVEExU1NYZm56eWljN2I5NUFOWER5?=
 =?utf-8?B?eU8xYzVPNXhsUzhyaEFMdmpqMnhMazdWTEY4aWtTVW5ESjBuU0x3K1NSRUNY?=
 =?utf-8?B?VVRnMm1aSkRLZm9rV0k2VWkwZ1dUODJBM3dDVFVmSDBCak95ZElnbWVSRU5v?=
 =?utf-8?B?ZEJtazdnMTNibDV2Zm90WVNjS3RMR2N1dEpzRE5rcjhyaEVRZ0pKTzJIUXky?=
 =?utf-8?B?dTRvbGJuNmc1dmVOdU1ZcG9Yd0ZOckVsYWdBaTFGZTVFRDk4R1poRk5UZUlN?=
 =?utf-8?B?MXhxeHhFSlZZR1UrY2FRdEo5YnM5cXg3WmVDV1RvMkRkdzJKVzhLVzB5dnhX?=
 =?utf-8?B?M0RoQ3RxdHVQVTVtWnB6RHgxT3pTR1dwNkY1TmN4OWs3eWFOcFN1VTYxZzEy?=
 =?utf-8?B?Yit1aXFsVVpTZFFMdDlsa0hzampsNDBVSTJyUEkzRTBUNTkrT0R1dWxTTDdk?=
 =?utf-8?B?UUJRV0I1SzAvRkp5RUVIU25EKzVpaE10VUVrQjhiazVxeEFVSVg1U0xxWTdt?=
 =?utf-8?B?czhkeGpJK1V4WEs2UGlQNUxOYnVuTWR6eVJ4UnhBQkZXRGNLV25QRDdTSmtH?=
 =?utf-8?B?N1pIZU1Kb1l5RE90dnE2cXhtOFd2THpKRU5jUGhPa2JtMWRoc1FIaXZ1ZlZY?=
 =?utf-8?B?c0hnYVUrYVVRMXA0bmoyU1cwTmZhQUdLS0JwUW41a0t6RkxEbERIY3ZVY1hL?=
 =?utf-8?B?Z2cyM253VXlWZjdzRUV1RUEyUHc3NUFVR0ZBYmw1TDJYOUcyVnJJMEhxS3dt?=
 =?utf-8?B?d0tSNnBwQnphUmJKaGZOeUNOQjI0R3VXemIwblYwMGw1VWIreEtaUVFxZ0N3?=
 =?utf-8?B?UjRvREtMYjdxZU5HTmEreWhsdHZwaXpwbDZaSDlWNDNyL0hMQmNDQjQzMFFJ?=
 =?utf-8?B?emZZd0o3d3ozVHZndTZpQ0RCaEQxOVByNUs5S3p2TVZCNkMyR3FsOXJBVXZM?=
 =?utf-8?B?M01xK2tVbzd5NTBSNDFjK3F5Zm5HVVU0bG10emtXSUllVEJ4bG8xcm10aUxo?=
 =?utf-8?B?cVE3OVkwUzJvK3lFWks0azVQQTBCYkZvaldMczZCb0t1Ujc1ckpPdFc3amZX?=
 =?utf-8?B?N3dFZDgxbG1iVUx3U1lBek9qeFUzbk1uT2xTWDd6V1FBalcrQnZhQkg1TnV0?=
 =?utf-8?B?M2NXMFhmQXlWSDN1MEc2Ui9jTkZzaHcwMll5bnI4bk5ENnMzaFRPM1Q0K2tS?=
 =?utf-8?B?ZnFUZ01JTjJ3aU56ZXJhTUN6dmVyUFlGSXVMbnJDaDd1RENtd1d1YlFLaVZ6?=
 =?utf-8?B?aXMwZHZydHdUYzU1YXlFeGZvNzhGSyt0UWxrdE96MmxTK2pBZUdWRmthbHVv?=
 =?utf-8?B?SDhuZldWc000b2RFLzlLT2pBMEVkSDZIb2U4V0UzUE8xVDFLR0tYQm5xaG1l?=
 =?utf-8?B?MWRhY3dFL1VKUGt4dWtmd3ZkMG1PbzBNa3JpRFUxZUFOb05zUjY0S0ZZTWk1?=
 =?utf-8?B?djZMTUVEVDRPQS9MTkZvV20wSFUwY0ppRERJV2tDVzVNVnl3YlpCSnNNTEFB?=
 =?utf-8?B?ckxQY04xbzJyU1B6L2xLY0tmRHdqdGVoMUtMZmt3MFhWaWpKU25xZnEzMjRY?=
 =?utf-8?B?eUNzUEROcmpKZmRYS1FXdEdUb0ZvejZ6NU9TL1lCU01iK0xQWk1Eb2dOdC9O?=
 =?utf-8?B?V2Q2c0RkaUNSQkRLYjBhQ3JNTUxwRVZISUVrenVFQWxDVURObVNkdjBtd3VI?=
 =?utf-8?B?QWJlVTVlc0NGSXg1MW5SYktDeHIyYng3aHdoTGVweTFnUkIzNWtKNHovT0Zn?=
 =?utf-8?B?MHc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b007707-f870-45f4-87cf-08dd6ab57b98
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2025 09:23:06.0167
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iARXRMWjn4pzbN/LsA1EMaSdHaFe5PXkyA4OI2YqwGpyYwRKUi47bT9WT6QSxZoonRXFUUa3sOgWp+PwUmZAdtl0E4jqp1T774+J2eqx3jU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB10045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_022314_407126_EC6D0D18 
X-CRM114-Status: GOOD (  33.02  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRHJhZ2FuLAoKT24gMy8yMy8yNSAxMToxOSBBTSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IEhl
bGxvIFF1ZW50aW4sCj4gCj4gVGhhbmtzIGZvciB5b3VyIGNvbW1lbnRzIcKgIFBsZWFzZSBzZWUg
c29tZSByZXNwb25zZXMgYmVsb3cuCj4gCj4gT24gMjAyNS0wMy0yMSAxMDo1MywgUXVlbnRpbiBT
Y2h1bHogd3JvdGU6Cj4+IE9uIDMvMjEvMjUgNDoyOCBBTSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+
Pj4gVGhlIGRpZmZlcmVuY2VzIGluIHRoZSB2ZW5kb3ItYXBwcm92ZWQgQ1BVIGFuZCBHUFUgT1BQ
cyBmb3IgdGhlIHN0YW5kYXJkCj4+PiBSb2NrY2hpcCBSSzM1ODggdmFyaWFudCBbMV0gYW5kIHRo
ZSBpbmR1c3RyaWFsIFJvY2tjaGlwIFJLMzU4OEogCj4+PiB2YXJpYW50IFsyXQo+Pj4gY29tZSBm
cm9tIHRoZSBsYXR0ZXIsIHByZXN1bWFibHksIHN1cHBvcnRpbmcgYW4gZXh0ZW5kZWQgdGVtcGVy
YXR1cmUgCj4+PiByYW5nZQo+Pj4gdGhhdCdzIHVzdWFsbHkgYXNzb2NpYXRlZCB3aXRoIGluZHVz
dHJpYWwgYXBwbGljYXRpb25zLCBkZXNwaXRlIHRoZSAKPj4+IHR3byBTb0MKPj4+IHZhcmlhbnQg
ZGF0YXNoZWV0cyBzcGVjaWZ5aW5nIHRoZSBzYW1lIHVwcGVyIGxpbWl0IGZvciB0aGUgYWxsb3dl
ZCAKPj4+IGFtYmllbnQKPj4+IHRlbXBlcmF0dXJlIGZvciBib3RoIHZhcmlhbnRzLsKgIEhvd2V2
ZXIsIHRoZSBsb3dlciB0ZW1wZXJhdHVyZSBsaW1pdCBpcwo+Pgo+PiBSSzM1ODggaXMgcmF0ZWQg
Zm9yIDAtODDCsEMsIFJLMzU4OEogZm9yIC00MC04NcKwQywgYy5mLiBSZWNvbW1lbmRlZAo+PiBP
cGVyYXRpbmcgQ29uZGl0aW9ucywgVGFibGUgMy0yLCBBbWJpZW50IE9wZXJhdGluZyBUZW1wZXJh
dHVyZS4KPiAKPiBJbmRlZWQsIHdoaWNoIGlzIHdoeSBJIHNwZWNpZmljYWxseSB3cm90ZSAic3Bl
Y2lmeWluZyB0aGUgc2FtZSB1cHBlcgo+IGxpbWl0IiwgYmVjYXVzZSBoYXZpbmcgYSBsb3dlciBu
ZWdhdGl2ZSB0ZW1wZXJhdHVyZSBsaW1pdCBjb3VsZCBoYXJkbHkKPiBwdXQgdGhlIFJLMzU4OEog
aW4gZGFuZ2VyIG9mIG92ZXJoZWF0aW5nIG9yIHJ1bm5pbmcgaG90dGVyLiA6KQo+IAoKIiIiCmRl
c3BpdGUgdGhlIHR3byBTb0MgdmFyaWFudCBkYXRhc2hlZXRzIHNwZWNpZnlpbmcgdGhlIHNhbWUg
dXBwZXIgbGltaXQgCmZvciB0aGUgYWxsb3dlZCB0ZW1wZXJhdHVyZSBmb3IgYm90aCB2YXJpYW50
cwoiIiIKCmlzIGluY29ycmVjdC4gVGhlIHdob2xlIHJhbmdlIGlzIGRpZmZlcmVudCwgeWVzIGl0
J3Mgb25seSBhIDXCsEMgCmRpZmZlcmVuY2UgZm9yIHRoZSB1cHBlciBsaW1pdCwgYnV0IHRoZXkg
c3RpbGwgYXJlIGRpZmZlcmVudC4KCj4+PiBzcGVjaWZpZWQgbXVjaCBsb3dlciBmb3IgdGhlIFJL
MzU4OEogdmFyaWFudC4gWzFdWzJdCj4+Pgo+Pj4gVG8gYmUgb24gdGhlIHNhZmUgc2lkZSBhbmQg
dG8gZW5zdXJlIG1heGltdW0gbG9uZ2V2aXR5IG9mIHRoZSBSSzM1ODhKIAo+Pj4gU29DcywKPj4+
IG9ubHkgdGhlIENQVSBhbmQgR1BVIE9QUHMgdGhhdCBhcmUgZGVjbGFyZWQgYnkgdGhlIHZlbmRv
ciB0byBiZSAKPj4+IGFsd2F5cyBzYWZlCj4+PiBmb3IgdGhpcyBTb0MgdmFyaWFudCBtYXkgYmUg
cHJvdmlkZWQuwqAgQXMgZXhwbGFpbmVkIGJ5IHRoZSB2ZW5kb3IgWzNdIAo+Pj4gYW5kCj4+PiBh
Y2NvcmRpbmcgdG8gaXRzIGRhdGFzaGVldCwgWzJdIHRoZSBSSzM1ODhKIHZhcmlhbnQgY2FuIGFj
dHVhbGx5IHJ1biAKPj4+IHNhZmVseQo+Pj4gYXQgaGlnaGVyIENQVSBhbmQgR1BVIE9QUHMgYXMg
d2VsbCwgYnV0IG9ubHkgd2hlbiBub3QgZW5qb3lpbmcgdGhlIAo+Pj4gYXNzdW1lZAo+Pj4gZXh0
ZW5kZWQgdGVtcGVyYXR1cmUgcmFuZ2UgdGhhdCB0aGUgUkszNTg4SiwgYXMgYW4gU29DIHZhcmlh
bnQgdGFyZ2V0ZWQKPj4KPj4gIm9ubHkgd2hlbiBub3QgZW5qb3lpbmcgdGhlIGFzc3VtZWQgZXh0
ZW5kZWQgdGVtcGVyYXR1cmUgcmFuZ2UiIGlzCj4+IGV4dHJhcG9sYXRlZCBieSBtZS91cyBhbmQg
bm90IGNvbmZpcm1lZCBieSBSb2NrY2hpcCB0aGVtc2VsdmVzLiBJJ3ZlCj4+IGFza2VkIGZvciBh
IHN0YXRlbWVudCBvbiB3aGF0ICJpbmR1c3RyaWFsIGVudmlyb25tZW50IiB0aGV5IHNwZWNpZnkg
aW4KPj4gdGhlIE5vcm1hbCBNb2RlIGV4cGxhbmF0aW9uIG1lYW5zIHNpbmNlIGl0J3MgdGhlIG9u
bHkgdGltZSB0aGV5IHVzZQo+PiB0aGUgdGVybS4gSSd2ZSB5ZXQgdG8gcmVjZWl2ZSBhbiBhbnN3
ZXIuIFRoZSBvbmx5IHRoaW5nIFJvY2tjaGlwIGluCj4+IHRoZWlyIGRhdGFzaGVldCBpcyB0aGF0
IHRoZSBvdmVyZHJpdmUgbW9kZSB3aWxsIHNob3J0ZW4gbGlmZXRpbWUgd2hlbgo+PiB1c2VkIGZv
ciBhIGxvbmcgdGltZSwgZXNwZWNpYWxseSBpbiBoaWdoIHRlbXBlcmF0dXJlIGNvbmRpdGlvbnMu
IEl0J3MKPj4gbm90IGNsZWFyIHdoZXRoZXIgd2UgY2FuIHVzZSB0aGUgb3ZlcmRyaXZlIG1vZGUg
ZXZlbiB3aXRoaW4gdGhlIFJLMzU4OAo+PiB0eXBpY2FsIHJhbmdlIG9mIG9wZXJhdGlvbi4KPiAK
PiBUcnVlLsKgIEknbGwgc2VlIHRvIHJlcGhyYXNlIHRoZSBwYXRjaCBkZXNjcmlwdGlvbiBhIGJp
dCBpbiB0aGUgdjIsCj4gdG8gYXZvaWQgdGhpcyBraW5kIG9mIHNwZWN1bGF0aW9uLsKgIEkgbWVh
biwgcGVyaGFwcyB0aGUgc3BlY3VsYXRpb24KPiBpcyByaWdodCwgYnV0IGl0IGhhc24ndCBiZWVu
IGNvbmZpcm1lZCBvZmZpY2lhbGx5IGJ5IFJvY2tjaGlwLgo+IAoKU3BlY3VsYXRpb24gaXMgZmlu
ZSwgYnV0IGl0IHNob3VsZCBiZSB3b3JkZWQgYXMgc3VjaC4KClsuLi5dCgo+Pj4gVGhlIHByb3Zp
ZGVkIFJLMzU4OEogQ1BVIE9QUHMgZm9sbG93IHRoZSBzbGlnaHRseSBkZWJhdGFibGUgInByb3Zp
ZGUgCj4+PiBvbmx5Cj4+PiB0aGUgaGlnaGVzdC1mcmVxdWVuY3kgT1BQIGZyb20gdGhlIHNhbWUt
dm9sdGFnZSBncm91cCIgYXBwcm9hY2ggCj4+PiB0aGF0J3MgYmVlbgo+Pgo+PiBJbnRlcmVzdGlu
ZyB0aGF0IHdlIHdlbnQgZm9yIGEgZGlmZmVyZW50IHN0cmF0ZWd5IGZvciB0aGUgR1BVIE9QUHMg
OikKPiAKPiBHb29kIHBvaW50LCBhbmQgSSdtIGZ1bGx5IGF3YXJlIG9mIHRoYXQuIDopwqAgQWN0
dWFsbHksIEknbSByYXRoZXIKPiBzdXJlIHRoYXQgb21pdHRpbmcgdGhlIGFkZGl0aW9uYWwgQ1BV
IE9QUHMgZG9lcyBubyBnb29kIHRvIHVzLCBidXQKPiBJIGRpZG4ndCB3YW50IHRvIGFyZ3VlIGFi
b3V0IHRoYXQgd2hlbiB0aGV5IHdlcmUgZHJvcHBlZCBvcmlnaW5hbGx5LAo+IGJlZm9yZSBJIGNh
biBoYXZlIHNvbWUgaGFyZCBudW1iZXJzIHRvIHByb3ZlIGl0IGluIGEgcmVwZWF0YWJsZSB3YXku
Cj4gCgpJIGFzc3VtZSB3ZSdsbCBoYXZlIHNvbWUgcGF0Y2ggaW4gdGhlIGZ1dHVyZSB3aXRoIHRo
b3NlIGFkZGVkIGFuZCB0aG9zZSAKaGFyZCBudW1iZXJzIHlvdSdyZSB0YWxraW5nIGFib3V0LCBz
byBsb29raW5nIGZvcndhcmQgdG8gc2VlaW5nIGl0IG9uIAp0aGUgTUwgOikKClsuLi5dCgo+Pj4g
SGVscGVkLWJ5OiBRdWVudGluIFNjaHVseiA8cXVlbnRpbi5zY2h1bHpAY2hlcnJ5LmRlPgo+Pgo+
PiBSZXBvcnRlZC1ieS9TdWdnZXN0ZWQtYnk/Cj4+Cj4+IEkgZG9uJ3Qgc2VlIEhlbHBlZC1ieSBp
bgo+PiBodHRwczovL2V1cjAyLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz8gCj4+
IHVybD1odHRwcyUzQSUyRiUyRnd3dy5rZXJuZWwub3JnJTJGZG9jJTJGaHRtbCUyRmxhdGVzdCUy
RnByb2Nlc3MlMkZzdWJtaXR0aW5nLXBhdGNoZXMuaHRtbCUyM3VzaW5nLXJlcG9ydGVkLWJ5LXRl
c3RlZC1ieS1yZXZpZXdlZC1ieS1zdWdnZXN0ZWQtYnktYW5kLWZpeGVzJmRhdGE9MDUlN0MwMiU3
Q3F1ZW50aW4uc2NodWx6JTQwY2hlcnJ5LmRlJTdDZGM3NTQ3OTFiNjg0NDUwNmIxMWMwOGRkNjlm
NDQ0YTclN0M1ZTBlMWI1MjIxYjU0ZTdiODNiYjUxNGVjNDYwNjc3ZSU3QzAlN0MwJTdDNjM4Nzgz
MjIwMzMwMDU4NTE2JTdDVW5rbm93biU3Q1RXRnBiR1pzYjNkOGV5SkZiWEIwZVUxaGNHa2lPblJ5
ZFdVc0lsWWlPaUl3TGpBdU1EQXdNQ0lzSWxBaU9pSlhhVzR6TWlJc0lrRk9Jam9pVFdGcGJDSXNJ
bGRVSWpveWZRJTNEJTNEJTdDMCU3QyU3QyU3QyZzZGF0YT00YnY5cFVoNmFTRDBHVkxKNFp2dXl2
b3gxSzB4eHdmODNLWFg4NlFzdk1vJTNEJnJlc2VydmVkPTAKPj4KPj4gSSBzZWUgMjQ5NmIyYWFh
Y2YxMzcyNTBmNGNhNDQ5ZjQ2NWUyY2FkYWFiYjBlOCBnb3QgdGhlIEhlbHBlZC1ieQo+PiByZXBs
YWNlZCBieSBhIFN1Z2dlc3RlZC1ieSBmb3IgZXhhbXBsZSwgYnV0IEkgc2VlIG90aGVyIHBhdGNo
ZXMgd2l0aAo+PiBIZWxwZWQtYnkuLi4gaWYgdGhhdCBpcyBhIHN0YW5kYXJkIHRyYWlsZXIgZm9y
IGtlcm5lbCBwYXRjaGVzLCB0aGVuCj4+IG1heWJlIHdlIHNob3VsZCBhZGQgaXQgdG8gdGhhdCBk
b2M/Cj4gCj4gQWN0dWFsbHksIEkgYWxyZWFkeSB0cmllZCB0byBnZXQgdGhlIEhlbHBlZC1ieSB0
YWcgYWRkZWQgdG8gdGhlCj4ga2VybmVsIGRvY3VtZW50YXRpb24sIGJ5IHN1Ym1pdHRpbmcgYSBz
bWFsbCBwYXRjaCBzZXJpZXMuIFsqXQo+IFVuZm9ydHVuYXRlbHksIGl0IGdvdCByZWplY3RlZC4g
Oi8KPiAKPiBIb3dldmVyLCBIZWlrbyBhY2NlcHRzIEhlbHBlZC1ieSB0YWdzIGFuZCBub2JvZHkg
aGlnaGVyIHVwIHRoZQo+IHRyZWUgc2VlbXMgdG8gY29tcGxhaW4sIHNvIHdlIHNob3VsZCBiZSBm
aW5lLiA6KcKgIEl0IGlzbid0IHRoZQo+IGNhc2Ugd2l0aCBhbGwgbWFpbnRhaW5lcnMsIHRob3Vn
aC4KPiAKPiBbKl0gaHR0cHM6Ly9ldXIwMi5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNv
bS8/IAo+IHVybD1odHRwcyUzQSUyRiUyRmxvcmUua2VybmVsLm9yZyUyRmFsbCUyRmNvdmVyLjE3
MzA4NzQyOTYuZ2l0LmRzaW1pYyU0MG1hbmphcm8ub3JnJTJGVCUyRiUyM3UmZGF0YT0wNSU3QzAy
JTdDcXVlbnRpbi5zY2h1bHolNDBjaGVycnkuZGUlN0NkYzc1NDc5MWI2ODQ0NTA2YjExYzA4ZGQ2
OWY0NDRhNyU3QzVlMGUxYjUyMjFiNTRlN2I4M2JiNTE0ZWM0NjA2NzdlJTdDMCU3QzAlN0M2Mzg3
ODMyMjAzMzAwNzA0MjIlN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKRmJYQjBlVTFoY0draU9u
UnlkV1VzSWxZaU9pSXdMakF1TURBd01DSXNJbEFpT2lKWGFXNHpNaUlzSWtGT0lqb2lUV0ZwYkNJ
c0lsZFVJam95ZlElM0QlM0QlN0MwJTdDJTdDJTdDJnNkYXRhPTNkWmdTRyUyRkJUNmYlMkZmcXM3
RDMwSHZFbDE4U3pxWVB3TmVVR1dCWmZNQXFNJTNEJnJlc2VydmVkPTAKPiAKCkFyZSB5b3UgdHJ5
aW5nIHRvIHVwIHRoZSBudW1iZXJzIG9mIEhlbHBlZC1ieSBpbiBjb21taXQgbG9ncyB0byBtYWtl
IGl0IAphIHJlYXNvbmFibGUgcmVxdWVzdCB0byBhZGQgdGhlIHRyYWlsZXIgaW4gdGhlIGRvY3Vt
ZW50YXRpb24gOikgPwoKQ2hlZXJzLApRdWVudGluCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
