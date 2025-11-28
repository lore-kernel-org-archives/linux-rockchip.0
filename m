Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1493CFD376
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Nov 2025 12:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FGpBHJjf5Afa5xcdP2TX8Ueig9p2B4JtL7XsLDakErg=; b=W3ZxrRt3SWQlzVBslp57Si8mEc
	zhbfMLLtZ40qS0oQwe5GCJMJAJCCcqIDj7HAyCAQGdH8N1T8QUbotq2o76RY34cQ2NKZhqVxqD+5S
	RtN5uVWdbsoF0/YJiA/yM1d0iEn4NWtFlIkdXn9YHN9HPLK5Vx2O0Cz5rVk6spDtB7nDjH2onFa0l
	8c/Km2chz/8iA+1TZU1fd7d5GBnMJcDsqm3u3ye6jyxQrDPSkyFoj+/noXoOYZ6Maf2KjjFfyOJZM
	PFC4AnEOq0O+fvjWKXLv0eIG3BvC+axedp/FWuuN56KIDf72HAoUIkRzTpw3j3eIIRYh71rljxRXY
	E30fMLMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOxgT-00000000Qqq-1WrB;
	Fri, 28 Nov 2025 12:34:45 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOxgR-00000000QqV-0eaN
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Nov 2025 12:34:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Aoxlxig2NlRMxlKsudtVI6AKUlgK8UzDHtQsZv6ou57CtZ2NEpZkod2rwFGxRQ1sMP0o3k0IODyRc+1qEcvGsApXvRCwWTNhdHI//gzMPzlDLeQ8ji/oVZcYMWPPfGcerr5qCTI0iPDihehaPKMIFJI9hu7JFA/z0UFFAZ8FA5Vi4aIEiFlBGkJi079nnYef3pY01rxNeSjy2lGRzjqSHLXRjj5JK4dZzdBeHvULp2m231E1klt9frnVOo2eMv3gftZweqMe7RDBSXmgcRQFUIxlmN7ewSeiSw3fk0BLFPBhU/RcaDaDSHETHuzq9Gs2YuGK1hgVui2cRBU3bBDJsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cXMP9Yi2It1jezvWlLJfF7viDbAFxjuqIQePiOvdTD0=;
 b=vE0pcesIQFKZgvgxQqMBSt/oOehL704S1LSS91NguBY4QgZsgKzQ/UXEdzYyMCbw7mTKabitHl1iRLzxMVSFgu/YSRAAN4AKZh5Boi0m5rwzW/92QeE7LZe6d2N3CSxutageD26z934JYhjnvvSp+/dh94yW7txGuOwNjw219DrUyEEb1tbl6x+WvUsTJMvmlpjLX++pPq0+mjGuX56iLUcqoc3xSxjHWuAytlGmcrG/MqfwmtvM2u8ITmd3RocpdEBtZ1VwATb6mrp/mRaOW3kqoxhRc8TZnMDSatq3zjSWiVqeEndH/f6FbbyCHgdRvQkaW6DHNNrb+NSS8P50oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cXMP9Yi2It1jezvWlLJfF7viDbAFxjuqIQePiOvdTD0=;
 b=Yo7ZNFooWvI8lRSK0vHeQKnV2+ZgGAiFwTXWL9/6gLAh217AxMIsSQQk/nsgtGM+imrmvfEUOFkYVLNjtJ6modxLy4ZsIdBQ9yZoHnKlwy5rYSnvGLcj1PHuK70+EouEVMmrrCHKVCn0SliOc/zvG9JiBf1US3cgsUxGniVxPh0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com (2603:10a6:150:2be::5)
 by GVXPR04MB10706.eurprd04.prod.outlook.com (2603:10a6:150:219::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.15; Fri, 28 Nov
 2025 12:34:37 +0000
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::1033:5a9a:dc18:dad]) by GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::1033:5a9a:dc18:dad%4]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 12:34:36 +0000
Message-ID: <ffe5e4d1-49d8-4075-a5c4-6f27dda7f35a@cherry.de>
Date: Fri, 28 Nov 2025 13:33:55 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Fix audio-supply for ROCK Pi 4
To: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de,
 Alex Bee <knaerzche@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 knaerzche@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
