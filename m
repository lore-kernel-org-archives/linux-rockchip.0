Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB052D44174
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Dec 2025 10:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VFEal7D3nFgb1YTwyts467yis3er9FKfO5o9AVZPysA=; b=BRv3P8xFeufuaGviZ0EICFxoM9
	9Wvj607rMd4NZEdMgDsr5G9Y9GymlmIwpsqmF8NQCHTekv8bGFXAaMdDxt+OomP8moY9bUchJG539
	2ViiaEL+ED0XI9UabQeTb8IkL5gquqIDGTRDVTqePxXDSKQAAkWiB6G5lLewDsXWMXNRKGK31jbRQ
	snPl92hRYYnN6o3Hkg7574ng5sTD1iBxLnncbhgBhLKNEpkmI0Hnz5JmiZWbi+rLOnb2r1l2v3kOr
	GzXTjzkK3jRJinBpBSt14ksPLle9CpmD9+Hk29B9dEy9Nwhf/zcp5pukJ2tufJAXbPZ/vtoRUZmRN
	yrKHcAsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU0LY-00000000Qgf-2M4l;
	Fri, 12 Dec 2025 10:26:00 +0000
Received: from mail-westeuropeazon11011027.outbound.protection.outlook.com ([52.101.70.27] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU0LU-00000000Qfo-0DYp;
	Fri, 12 Dec 2025 10:25:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f+WrI6wcxcfvdXWr19YSuz314HJAagRUCww8TIXoVJngNldvwaB21uYxRdOq98jlVBFTcQRHsaevVrlAuWW9K4yPaEwTL4BLD+aPxi50FM0izJ3JveIg9Sh5Ga4OOV360IlVsxRV95bDlWy7NaPW70m2elRp3EO53CU/2WXgziSLsH1QNbRY9W85ULdYuyRIkvYcemArponKgZ/JCgaIzk+7Wy9CyE3n1BGbM4ye8ZmCf1yHlYCB14tnAcjIVtBkxFS1InkSwNpT0QUoYWuokBGrbVAqvZ0j/my3nunKoPLM7s/5ky2E8PCWESCU/5djfFDHBhQnjbC4G0y2uDn6Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UF09clZCSAeoNdH9oClrbFbsCmSkmZ9pFFsmjDdqvsg=;
 b=mJU9kaY2UZb2RfzAp5DC+1OfG1oO9LYnk1s4ykpnPa837SdErEtiTyly0wiVH7puIq7WajoHX+wy47tm9a6kGxPGQsWMfKUwLLsFnM7q7sqwbLQZeIeG3of9gjTWB6GVTxMKdZhPJFauKtvmVxuXsnqTzf5DxvCHBSKSD3XaRmcKcK0YkT0uLSeo9kUfopbgbHMZsFCGTULPX/Tkn19u+XW5BAquTUiAtm31BZ255gJlpU6Q4UwKFC43uf5W3diRVo39nSPwGMD1GAAVSU6OyFlJhY3k7q+Tq+kqqHammYJPELK3jPFtdXcLqpXP1uuinFu7KGg1t/DCxeNUvAHIGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UF09clZCSAeoNdH9oClrbFbsCmSkmZ9pFFsmjDdqvsg=;
 b=KktTcBTa689M99QnlY1odIPzSId/Co2qffEYZBL9qvFVgag5Eo/oeHLeLxGoFot/PvRYvb1GmqD61g1tg+daKyvGZFBkE+OOncUVorYUwO/u5eXhYoC6YgPiyqX/FhyAEXgzssySvBHkxT23FV74d/eBvkNxEe2adLxkgJVCM4k=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com (2603:10a6:150:2be::5)
 by AS1PR04MB9581.eurprd04.prod.outlook.com (2603:10a6:20b:470::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Fri, 12 Dec
 2025 10:25:46 +0000
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::1033:5a9a:dc18:dad]) by GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::1033:5a9a:dc18:dad%4]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 10:25:44 +0000
Message-ID: <f752d42c-5f1c-48f2-92d1-f63d772ca1d4@cherry.de>
Date: Fri, 12 Dec 2025 11:25:35 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: Issues with DRM_ACCEL_ROCKET (Oops, power-domain, probe-ordering)
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <0b20d760-ad4f-41c0-b733-39db10d6cc41@cherry.de>
 <77685900-2c34-49b8-8c7e-14718841ef17@rock-chips.com>
 <fa82d11f-ce11-4feb-bdb4-c31d360a2a62@rock-chips.com>
 <CAAObsKDYLXVf1GdYUNeaOya+pWD4jTOEf55ouXAL9iM_kWCcMw@mail.gmail.com>
 <75166475-d6a8-45b8-8092-f31d292d4206@rock-chips.com>
 <CAAObsKABYQnw9rUfxwTS-yiQSoH9rdxZ_ffUBtp2H3tMJqMb7w@mail.gmail.com>
 <e7b2ceaf-1fbd-4f02-9d75-be4feab724e3@rock-chips.com>
 <CAAObsKBneQrciukH-eZ8qY92n1YxRFChpXV9s6G8oQP5jSMwRA@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CAAObsKBneQrciukH-eZ8qY92n1YxRFChpXV9s6G8oQP5jSMwRA@mail.gmail.com>
