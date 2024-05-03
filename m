Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E5E8C25B10
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 16:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OE6E+FO9bgqdejt4qTbLSRCs5WlRyjg2ItkRSCaj18w=; b=WFQCK48zQ8Lg4Z/H14BObAUpG/
	fWE8Fasc064GC+cCi2I3+WC+VnIA/GS51Xnu9s6deh3GiLLq8wztws9vtFj0IItH5y+VuGQJcLSi+
	PPwpWFN+G+75GtbAz7n0eo0HBF3L6Ri0PKZrCWoRdlE/NoSSQBOkeZ8TLYsr5kwoWShnQy2w1aQXk
	arGGjdSvHcArXHqe9y4OtJJVO6tmDu7/OdO4BqJGUaDcuLVgQSnTv2oHtMf2jAg/NxOjsHGRnkWbT
	F5WDyzInRF2rL4kpORdyrXcXwufBubM73m0rGDxyFYyJ4H7Xx0fSK8z08ijeBTALbts1L3nYpO25B
	Nog59w7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2ve8-0000000HCGi-0poS;
	Fri, 03 May 2024 16:20:28 +0000
Received: from mail-vi1eur05on20700.outbound.protection.outlook.com ([2a01:111:f403:2613::700] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2ve3-0000000HCFo-2y7j;
	Fri, 03 May 2024 16:20:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R6cFMFFVFCpElKZmtWVe9NSb++1TJy469QjkclfKQ95eH520BNdDjWVpwJs6JhYLZuO0Izjbc1dk0/A+AZS2trLG2lvdmhZYMQNc4AwH5CR4tZt4EGVtsn+WZ181yO01kldNJC4Y8nBOD8mLbKpGPSIkMaLb5JrwvVKtOwrxXmPmMFREka68B3qBhExTeg1/480jSgIulzdpexCbTRSi1ryFO6n1dtHMvQp6qklu/a2NHlyFO0tEscUaxEnwtXaepN4LZbU0ALNtYqX2VyzUunorPB70ABrfYNxS+H/2CTDTTuj8AcQpQrqqx3YpjWSvOLqVmSphnotEbiJwU67suA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MQt6mmXODkhqEhmCF3Br8xi6praQGTGC6Jikbnygre0=;
 b=dLlUXljeCtdrcOxMvStgeO4jSI48TrgpGF526/t4fj1CDLJ6b0atrjyLcDzlELSpVJmu7Kwe18QkKyAXWzkkfzwt5qmcysF1ab47nrffeWsrTJe1kk5L4ntMOJ5j4gsDL+2TNyWdikFi1+aMsMHSmxAM69POacQgKiKQoRzJubbCiUVCo0cRcYNJVqpFlazQqGrI9z8MDnqCuxx+oQ7iTs2PrDQyN38y6NEHmZoPyOuj1aIhZF4OLuMZxz7DBvxk4lIuXy22XGrG0DaAsBCLzNzal88D9HyW9rMoARfDo1tUU9NgYHWTE5nG9uLOAZppSa68p5xCx1sElHrbZAxW+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MQt6mmXODkhqEhmCF3Br8xi6praQGTGC6Jikbnygre0=;
 b=n0NDzOf9QiOchXsPDc7pE1J5Xa/jqWVK0wt2k+AKQ05oRSh4YR2mxXDmoFryp/LcrGtSa5TtOmzXTA1j8Yk6FZSgEgm84bpFZO/emTNb5ckbNZ1OFesgnOwGnk9pYjcFaenPnl+oPgldXmXshimo75ytgTJPpp5IuPbWELBaJbk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from DB7PR04MB4842.eurprd04.prod.outlook.com (2603:10a6:10:1b::13)
 by AM8PR04MB7745.eurprd04.prod.outlook.com (2603:10a6:20b:234::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.30; Fri, 3 May
 2024 16:20:14 +0000
Received: from DB7PR04MB4842.eurprd04.prod.outlook.com
 ([fe80::ac08:df46:97bd:4ae6]) by DB7PR04MB4842.eurprd04.prod.outlook.com
 ([fe80::ac08:df46:97bd:4ae6%6]) with mapi id 15.20.7544.029; Fri, 3 May 2024
 16:20:14 +0000
Message-ID: <8506322f-bfbf-4582-a88b-b300cad2d344@cherry.de>
Date: Fri, 3 May 2024 18:20:10 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] i2c: mux: add the ability to share mux-address with
 child nodes
To: Peter Rosin <peda@axentia.se>, Farouk Bouabid <farouk.bouabid@cherry.de>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20240426-dev-mule-i2c-mux-v1-0-045a482f6ffb@theobroma-systems.com>
 <20240426-dev-mule-i2c-mux-v1-1-045a482f6ffb@theobroma-systems.com>
 <f7ddc503-21c6-10b8-3326-398de65bd6a8@axentia.se>
 <318b22c7-4e90-4055-a893-bb995c16e8da@cherry.de>
 <c5e375a0-8c64-f244-a5e6-bfcb3400d05a@axentia.se>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <c5e375a0-8c64-f244-a5e6-bfcb3400d05a@axentia.se>
X-ClientProxiedBy: WA0P291CA0001.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::27) To DB7PR04MB4842.eurprd04.prod.outlook.com
 (2603:10a6:10:1b::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4842:EE_|AM8PR04MB7745:EE_
X-MS-Office365-Filtering-Correlation-Id: 51e54e60-3c51-43c6-d54c-08dc6b8ce9ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|7416005|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bXZLQTJrZTE1ai93VkFTaDJMbzRKajVnb21TNkxodFBFay84aHZoRHRpamlV?=
 =?utf-8?B?NittUFRkclRoOGVoWGV1QlAwWjlZTEVmREprZERteURONHhVZEJXSlJVbDh1?=
 =?utf-8?B?R1dEaUF4RlUycjd0VkZ4MzhvN1lHQWlqZHZOWUJsY2JYMFY2Q3BDL1RNSVNC?=
 =?utf-8?B?Q2RwRjhkeVc1OXpmanpnazdEUUFaUzdLQ0RWUXdjS1Y5eHpwNmVlbDhXL05a?=
 =?utf-8?B?dXllMzhaSStUdkErQmoyUnpsZ2NNM3g1clBkVHI0eThMMHFrSDY4RGdSRVlP?=
 =?utf-8?B?TGczazRDeCs4eUxhUFRwcVJ4REJNbG9CQy9qVnJrMXkvZ095V0hDbkRwTDMx?=
 =?utf-8?B?MTcxL1ZMTlpXd2NTb01FdjlVcHlBQThMbkUwQVUxZlJqVldnR3Q2QnRCTlBx?=
 =?utf-8?B?ZlF4SkxsbHlYSGtyUGpsY1NmVUI0TzFSU0xxSUVVVDdQUjBvUENiMjM3YjdL?=
 =?utf-8?B?cWxPSnZiSDdiMDZka0Z4bmxHUVROc0F2ZzVMZWlXaUsyZXNVUDVTbmNnMGFl?=
 =?utf-8?B?SC9RTjdQVm90aDE2ZTFGVWhzTWpxZlJKN0syZVA4VnRKY3JWT2dJdU01QmNX?=
 =?utf-8?B?M05ZQURIV0FZcmZVT0RHOXJiam5FTDNjTEpNbUU1WW5TeGRnT3RaTXF3VGNU?=
 =?utf-8?B?QXNSWDdRZ2N6T0lEWWlheSsxeEhHRlpJQWVVKzdkYWZ1NmVMKzBvV2ErODM5?=
 =?utf-8?B?SGY2OGd5OTZsdXFia08xdlRsNk5Ka2RZV1Q0QUVJd1o0Yzh5NSsxb2pZR3dk?=
 =?utf-8?B?MHlhVkhFUkQ2R1dSTytiSTM0NzdEZldpL2NXK2tFNzRZUjNwUWlqWDM5T3Ni?=
 =?utf-8?B?MGtGdGdzYy9WaVFZWVQzdVNHcS9RY0tPVnpkNXp6OTJ0ZmwzNCtjckg5Z2Vl?=
 =?utf-8?B?ME9IZHdUSStJY2VENXFPQjlQbG52SVdqcWtDbDFJMlR2ckZGeXpMSjkwZDNQ?=
 =?utf-8?B?a3Z6eFNsa2lra0JQSUxNVzhlM3pBUmd2MFovQkpHYWkxQWZaOE84cit4NTdY?=
 =?utf-8?B?V1ZVVy8vNnlWc1Ixbk1JOEZMSEszQTBROURKV3AwU2oraTdWeFZORU42RGFX?=
 =?utf-8?B?TUVEZFg5bnh1NXNLcXRkOHdNMmUwWnFYeG9JT3lQZVh2T1pDcjNEN09pZmNF?=
 =?utf-8?B?Z2p4Y09ZYSt3bjJsSnFNNjdzZlJ0ZEk5ZkpBcDRlZ244K0x5QmRacktvVDIx?=
 =?utf-8?B?LzAyRHl5T24xTFBMS3R4K2xiN0JuZU1PZDVoNWlPbWk4VWJ4ZFZZM0FkYW5Q?=
 =?utf-8?B?S3BOR3JZSHpMcUkydU1RTFVIN0NrdEtuRzUwYThJcVcwTnlYWkR2VS9iRFNx?=
 =?utf-8?B?dXhwME9oaC81Q3VDRnNISVNkM0NUbm1FaHFvTmJNb2Y0SjM0VVVtVHNIa1Qw?=
 =?utf-8?B?R3hzVVR6cDBqaDFyc1Z1U2t6VWd1dU13NDhSUVhhRVhPQVRCS1J0MmI1ZHJk?=
 =?utf-8?B?bmV5MXFKbTNnWHFSR2sxYWpBUENHQ0gxRTV5eTEwZmwva0lyMUJMVGE5MVlB?=
 =?utf-8?B?NnpJNUVxY3dXbTFwYUtoaGRNUlpYZDIwblJaRUh5T2N1dGxPbUVsMDRONXl5?=
 =?utf-8?B?QzNpNFRvVE5EdGpGMHBURlozSy8vZXRhVFFiMjA3YVR3TXoyNDlwcnM5TVlQ?=
 =?utf-8?B?dmRKeVVoR2RzZ0RDSmlOSFNmd2Z6YTNhMWNrdHFPbTNqd1dwSVJiWTB4Z093?=
 =?utf-8?B?WEx4cmpGUUVucnJjc2V2a1E1SXN3WWtXd0ViYTBjbVorN3EwdVFwVGtBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4842.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(7416005)(376005)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YWVsU1UvTUduK3M5L3J1RVJoS1QvdDVBSjlCWHIzS0hvU1dVdlZiMnRUSDFy?=
 =?utf-8?B?MmdJSEZqZ1JqZ3dNNjZBUFZGVGN4S3E2ZkZ3THc1aHpYOVBIUzBOSXFPUmhH?=
 =?utf-8?B?RnU1RDRuemdSUTdyc1doK1pWeTkxa0VsUWYvTVZyNUd0MzhsQmNXVGI1OXNh?=
 =?utf-8?B?Uk5jQU5ZT2Vsb01JZC85WlhlSGhzMGI2UkZITnhZREExY3IydkNzd2lhTmN6?=
 =?utf-8?B?WlRYUk82d1ZqcDRCUkN2VTFrTElNRVc2WTFQektlMm1OdGZGeHlQMElTZGFm?=
 =?utf-8?B?UDVNRHRJWENobUMrbThDYWhNaXdER05jQTdXN1FaUFpaRk8vS3VLRE8zMExD?=
 =?utf-8?B?bmdsRHFhSDdZcFZjbGUyV3E3OUo4UW5ZR2Z4aEhaT3dMK1FjNkF3UFQ1bXNJ?=
 =?utf-8?B?djRkWjI3OFNvM2F4QUFjdU85ME43L0FLNlE5cDhwZURkMURlaTdZTkJJZ25m?=
 =?utf-8?B?UmMyTzhVMUpsMU44M0h3ajg3YnZwakt2ZzBSS1dPMkZoZy8rdDdBeDZVM3FP?=
 =?utf-8?B?ZXpyMWtsMHdrOHJ0d1BPUERvbElYVGNQalRXbG9yWG9wU1oxeTZyMDkvRGNN?=
 =?utf-8?B?VnphQmtuU3laZnlPQTdiWDlnVzc2ZGZIcmlRZlZIMUlvWFpMZ2pybDlsZ20z?=
 =?utf-8?B?VHY4eVpJenF3anpNMGhkN3BCZ3ZvOGJWOGRWNmJoVTVlTmZtRTNOcVVCaHFP?=
 =?utf-8?B?SkszVWwydTFNRUhTYjNtWW9QZUFUd3Zmd21rVlNGQ01sTVFZNHJLR0ZHZXUr?=
 =?utf-8?B?SUljaFNQTW84WVM4dHAzcFJqaHFiR3VLd3hxOFVqbEVGdmdCODJjVk5UWHRP?=
 =?utf-8?B?dExLMlh1dzlHaVE4Smdhb3RJV2k3RS9nMmd1ODVNQjNRVmtiV1kzd3FQNkIr?=
 =?utf-8?B?SVJyYzNlSkVsUFVRelNoNDdIb2pZUmMrd0VNK1FCTWVPbnMxOWpRandDRDBT?=
 =?utf-8?B?SmlHMzlORnBURGZKTjc5NEVVeThzbDFRbnlqcmNPU0l2bStkU1owdTBJWmps?=
 =?utf-8?B?QWVTbFlNVHRaZ3VCclJvMEU3MzIvSCtZYzlYcGV2Z2hTd3FZb0V0OGJIMXBD?=
 =?utf-8?B?bWhpRk9mbXRWeElCb3hmTjE4U0VpeUwyYzBOT1E3Qnc5aEUwaDY5RVNxeFo2?=
 =?utf-8?B?Vkl2NWJuNUp6N3FuLzhHNDJaelMxVERIajB1bmxJZHFKS3dwdVZoRlh5Rkx0?=
 =?utf-8?B?bmRQUjRIR2pDY3UydEd6OC91OHd6MXpySEFwOXJRQnNJTFRUbG90c3pBK25w?=
 =?utf-8?B?cEdsRjhLOExJSUVFNkZIRTVtcVBoSmRCTDQ2VlNyMC9YVkM1SlhPQjQzOFRt?=
 =?utf-8?B?bXVET1JaYUtZU0ZWRUpLaURPczBNOTZld1RaZVNIQnB4WjZTSUk1cmpLS3Jq?=
 =?utf-8?B?WW1rbVIyS3J5WGxRNXRlN0NvNjRCTytFSk4zVUg3VVZOVXAybWpkR0lLS0hn?=
 =?utf-8?B?djRpNHZid3MvZ1VmVDZKVFVHNnorTlFJdlhEblhDZ1U4WVFGWmU1ZzJvVTNz?=
 =?utf-8?B?ZEVVYmZra0h3TUxTZFlobEw5Vjd4Zmp4M0UxbmlKV0hnMDZ3VFJ2aXpOejVU?=
 =?utf-8?B?TFFOdVptSWxGeXE2ZzVnbXdoeWFPR0dtUnV4WUtIbDJ5c3ZsQ0p6UDc2NXNk?=
 =?utf-8?B?enZ1dENwenh5MnZuVEJybWpnOUFFQUtPU3ZyZlhMNnVaQWQxVHR2TmY5OGNk?=
 =?utf-8?B?Q3AxSnA2am5pVURaR0p3dW8zNEdyKytXRzBNTU1xVFQwSmZ2YXBDTm8xdnVy?=
 =?utf-8?B?YjZPbThHbFNQNWZYbmNPU2ZNemU2TWNNdGZVWk4waHdkRkp0emxpQ3U3M1Yv?=
 =?utf-8?B?cUlsaUwzSjBWc09mdHI2QzNlUXozOWZ4UlFRQlFEYysrTmp3MVdORXA0cGpx?=
 =?utf-8?B?RkNKRjRxV0U1U0MwNUtoUzErS3pkU25PNWtWQTIwYmxPYWZkVUZlTnkreXVh?=
 =?utf-8?B?V3JzYXdLZ2Yzb2dNaFk0RzV2TEdMaGpka1BPZlBveUdUV0c0aWMzQmFWQ3ZJ?=
 =?utf-8?B?ZVBrUEZjblY4MWdDQzBjNmhTNXlTMkpGa29meEhhdVhoZGYzOG56ZVFwTGhn?=
 =?utf-8?B?d0FEL29hSnVwWGNDUXRuZGl0dXd5OGVZRnZIb0x6UWdxcS9tUlovR2RRRVNN?=
 =?utf-8?B?OGdtNXVaYVhiVTBFTWlkY0NVWVpNTVJHVGlBeTJ4Z1IrYUZTY2RtZlBESExt?=
 =?utf-8?B?dnc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 51e54e60-3c51-43c6-d54c-08dc6b8ce9ab
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4842.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 May 2024 16:20:14.4548
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IYHGSo6wYq7PHivFXRUnxD1fWAY0LrgnD+nXMkjdTjR5VN6wL47C6ouhlotFv7wjzaJLkp5XNRTaDRInjrX7v+dYhNimQSxZ0clkw8qV9HQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7745
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_092023_942995_AD125E83 
X-CRM114-Status: GOOD (  26.15  )
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

SGkgUGV0ZXIsCgpPbiA1LzMvMjQgNzozMCBBTSwgUGV0ZXIgUm9zaW4gd3JvdGU6Cj4gSGkhCj4g
Cj4gMjAyNC0wNS0wMiBhdCAxNzowMSwgRmFyb3VrIEJvdWFiaWQgd3JvdGU6Cj4+IEhpIFBldGVy
LAo+Pgo+PiBPbiAyOS4wNC4yNCAxNzo0NiwgUGV0ZXIgUm9zaW4gd3JvdGU6Cj4+PiBIaSEKPj4+
Cj4+PiAyMDI0LTA0LTI2IGF0IDE4OjQ5LCBGYXJvdWsgQm91YWJpZCB3cm90ZToKPj4+PiBBbGxv
dyB0aGUgbXV4IHRvIGhhdmUgdGhlIHNhbWUgYWRkcmVzcyBhcyBhIGNoaWxkIGRldmljZS4gVGhp
cyBpcyB1c2VmdWwKPj4+PiB3aGVuIHRoZSBtdXggY2FuIG9ubHkgdXNlIGFuIGkyYy1hZGRyZXNz
IHRoYXQgaXMgdXNlZCBieSBhIGNoaWxkIGRldmljZQo+Pj4+IGJlY2F1c2Ugbm8gb3RoZXIgYWRk
cmVzc2VzIGFyZSBmcmVlIHRvIHVzZS4gZWcuIHRoZSBtdXggY2FuIG9ubHkgdXNlCj4+Pj4gYWRk
cmVzcyAweDE4IHdoaWNoIGlzIHVzZWQgYnkgYW1jNjgyMSBjb25uZWN0ZWQgdG8gdGhlIG11eC4K
Pj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEZhcm91ayBCb3VhYmlkIDxmYXJvdWsuYm91YWJpZEB0
aGVvYnJvbWEtc3lzdGVtcy5jb20+Cj4+Pj4gLS0tCj4+Pj4gIMKgIGRyaXZlcnMvaTJjL2kyYy1t
dXguY8KgwqAgfCAxMCArKysrKysrKystCj4+Pj4gIMKgIGluY2x1ZGUvbGludXgvaTJjLW11eC5o
IHzCoCAxICsKPj4+PiAgwqAgMiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pMmMvaTJjLW11eC5jIGIv
ZHJpdmVycy9pMmMvaTJjLW11eC5jCj4+Pj4gaW5kZXggNTdmZjA5ZjE4YzM3Li5mNTM1N2RmZjhj
YzUgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9pMmMvaTJjLW11eC5jCj4+Pj4gKysrIGIvZHJp
dmVycy9pMmMvaTJjLW11eC5jCj4+Pj4gQEAgLTMzMSw3ICszMzEsNiBAQCBpbnQgaTJjX211eF9h
ZGRfYWRhcHRlcihzdHJ1Y3QgaTJjX211eF9jb3JlICptdXhjLAo+Pj4+ICDCoMKgwqDCoMKgIHBy
aXYtPmFkYXAub3duZXIgPSBUSElTX01PRFVMRTsKPj4+PiAgwqDCoMKgwqDCoCBwcml2LT5hZGFw
LmFsZ28gPSAmcHJpdi0+YWxnbzsKPj4+PiAgwqDCoMKgwqDCoCBwcml2LT5hZGFwLmFsZ29fZGF0
YSA9IHByaXY7Cj4+Pj4gLcKgwqDCoCBwcml2LT5hZGFwLmRldi5wYXJlbnQgPSAmcGFyZW50LT5k
ZXY7Cj4+Pj4gIMKgwqDCoMKgwqAgcHJpdi0+YWRhcC5yZXRyaWVzID0gcGFyZW50LT5yZXRyaWVz
Owo+Pj4+ICDCoMKgwqDCoMKgIHByaXYtPmFkYXAudGltZW91dCA9IHBhcmVudC0+dGltZW91dDsK
Pj4+PiAgwqDCoMKgwqDCoCBwcml2LT5hZGFwLnF1aXJrcyA9IHBhcmVudC0+cXVpcmtzOwo+Pj4+
IEBAIC0zNDgsNiArMzQ3LDE1IEBAIGludCBpMmNfbXV4X2FkZF9hZGFwdGVyKHN0cnVjdCBpMmNf
bXV4X2NvcmUgKm11eGMsCj4+Pj4gIMKgwqDCoMKgwqAgZWxzZQo+Pj4+ICDCoMKgwqDCoMKgwqDC
oMKgwqAgcHJpdi0+YWRhcC5jbGFzcyA9IGNsYXNzOwo+Pj4+ICDCoCArwqDCoMKgIC8qCj4+Pj4g
K8KgwqDCoMKgICogV2hlbiBjcmVhdGluZyB0aGUgYWRhcHRlciwgdGhlIG5vZGUgZGV2aWNlcyBh
cmUgY2hlY2tlZCBmb3IgaTJjIGFkZHJlc3MKPj4+PiArwqDCoMKgwqAgKiBtYXRjaCB3aXRoIG90
aGVyIGRldmljZXMgb24gdGhlIHBhcmVudCBhZGFwdGVyLCBhbW9uZyB3aGljaCBpcyB0aGUgbXV4
IGl0c2VsZi4KPj4+PiArwqDCoMKgwqAgKiBJZiBhIG1hdGNoIGlzIGZvdW5kIHRoZSBub2RlIGRl
dmljZSBpcyBub3QgcHJvYmVkIHN1Y2Nlc3NmdWxseS4KPj4+PiArwqDCoMKgwqAgKiBBbGxvdyB0
aGUgbXV4IHRvIGhhdmUgdGhlIHNhbWUgYWRkcmVzcyBhcyBhIGNoaWxkIGRldmljZSBieSBza2lw
cGluZyB0aGlzIGNoZWNrLgo+Pj4+ICvCoMKgwqDCoCAqLwo+Pj4+ICvCoMKgwqAgaWYgKCEobXV4
Yy0+c2hhcmVfYWRkcl93aXRoX2NoaWxkcmVuKSkKPj4+PiArwqDCoMKgwqDCoMKgwqAgcHJpdi0+
YWRhcC5kZXYucGFyZW50ID0gJnBhcmVudC0+ZGV2Owo+Pj4gVGhpcyBpcyBhIGRpcnR5IGhhY2sg
dGhhdCB3aWxsIG5vdCBnZW5lcmFsbHkgZG8gdGhlIHJpZ2h0IHRoaW5nLgo+Pj4KPj4+IFRoZSBh
ZGFwdGVyIGRldmljZSBwYXJlbnQgaXMgbm90IHRoZXJlIHNvbGVseSBmb3IgdGhlIHB1cnBvc2Ug
b2YKPj4+IGRldGVjdGluZyBhZGRyZXNzIGNsYXNoZXMsIHNvIHRoZSBhYm92ZSBoYXMgb3RoZXIg
aW1wbGljYXRpb25zCj4+PiB0aGF0IGFyZSBub3QgZGVzaXJhYmxlLgo+Pj4KPj4+IFRoZXJlZm9y
ZSwgTkFDSyBvbiB0aGlzIGFwcHJvYWNoLiBJdCBzaW1wbHkgbmVlZHMgdG8gYmUgbW9yZSBpbnZv
bHZlZC4KPj4+IFNvcnJ5Lgo+Pj4KPj4+IENoZWVycywKPj4+IFBldGVyCj4+Pgo+Pgo+PiBBbm90
aGVyIHdheSB0byBhcHByb2FjaCB0aGlzIGlzIGJ5IGltcGxlbWVudGluZyB0aGlzIGZsYWcgYXMg
YSBxdWlyayBmb3IgdGhlIGFkZGVkIGFkYXB0ZXI6Cj4+Cj4+ICh0ZXN0ZWQgYnV0IG5vdCBjbGVh
bmVkIHVwKQo+IAo+IFllcywgZ29vZCBpZGVhLCB0aGlzIGlzIG11Y2ggbW9yZSB0YXJnZXRlZCBh
bmQgZ2VuZXJhbGx5IGZlZWxzIGEgbG90Cj4gYmV0dGVyLgo+IAo+Pgo+PiAiIiIKPj4KPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvaTJjL2kyYy1jb3JlLWJhc2UuYyBiL2RyaXZlcnMvaTJjL2kyYy1j
b3JlLWJhc2UuYwo+PiBpbmRleCBmZjVjNDg2YTFkYmIuLjZhMDIzN2Y3NTBkYiAxMDA2NDQKPj4g
LS0tIGEvZHJpdmVycy9pMmMvaTJjLWNvcmUtYmFzZS5jCj4+ICsrKyBiL2RyaXZlcnMvaTJjL2ky
Yy1jb3JlLWJhc2UuYwo+PiBAQCAtODIxLDkgKzgyMSwyMSBAQCBzdGF0aWMgaW50IGkyY19jaGVj
a19tdXhfY2hpbGRyZW4oc3RydWN0IGRldmljZSAqZGV2LCB2b2lkICphZGRycCkKPj4gIMKgc3Rh
dGljIGludCBpMmNfY2hlY2tfYWRkcl9idXN5KHN0cnVjdCBpMmNfYWRhcHRlciAqYWRhcHRlciwg
aW50IGFkZHIpCj4+ICDCoHsKPj4gIMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpMmNfYWRhcHRlciAq
cGFyZW50ID0gaTJjX3BhcmVudF9pc19pMmNfYWRhcHRlcihhZGFwdGVyKTsKPj4gK8KgwqDCoMKg
wqDCoCBib29sIHNraXBfY2hlY2sgPSBmYWxzZTsKPj4gIMKgwqDCoMKgwqDCoMKgIGludCByZXN1
bHQgPSAwOwo+Pgo+PiAtwqDCoMKgwqDCoMKgIGlmIChwYXJlbnQpCj4+ICvCoMKgwqDCoMKgwqAg
aWYgKGFkYXB0ZXItPnF1aXJrcykgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGlmIChhZGFwdGVyLT5xdWlya3MtPmZsYWdzICYgSTJDX0FRX1NIQVJFX0FERFIpIHsKPj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpMmNfY2xp
ZW50ICpjbGllbnQgPSBvZl9maW5kX2kyY19kZXZpY2VfYnlfbm9kZShhZGFwdGVyLT5kZXYub2Zf
bm9kZS0+cGFyZW50KTsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgaWYgKGNsaWVudCkgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNraXBfY2hlY2sgPSBjbGllbnQtPmFk
ZHIgPT0gYWRkcjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBwdXRfZGV2aWNlKCZjbGllbnQtPmRldik7Cj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfQo+PiArwqDCoMKgwqDCoMKgIH0KPj4gKwo+PiArwqDCoMKgwqDC
oMKgIGlmIChwYXJlbnQgJiYgIXNraXBfY2hlY2spCj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcmVzdWx0ID0gaTJjX2NoZWNrX211eF9wYXJlbnRzKHBhcmVudCwgYWRkcik7Cj4+
Cj4+ICDCoMKgwqDCoMKgwqDCoCBpZiAoIXJlc3VsdCkKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
aTJjL2kyYy1tdXguYyBiL2RyaXZlcnMvaTJjL2kyYy1tdXguYwo+PiBpbmRleCA1N2ZmMDlmMThj
MzcuLmU4N2NiMGU0MzcyNSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9pMmMvaTJjLW11eC5jCj4+
ICsrKyBiL2RyaXZlcnMvaTJjL2kyYy1tdXguYwo+PiBAQCAtMzM0LDcgKzMzNCwyNiBAQCBpbnQg
aTJjX211eF9hZGRfYWRhcHRlcihzdHJ1Y3QgaTJjX211eF9jb3JlICptdXhjLAo+PiAgwqDCoMKg
wqDCoMKgwqAgcHJpdi0+YWRhcC5kZXYucGFyZW50ID0gJnBhcmVudC0+ZGV2Owo+PiAgwqDCoMKg
wqDCoMKgwqAgcHJpdi0+YWRhcC5yZXRyaWVzID0gcGFyZW50LT5yZXRyaWVzOwo+PiAgwqDCoMKg
wqDCoMKgwqAgcHJpdi0+YWRhcC50aW1lb3V0ID0gcGFyZW50LT50aW1lb3V0Owo+PiAtwqDCoMKg
wqDCoMKgIHByaXYtPmFkYXAucXVpcmtzID0gcGFyZW50LT5xdWlya3M7Cj4+ICvCoMKgwqDCoMKg
wqAgLyoKPj4gK8KgwqDCoMKgwqDCoMKgICogV2hlbiBjcmVhdGluZyB0aGUgYWRhcHRlciwgdGhl
IG5vZGUgZGV2aWNlcyBhcmUgY2hlY2tlZCBmb3IgaTJjIGFkZHJlc3MKPj4gK8KgwqDCoMKgwqDC
oMKgICogbWF0Y2ggd2l0aCBvdGhlciBkZXZpY2VzIG9uIHRoZSBwYXJlbnQgYWRhcHRlciwgYW1v
bmcgd2hpY2ggaXMgdGhlIG11eCBpdHNlbGYuCj4+ICvCoMKgwqDCoMKgwqDCoCAqIElmIGEgbWF0
Y2ggaXMgZm91bmQgdGhlIG5vZGUgZGV2aWNlIGlzIG5vdCBwcm9iZWQgc3VjY2Vzc2Z1bGx5Lgo+
PiArwqDCoMKgwqDCoMKgwqAgKiBBbGxvdyB0aGUgbXV4IHRvIGhhdmUgdGhlIHNhbWUgYWRkcmVz
cyBhcyBhIGNoaWxkIGRldmljZSBieSBza2lwcGluZyB0aGlzIGNoZWNrLgo+PiArwqDCoMKgwqDC
oMKgwqAgKi8KPj4gK8KgwqDCoMKgwqDCoCBpZiAoIW11eGMtPnNoYXJlX2FkZHJfd2l0aF9jaGls
ZHJlbikKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcHJpdi0+YWRhcC5xdWlya3Mg
PSBwYXJlbnQtPnF1aXJrczsKPj4gK8KgwqDCoMKgwqDCoCBlbHNlIHsKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGkyY19hZGFwdGVyX3F1aXJrcyAqcXVpcmtzID0ga3ph
bGxvYyhzaXplb2YoKnF1aXJrcyksIEdGUF9LRVJORUwpOwo+IAo+IFRoaXMgbGVha3MsIGRldl9r
emFsbG9jPwo+IAoKUXVpY2sgcXVlc3Rpb25zIGFib3V0IHRoaXMgdGhvdWdoLgoKcHJpdiBpcyBh
bGxvY2F0ZWQgd2l0aCBremFsbG9jIGFuZCBub3QgZGV2bV9remFsbG9jIGFuZCBpcyB0aGVuIG1h
bnVhbGx5IAprZnJlZSdkIGVpdGhlciBhcyBwYXJ0IG9mIHRoZSBlcnJvciBwYXRoIG9yIGluIGky
Y19kZWxfbXV4X2FkYXB0ZXJzLiBJcyAKdGhlcmUgYSByZWFzb24gZm9yIHRoaXM/IFNob3VsZG4n
dCB3ZSBtaWdyYXRlIHRoaXMgdG8gZGV2bSBhbGxvY2F0aW9uIGFzIAp3ZWxsPwoKU2ltaWxhcmx5
LCBJIHdhcyB3b25kZXJpbmcgaWYgd2UgY291bGRuJ3QgYWRkIGEgZGV2bV9hZGRfYWN0aW9uX29y
X3Jlc2V0IApmb3IgaTJjX2RlbF9tdXhfYWRhcHRlcnMgaW4gaTJjX2FkZF9tdXhfYWRhcHRlcj8g
SXMgdGhlcmUgc29tZXRoaW5nIHRoYXQgCnByZXZlbnRzIHVzIGZyb20gZG9pbmcgdGhpcz8KCkNo
ZWVycywKUXVlbnRpbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