References: <20251027005220.22298-1-naoki@radxa.com>
 <acfc2185-0cb9-4620-abdb-ee25028e8374@cherry.de>
 <a93ace02-a952-4727-957b-0ed790b47676@cherry.de>
 <20486653DCCA80ED+7f87a03c-519e-4d6a-a47c-7670e5ae502c@radxa.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20486653DCCA80ED+7f87a03c-519e-4d6a-a47c-7670e5ae502c@radxa.com>
X-ClientProxiedBy: WA2P291CA0016.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::12) To GVXPR04MB12038.eurprd04.prod.outlook.com
 (2603:10a6:150:2be::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12038:EE_|GVXPR04MB10706:EE_
X-MS-Office365-Filtering-Correlation-Id: 5347e42d-caa0-47c9-34c2-08de2e7a7de2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|10070799003|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NkNJU2lmRlJpTHBGeHplYklUSElqc2lIWm1QUHlxRTNVSzB5OG0xT3p0VmhE?=
 =?utf-8?B?MmtsTThvL0J0N1J6NVBDd2tsQUNjWmJpYXdoZm54MzFlVHU3djdPZHltTnJI?=
 =?utf-8?B?MXFzZmRzNEhCUTdqRjhvbHpQeUVPcU5PZHUySW05dElweDBPQXJMWDVhZU1t?=
 =?utf-8?B?QzZGWVlvUWRvMWF3c0I5aWR1QlYrbkF6cUZFZEhHMnZNWXdCQUFrbCt5aWFr?=
 =?utf-8?B?dlJyMHQ1V1AyMTJNbGNzL0YrQW5IL1RsZFB4ZjRjVWcyTkNBSUZVNnlEWjhy?=
 =?utf-8?B?eXdNTHBlK3pMcThQQkRGWmgxc2ZnMno4VHVWaE8yMms1R1JKWDBVd0I0cW9i?=
 =?utf-8?B?ZlBMNi9KNUh4clRXSlBGZ204eUlLQVQzZXIwTmc4YzgyalNWM3lSY0o2WU94?=
 =?utf-8?B?U1hGSzdLbTdWdlBpSlJYR0tTODRnUm1zVjJSaHlQYkdvaXdzSVIvSGV5N2kv?=
 =?utf-8?B?V1pHdWllZGFYZCtmZTBQeGQxNEVjeGhxY2plSGJwWWZIVzJ3STdWbG0zcHNs?=
 =?utf-8?B?azE1d3dDVDRKNVJIMEZOQmYweEN4cVlhTEdnbU5OdTVSNEFmcXp5ekFzZTlt?=
 =?utf-8?B?c2VrUkxlRmw1RDFOdjhUMWNEdjNVM2tuUmRjZnRmOXFaV1FXWXhPUXlRaFc0?=
 =?utf-8?B?YlZ4MGxGTGF5bkZ0eXhwdy9nKzJnMStxRkdGc01FcU5wV0VUMTdCbEdiQmF2?=
 =?utf-8?B?c2VTL1ViTWsyUmkyeWdOWjV6OGJjbzhqUHdpSW9PaVBCL051SkFXUGdaWU1w?=
 =?utf-8?B?c1p2eFpaM2Ftb25TVjMvZXFHTktZRzhkY1FWUGRGV29MVnBLWFhDbXRPbUNr?=
 =?utf-8?B?YzROMEtHUUJZL3ZCWnJPVFNQK1BUK0h4NVZ3TlVDU0ZnSXBEbWhoMVBVY2hQ?=
 =?utf-8?B?aFEwN3RwbXd4Q0kvSzRXUFdneEs3aUljd3U2eDJhcmgzOHN0UHUzQzlvWklV?=
 =?utf-8?B?UTFFM3I5RmkxaTFscDh5S05YZitnRGZQSG9uUWxvWXJkNXhWa05sMnV4V1FD?=
 =?utf-8?B?bWQwODY5dUtlN1pLbHBWTlpXL3BSTWFKalZRU3d3dU9uUzZneTN6YzJNaUJV?=
 =?utf-8?B?RlFtc05ob2xHS0c1d1hjTTNmbkJpbHYzUk5OTW5iOFIyY0J6dmZXcXZub0Ey?=
 =?utf-8?B?WHVYNHc5eE5DUXZuVHNjcjFKZGVVQllZcDBHaG9ESGJLYUptUU9CYlBiWGY2?=
 =?utf-8?B?TGVnaklMYWFnbmRiTjJGbC9XVEpLNkZPS1o1M1lKYkQzcDZjOU5rTU9Ga3RU?=
 =?utf-8?B?V2lNd3IrM0VOeG5xVzNWSlBPT3VLUTVnL2tYcDZWNGEzZzlRRW45REhVdS9o?=
 =?utf-8?B?Y25NNkJOeGIrWUIvbTYyKzJJNlBNS2ZLT1NQR2NrODc1VEFoeldLTERaWnJo?=
 =?utf-8?B?VXNuNzFaVi9hVEtqU3g2ZnZwanJmY2pBL3lPTU41aGpOTEJqYURJRW1aQ0R0?=
 =?utf-8?B?Y3lTYTlweXErY0xzYm1EYTR0NXZ3QWZyNk5XdXBBbzZVRXJwNktuaElXWUpm?=
 =?utf-8?B?cFhlKzJ3MXA2TmdvZi9YVk0xNDhvVVpxSlRqZFhoS3c1OFBUQThhYWpDWlFF?=
 =?utf-8?B?UkxLbDllVVJoVWJYUW5KOTZ6UU9UZUt3N2lwT0RkV0lDdmk3M0NsaUhtRmtR?=
 =?utf-8?B?MFNrVXlpYTdzQ25SL2o4bDZHSFpGUDBWLzNKTk9OUi9KTnJkM2xGNy9nbWRk?=
 =?utf-8?B?UEZqY3lrZUxaSzR2MTNjYmxxeTVMYVhEVEM1RnNiS21KRHdzK201Rmc4eTZT?=
 =?utf-8?B?V0ZMb3hObDlFTHhaKytQRnA0TlJiR2NSUmsybk9QWjF5bnlaakhDZ0NnUUh1?=
 =?utf-8?B?dW5JMnZTNUJFTlJHTEVDZFNFUDl1VHRHZkt2Mk9Yb05OWUhBL2FJTG1FZy9H?=
 =?utf-8?B?azU2RGRJWG9rZ2J3eTVjZEVkbzhsUm9lYjlXS250YVFaSHhrVldFY0tlYnlI?=
 =?utf-8?Q?PkRf/jI5q+uHO+TDJBcEalzCpnURcN1z?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12038.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VHRDdldwd083cnROUmJNSGxLME1EU1VKNjJFWS8weWh2eUJ5a00wODNJSzVY?=
 =?utf-8?B?Zis0RUtmTnhPaW5ob1RTelZZWTFXYTVhRDNMZEc1ejFQaU5rYjNDOEFBZlNX?=
 =?utf-8?B?a0dyVGl1ZTk4aDdMb2dTTXpCaWl4UnlKOUxlZGtwdDQ1eTVjTkdIejFobFZE?=
 =?utf-8?B?QVBnNUZMQTJpRnNnL2h1Y3hQOEhXSFFkRlJ5WkdVbzJNQTJvbUpKSE9HSEdV?=
 =?utf-8?B?V2FBUUc3NGFtbVF5akErZ1luQnREM2VQSklHRWRCdi84ZFdibENNMmRtVnJm?=
 =?utf-8?B?ZWdzNUNqVlg2RFl2VHBFQnh0MmROZlhuZ0RHMHpkTlBmVGlWaHFIK0lQYlN5?=
 =?utf-8?B?a2NsYVZPZ3ZoYVBrRDMxMEZOS2RkdWRWeUdGK3JCeEh1bFBKems3MXk5L0tS?=
 =?utf-8?B?R3JiSU1Mb3lHMG52YlM3TkpVSDlFZHcyd0JPY1JXRG9FOEtzbEhDTU5MRDVo?=
 =?utf-8?B?M2VhVXMzNllvR0V0VWV5SnVkbGN3VWt6SmFoelhJMWM5VTcrK2c3UFIwS0JR?=
 =?utf-8?B?SFJBYndLcGxDRGdYQk1EaTRBTmFpTnNkNXoyMzNnbUljVlRaYmwzd2hkZEV3?=
 =?utf-8?B?cTFTWDlQTmZic1VxZUVlYVpjaEt0MlVqamdzRDNGQ1B2ZlFQcHpEOWFGNkp0?=
 =?utf-8?B?T0djZFpoaFg1QzRGc2Roa3k0Q0xnb1ljMmZFOU1BejJzcTQxWXYxczFZMnRM?=
 =?utf-8?B?VmlXUmt3b1NUaGlPQXJoYi9Xdm1HbGl0YkVEQWFoWUp0QU9NaUR5K1ZwWVJu?=
 =?utf-8?B?cTlzLzBpd1pvOXNpMnppdG0zQTIxZ2gyK21ldHJkSnZ2U3hyMnEraGhnT0JL?=
 =?utf-8?B?Nll6NHg5ZkYyMTdudDhLdXVEaUZlTU1YdXJqUDJPMzI2KzFEYVFYNFMyOGhw?=
 =?utf-8?B?YnJHNW13UlNFd2xKMysreFRKRE5jTXVrd0ZFNCtXLzdacU1lZkVhK25Id1dW?=
 =?utf-8?B?UWQ2MHFOdURudTVkZVdNTDl4L1RLbExKaUZPOEx5ZjVtWGNIZ3IwZnhqTms2?=
 =?utf-8?B?bEN5UXdCcWJVUzJaQjVwbW55REFqN1pCVXJ6T3B2VzU1c0Eyamhhc0pBdXpF?=
 =?utf-8?B?bDd5SUZob0lELzNtU1d2YlRUTUVpKzhHT3hKOW56YW9acW1Vd1VobHJremkv?=
 =?utf-8?B?NHJ4OGsreWZHZE5RYnRYRjFzVmhhY2FwRzZOaTM0M3Z2bEVyQTJLZ1UvUW9w?=
 =?utf-8?B?alZ3SmZVcUhRYzhQRmI3K0tVTlVTV0xGVjlBdHJib1o0WXNJTzNESVdueUJW?=
 =?utf-8?B?UzF5REozazhFcE83VnpKS25OZ0txcEsydFdxWUpsb1pROXJJbDZMTWhwSXlR?=
 =?utf-8?B?bjdUczBRekZKUkY3MDYxeElkWXpFVmN2Nm1wV3Q3Q0xNSkJ0TVZETzgxOUpq?=
 =?utf-8?B?bHp2Q05lUUJMeDJucGltS1lFZldxSU8wT2k5S0ZJeTNiODZhTlVKQ1VNYWVr?=
 =?utf-8?B?UGtrNlVuQlpZZEMrRjQ4QVJXRytxSzBnRkNzRnZGb043dFJlRmNCS0lTbHkr?=
 =?utf-8?B?OEptTGlqL1pmZXBadXNCNEI3QmlvdmR6UVN2NU83M05kcC9IVTJpUXNzL3VK?=
 =?utf-8?B?Wk0rZ1JYVlZZaWljbjBPZnRWNG9JbHJzZzRKRUIvekU2cXlSM0xlYTV3dVc2?=
 =?utf-8?B?M1dhbFh0dkNoNkphYng0Rm9YV2drcHlPNy9uNWE0TTRyODdQcXA0aUFGTXpx?=
 =?utf-8?B?LzlXdHJPZUNYM0JRMjcvZzZ5Z2RoMXVLdFBKY3k0bmx5STRVSkppZG9pVzFl?=
 =?utf-8?B?Nmo3TGtQRytEQnZVY0tQUmRuS3Y1UkxmUmRMRythZTZoayt4ZnlSMUVENFRW?=
 =?utf-8?B?VGh1MHA3a2g0QnExVXloU3pCcWlWdHZ4U3Z1WW1pbVV1OGRwV09Mb3lVOHBT?=
 =?utf-8?B?MU1IN0xwR280aDFFNTVCMEtNdHdOYWd6Rk9BbGlzeFdGcGVzckdVSXRWZXZk?=
 =?utf-8?B?ZE5uR0lDeEN3ZlVWc1ZpMWNpOEY4U01reFluem5ZVHhTNHZVKzZvMjFPNjAr?=
 =?utf-8?B?NklORGM3aHlKaDR0TG9jV21QRC81VmRFOHdVUWVKYTRhTTE4K3kxZjg3REdo?=
 =?utf-8?B?Nkt1dVFsajNhMjZBc2xtRHFjQ1NJajZmVWlraTJXaGFxSE1MVjVtNzdualVM?=
 =?utf-8?B?cWNvWXBQWVNaTjdTYXhhUHpSTy91czAweE9nTTcrcG1uZUptZkJRWkNLRlVJ?=
 =?utf-8?Q?ldx3nxepNhLap6GgnSP7TkQ=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 5347e42d-caa0-47c9-34c2-08de2e7a7de2
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12038.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 12:34:36.7508
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D6FbrRlezjInQFWdBzzzHlreQ+Mfl7DV43JDOgPCoq8MzBZHRucIqpXNCWDWAN1vOl1yv9ZgUzmJs0Pc6ZFjAHBUUbBFnuJpHP69lskVoPU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB10706
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_043443_229631_A64ED61A 
X-CRM114-Status: GOOD (  18.26  )
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

SGkgTmFva2ksCgpPbiAxMS8yOC8yNSAxOjA5IFBNLCBGVUtBVU1JIE5hb2tpIHdyb3RlOgo+IEhp
IFF1ZW50aW4sCj4gCj4gT24gMTEvMjgvMjUgMTk6MjQsIFF1ZW50aW4gU2NodWx6IHdyb3RlOgo+
PiBIaSBOYW9raSwKPj4KPj4gT24gMTEvMjcvMjUgNDoyMCBQTSwgUXVlbnRpbiBTY2h1bHogd3Jv
dGU6Cj4+PiBIaSBOYW9raSwKPj4+Cj4+PiBPbiAxMC8yNy8yNSAxOjUyIEFNLCBGVUtBVU1JIE5h
b2tpIHdyb3RlOgo+Pj4+IFRoaXMgcmV2ZXJ0cyBjb21taXQgODI0MGU4N2YxNmQxNyAoImFybTY0
OiBkdHM6IHJvY2tjaGlwOiBmaXgKPj4+PiBhdWRpby1zdXBwbHkgZm9yIFJvY2sgUGkgNCIpLgo+
Pj4+Cj4+Pj4gRml4IHRoZSBBUElPNV9WREQgcG93ZXIgc3VwcGx5IHRvIHZjY18zdjAgYXMgcGVy
IHRoZSBzY2hlbWF0aWNzWzFdWzJdCj4+Pj4gWzNdWzRdWzVdLgo+Pj4+Cj4+Pj4gVGhpcyBmaXhl
cyB0aGUgU1BJLU5PUiBmbGFzaCBwcm9iZSBmYWlsdXJlIHdoZW4gdGhlIGJsdWUgTEVEIGlzIG9u
WzZdLAo+Pj4+IGFuZCB0aGUgZ2FyYmxlZCBzZXJpYWwgY29uc29sZSBvdXRwdXQgb24gTGludXgu
Cj4+Pj4KPj4+PiBUaGUgRVM4MzE2IGhlYWRwaG9uZSBhbmQgbWljcm9waG9uZSBhcmUgY29uZmly
bWVkIHRvIHdvcmsgY29ycmVjdGx5Cj4+Pj4gYWZ0ZXIgdGhpcyBmaXguCj4+Pj4KPj4KPj4gUGxl
YXNlIHRlc3QgdGhlIEVTODMxNiB3b3JrcyB3aGVuIGJvb3RpbmcgTGludXggZnJvbSBhIFUtQm9v
dCB3aGVyZSAKPj4gUk9DS0NISVBfSU9ET01BSU4gYW5kIFNQTF9ST0NLQ0hJUF9JT0RPTUFJTiBp
cyAqZGlzYWJsZWQqLgo+IAo+IEkgdHJpZWQgYmVsb3csIGFuZCBjb25maXJtZWQgdGhhdCBFUzgz
MTYgaXMgc3RpbGwgd29ya2luZy4KPiAKPiBkaWZmIC0tZ2l0IGEvY29uZmlncy9yb2NrLXBpLTQt
cmszMzk5X2RlZmNvbmZpZyBiL2NvbmZpZ3Mvcm9jay1waS00LSAKPiByazMzOTlfZGVmY29uZmln
Cj4gaW5kZXggMjE5ZjQyYmM3ZDQuLjI3NmNhOTYxYzEwIDEwMDY0NAo+IC0tLSBhL2NvbmZpZ3Mv
cm9jay1waS00LXJrMzM5OV9kZWZjb25maWcKPiArKysgYi9jb25maWdzL3JvY2stcGktNC1yazMz
OTlfZGVmY29uZmlnCj4gQEAgLTUzLDYgKzUzLDcgQEAgQ09ORklHX1JPQ0tDSElQX0dQSU89eQo+
ICDCoENPTkZJR19TWVNfSTJDX1JPQ0tDSElQPXkKPiAgwqBDT05GSUdfTEVEPXkKPiAgwqBDT05G
SUdfTEVEX0dQSU89eQo+ICsjIENPTkZJR19ST0NLQ0hJUF9JT0RPTUFJTiBpcyBub3Qgc2V0Cj4g
IMKgQ09ORklHX01NQ19EVz15Cj4gIMKgQ09ORklHX01NQ19EV19ST0NLQ0hJUD15Cj4gIMKgQ09O
RklHX01NQ19TREhDST15Cj4gZGlmZiAtLWdpdCBhL2R0cy91cHN0cmVhbS9zcmMvYXJtNjQvcm9j
a2NoaXAvcmszMzk5LXJvY2stcGktNC5kdHNpIGIvIAo+IGR0cy91cHN0cmVhbS9zcmMvYXJtNjQv
cm9ja2NoaXAvcmszMzk5LXJvY2stcGktNC5kdHNpCj4gaW5kZXggMDQ2ZGJlMzI5MDEuLmM3MzRm
NzgyNGMwIDEwMDY0NAo+IC0tLSBhL2R0cy91cHN0cmVhbS9zcmMvYXJtNjQvcm9ja2NoaXAvcmsz
Mzk5LXJvY2stcGktNC5kdHNpCj4gKysrIGIvZHRzL3Vwc3RyZWFtL3NyYy9hcm02NC9yb2NrY2hp
cC9yazMzOTktcm9jay1waS00LmR0c2kKPiBAQCAtNTEsNyArNTEsNyBAQAo+IAo+ICDCoMKgwqDC
oMKgwqDCoCBzb3VuZDogc291bmQgewo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Y29tcGF0aWJsZSA9ICJhdWRpby1ncmFwaC1jYXJkIjsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBsYWJlbCA9ICJBbmFsb2ciOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGxhYmVsID0gInJrMzU4OC1lczgzMTYiOwo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgZGFpcyA9IDwmaTJzMF9wMD47Cj4gIMKgwqDCoMKgwqDCoMKgIH07Cj4gCj4gQEAgLTUxNiw3
ICs1MTYsNyBAQAo+ICDCoH07Cj4gCj4gIMKgJmlvX2RvbWFpbnMgewo+IC3CoMKgwqDCoMKgwqAg
YXVkaW8tc3VwcGx5ID0gPCZ2Y2NhMXY4X2NvZGVjPjsKPiArwqDCoMKgwqDCoMKgIGF1ZGlvLXN1
cHBseSA9IDwmdmNjXzN2MD47Cj4gIMKgwqDCoMKgwqDCoMKgIGJ0NjU2LXN1cHBseSA9IDwmdmNj
XzN2MD47Cj4gIMKgwqDCoMKgwqDCoMKgIGdwaW8xODMwLXN1cHBseSA9IDwmdmNjXzN2MD47Cj4g
IMKgwqDCoMKgwqDCoMKgIHNkbW1jLXN1cHBseSA9IDwmdmNjX3NkaW8+Owo+IAo+IE5vdGVzOgo+
IC0gU1BMX1JPQ0tDSElQX0lPRE9NQUlOIGlzIG5vdCBzZXQgYnkgZGVmYXVsdAo+IC0gSSBkb24n
dCB1bmRlcnN0YW5kIGFsc2EgdWNtMiA7KSBzbyBJIG1vZGlmaWVkIC9zb3VuZC9sYWJlbAo+IAoK
VGhhbmtzIGZvciB0ZXN0aW5nLiBMZXQncyBob3BlIHRoZSBvcmlnaW5hbCBpc3N1ZSBkb2Vzbid0
IGFwcGVhciBmb3IgCipzb21lKiBib290cyAoZGVwZW5kaW5nIG9uIHByb2JlIG9yZGVyIG9yIHNv
bWUgdGltaW5nIGZvciBleGFtcGxlKS4gRm9yIApub3cgSSBndWVzcyB0aGlzIHdpbGwgZG8uIEFk
ZGluZyBBbGV4IGluIENjIG1heWJlIHRoZXkgYXJlIGFibGUgdG8gCnJlcHJvZHVjZSB0aGUgaXNz
dWUgdGhleSBoYWQgNCB5ZWFycyBhZ28gd2l0aCB0aGVpciBib2FyZD8KCkNoZWVycywKUXVlbnRp
bgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
