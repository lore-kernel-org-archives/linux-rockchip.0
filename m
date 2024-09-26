Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D6A1CF58C8
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 12:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OsKUQN3cpzzN1m57BjBeHDMFHqCtCH3I10LViSWwRj8=; b=ynTvm0wb9CLAJI0/Jm2B4sLl1D
	rVHwzuVI69bZUIwi75Lw/DXjE2E15B+7rqlY1FaI1QCt5DRJ7fziBCtMS3Rg6t9vuyUYnDE3iam+d
	mv0NbZyEwmFTv2dlGJVRnNUWb/nCoeYIBqGZOr5FBPlhQolEphuT1ZOojdw4Q4PE73Q1qqRwgta+D
	OnYRbZo9qqb4dmhWC+wD1NXBbtkgtCKAlSMxXZ7weleS4QVTnb7BDC6tNKUIO2oVANuoEOXTf/86A
	lqSO/XJpHeagh8GNiPY+66LWpNa03quy1lZZUK+N8N8c8jBC0+ktwatr2aqwSrs1gC5+p55TegSKs
	fd9F43vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stniw-00000008MBc-10Eu;
	Thu, 26 Sep 2024 12:35:58 +0000
Received: from mail-northeuropeazlp170110001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stnhj-00000008Lz7-0HKE;
	Thu, 26 Sep 2024 12:34:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zbvm47XY1yAy1qziOgEQnqsXf+sbJIRQN1n/dGiWxvpn0V6wFpSa7EfDF3u8320YaAR5XCDJWen3zrxx19OqQ2FJB6sYwMD9Pr0nb9jFkIagnEm9qyLHohjVqXubd85qS7YIQeSUOUAhWHoZinY5QBuhJRZouxOTM7rTEOOj6n6CrDriihbSDp/h6lv6U6KTxGTk75buCugWAuGBbbhWde7JalxB/LE8Idl0Ey7u2CZABHdnmF3KMZJEW9KfPGCqdtzURxivF00XBsid3BGSDjan8WbjmSc9QoCld7rzg12EFg7Yn50cq3EUY5rsSvhEnWj5eQWsFcWHsb+m7IXLmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0778x4w0cNRfMp0K5W5u7xF3lz9XJ7NaKEIlaaHnR2I=;
 b=YVQc0zVLWL51h4IwwlwFWchHVxUyThK8ACp3Zx7YRpUHMou+oaZYNMn2/jSicUmCXiKRrUz3K4hbCyTQZu/GWFHssht9myWJM0A9BcOSZFtYpOwOt03gNHQ7ha65X6yqEUQac3xS3eXrpGd+AuGVObnjbvcdZlu2146d7ySj3pFnY50qcD0tfgB5FFwbL1DL302RYizaFp2vpZ+gijbyPSbpvgN+M7aUg5U59/myqzmlIaM2Zv7zy6OboGDaaZR7ppyuR2ZIjlPihkOMut8bABGj5WgxavKLlg90fUW+kVjgwN4rXhT2dBT0uUL/QuY1+kEBihWGpTeB0Jd0YbESSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0778x4w0cNRfMp0K5W5u7xF3lz9XJ7NaKEIlaaHnR2I=;
 b=Zm9mwgVZ/4bvrdtT5DPWptxYF1H06MJssBUc7q9GI6PIqzjztCe5kXelfmdqo6impDHHsLfh8tDgBf045pmutUrtOX7uhsAtxK84c5SrHtvZrEBAPiwoeCbuT4LYbX8CXpGFVzgV2h++ROnYaFEKOzlLdDGdeM6/wBoWWFq32Gg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com (2603:10a6:20b:409::9)
 by DB8PR04MB7017.eurprd04.prod.outlook.com (2603:10a6:10:123::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Thu, 26 Sep
 2024 12:34:32 +0000
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea]) by AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea%2]) with mapi id 15.20.7918.024; Thu, 26 Sep 2024
 12:34:32 +0000
Message-ID: <54c49375-cb2a-40fe-abcd-fc56c04d0c53@cherry.de>
Date: Thu, 26 Sep 2024 14:34:30 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Add power button for RK3399 Puma
To: Daniel Semkowicz <dse@thaumatec.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
 Farouk Bouabid <farouk.bouabid@theobroma-systems.com>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Vahe Grigoryan <vahe.grigoryan@theobroma-systems.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240925072945.18757-1-dse@thaumatec.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20240925072945.18757-1-dse@thaumatec.com>