X-ClientProxiedBy: FR5P281CA0018.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f1::18) To GVXPR04MB12038.eurprd04.prod.outlook.com
 (2603:10a6:150:2be::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12038:EE_|AS1PR04MB9581:EE_
X-MS-Office365-Filtering-Correlation-Id: 38b7bf00-bbe3-46e3-dd8a-08de3968ced9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|10070799003|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MmNmcG1xNnpaaUFBNnRpOUh0UmlVbXNZbm1iVEx5SXZSbUhudEVSWlc1dVpj?=
 =?utf-8?B?SWppRzdUTVVTYlU1UFJIVjhOT2l5aUdrcGN6VTd3Rlpad2JGUjArd2l4WVEr?=
 =?utf-8?B?MjZ0cGRCS3JiSndYQm0rTnBWMGRPKzliT3paS0dCdE0zZkNaQk1KOFh1K2FC?=
 =?utf-8?B?Ni9KL0h2Vk9aZFhGUkhac0NtaURsOE9XODhCU2I3N0lHb0ZhU1RMN3dndTU2?=
 =?utf-8?B?RjNqc1JEY1pDSDJNcVM1RURBb1hXQmNxTTdISVVIRngvc3loanRCNTNqY2tD?=
 =?utf-8?B?S2ttMWxXOVpwWDMzazZDNWptNTJCVDRXMDNrZjVhVGVORkU0MGRSUERSZWc5?=
 =?utf-8?B?bEkwdlI5ZzhQUDYzcXJ1Q2YvVzZ3dCtuY3g3ZTFaMGJ3bGFWY291T3grVk5l?=
 =?utf-8?B?VVdWZ1FndVNGMXE5VE8yc3BFWFp6dTRwVlZmeVZ1WExHbERPR0xicWJkVjQz?=
 =?utf-8?B?STEzTjhyMEgxeXpyMitxU1J0TC8wV3hxVVc4Nkp6Q25QSzI5Q2ozMEtLWEt3?=
 =?utf-8?B?ZmZKTkZQdERJcG1ENWM3dmtDTTQvWnhtY05WWjFFWHlaZ21ROUoxVUF6cEZm?=
 =?utf-8?B?TUF0MmNvbnpUejIyVDJjcEhyTlJ2dzBnY0o4MWQyR01Icm1kOXF5cDRZeTNw?=
 =?utf-8?B?ZEc3bHBIZVo5VnZ4ZEl5eElUNjJmWkpqQlJLdWJ2cG1vQjVjbllEZFFZTENk?=
 =?utf-8?B?YTRpTmUzeXBuRCsvYi9McnVoT0s1K0pMMXRCVjFUUUl0cjhwQVVxcUNKZ0NX?=
 =?utf-8?B?YTg5ZTI5bjBoUncvOWFwbzZGUGxxb1k2bWVueERRd0pTeGdsbCs0VjdHSE1W?=
 =?utf-8?B?TWZmZkNtdUZzNGJGTUVHVXVLQ2dpSjg5YXdPQ1hRdnFvbWV3VWNWSlJ4RHAx?=
 =?utf-8?B?RzN6N0ZaNVphTzNqMk5FWll6aXo3Vm9nNEptVHdsdjJoVStvaFNhd3JmV0F4?=
 =?utf-8?B?Q2VWSXNKYU1Bd1hQWTJBSFI3MXZubGIzeHhXUEVFUEI4VzljV2FGb0lIOVor?=
 =?utf-8?B?Ymc0RFg0NWtrWGJYS3Z6ZWRPQ0Q4NUR1U3JyVy9aT1pCVEJObkFxdTgzQWFR?=
 =?utf-8?B?aGRKalBJa0NOV3N6aEhmOFJ2cm9IeWVJQitCbW9OUUVtOVF0SzdsYU1Qa2ww?=
 =?utf-8?B?WkdQTjhUQkFFenM3SEQ3dEJwN2JFTjBTc2F6cW5nNzNmSFhxOTA2TXRMTC92?=
 =?utf-8?B?cjFXdzVYSmFuRk5RYUdUY1BsNnIrTUs4akRiYVQ1cWFXc0JWTmh0a25zMmNi?=
 =?utf-8?B?cnhnZEVkTmhidVlXS1ovbzJwWjMwK05Xa0Q1ZVBwTm5sVnZLYUE0dUFrQnE2?=
 =?utf-8?B?YWdIRXpZSTJTblVhWWlzRTFFV2N2d0E5VVY1eGVNU0NRRHF0WG5Tck5Rd0NP?=
 =?utf-8?B?Wnd0NWJ1dkVGNU5JRi8wNTdvWEJOcHJxUk53emg5NFNDMW9zb1FaMGNmZnZI?=
 =?utf-8?B?L3pDa29nRnkwV1Q5UnhlUFJkcVJhUkNxbU1hZFB0UEFkMXVQMWJmRVlWSWp3?=
 =?utf-8?B?cmRseEE1eDRBQ0hUK2hydzVEa2tLZzI3TXg3MjhRUDIxSThSei80aUFkUE5O?=
 =?utf-8?B?SDZwYmRpNWJPcTR5NitLVG5YNUVlYkZEQVJ4K0V5Q1laYU1nYm1lUGYwc0Qx?=
 =?utf-8?B?bVFmajRhbjFBL1QyWEpJeXRhMDdueHVaQmxjVUsxTURHNjFwNE84citRbzF2?=
 =?utf-8?B?WEJNT0ZFUWtNaWZqVUtiSldoRGFONFBuRXh3bENzVEloK2wzaW43eSsrQUl0?=
 =?utf-8?B?UkRnSTRtS0ZnT0RDVkZKendBbVVIVlYwL21jYUZKSk1TTU0wa1Fwd2krWDVL?=
 =?utf-8?B?VHk4NVI3M3M2NGpLeitseWtOdExrM2hEZUMvZ09CVU4wejFFaTNWWXZTcDZz?=
 =?utf-8?B?RVl3VlJybmxrU3pQMkI4VVd1K1VCZkpEa0RjR3hrWURSZlliL3QvZHpVak9E?=
 =?utf-8?Q?qIghigKsoMPkWYa9+BXFcZcGTG/hcJVz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12038.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFVGeWVHZXlqeDJpVkt4NlRLQ0podCs3M1AwSWRnNFRkZTM3N0kvYUJ1NjJy?=
 =?utf-8?B?ck40VGVUOGdnZ2N3ckVJVFM2RjMrSVQ2QWdIc25GYkd3VWppZmhZQXlJcUFY?=
 =?utf-8?B?M2ZtajMza0p0UGpDMy9ZdjVHZkI1QTRjcGRObEVxQWw2RFgyVW5CWUUyZTRN?=
 =?utf-8?B?YWJ4NFA4SVo1eEwyaWw4TUs5QzRQdE9xZFVjUzNWem13T1A0VEw0Uy8xWGdk?=
 =?utf-8?B?SmpvNlNtdkNHTSt6UnNZbStRMEcxZkxycG1jakF5NjBOSEhIZXI4anNBSVpu?=
 =?utf-8?B?b3hGK1hhS1ovVVBvNnczSXFmVUdpWENUODk0bnJHYjBQNEMvc0htdFpkNHlE?=
 =?utf-8?B?NXM3VHBnb1ZEbG5mV0doQVVKNlgyU3FWbFZReU11UkQyM3hvUGVkWk13akpQ?=
 =?utf-8?B?UUFsWXRRQVNwbk1iNzE1Q3cwa3VXTHFaSWFLVy83T2dBM3FSM0t1dzczTUF2?=
 =?utf-8?B?OUNhL1A2MXlWdXg1QkxVcUdEWjRzRmorV1h2TU5tQ2hHVVFMaFliR2V2WXlK?=
 =?utf-8?B?QU10YmJtdWo5Ni83anhLZEV2a1NtV2lHQmdkRHcxWTh0ejJXMHJqNjg1Zzdl?=
 =?utf-8?B?bTNibHl6NnU0OVpOdjNBd1FHR3BCQWVxMmdxNzRYYlZQZmx3cS9sbWx6Y2kz?=
 =?utf-8?B?SXFzMG5aak1MQUpJOUI3QkJITjJ3ZlNNR2NldmZPMWRETFhxSnpqTnRpSGEv?=
 =?utf-8?B?K3lQVHlONTRLZUorSUZvVERSaFZiZ05TN1g1aklvbWhhOG1zcHhwQjJ6YmRU?=
 =?utf-8?B?cmY5bjQ4ZnRjV1AxSGFzK0tFek9ubUlpSkNPNHNvTm5mRENTdjNpenhRR0c2?=
 =?utf-8?B?OXZDVHFiZDJmT3lwcnpGUElqbk0xU0xnNlpSdHF2MWZFWFIxTEZlZEVYa1d2?=
 =?utf-8?B?TTdydmY3MTE3UHNLUzhsVUpiaE5ZY3d5bDMvcHc4UGZJRVpUdXBQdUdhU1U3?=
 =?utf-8?B?M3ZiSS9ZbVlxcDZkQ3d4ajBsdmEwTkRyUXgvTFBuaVdhMUNvYWVCd3RSNzdO?=
 =?utf-8?B?UUVuRHBWUVkrTE9aT0h3NzFvb3JtdUVWWWp3dDM1dVpOYlVmWGF1R0JxYW8z?=
 =?utf-8?B?UHEvRFpvVTU0N2tlTklvQjhGd2hQSTIvcVFZaVV4R2lpWThiL0NxMVl4UXlT?=
 =?utf-8?B?ZXdCV2UwUFJ4RDdSRUNrR1p4aE9HRDFtYlkvNnFPSk45U2pCQ25nMDJvU1pa?=
 =?utf-8?B?dC8vYXJHZUp3RS9yZStzek9ERVBoMTQraXBHb1FlcU14cVdteXRKaFVwR0ps?=
 =?utf-8?B?OW9PUXRDalA0WjlKVnhUMjNyNEZMS0pFN0pjYXVCeEwxRTI0TWlaUzViWE1Y?=
 =?utf-8?B?Tzd2eTZGaThxUVUwR1kxOUtQOVFxZkxhWDJ5enR4d1pQRkdJK3RGcHRlYUd6?=
 =?utf-8?B?SGxPSXZjZU1TdHFRbGdpNW0rOTFCWkxlOVM5dTNvS2NtbUVUM1AydEZwTlRY?=
 =?utf-8?B?Nk94QXZkZ3lYcWdDZmNvS2JYN2w0UHNxOVlDT1FZdjdWcW5FN2dzN0IzZmZL?=
 =?utf-8?B?K3QyOEQybzZBWDZtTmkvcllaeDJIbjM2S3lPRXN4UXNtY3NOdHhQYVBKSDRH?=
 =?utf-8?B?QTJDVWxNRllEdXVENFI5QUJBWlkyNzdSaGF5WWxrNjFxZ0FZZk40MzlyL3Yy?=
 =?utf-8?B?TW1rWjQ2RkJJRUV1b2dya0V3bkRNT25PeUlLWkFuRVZoSzlSQTlRaWsxQUJt?=
 =?utf-8?B?TWZSM2g1SGJSV2ZCditrSlpYUmkrQ0Q4QldOamg5WEFqQm1iSThZSkpEKzVq?=
 =?utf-8?B?VlEwNHQxYWZTWWpqYzFGN2FRRXpIazhZOFlxa1VFekJYWXUrUHBDTEExYlRJ?=
 =?utf-8?B?UDNHVGRvTG43OHNnL0xMdVhzNlYvb1dSMWYycE5XQjhPeFFDQzFSZFlJUXFw?=
 =?utf-8?B?QlU0TkdUMjRYbUJVRzNSQlZ1WHFFZGZJMDFVZHJrOUlpc1JyblgxMGs1NFZN?=
 =?utf-8?B?aldZOFV5OWhrRU40ZklRU09iNFF4Q1VsclpqOWZMZVpWSHpJUTA3OFRDVDRL?=
 =?utf-8?B?Mkx4Zm1SN01NRkNNbDcvdmJQRDFvanFMU3V0ZmpJQXcxN1BqblRNN3lOdTVz?=
 =?utf-8?B?cXE3TXFJY2NxaGZvaTJRQTFWYWVhZ1lUdHhFaksvSm9wMzM5RjRwejIzTmVJ?=
 =?utf-8?B?cnlqY0J6eUJtOURabFBIK1BVN0g0NytxSlZ3ZDAvWEZKUEUxc2M3ODZQM3Jl?=
 =?utf-8?Q?hfoXGPZzRHzzvAet3spw8to=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 38b7bf00-bbe3-46e3-dd8a-08de3968ced9
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12038.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 10:25:44.3797
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Sanuf/NXgFVDM801LNB5DaicFeptxH7gJMPnyiE89QtNECmv3jZjAip4pb3MCzmAO+qoG3y4fEk8GPCQ3c4JXYgL2DL4LZqLeR34auuWfLE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9581
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_022556_269620_2AE70E2C 
X-CRM114-Status: GOOD (  20.01  )
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

SGkgVG9tZXUsCgpPbiAxMi8xMC8yNSA1OjM5IFBNLCBUb21ldSBWaXpvc28gd3JvdGU6Cj4gW1lv
dSBkb24ndCBvZnRlbiBnZXQgZW1haWwgZnJvbSB0b21ldUB0b21ldXZpem9zby5uZXQuIExlYXJu
IHdoeSB0aGlzIGlzIGltcG9ydGFudCBhdCBodHRwczovL2FrYS5tcy9MZWFybkFib3V0U2VuZGVy
SWRlbnRpZmljYXRpb24gXQo+IAo+IE9uIFdlZCwgRGVjIDEwLCAyMDI1IGF0IDExOjQ34oCvQU0g
Q2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPj4KPj4gSGVs
bG8gVG9tZXUsCj4+Cj4+IE9uIDEyLzEwLzIwMjUgMjo1MCBQTSwgVG9tZXUgVml6b3NvIHdyb3Rl
Ogo+Pj4gT24gVHVlLCBEZWMgOSwgMjAyNSBhdCAxMDozMeKAr0FNIENoYW95aSBDaGVuIDxjaGFv
eWkuY2hlbkByb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4+Pj4KPj4+PiBIZWxsbyBUb21ldSwKPj4+
Pgo+Pj4+IE9uIDEyLzkvMjAyNSAyOjU1IFBNLCBUb21ldSBWaXpvc28gd3JvdGU6Cj4+Pj4+IE9u
IFR1ZSwgRGVjIDIsIDIwMjUgYXQgODowMOKAr0FNIENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkBy
b2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4+Pj4KPj4+PiBbLi4uXQo+Pj4+Cj4+Pj4+Cj4+Pj4+IFRo
aXMgbmVlZCB3YXMgcXVlc3Rpb25lZCBkdXJpbmcgdGhlIHJldmlldyBwcm9jZXNzLCBhbmQgZHVy
aW5nIG15Cj4+Pj4+IHN0cmVzcyB0ZXN0aW5nIEkgZGlkbid0IGZpbmQgYSBuZWVkIGZvciBjb3Jl
IDAgdG8gYmUgdHJlYXRlZAo+Pj4+PiBzcGVjaWFsbHkuIFNvIGl0IHdhcyBjb25zaWRlcmVkIHVu
bmVlZGVkIGNvbXBsZXhpdHkgYW5kIHRoZSBjb2RlIHdhcwo+Pj4+PiBkcm9wcGVkLgo+Pj4+Pgo+
Pj4+Cj4+Pj4gT2gsIEkganVzdCBub3RpY2VkIHRoYXQgdGhlIGNvbW1pdCBjb21tZW50IGluIHRo
ZSBkZXZpY2V0cmVlIHN0aWxsCj4+Pj4gY29udGFpbnMgYSByZWxldmFudCBkZXNjcmlwdGlvbi4K
Pj4+Pgo+Pj4+PiBNeSB0ZXN0aW5nIGludm9sdmVzIHJ1bm5pbmcgdGhlIHN1cHBvcnRlZCBtb2Rl
bHMgYXMgYSB3aG9sZSwgYW5kIGFsc28KPj4+Pj4gdGhlaXIgaW5kaXZpZHVhbCBvcGVyYXRpb25z
IGFzIGluZGl2aWR1YWwgdGVzdHMuIEkgcnVuIHRoZW0gaW4gOAo+Pj4+PiBwYXJhbGxlbCBwcm9j
ZXNzZXMsIGluIGJhdGNoZXMgc28gd2UgaGF2ZSBjb250aW51b3VzIGJyaW5nIHVwIGFuZCBkb3du
Cj4+Pj4+IG9mIGNsaWVudHMuCj4+Pj4+Cj4+Pj4+IEknbSBhIGJpdCBzdXJwcmlzZWQgdGhhdCB0
aGF0IHRlc3Rpbmcgd29ya2VkIHN0YWJseSBidXQgd2UgaGF2ZSBzdGlsbAo+Pj4+PiBmYWlsdXJl
cyBpbiBzb21lIHNldHVwcy4KPj4+Pgo+Pj4+IENvdWxkIHlvdSBwbGVhc2UgZGVzY3JpYmUgdGhl
IGZhaWx1cmVzIHRoYXQgc3RpbGwgZXhpc3Q/IFRoYW5rIHlvdS4KPj4+Cj4+PiBJIHdhcyByZWZl
cnJpbmcgdG8gdGhlIG9uZXMgdGhhdCBRdWVudGluIHJlcG9ydGVkIHdoZW4gc3RhcnRpbmcgdGhp
cyB0aHJlYWQuCj4+Pgo+Pgo+PiBJIGJlbGlldmUgdGhpcyBwbWRvbWFpbiBwYXRjaCBjYW4gYWxs
ZXZpYXRlIHNvbWUgb2YgdGhlIHByb2JsZW1zIFswXS4KPj4KPj4gSG93ZXZlciwgdGhlIHByb2Js
ZW0gUXVlbnRpbiBtZW50aW9uZWQgc3RpbGwgZXhpc3RzLiBGb3IgZXhhbXBsZSwgaWYKPj4gdGhl
cmUgaXMgYW4gaW52YWxpZCBkZXZpY2Ugb24gY29yZTAsIHdoaWxlIGNvcmUxIGFuZCBjb3JlMiBh
cmUgdmFsaWQsCj4+IGFjY2Vzc2luZyB0aGUgcmVsZXZhbnQgZGF0YSBvbiBjb3JlMCB3aWxsIGNh
dXNlIHByb2JsZW1zLiBRdWVudGluJ3MKPj4gcGF0Y2ggY2FuIGZpeCB0aGlzLCBidXQgaGUgZG9l
c24ndCBzZWVtIHRvIGhhdmUgdGltZSBmb3IgaXQgbGF0ZWx5Li4uCj4gCj4gSGFzIGFueWJvZHkg
cmVwcm9kdWNlZCB0aGlzIHByb2JsZW0gd2l0aCB0aGUgcG1kb21haW4gZml4IGFwcGxpZWQ/Cj4g
CgpJZiBJJ3ZlIHdyaXR0ZW4gbXkgcmVib290LWxvb3Agc2NyaXB0IHByb3Blcmx5LCA3MTUgc3Vj
Y2Vzc2Z1bCBib290cyBhbmQgCjAgZmFpbGVkLCBzbyBJIGd1ZXNzIHRoaXMgd29ya3MuCgpUaGUg
c2NyaXB0OgoiIiIKIyEvdXNyL2Jpbi9lbnYgYmFzaAoKc2V0IC11eAoKbXlyZWJvb3QoKSB7Cgkv
YmluL3N5bmMKCWVjaG8gcmVib290aW5nCgllY2hvIDEgPiAvcHJvYy9zeXMva2VybmVsL3N5c3Jx
CgllY2hvIGIgPiAvcHJvYy9zeXNycS10cmlnZ2VyCn0KCm1vdW50IC10IHByb2Mgbm9uZSAvcHJv
Ywptb3VudCAtdCBzeXNmcyBub25lIC9zeXMKCkZBSUxfVFhUPS9yb290L2ZhaWwudHh0ClNVQ0NF
U1NfVFhUPS9yb290L3N1Y2Nlc3MudHh0CgpbIC1kIC9zeXMvYnVzL3BsYXRmb3JtL2RyaXZlcnMv
cm9ja2V0L2ZkYWIwMDAwLm5wdS8gXSAmJiBbIC1kIAovc3lzL2J1cy9wbGF0Zm9ybS9kcml2ZXJz
L3JvY2tldC9mZGFjMDAwMC5ucHUvIF0gJiYgWyAtZCAKL3N5cy9idXMvcGxhdGZvcm0vZHJpdmVy
cy9yb2NrZXQvZmRhZDAwMDAubnB1LyBdClJFUz0kPwppZiBbICRSRVMgLW5lIDAgXTsgdGhlbgoJ
VkFMPSQoY2F0ICRGQUlMX1RYVCkKCVZBTD0kKCggVkFMICsgMSApKQoJZWNobyAtbiAkVkFMID4g
JEZBSUxfVFhUCgllY2hvICJGQUlMRUQhISEhISEhISEhISEhISEhISEhISEhISEhISEhISIKCW15
cmVib290CmZpClRFRkxPTl9ERUJVRz12ZXJib3NlIC9yb290L21lc2EvdmVudi9iaW4vcHl0aG9u
MyAKL3Jvb3QvbWVzYS9zcmMvZ2FsbGl1bS9mcm9udGVuZHMvdGVmbG9uL3Rlc3RzL2NsYXNzaWZp
Y2F0aW9uLnB5IC1pIAovcm9vdC9tZXNhL2dyYWNlX2hvcHBlci5ibXAgLW0gCi9yb290L21lc2Ev
c3JjL2dhbGxpdW0vdGFyZ2V0cy90ZWZsb24vdGVzdHMvbW9kZWxzL21vYmlsZW5ldHYxL21vYmls
ZW5ldF92MV8xXzIyNF9xdWFudC50ZmxpdGUgCi1sIAovcm9vdC9tZXNhL3NyYy9nYWxsaXVtL2Zy
b250ZW5kcy90ZWZsb24vdGVzdHMvbGFiZWxzX21vYmlsZW5ldF9xdWFudF92MV8yMjQudHh0IAot
ZSAvcm9vdC9tZXNhL2J1aWxkZGlyL3NyYy9nYWxsaXVtL3RhcmdldHMvdGVmbG9uL2xpYnRlZmxv
bi5zbwpSRVM9JD8KaWYgWyAkUkVTIC1uZSAwIF07IHRoZW4KCVZBTD0kKGNhdCAkRkFJTF9UWFQp
CglWQUw9JCgoIFZBTCArIDEgKSkKCWVjaG8gLW4gJFZBTCA+ICRGQUlMX1RYVAoJZWNobyAiRkFJ
TEVEISEhISEhISEhISEhISEhISEhISEhISEhISEhISEiCmVsc2UKCVZBTD0kKGNhdCAkU1VDQ0VT
U19UWFQpCglWQUw9JCgoIFZBTCArIDEgKSkKCWVjaG8gLW4gJFZBTCA+ICRTVUNDRVNTX1RYVApm
aQpteXJlYm9vdAoiIiIKClNlZW1zIGxpa2UgdGhlIGNvcmVzIGFyZSBhbHdheXMgbGlzdGVkIGlu
IAovc3lzL2J1cy9wbGF0Zm9ybS9kcml2ZXJzL3JvY2tldC8gZXZlbiB3aGVuIG9uZSBmYWlscyB0
byBwcm9iZSwgYnV0IHRoZW4gCmNsYXNzaWZpY2F0aW9uLnB5IHRyaWdnZXJzIGFuIE9vcHMgYW5k
IGl0IHNlZW1zIHRoZSBleGl0IGNvZGUgb2YgdGhhdCAKc2NyaXB0IGlzIG5vdCAwIHdoZW4gaXQg
aGFwcGVucy4gVGhpcyBpbmZvIHdhcyBnYXRoZXJlZCBmcm9tIHRoZSBvbmUgCmJvb3QgSSB0ZXN0
ZWQgKndpdGhvdXQqIHRoZSBwYXRjaCBhcHBsaWVkLgoKQ2hlZXJzLApRdWVudGluCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
