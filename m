Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 824CCC4345F
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 05:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QKQIsjAc+m0gvqpsPFoTrXCxi+NLwoa1vQmN1BjY5ws=; b=gVfHEe+lSK2+khLaXCL74ED03l
	EkeANmo8PXmPHlgANS+kUpnFKCJ5sHwMuKH/o9c3PtIdbGMZ/zSU4W2GzYvoicBZvGUR4V1tDN8wL
	xTAnK+GRiUFtgEKH/AwbAWfkvo+vzyHADSvCh2UAoi1AnsFuJJvfhW5EKrIJihmlOvjMSWaNoI7R8
	QuwyHJnwAeCJvOGbQJ6NXxbSn3+U3CMfbPJLfs96wTSYhtB8rhWv20Lio/1msrFFWmmCWwUWwNc4Y
	xUuD95oNeDlAM86QfS+6/1FPk3dUiB4itHOxeDGZFdD3y7w5InBCrbXivOmhOScBV8OrqtR5GfA5a
	beagVM2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2lV5-0000000F9j4-2XCS;
	Fri, 03 May 2024 05:30:27 +0000
Received: from mail-vi1eur04on20700.outbound.protection.outlook.com ([2a01:111:f403:2611::700] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2lV0-0000000F9gp-37VC;
	Fri, 03 May 2024 05:30:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CDOQRcHxkWNuRcQp/fdYFaywR1fMlhBgdKZkbmZD9jfDafZ1ADr7BeWHsD9VCG+Pyt/Lt5v2YiEXuK2iEsR8pnLhBQDaZDejg0e8ZXZxxQ/J8kYGCiM/U/MFsqdgoxZng00J76SJLItPI6BRFh/Fn1DKtUjJSLOMX9wbsP0c+v1axitDpR/wcnnHl0mTYjayUYH8M99TugcKjJz56yE2F7ARurrXK4p1nluN3U0V755CEkDokFOMo+RouX8tKs+k08mgGfiZwIcueoP7GRCxT5yDakah8WCjrJ+ZhR7JnXtYv/RnDuxcssktgrXQAvd9ZERMDHe1T1qfw7E6qJpT4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=enDhxi3Adtc2t5dhTINkE8U5kRZdbuuS0wDuQME2Il8=;
 b=An39vKMklOZFxxUI8oMggThoEZa+R27SJTv2c3X1JhFQEU7Nc9Njn1aVG/sLtFkkcZssrQIOoXX/J5A+EV6PvLQArLhfbsCp7taHV0hsq1LqCzf1ypx6gDhjWyJPz2ubnMeZHOj7Bq/nN4giSw7gJMkbX3uT8CA1zCLqgTw+cBUNSo/f3qok3DDjUXxyRgcGStj2mVySKbJjXe409/sbHaMrp8sVBjGIsp47Ax0oU7MgUOW+6GkxyB0MiKeDNNq+XcdSLnXV28+MwQX5xUy9Qz65MbgY6beQYsmlLWxyAlUpCww4ZfBKF6SSkbqi3jEDJ6PvC6Y6Xuz/MT/x8RZ5Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=enDhxi3Adtc2t5dhTINkE8U5kRZdbuuS0wDuQME2Il8=;
 b=lqoBc/ympxTnQvkE9apyT/kGv7LwiGYyC4RKvaNMlCSPt6gcDb0aXNA6i4atXNhmLQ5feeaj1MKqDpZ0JTYj4ClUwxFrhYTc8PhSsCUc6/oQ71TBntOPUUC67jNrnPrueJox5BWGA9EN//9y4SbDG8PVvjhRAXTDrTLupsiGxYE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axentia.se;
Received: from DU0PR02MB8500.eurprd02.prod.outlook.com (2603:10a6:10:3e3::8)
 by AS2PR02MB9413.eurprd02.prod.outlook.com (2603:10a6:20b:59f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.22; Fri, 3 May
 2024 05:30:10 +0000
Received: from DU0PR02MB8500.eurprd02.prod.outlook.com
 ([fe80::aff4:cbc7:ff18:b827]) by DU0PR02MB8500.eurprd02.prod.outlook.com
 ([fe80::aff4:cbc7:ff18:b827%4]) with mapi id 15.20.7544.029; Fri, 3 May 2024
 05:30:10 +0000
Message-ID: <c5e375a0-8c64-f244-a5e6-bfcb3400d05a@axentia.se>
Date: Fri, 3 May 2024 07:30:07 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/7] i2c: mux: add the ability to share mux-address with
 child nodes
Content-Language: sv-SE, en-US
To: Farouk Bouabid <farouk.bouabid@cherry.de>,
 Farouk Bouabid <farouk.bouabid@theobroma-systems.com>,
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
From: Peter Rosin <peda@axentia.se>
In-Reply-To: <318b22c7-4e90-4055-a893-bb995c16e8da@cherry.de>
X-ClientProxiedBy: GV3P280CA0019.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:b::17) To DU0PR02MB8500.eurprd02.prod.outlook.com
 (2603:10a6:10:3e3::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR02MB8500:EE_|AS2PR02MB9413:EE_
X-MS-Office365-Filtering-Correlation-Id: ee349d59-aaa4-4199-3964-08dc6b32195a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015|7416005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c2YzNzBKcVV2ZEpQdlRSeUFmckgzT0ZjaXp0bWlHOHVDVnFOV1BuNmJZMHNE?=
 =?utf-8?B?OHRBbXc1Y3NjRWplcTVNZkFJaC92dzZtakVlRkJsODdOQXZMMXJCZHhJUW04?=
 =?utf-8?B?bWx2akJwb0VvejhBanBhNG1HeGxyekkrUkRKQnhMS0dtMWxaZXdQUFYvZTEr?=
 =?utf-8?B?aEdlbXhCOHJuVkk2RDMzOG9NMlhHcU4yb0FCY0JKZWY0SDZweEJxMFBGbUNK?=
 =?utf-8?B?bFVrbGExVEVyMjZBUjBmaUR0R21nNFo2bDd1b3JnaWwrSjFoVERqTFRGS3J5?=
 =?utf-8?B?M0Rwc053RDNVM1RlbzNNREhyNUpyZ0tSTE5FdUpydzl3dG85eGZ2NnorWTVu?=
 =?utf-8?B?TmwvWVRBc3M3NXNINDdBZTlQbGxienlQZzlkVlY1WWRtdEc2eFFLd1lXR0xT?=
 =?utf-8?B?aUVjQzRPTDQ0SzI1ZVlHQUFXTnB5NjA5RDVBT0xvWllUNHZDb3FUTUtNN2J5?=
 =?utf-8?B?RjlPT3N2MXhoYTQyblZnRkp6bGlnT1VFN3piMjZUQk1CY0JEMEF5S3lHSWRU?=
 =?utf-8?B?elU4TE9YaDEvRUdVdUU5Q2tJWnBVSTRka0syRWpnYnI0ZGg4U0FYRGhaVGZC?=
 =?utf-8?B?VU13WXdyWmpXMkhhMitUMzRtODZyUXU1OUdSM3Z0UzNjWGYvd1NqMSt5eDVC?=
 =?utf-8?B?WDdRVFVIT0JIMFdBTFI5aTA0d1NmN1dheERodmM0M3E3c1Fhc29CemJDYTVX?=
 =?utf-8?B?VVlzWWFnZXd5ZExBZDgzWEM1RjFJQ1VKeFdiQzlGVkF3aXordXVmY21kOHIv?=
 =?utf-8?B?QTJyMHNDTEp1VmF2SzJvSjFaQTdsQXpqQ04ycDJ1a3FQT1hYY2ZCL0d0RHF5?=
 =?utf-8?B?NzZyR1JpelBHczdiNVBRN1hpZnN4UFBHWmFYYUs1bVRzRmQvS0E4WVE0WDAz?=
 =?utf-8?B?ZVNGVDZkd3c4ZTZ0c2M5VVMzeEl5VDJucDl5S2xQY3IvTktKNEhQZUovR3FP?=
 =?utf-8?B?WE5qSVk1b3B6cERZSlM3OHg3aEFvanBRb2szL05DQTVhRzJJNFFzcXFyR2VT?=
 =?utf-8?B?KzlVb1BwNUtOZU55eVJZa1NqTGRsSXg2UTZBdE94YVZsaXV1OSs1Y3RNSUFI?=
 =?utf-8?B?UytvNjVpRWJqdEIvY3Zab2txdnh4dlpjTGJXc3hjWUdHdldScDJCUHlHcW5k?=
 =?utf-8?B?ZUpvbkVheWJDK3A5MFVYRUxvdzMxMGdLZ0xYMEZrbVlHaHZhSkpTRTFBSmNr?=
 =?utf-8?B?alVOM0VsbWNjZFUzZlBNaVpCc0pIUnNId3Qrck9Vc0ZSTit3NHlsZ3JxZmpD?=
 =?utf-8?B?bjdZVHluZC8rd21WbldlNUpOYWJuQ2VvMG9kdXNEM2JNVXZrR2xteU5USkl5?=
 =?utf-8?B?YkZ3QjhMWitVam1KSUNKZW8wQVFYRWVFbTA5M1A3UzhWeDZlbFBFQytSRTAw?=
 =?utf-8?B?T3JtS3hYeU83VGV5MzNPenJ5bW1pVEpkeVp6U25wa005aEQvOUkxd1NlNFhJ?=
 =?utf-8?B?RndHSnJ6eVJ4cWFpcCtqV3JnNC9pb1dnQTNhY0FYcFlqaGhiVG8zd01kNFRF?=
 =?utf-8?B?L2paRkdVbXBwdnpTMnNNL2xUR0M4SHlINXdJYXpIeC9IbGxBWTE1VGJjMy9D?=
 =?utf-8?B?dTlwQTNJR3FobzM1aDhLUU54bzkxVDRUTXRXLzhxU2tWZ3RnRGtsbThuQk9S?=
 =?utf-8?B?M3JkYnBTTS9kZytzVDREOS9aYmxsKzlqZDV2all5U3MwaXEwR3VBOGtES1ZK?=
 =?utf-8?B?OWU0dUhNeEk4SnVRSWJQV1BZOTBhSHFHWFdOcGpaVjFxRUJ1SDE2WitRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR02MB8500.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015)(7416005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aTVnZTgxYkZ4V1hydCtrb3pSUXJQMlA2Ykd2Z1U1ZmI1M25FKzZ1OElsWk5Q?=
 =?utf-8?B?TmlpZ1VsaThyRU84bGRVV25IQlV4cHpDeW1SV2YrdWhWOHFudkU3TWt6NWY2?=
 =?utf-8?B?ckF2SWpvOW1pWHNSa0hGV21UQlRtN0FsZ2dvMm1UOVRYL1NzNjBvMHNoS25j?=
 =?utf-8?B?elEyQkdQQmxscnplRFRyTDRnN1N4UC9SbzdycWpwNDlmVWRUMXdnLzh3cEJq?=
 =?utf-8?B?aUxidUtON29IT1pzWENmNHpkTFhwQkFsZ2ZUdXcwNjdPZ3llOVVpUkpJdmw5?=
 =?utf-8?B?QVpSemQwaTVXV05NY09xbWUvVWZlK2lCcHVPS0hMRjgwY1B4YU8weERNaCtv?=
 =?utf-8?B?VDY0amMvZm95ejg4MDVlaXNHNHdwWXBzWUZBM2YyRHFJdHVPTlkydzM2WE83?=
 =?utf-8?B?YnRNZUZhdFloWTN4T012SEtyUmxnV0VGNHlRMFk1cjgwNHViRk04YmNOV2Rr?=
 =?utf-8?B?UXFiS0E3ZjEwK2ErMEdHNDBDMktKM0JXZlU5disyMlhJNFNZNThET2N4TlI2?=
 =?utf-8?B?d2NBZ0d6bXRWZzViL2JJK0Y5TEVBOEFuclN2STRQcVVLQ1A2cHZ1d1Bxd2Np?=
 =?utf-8?B?bUZQTnEvYUhPcjV3QWRtZU5tUk9YOWRMNTJLUTRyeWJldE1jT1ZtQms4MnB5?=
 =?utf-8?B?c2E2MENhQzRiZ21ad1cvZFVhZy9YWWg5ZXJKNzVhcUFFYXRVVW5reG1KWDdj?=
 =?utf-8?B?ZzVtNHZjK2RzSW1ZR2R2V2ZlQUtPWityTEtQdWhlaDFXWmNvb29Od1JyRGxZ?=
 =?utf-8?B?elpqWnEzQkhwSXVab2NvZ0krazE2bU1WRmFVRjZNc3o4Qkx6RkFBTUdTNGY1?=
 =?utf-8?B?OUxicUpiZ2V4WDNMZDlvRXhHcUxuNFFNVmdrengwdm5DTGs4ZDFJeDRncWtm?=
 =?utf-8?B?RkY3NldWVVNzY0QwRmJSaXUxcW9zdnhYS3pHNkNYb1RtaXRNRHBLcEVCUnMw?=
 =?utf-8?B?Tkh5VkwwcC9hOXpRMGQxcmF1RUZBWm1WQ1ZVQ1Y0d0VxdHNCYUsraGE3Mjhw?=
 =?utf-8?B?azV5K244ZWxFK0xZODVPY1dxUUFqTUNob0gwSVFpVFhsYzV4ZVhocFpDYVVl?=
 =?utf-8?B?V014UUdxckM0KzBYL2VvaW1ON1djRUQvL0hZUnc5UnRzYkV3WjVVUTRMenhN?=
 =?utf-8?B?Nk1WUVlQaGFzM0ZBVy9YSmxmVW12OVJUenFkSWh0NHNtdnA2Ty8yT29DNkU1?=
 =?utf-8?B?dmpYc2VEUklJWEJrRmhYOFg0UTdPTS95UDFWbTlndTFndWdKZ3J3bCtuSHhx?=
 =?utf-8?B?WmpoVXI1bkhlY1ovUzRpK3g5ZjREN25Eajc1NTBSeDJMYmdiSWpmZE9GdWxa?=
 =?utf-8?B?cVdkVlVnSmtKNjV5M2xNamE3UHpjaGd4ZVo4eWIwZkdoZ3h4b0dlYUNSTWV3?=
 =?utf-8?B?d3JSMlM4VjNEWWtFaXNjaXZGa2lFU0tNSmU4VDRabEs5SDBINWhFK25qYzds?=
 =?utf-8?B?WXRlTVIxQzlOTXNXaGhSSE1TYkU0dFZxMmRZbTZsUEJMTkZGdHpoMmV3RlNa?=
 =?utf-8?B?YzNUTy8ySWtzc0pPSEpTdHJWOWw0S2toNDRsQVJTTDNmWHNFc3JjbmhUWk80?=
 =?utf-8?B?bmFTcEt3ZDVZakVEOWZWelhDOWRVQUVDM2VHVVVSSndyRHBENnpFVkZydDUw?=
 =?utf-8?B?dzVQQzdacEhOTnRjWXozOWJzMG5CQlNEWjIvQlRSWkJES2wvdXE5K084eEh6?=
 =?utf-8?B?SjNmZjE3Y25Nd25tdEhIR24xTWdPajhocUlBT3lMSWV3Y1lmZHhId3cyb2lI?=
 =?utf-8?B?WmJMcWx3WEpjTmR4NUZaKzdjRmo0L1N1YmJ0bHFZNkJGaXd1c3FGcE9LY3k5?=
 =?utf-8?B?bUdiZm9KNXRwUHdWZEhZQncvRUVOVmdiUThTY1dsT3hxM0lnMGlFaEE1VUtW?=
 =?utf-8?B?SmQ2cmhwdVV5bFFRQW9vZnU1UGFwbHdaWFhuWmtrek5KWUZOajk3eWZDV3gw?=
 =?utf-8?B?ODlhZFpSU041S0J3Z1Z0YnZkT0lyakJxRWg0dGoyZ29JVGJlYXhEeGYzakQ4?=
 =?utf-8?B?KzUydnc1NVo1YkRTcGVidU1WaEFrSE5MQjRHSEJSRTU4bEtMOWFzZGwyYUZZ?=
 =?utf-8?B?MmxKSGxNWUFvdEo5M0c4SWREWlRjemdQVjM5YktGaXkwbTNqaTVQRUVHYjNJ?=
 =?utf-8?Q?+QQpOgal8/oj+5Ds0wwO0ziOT?=
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: ee349d59-aaa4-4199-3964-08dc6b32195a
X-MS-Exchange-CrossTenant-AuthSource: DU0PR02MB8500.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 May 2024 05:30:09.9039
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q/LdkZNiuKs2StPelxppy2OjzdX3W4YSPdrL9erumjKGRXMBMoL6y2R83eKWkuvJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR02MB9413
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_223023_302503_8516CCA2 
X-CRM114-Status: GOOD (  28.89  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkhCgoyMDI0LTA1LTAyIGF0IDE3OjAxLCBGYXJvdWsgQm91YWJpZCB3cm90ZToKPiBIaSBQZXRl
ciwKPiAKPiBPbiAyOS4wNC4yNCAxNzo0NiwgUGV0ZXIgUm9zaW4gd3JvdGU6Cj4+IEhpIQo+Pgo+
PiAyMDI0LTA0LTI2IGF0IDE4OjQ5LCBGYXJvdWsgQm91YWJpZCB3cm90ZToKPj4+IEFsbG93IHRo
ZSBtdXggdG8gaGF2ZSB0aGUgc2FtZSBhZGRyZXNzIGFzIGEgY2hpbGQgZGV2aWNlLiBUaGlzIGlz
IHVzZWZ1bAo+Pj4gd2hlbiB0aGUgbXV4IGNhbiBvbmx5IHVzZSBhbiBpMmMtYWRkcmVzcyB0aGF0
IGlzIHVzZWQgYnkgYSBjaGlsZCBkZXZpY2UKPj4+IGJlY2F1c2Ugbm8gb3RoZXIgYWRkcmVzc2Vz
IGFyZSBmcmVlIHRvIHVzZS4gZWcuIHRoZSBtdXggY2FuIG9ubHkgdXNlCj4+PiBhZGRyZXNzIDB4
MTggd2hpY2ggaXMgdXNlZCBieSBhbWM2ODIxIGNvbm5lY3RlZCB0byB0aGUgbXV4Lgo+Pj4KPj4+
IFNpZ25lZC1vZmYtYnk6IEZhcm91ayBCb3VhYmlkIDxmYXJvdWsuYm91YWJpZEB0aGVvYnJvbWEt
c3lzdGVtcy5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvaTJjL2kyYy1tdXguY8KgwqAgfCAx
MCArKysrKysrKystCj4+PiDCoCBpbmNsdWRlL2xpbnV4L2kyYy1tdXguaCB8wqAgMSArCj4+PiDC
oCAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4+Cj4+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pMmMvaTJjLW11eC5jIGIvZHJpdmVycy9pMmMvaTJjLW11
eC5jCj4+PiBpbmRleCA1N2ZmMDlmMThjMzcuLmY1MzU3ZGZmOGNjNSAxMDA2NDQKPj4+IC0tLSBh
L2RyaXZlcnMvaTJjL2kyYy1tdXguYwo+Pj4gKysrIGIvZHJpdmVycy9pMmMvaTJjLW11eC5jCj4+
PiBAQCAtMzMxLDcgKzMzMSw2IEBAIGludCBpMmNfbXV4X2FkZF9hZGFwdGVyKHN0cnVjdCBpMmNf
bXV4X2NvcmUgKm11eGMsCj4+PiDCoMKgwqDCoMKgIHByaXYtPmFkYXAub3duZXIgPSBUSElTX01P
RFVMRTsKPj4+IMKgwqDCoMKgwqAgcHJpdi0+YWRhcC5hbGdvID0gJnByaXYtPmFsZ287Cj4+PiDC
oMKgwqDCoMKgIHByaXYtPmFkYXAuYWxnb19kYXRhID0gcHJpdjsKPj4+IC3CoMKgwqAgcHJpdi0+
YWRhcC5kZXYucGFyZW50ID0gJnBhcmVudC0+ZGV2Owo+Pj4gwqDCoMKgwqDCoCBwcml2LT5hZGFw
LnJldHJpZXMgPSBwYXJlbnQtPnJldHJpZXM7Cj4+PiDCoMKgwqDCoMKgIHByaXYtPmFkYXAudGlt
ZW91dCA9IHBhcmVudC0+dGltZW91dDsKPj4+IMKgwqDCoMKgwqAgcHJpdi0+YWRhcC5xdWlya3Mg
PSBwYXJlbnQtPnF1aXJrczsKPj4+IEBAIC0zNDgsNiArMzQ3LDE1IEBAIGludCBpMmNfbXV4X2Fk
ZF9hZGFwdGVyKHN0cnVjdCBpMmNfbXV4X2NvcmUgKm11eGMsCj4+PiDCoMKgwqDCoMKgIGVsc2UK
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBwcml2LT5hZGFwLmNsYXNzID0gY2xhc3M7Cj4+PiDCoCAr
wqDCoMKgIC8qCj4+PiArwqDCoMKgwqAgKiBXaGVuIGNyZWF0aW5nIHRoZSBhZGFwdGVyLCB0aGUg
bm9kZSBkZXZpY2VzIGFyZSBjaGVja2VkIGZvciBpMmMgYWRkcmVzcwo+Pj4gK8KgwqDCoMKgICog
bWF0Y2ggd2l0aCBvdGhlciBkZXZpY2VzIG9uIHRoZSBwYXJlbnQgYWRhcHRlciwgYW1vbmcgd2hp
Y2ggaXMgdGhlIG11eCBpdHNlbGYuCj4+PiArwqDCoMKgwqAgKiBJZiBhIG1hdGNoIGlzIGZvdW5k
IHRoZSBub2RlIGRldmljZSBpcyBub3QgcHJvYmVkIHN1Y2Nlc3NmdWxseS4KPj4+ICvCoMKgwqDC
oCAqIEFsbG93IHRoZSBtdXggdG8gaGF2ZSB0aGUgc2FtZSBhZGRyZXNzIGFzIGEgY2hpbGQgZGV2
aWNlIGJ5IHNraXBwaW5nIHRoaXMgY2hlY2suCj4+PiArwqDCoMKgwqAgKi8KPj4+ICvCoMKgwqAg
aWYgKCEobXV4Yy0+c2hhcmVfYWRkcl93aXRoX2NoaWxkcmVuKSkKPj4+ICvCoMKgwqDCoMKgwqDC
oCBwcml2LT5hZGFwLmRldi5wYXJlbnQgPSAmcGFyZW50LT5kZXY7Cj4+IFRoaXMgaXMgYSBkaXJ0
eSBoYWNrIHRoYXQgd2lsbCBub3QgZ2VuZXJhbGx5IGRvIHRoZSByaWdodCB0aGluZy4KPj4KPj4g
VGhlIGFkYXB0ZXIgZGV2aWNlIHBhcmVudCBpcyBub3QgdGhlcmUgc29sZWx5IGZvciB0aGUgcHVy
cG9zZSBvZgo+PiBkZXRlY3RpbmcgYWRkcmVzcyBjbGFzaGVzLCBzbyB0aGUgYWJvdmUgaGFzIG90
aGVyIGltcGxpY2F0aW9ucwo+PiB0aGF0IGFyZSBub3QgZGVzaXJhYmxlLgo+Pgo+PiBUaGVyZWZv
cmUsIE5BQ0sgb24gdGhpcyBhcHByb2FjaC4gSXQgc2ltcGx5IG5lZWRzIHRvIGJlIG1vcmUgaW52
b2x2ZWQuCj4+IFNvcnJ5Lgo+Pgo+PiBDaGVlcnMsCj4+IFBldGVyCj4+Cj4gCj4gQW5vdGhlciB3
YXkgdG8gYXBwcm9hY2ggdGhpcyBpcyBieSBpbXBsZW1lbnRpbmcgdGhpcyBmbGFnIGFzIGEgcXVp
cmsgZm9yIHRoZSBhZGRlZCBhZGFwdGVyOgo+IAo+ICh0ZXN0ZWQgYnV0IG5vdCBjbGVhbmVkIHVw
KQoKWWVzLCBnb29kIGlkZWEsIHRoaXMgaXMgbXVjaCBtb3JlIHRhcmdldGVkIGFuZCBnZW5lcmFs
bHkgZmVlbHMgYSBsb3QKYmV0dGVyLgoKPiAKPiAiIiIKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9pMmMvaTJjLWNvcmUtYmFzZS5jIGIvZHJpdmVycy9pMmMvaTJjLWNvcmUtYmFzZS5jCj4gaW5k
ZXggZmY1YzQ4NmExZGJiLi42YTAyMzdmNzUwZGIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9pMmMv
aTJjLWNvcmUtYmFzZS5jCj4gKysrIGIvZHJpdmVycy9pMmMvaTJjLWNvcmUtYmFzZS5jCj4gQEAg
LTgyMSw5ICs4MjEsMjEgQEAgc3RhdGljIGludCBpMmNfY2hlY2tfbXV4X2NoaWxkcmVuKHN0cnVj
dCBkZXZpY2UgKmRldiwgdm9pZCAqYWRkcnApCj4gwqBzdGF0aWMgaW50IGkyY19jaGVja19hZGRy
X2J1c3koc3RydWN0IGkyY19hZGFwdGVyICphZGFwdGVyLCBpbnQgYWRkcikKPiDCoHsKPiDCoMKg
wqDCoMKgwqDCoCBzdHJ1Y3QgaTJjX2FkYXB0ZXIgKnBhcmVudCA9IGkyY19wYXJlbnRfaXNfaTJj
X2FkYXB0ZXIoYWRhcHRlcik7Cj4gK8KgwqDCoMKgwqDCoCBib29sIHNraXBfY2hlY2sgPSBmYWxz
ZTsKPiDCoMKgwqDCoMKgwqDCoCBpbnQgcmVzdWx0ID0gMDsKPiAKPiAtwqDCoMKgwqDCoMKgIGlm
IChwYXJlbnQpCj4gK8KgwqDCoMKgwqDCoCBpZiAoYWRhcHRlci0+cXVpcmtzKSB7Cj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoYWRhcHRlci0+cXVpcmtzLT5mbGFncyAmIEky
Q19BUV9TSEFSRV9BRERSKSB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQgPSBvZl9maW5kX2kyY19kZXZpY2Vf
Ynlfbm9kZShhZGFwdGVyLT5kZXYub2Zfbm9kZS0+cGFyZW50KTsKPiArCj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChjbGllbnQpIHsKPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNr
aXBfY2hlY2sgPSBjbGllbnQtPmFkZHIgPT0gYWRkcjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHB1dF9kZXZpY2UoJmNsaWVu
dC0+ZGV2KTsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+ICvCoMKgwqDCoMKgwqAgfQo+
ICsKPiArwqDCoMKgwqDCoMKgIGlmIChwYXJlbnQgJiYgIXNraXBfY2hlY2spCj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlc3VsdCA9IGkyY19jaGVja19tdXhfcGFyZW50cyhwYXJl
bnQsIGFkZHIpOwo+IAo+IMKgwqDCoMKgwqDCoMKgIGlmICghcmVzdWx0KQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2kyYy9pMmMtbXV4LmMgYi9kcml2ZXJzL2kyYy9pMmMtbXV4LmMKPiBpbmRleCA1
N2ZmMDlmMThjMzcuLmU4N2NiMGU0MzcyNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2kyYy9pMmMt
bXV4LmMKPiArKysgYi9kcml2ZXJzL2kyYy9pMmMtbXV4LmMKPiBAQCAtMzM0LDcgKzMzNCwyNiBA
QCBpbnQgaTJjX211eF9hZGRfYWRhcHRlcihzdHJ1Y3QgaTJjX211eF9jb3JlICptdXhjLAo+IMKg
wqDCoMKgwqDCoMKgIHByaXYtPmFkYXAuZGV2LnBhcmVudCA9ICZwYXJlbnQtPmRldjsKPiDCoMKg
wqDCoMKgwqDCoCBwcml2LT5hZGFwLnJldHJpZXMgPSBwYXJlbnQtPnJldHJpZXM7Cj4gwqDCoMKg
wqDCoMKgwqAgcHJpdi0+YWRhcC50aW1lb3V0ID0gcGFyZW50LT50aW1lb3V0Owo+IC3CoMKgwqDC
oMKgwqAgcHJpdi0+YWRhcC5xdWlya3MgPSBwYXJlbnQtPnF1aXJrczsKPiArwqDCoMKgwqDCoMKg
IC8qCj4gK8KgwqDCoMKgwqDCoMKgICogV2hlbiBjcmVhdGluZyB0aGUgYWRhcHRlciwgdGhlIG5v
ZGUgZGV2aWNlcyBhcmUgY2hlY2tlZCBmb3IgaTJjIGFkZHJlc3MKPiArwqDCoMKgwqDCoMKgwqAg
KiBtYXRjaCB3aXRoIG90aGVyIGRldmljZXMgb24gdGhlIHBhcmVudCBhZGFwdGVyLCBhbW9uZyB3
aGljaCBpcyB0aGUgbXV4IGl0c2VsZi4KPiArwqDCoMKgwqDCoMKgwqAgKiBJZiBhIG1hdGNoIGlz
IGZvdW5kIHRoZSBub2RlIGRldmljZSBpcyBub3QgcHJvYmVkIHN1Y2Nlc3NmdWxseS4KPiArwqDC
oMKgwqDCoMKgwqAgKiBBbGxvdyB0aGUgbXV4IHRvIGhhdmUgdGhlIHNhbWUgYWRkcmVzcyBhcyBh
IGNoaWxkIGRldmljZSBieSBza2lwcGluZyB0aGlzIGNoZWNrLgo+ICvCoMKgwqDCoMKgwqDCoCAq
Lwo+ICvCoMKgwqDCoMKgwqAgaWYgKCFtdXhjLT5zaGFyZV9hZGRyX3dpdGhfY2hpbGRyZW4pCj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcHJpdi0+YWRhcC5xdWlya3MgPSBwYXJlbnQt
PnF1aXJrczsKPiArwqDCoMKgwqDCoMKgIGVsc2Ugewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHN0cnVjdCBpMmNfYWRhcHRlcl9xdWlya3MgKnF1aXJrcyA9IGt6YWxsb2Moc2l6ZW9m
KCpxdWlya3MpLCBHRlBfS0VSTkVMKTsKClRoaXMgbGVha3MsIGRldl9remFsbG9jPwoKPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoIXF1aXJrcykKPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FTk9NRU07Cj4gKwo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChwYXJlbnQtPnF1aXJrcykKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKnF1aXJrcyA9ICoocGFyZW50LT5x
dWlya3MpOyAvLyBAZml4bWUgbWVtY3B5Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHF1aXJrcy0+ZmxhZ3MgfD0gSTJDX0FRX1NIQVJFX0FERFI7Cj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcHJpdi0+YWRhcC5xdWlya3MgPSBxdWlya3M7Cj4gK8KgwqDCoMKgwqDC
oCB9Cj4gKwo+IMKgwqDCoMKgwqDCoMKgIGlmIChtdXhjLT5tdXhfbG9ja2VkKQo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwcml2LT5hZGFwLmxvY2tfb3BzID0gJmkyY19tdXhfbG9j
a19vcHM7Cj4gwqDCoMKgwqDCoMKgwqAgZWxzZQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4
L2kyYy1tdXguaCBiL2luY2x1ZGUvbGludXgvaTJjLW11eC5oCj4gaW5kZXggOThlZjczYjdjOGZk
Li4xN2FjNjhiZjE3MDMgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9pMmMtbXV4LmgKPiAr
KysgYi9pbmNsdWRlL2xpbnV4L2kyYy1tdXguaAo+IEBAIC0yMSw2ICsyMSw3IEBAIHN0cnVjdCBp
MmNfbXV4X2NvcmUgewo+IMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCBtdXhfbG9ja2VkOjE7
Cj4gwqDCoMKgwqDCoMKgwqAgdW5zaWduZWQgaW50IGFyYml0cmF0b3I6MTsKPiDCoMKgwqDCoMKg
wqDCoCB1bnNpZ25lZCBpbnQgZ2F0ZToxOwo+ICvCoMKgwqDCoMKgwqAgdW5zaWduZWQgaW50IHNo
YXJlX2FkZHJfd2l0aF9jaGlsZHJlbjoxOwo+IAo+IMKgwqDCoMKgwqDCoMKgIHZvaWQgKnByaXY7
Cj4gCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvaTJjLmggYi9pbmNsdWRlL2xpbnV4L2ky
Yy5oCj4gaW5kZXggNWU2Y2Q0M2E2ZGJkLi4yZWJhYzllNjcyZWYgMTAwNjQ0Cj4gLS0tIGEvaW5j
bHVkZS9saW51eC9pMmMuaAo+ICsrKyBiL2luY2x1ZGUvbGludXgvaTJjLmgKPiBAQCAtNzExLDYg
KzcxMSw4IEBAIHN0cnVjdCBpMmNfYWRhcHRlcl9xdWlya3Mgewo+IMKgI2RlZmluZSBJMkNfQVFf
Tk9fWkVST19MRU7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKEkyQ19BUV9OT19aRVJPX0xFTl9S
RUFEIHwgSTJDX0FRX05PX1pFUk9fTEVOX1dSSVRFKQo+IMKgLyogYWRhcHRlciBjYW5ub3QgZG8g
cmVwZWF0ZWQgU1RBUlQgKi8KPiDCoCNkZWZpbmUgSTJDX0FRX05PX1JFUF9TVEFSVMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgQklUKDcpCj4gKy8qIEBmaXhtZSBkb2N1bWVudCBhbmQgZmluZCBwcm9w
ZXIgbmFtZSAqLwo+ICsjZGVmaW5lIEkyQ19BUV9TSEFSRV9BRERSwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgQklUKDgpCj4gCj4gwqAvKgo+IMKgICogaTJjX2FkYXB0ZXIgaXMgdGhlIHN0cnVj
dHVyZSB1c2VkIHRvIGlkZW50aWZ5IGEgcGh5c2ljYWwgaTJjIGJ1cyBhbG9uZwo+IAo+ICIiIgo+
IAo+IFRoaXMgd29ya3MsIGhvd2V2ZXIgdGhpcyBvbmx5IHN1cHBvcnRzIGRldmljZS10cmVlIGJl
Y2F1c2Ugb2Ygb2ZfZmluZF9pMmNfZGV2aWNlX2J5X25vZGUuIElmIHdlIHdhbnQgdG8gc3VwcG9y
dCBhY3BpIHRoZW4gd2UgY2FuIGVpdGhlcjoKPiAKPiAKPiAxLiBHZXQgdGhlIE11bGUgaTJjIGRl
dmljZSBhZGRyZXNzIGZyb20gZndub2RlX2dldF9uZXh0X3BhcmVudF9kZXYgYnV0IHRoaXMgaXMg
c3RhdGljIHNpbmNlIHY2LjktcmN4Lgo+IAo+IDIuIFBhc3MgdGhlIE11bGUgaTJjIGRldmljZSBh
ZGRyZXNzIGFzIGEgbmV3IG1lbWJlciBvZsKgIHN0cnVjdCBpMmNfYWRhcHRlcl9xdWlya3MuCj4g
Cj4gCj4gSSB3b3VsZCBnbyBmb3IgMi4gRG8geW91IHN1Z2dlc3Qgc29tZXRoaW5nIGVsc2U/CgpZ
ZXMsIDIgaXMgZGVmaW5pdGVseSBuZWF0ZXIuCgpUaGFua3MhCgpDaGVlcnMsClBldGVyCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