X-ClientProxiedBy: FRYP281CA0012.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::22)
 To AM9PR04MB8906.eurprd04.prod.outlook.com (2603:10a6:20b:409::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8906:EE_|DB8PR04MB7017:EE_
X-MS-Office365-Filtering-Correlation-Id: 9cea9638-ef97-47b5-c849-08dcde279246
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZDdWbzZ4WDFSNDB6Mit0OW5DdytpYWxURW9tSnpHMmxSUkM5TFVqK1p1VkFL?=
 =?utf-8?B?cU1JQm4xb2NFd0dtTFVCdWFXREZhN01hRmNrQXVBaVZtcEd5b01pU2RyYllI?=
 =?utf-8?B?SU0xWWs4VTNWZitJYVZJT2RiSnU0NFM2ZmY3M0RvY0QxUmR5THNDVEpLYmJE?=
 =?utf-8?B?VHExZXdKcnVOVXB6TStUWCtpWlNNN2NuNnVYakUxcktIQ3B2WDhyaFhCUVh3?=
 =?utf-8?B?a0Nod1lZWDdLcmJySVVMU3pyRHdkWllNY1hnT0NYU3grRThRRE92R2tIUDJs?=
 =?utf-8?B?Q1VMNGZUTTFRVE5VUy9PU2lyTW1kbmlxK3VCc29NYlhVcXY3SVJFS2JLSHR6?=
 =?utf-8?B?UFZTUjJ4bnNQVFF5cVpXbFdwK2xNSFVZbm5wT1luMWFDV2ZsVlo5NDFlaFNz?=
 =?utf-8?B?aXc1Wm5LeVVWRDlWREE3bU9kMzkxVWtVUUlGUitkWXE5RUkwL2tYWlJncmlV?=
 =?utf-8?B?dXVEQjEwUGtEdWQrbzUvOVorRnhMTmtDdkVzaUp0anNLQk80SU1CeFUvUk1Y?=
 =?utf-8?B?cmFiVkpveUJOUWNxa2xjVzMrSjMxNXg4TDhXWjFSWUFMT0x1bFBuUkRkWkdE?=
 =?utf-8?B?eUFkeHhwSWFBaGlSSzNPZzEwaGs4VDdkaktySEhOYzFXSUNtNnNlY2lmSTZU?=
 =?utf-8?B?RXFzTFBXOEhuSkt1OFNlTnNvTkpJc0dlY2ZXTGwxUS84d1kvb015VG5VcEVC?=
 =?utf-8?B?aDc1SVB5djN6UmNVK2lWd0hsMDNiRnhScWlMTC9yUDBBT3BKYmdvWFBWZnFF?=
 =?utf-8?B?NE9ZWVlOSUVBdG1rWUV4WmFDcTBVN2x0ZUM1ZkpMNjg2NU16aE9NK3N6M0Ns?=
 =?utf-8?B?NjN6UGhkcmhCREM2TjAyRy8yRStIZDNtaHFIV2plSWZXVVY2Q0k4OGZSNHdm?=
 =?utf-8?B?KzlxbmxFV0w1eVVweEJReFZzVVBlRGQzUUNidkIyeXZFODNBd2xzZFF0dGdB?=
 =?utf-8?B?TFpkV2Zkc1RLaTl3NkRMY0JIY3RmNEJVRjF5VWR4RjZHZ3JDTGZjVmU3V0tB?=
 =?utf-8?B?Ym42SS80cm9pa29vT09sWGFQZ080WFMzWUtiZEVnellxN0p4TGFLRVVNOWls?=
 =?utf-8?B?U3M4UCtYZnJMYk0xS3FseGI3OFdYSTZHTVF4UzVUNmlxbDEzZDlxdzlRbHBK?=
 =?utf-8?B?YXY3dENnYjNnU3hUMklGWlgyWGV4SFN5eE5IaHFNbE5YdFhrQ0FTWWcyMktO?=
 =?utf-8?B?VHYwemI5cHg4bkhoOWZqYWtBNDhmb3lwT2gxOEhnaHZxY2tpVjNUTjVacFVy?=
 =?utf-8?B?SWNYSkVNMkZMbFl3aU9Td0VjbEY4bkFMR0kxVkVSK0NubEJHcXJ2M0F4YzRa?=
 =?utf-8?B?MlNnd0EzY2dXTGRyR28rUjNTaVd2cUFHeHpGb3VHaTRqZzlUWHZIRFRNRUR5?=
 =?utf-8?B?djZnMkxNSlBXSDAvTXh1YnVzUFhCbThBK2ZhTE43Y2w1K3NwQWFDUmZzTUJi?=
 =?utf-8?B?NGxMcklIVkNLUDZvRmZOWWdQQ0x6SG03ei9LdXB1RzRDSVNoV1VVZWgvUENL?=
 =?utf-8?B?ZmoyZG9wQ1FKVEl0eGFxN2hZLzUzV0drZGhvYmREZHQvM2xRZUU2ek1sQThI?=
 =?utf-8?B?RC9pcDFNNjhrdzRhdDk5L2wyQnpsWXFxbmJ1OTZIWmV1UWxsb01VNzdFWlJZ?=
 =?utf-8?B?WnpTNnhHRmMwYzYxc1FWclJkR0RBTW5EZFo0MnlrWmF1dWpjNFZ3YUlpT2d6?=
 =?utf-8?B?NjBoOTBaWDFPeEk2NGJxM0FBaUFsMzYrZWtwTkZaaEpFb1A2WFgzMXhnbytT?=
 =?utf-8?Q?V4CzGfXkX4cnYM2054=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8906.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(7416014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmlPTHdKNmZ3Ylh0R2RQN2VxUUxhTDl4MWswTS9DaHoydnhJN2U0U1A3YTB1?=
 =?utf-8?B?Nnk3V2czeW42R3NDV2poYyszTWxLbVh1WjJPTDMrSlovZWhpOWJQTjQ0QTVT?=
 =?utf-8?B?SFRmU1FZNUdPR2RmcHhEeVlJQ1N5R2VxcXN1N1g0UEg1Tjh1bVNZUjRWQ1Zs?=
 =?utf-8?B?VlNGcWxKMW1pdCtsQUpjY2NybWNIMy9OZm95MDhMYjNlaFRwZE56N0p2b2Jz?=
 =?utf-8?B?M0Z2eEVvckFONnIxazVtUHVGVmdmbGpRdmc5RnVjSzFEL0xRNFNTU3BrMVds?=
 =?utf-8?B?ZnJzV0ZiSFIreElNT0o3dXJuaE93aHVlMFpSbFA2enRPMExDWS9TalpoR1F2?=
 =?utf-8?B?RFN4MUVUNG9INncraVVTcWErK3hqWWFuOHBNOXlIR0lPRzJ5UVpNdGdrN2xw?=
 =?utf-8?B?R0FldWtuWlZiUjkydndMNHA0KzVlb1AwWVFSZjN1NSs1MFBSOUJnYVh6ekpy?=
 =?utf-8?B?a2h3S25Vb1VYTjkrSWxsaHpUV0RPSWJqMmt0NjZwS2IzMjZpa05wOHdITzZq?=
 =?utf-8?B?RVFVYXVNUTQrZVl0NERJQlZzRXpUTENITFNqb0hYemNJTlBKV2R1aFBhUFhX?=
 =?utf-8?B?WkRhSkp4QnI3ZEY4d250aWxVckR5NW1xTlU1MDltUTJrVUNTT0N3THlCTWZE?=
 =?utf-8?B?NnpQSWZSTVJkWGtXREhITmdYaTIyNXZvZk4xZ2VKbmFDZ2lIS1I3bDV0T2lR?=
 =?utf-8?B?OTlCR1NGTTg0UmM0ZDlOZ3Fla3BxKzJwY2wvV1g1a0JGM3BLQXUvNmxLaDRU?=
 =?utf-8?B?ZXhUM2lkRjh1ZUlERkg5ek83YTdacXNmTENNQVhYV1ZKVmlnWEZleG5ZQUJO?=
 =?utf-8?B?RWlCRkR6UjY1VXVlSHJzTHdjZ2pXamFERW4wRlNhK3Q2YTRhM21Oc1JIM2Z6?=
 =?utf-8?B?TlE2aVViSStjL1BNV0htam1vS0IrREhmRHpuOXgwMFU4Uzk1anlhcFA2dE53?=
 =?utf-8?B?TXd6MXVoUDFiZ0FiNzdRQXlPSWpZekUzOG15U3VsMmR2dS9yUWkyNUdBdFRC?=
 =?utf-8?B?N0pIbGc0bVI5U3hxSWg4b3FJQU41eUZtN2dacEVFMXFiaENsK0lxK0FPTUFC?=
 =?utf-8?B?Z1l1dGlIcFpXRk9OMzNOcTc5NlJPdjhDUUlyMVRtQVp6Sy9Ubm9jMGNNVldO?=
 =?utf-8?B?a0V5alpTSnErUklhbS9tRWkyL212d3NzYWZTV3hzTlF2dWtScDZaUWhDVUli?=
 =?utf-8?B?OHJQMnRURVVvYTJqcDZWaGRvRjIzRnI3Y1ZJWUhhbU0vZ3MzOU9GQlZWTWhW?=
 =?utf-8?B?SmwzZmVIL1NtbFFPQXhhbEdwQldIbGtZMGJYMjVlVitTU2lNdEs5K2I2ZEQ0?=
 =?utf-8?B?cm1lVm5sRGNTb2Q1OTV0bFV0ejBva2N3MTl6QldsYW1SdEY5MkdyUFkrdjNy?=
 =?utf-8?B?cG1QYmRkUEJ4ZjlYaU5GTlhhUk9Db1hPSkJEZjRrT05TdUhtdlVlbmJTUlg3?=
 =?utf-8?B?UkxpMmRQemc0S1ozcTBYa1JQbkVLT0JGZkg3TXlwM1JrZUZxZUpDd0EzaXJV?=
 =?utf-8?B?SS8zZXg5eTFrV1VEUVR1SHJ3eHNORWZ4UWUyVFVaQVlJU21RVkl0MXFRTWll?=
 =?utf-8?B?STRtUEEwcHIrL2NNMCtlaHZFODZpelQzb083SFp5V0N6bFVQbDNXNUZPWVdU?=
 =?utf-8?B?eVVqVE5JTGJjU05BZXZPWXlLS0c3alVKOFpqV1FWK2JVOFp3cUEwMjh0dndm?=
 =?utf-8?B?dzV6anY3Rno1Y016TDc4MklNdlhKTzF3aG91c2UvUmlJYU4za0dyMDlXK21V?=
 =?utf-8?B?RXhIVWg2NlhSZzJmaXA2Sm5kdTB5QnRiU3JLczNuNzY5eXd6Y3BrMEhjcGxi?=
 =?utf-8?B?WklydFoyRDM2YVhhTkpxYjlWZnZKSHQxNlhqejVoOE1HdUQvUU1OWHBhRk1k?=
 =?utf-8?B?UVUwN0VIZGkrVmc1RGd1d0ZZZ0tsSUQ5clRPaGFDWHpZdUZ0cHQ3UGNuRnVX?=
 =?utf-8?B?a1JTUjhaYldjVHVjRVRlOVBRZkk3TmVUdHBIKzNHODZGUEtwaEI2ZFFldWJG?=
 =?utf-8?B?OTFvWUQ3QzBVZk5MRzVqZXhzdERsclRLY21pTTQ2YzhOREF6Y2lBNkV4Mlpm?=
 =?utf-8?B?VU8wL3RCYnFrUENzQVdmOVp4dVVvWnhQeUdLeFZZUml2Z2sreGpkMTk3c2Q3?=
 =?utf-8?B?d2tPTGcxSWdDLzI0NnQ1eCtOYnlHdHhVeWFkQUJOM1c1NkY5ZXhINUVRdlY3?=
 =?utf-8?B?WUE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cea9638-ef97-47b5-c849-08dcde279246
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8906.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2024 12:34:32.0916
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qYaGoWr/Gafq/xGD95DMTy7AuGgpKOp2dfmdw69+S3joKn9idZbNEdX19RdxHRdFdo2du/+1pHjeG7L2Xa0oVSOoWAcbxzjNEWWr16TV7GU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7017
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_053443_520215_1D9046B0 
X-CRM114-Status: GOOD (  24.42  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Daniel,

On 9/25/24 9:28 AM, Daniel Semkowicz wrote:
> There is a PWRBTN# input pin exposed on a Q7 connector. The pin
> is routed to a GPIO0_A1 through a diode. Q7 specification describes
> the PWRBTN# pin as a Power Button signal.
> Configure the pin as KEY_POWER, so it can function as power button and
> trigger device shutdown.
> Add the pin definition to RK3399 Puma dts, so it can be reused
> by derived platforms, but keep it disabled by default.
> 
> Enable the power button input on Haikou development board.
> 
> Signed-off-by: Daniel Semkowicz <dse@thaumatec.com>

This works, thanks.

Tested-by: Quentin Schulz <quentin.schulz@cherry.de>

Now I have some questions I wasn't able to answer myself, maybe someone 
can provide some feedback on those :)

We already have a gpio-keys for buttons on Haikou, c.f. 
https://elixir.bootlin.com/linux/v6.11/source/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts#L22. 
Those signals are directly routed to the SoM and follow the Qseven standard.

The same applies to PWRBTN# signal.

However, here we have one gpio-keys for PWRBTN# in Puma DTSI and one 
gpio-keys for the buttons and sliders on Haikou devkit in Haikou DTS.

I'm a bit undecided on where this should go.

Having all button/slider signals following the Qseven standard in Puma 
DTSI and enable the gpio-keys only in the devkit would make sense to me, 
so that other baseboards could easily make use of it. However, things 
get complicated if the baseboard manufacturer decides to only implement 
**some** of the signals, for which we then need to remove some nodes 
from gpio-keys (and pinctrl entries) since gpio-keys doesn't check the 
"status" property in its child nodes (though that could be fixed). At 
which point, it's not entirely clear if having it in Puma DTSI is 
actually beneficial.

Someone has an opinion/recommendation on that?

Cheers,
Quentin

> ---
> 
>   .../boot/dts/rockchip/rk3399-puma-haikou.dts  |  4 ++++
>   arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 22 +++++++++++++++++++
>   2 files changed, 26 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
> index f6f15946579e..0999026b16d0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
> @@ -143,6 +143,10 @@ vddd_codec: vddd-codec {
>   	};
>   };
>   
> +&gpio_key_power {
> +	status = "okay";
> +};
> +
>   &hdmi {
>   	ddc-i2c-bus = <&i2c3>;
>   	status = "okay";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> index 650b1ba9c192..389ffe604e74 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> @@ -3,6 +3,7 @@
>    * Copyright (c) 2017 Theobroma Systems Design und Consulting GmbH
>    */
>   
> +#include <dt-bindings/input/input.h>
>   #include <dt-bindings/pwm/pwm.h>
>   #include "rk3399.dtsi"
>   
> @@ -39,6 +40,19 @@ clkin_gmac: external-gmac-clock {
>   		#clock-cells = <0>;
>   	};
>   
> +	gpio_key_power: gpio-key-power {
> +		compatible = "gpio-keys";
> +		pinctrl-0 = <&pwrbtn_pin>;
> +		pinctrl-names = "default";
> +		status = "disabled";
> +
> +		button-pwrbtn-n {
> +			gpios = <&gpio0 RK_PA1 GPIO_ACTIVE_LOW>;
> +			label = "PWRBTN#";
> +			linux,code = <KEY_POWER>;
> +		};
> +	};
> +
>   	vcc1v2_phy: vcc1v2-phy {
>   		compatible = "regulator-fixed";
>   		regulator-name = "vcc1v2_phy";
> @@ -475,6 +489,14 @@ &pinctrl {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&q7_thermal_pin &bios_disable_override_hog_pin>;
>   
> +	buttons {
> +		pwrbtn_pin: pwrbtn-pin {
> +			rockchip,pins =
> +				/* PWRBTN# */
> +				<0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
>   	gpios {
>   		bios_disable_override_hog_pin: bios-disable-override-hog-pin {
>   			rockchip,pins =


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
