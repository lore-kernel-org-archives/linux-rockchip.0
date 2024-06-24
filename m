Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B534DC2D0D1
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 16:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JDTwGAF0Chs6Lz+EDcWMmVlsieaLvXOjXjZQwSMpm98=; b=DAzOKz2g7dY5eWuuJcELwTx7w4
	Rhtw3ZBE4+Ce5fQNXBKTzZcimyhE/TqXLoDhbis6W+5egQo6VUxEIkNdbO+08ufvOk01tkBwpNj20
	wu3P1QHa26EPUrfX36XoZtPZBdDzmPKkOoObu3YZAFx80o1vDT3+iHOY+wPkokvTZLGvyx7g+XQT6
	ZS5lzNX18CDH5E5yVIgUwCteZ0TKyH+MPwPlLC/f+wdIJx291BXeso4EYHu0LIrGu/SLVZkDWJ68u
	AIrz4h/Pr80wFaBuXS+er+gvQJNCS3WpCDc3JIJDqB8uB1QDmP7M0jfMt45ngpUX9O5L55AXWRWB7
	Gn/oZidg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLmsq-0000000Haec-0rq5;
	Mon, 24 Jun 2024 16:49:36 +0000
Received: from mail-dbaeur03on20700.outbound.protection.outlook.com ([2a01:111:f403:260d::700] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLmsi-0000000HaaF-3rtD;
	Mon, 24 Jun 2024 16:49:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YyWqMUaLe1/gL2hfJD/ZbCeQELQkVvlTGcbky9QMvCtQCrE2e2DIRh3IVP5weRrELEe+uQ/zjX6DrbAWq3v4M4Ajc0vuQ4awgkhvz6zokEm4aPGloajVrVNH/3nc5SzqtvTwJKKTZsbazpFfqpU8lgf15SE8l8gPT73+bmy9nYg9wPldNu5prIvA6JAjbGX3Yq2ECPv6HuNPHSv6OHdMV2XzlqAzrX1krd8wXINLFmIxoB8/qeLA7SEnOya3vRwGsQfrEyHehdVHIHA/92+KxSbBK3YMA8X6Ij4QiLE6p85wq6gGUHU1arBpNE/EfRqOxLOuzZR6mJJIuhm5q5F3og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S4P0ukP5raK5cf9traNdXz8zmugJXm5MwHFQT4ceAYc=;
 b=EMPf1WFuVQ9SN9ihlh9qrBJuGLekFabshgFjPYxfGWA08TfxH8MkfITQMMOldyAxZo2ymYMe1WogFkwS5KeO9hdnzg2bge+a7ilfndaFYnazRmjHkCjvNQXP5UJVDKGZVUYOMaSuLk8sFV69HMhnK78ghZ2RsilrVWnwBSGFib6f9FqzRxeIRmKWTVYMK62L/yoPNBLtG1OvG8mW0IGJFftACXLCu5kKb3Lzp+ud/ahBdiaKMT8RIpLS5A0Wh5Xub3h/qbVhvLn85Fzk9N47bRcAe+k8/UxdDw52PJYqO62t0pjtHrRmUTxkDFC48c+cw7NCR6XyZZZvO6jHp8TyiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S4P0ukP5raK5cf9traNdXz8zmugJXm5MwHFQT4ceAYc=;
 b=audRNkfG1w+UUFwb9i26jGb8yoYBz8M+Ugak/r0DJNnBgPn/ZHm+MPpmD2VltWwmuXblvaL9wrREg0RJweOmaION+Gk4mWi71uD1ZpPUNh5DoUDiJAl1lpnnWkYv+9WzNVv7tQkYtFN5sHyM4yEIcRzyRKhuh8F890ZV0c7bw6E=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com (2603:10a6:803:122::31)
 by DBAPR04MB7288.eurprd04.prod.outlook.com (2603:10a6:10:1a3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.28; Mon, 24 Jun
 2024 16:49:22 +0000
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::2a24:328:711:5cd6]) by VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::2a24:328:711:5cd6%5]) with mapi id 15.20.7698.025; Mon, 24 Jun 2024
 16:49:21 +0000
Message-ID: <85b2061a-9f5b-4998-b9cb-21308ee1965f@cherry.de>
Date: Mon, 24 Jun 2024 18:13:49 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/9] Add Mule MFD support
To: Guenter Roeck <linux@roeck-us.net>,
 Quentin Schulz <quentin.schulz@cherry.de>, Jean Delvare <jdelvare@suse.com>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Peter Rosin <peda@axentia.se>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20240618-dev-mule-i2c-mux-v4-0-5462d28354c8@cherry.de>
 <fdeea79f-4568-4e70-9b49-0c02abc91170@roeck-us.net>
 <4f92528b-8311-4c0b-998b-f0221d7bd474@cherry.de>
 <c2803eed-b4f4-44cf-a7f7-9557d05e798e@roeck-us.net>
 <19ee521d-298d-4718-bdc6-f282666de371@cherry.de>
 <2a1ae708-3718-4f70-9837-bcc50b7c8f66@roeck-us.net>
Content-Language: en-US
From: Farouk Bouabid <farouk.bouabid@cherry.de>
In-Reply-To: <2a1ae708-3718-4f70-9837-bcc50b7c8f66@roeck-us.net>
X-ClientProxiedBy: WA0P291CA0021.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::25) To VE1PR04MB6382.eurprd04.prod.outlook.com
 (2603:10a6:803:122::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VE1PR04MB6382:EE_|DBAPR04MB7288:EE_
X-MS-Office365-Filtering-Correlation-Id: 9776adca-a603-436d-c624-08dc946d98bc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|376011|7416011|366013|1800799021|921017;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K0VIVUlxRTB1cXVrWEtZOG1XSVJsMWxNZEg2NnNjZ29iUzZZQkw2QjNyZ0Nk?=
 =?utf-8?B?a1pKS0Z6K0JCZlZkU2xSUXl2Q1VUMlpyRVp6NWFaUUJrQkt5K3BUZitLZTg0?=
 =?utf-8?B?c2VkM1A2NWV4RW40WmlNeFBxYmhYS3FRRnJNK1V0NSsyZjVOTVAySU9kNVdx?=
 =?utf-8?B?b2ZZS1Jsa0RVYUM0Uk9neElOdmJpcFY3VVVWdXFXeDFURllWbzBOS0w2VU1s?=
 =?utf-8?B?WHlPYk1iMU5yQlA1elFDd3ZOYlNiVFJlS0VtdWY1cXduQXhiYWl6N1Zid3oz?=
 =?utf-8?B?dmFuVG9kQkg0NytGVVpDZ2FkaEJnQ09objltbm5NNTA1bkh3V3VKZVk3TVFr?=
 =?utf-8?B?WklXbm5jZitFTU5QNVpyOEkvQXNEU1dUS0xITVdjZFF2S2pUUm5JenBFeXp3?=
 =?utf-8?B?bG4zcjF4c0w0NDgzaFlLNk9iU29ERS9UUVRGOVdRSEJuSmJPSUx3cVBkWnNE?=
 =?utf-8?B?T2RndUV4UVdKenYyRytxREtxbEUrNkpHaDA4YzJ3Q3ZiMmFrMEhQNFpsdjdp?=
 =?utf-8?B?WXl4VlJVUEFuSlFGYWVpbjZSUTk0U2JteUxobitKdUt0Z2xOZG4zQU1UaUN1?=
 =?utf-8?B?ZGFMOURSbWtuaGV5YUUreVk0MzlkdHZyWkFXdXNiVC9JWnM2akZmbU5mVkpj?=
 =?utf-8?B?c3B0dS9Wamo1RStRYmNQdnlQQW5XRDlKZldmUFVYdFBvTmJ4MDJXNWtHY0lU?=
 =?utf-8?B?eEd0RC96ckVOR0h3RktBcnFjOEZ1MG5PTndXZjYrMXU0ZWkzUGl2QmNzVlhz?=
 =?utf-8?B?UTMzd25NNTZ3NXk1WEcrQU9KUW9pQVlud3Fab2w0NVplNmE5aHlMOFdvYUVE?=
 =?utf-8?B?N2VvZGUraWtKTDJLbFZibE5CdFFJR21ndy9UQW9sWGZFWFNTaXRjamVoUm5v?=
 =?utf-8?B?ZFJtWlRXa09rUnI5OENXaWFTcmZTNFpsN05TUmw5OW5BcVcrNzJGbmV5WllM?=
 =?utf-8?B?TUFQdE5TTlM3a29laktNRmRZYm1yYlpzTHV4ODFGWUJ0QTdsRS9xNzFOM2FH?=
 =?utf-8?B?Q0l3SzY3dDlhcEJFMEJFMUhWRitmdXJ6U3NqbnhyRFNpTDBkcTJEdU52dXlK?=
 =?utf-8?B?V05Oc0VxTCtJZUFyS1EyVU15ek9mU0FoSWhMUERianVENXpqdzJhR2pZNzIv?=
 =?utf-8?B?ZVU0MzBGbmpNMDJBRVBtd3JySGlnQlZZWCt2LzlzbDAzWndDem9VNW1jcE40?=
 =?utf-8?B?SUwyalZTcGVDWEJqTi9mME4xMHNhcGFrazVzRmlFeWhlS25qUUFPb2VpMzhV?=
 =?utf-8?B?aHdxbWhrRlZPL1FDSVAxOTRLZFlNSFRNbGZwNlQ2VlFZTHpmL3FPeUJLQzds?=
 =?utf-8?B?VnorbFJoR2svL0FFdDQvTmJiQk9adjM4ejE1SEhYT3ZpSWlpV0c3TlF5RTN5?=
 =?utf-8?B?aVM2dDNwbDVoRGE1eUVXVVZvekZaQ0lHaXB2N2pVRElDcko4dkJIeXJ4N3lB?=
 =?utf-8?B?MUEwallXeU4vWkwrZ1BMOHZ0M3llZWwrU1c5Y25CWVdzRVc2QlZwN1NTS0Jo?=
 =?utf-8?B?dUxJUDM3QXR4eXljbU5CMWdZdWxYeERPQU9kUlBLNFVJRGFKM3hCUTBaZWU4?=
 =?utf-8?B?VEJzeWxzVlhsK3hib0d5RXlyMW4rSzJUMFJmZUF4VVlsNjQyVklNR3YzL0pK?=
 =?utf-8?B?bHhNUlhkRlgxdjhYU2hsbXNqd0ZNWmh6eHBQeWZNenVSTjVpQ2crc3ZGYUh4?=
 =?utf-8?B?dkFKczYycEdmZ3R3MUw4eHoyamNUSVhqMzZVSUlVZ3RVZ1htL0RxS0ZqSnBR?=
 =?utf-8?B?U0lXWHdtRnlBdmU4RUxTSERjRzg5c2tKOGNjSWNTWnVrNDA4SjNuZ1ZYZ3F4?=
 =?utf-8?Q?g4k8Hqlqw3Vf9lZVdLi9Y8eKDiJB5bic+j9So=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6382.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(376011)(7416011)(366013)(1800799021)(921017);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2I5K0tFR2VDVGVhdlhEMXEvZlh4OE9hWTcyUmtoRDY0UnBydWoweXliMlgw?=
 =?utf-8?B?SFM1RUJic0RBejZuL2JsNlNDbjdUZFdLOVcvRllDU3JvV1RJTDh6eXRodnJv?=
 =?utf-8?B?eXBNVTF1ZWQ1UWg1dnJMcldtMHU4UkRxVVZaOXNxaHZ3bHZLOEpzdEVXRzRn?=
 =?utf-8?B?UVBERXpGQXpoSkxiQjhjd3cxUjdJUDd0eElndjNWR2JIcDFodEVnbElJRTFU?=
 =?utf-8?B?U1Z0WFVSQmR5M3h4bHlteVloWDdmU3ErUkpSUk5Cd2YydmFRS2VSRFJLaWlC?=
 =?utf-8?B?bm83Y1RHYWRiZ0VYWHc5b3pvWWZ3amFhUG1kR0dlZm0zQTY3MUVGZTNxTjFh?=
 =?utf-8?B?bUFQWDdCRytIZ0NsY09MYTVrNzlkcUxDWWZoRXEyTXVtYVFTajBMYmNwTk9G?=
 =?utf-8?B?Qk5IUWRud3lCcmR1QWFIZ0Z3cGpBY0pteWwyU3lkRUpaTWpkQ1U2L09wS0ph?=
 =?utf-8?B?QUYrQTZEdFpKSEtLTlBtaCsxRE83NTJ5RnFmdmgyU0ZCaVM2aE9nRSs2cnJr?=
 =?utf-8?B?ZGxmL1lTbnl6STRhUmZmUXlvTnZwc3lXYld6cFFXSlpSU3RCZHlNLzgremVX?=
 =?utf-8?B?SWtXNnkxcGI5cUM2MnBQNWVhTFBGSHhOa0c1K2JodUYvN1laZHJZT1EwaGk3?=
 =?utf-8?B?ckh0TG0vNXdXLzFZZktvbW9DQjUxOXdUZHJFWUtKN2tDdE83WlJFRU1yL0Yw?=
 =?utf-8?B?VU1JeVBaU2tWVlM2cmhJbzBLTjZDVDYvdktKWTdEMjl3VnA2OE1ZY1pFRkUy?=
 =?utf-8?B?RzJ0R0ZjY28yUExnYmw5aXFKNkZqWWh4aGYzckNBQnFncWUyRzFSWnlFVFJa?=
 =?utf-8?B?NG8yZkxFMDRxVFM0Y2tBSmdmaEI2bVZmOTd5WGxzN3YvbzBjb0liT2RsYXRF?=
 =?utf-8?B?TzF4cENTZURxaW5wWkQxcTR2bHZPVHBrckp3M1JsSzJNMUpST2YvUHRSMUlU?=
 =?utf-8?B?WXV6MVVlVzBtajBDdTl4VkkxakM0VDdoK1o2bjVyYjVEc0EvWDZQQWxvWWs0?=
 =?utf-8?B?QWU2WmVhcVhYMTgyQ1poLzhWaFNGdGhIVmNUa2dZSUM3eStTcDVpVlRPL0ZW?=
 =?utf-8?B?OTJ2NE42emtnYlUwYWNMdzNpakdldUhZWjFLeG9LcjFGSjRmNk01RDE1YTVZ?=
 =?utf-8?B?S0tYNElKYUVxTHlwSS9ZcnhpL0orYmhzd3lUKzNPU2JMUVBoRXFzbnR5aEFL?=
 =?utf-8?B?ZW81ajhIVElJUC8wSE1kWTFyZkpxTDF4MHNYQzVEa3c5TUdmMzRObWpiMnV3?=
 =?utf-8?B?NTh2MElmSmJyMUEvKzV5ZEpwVEVJZTh4QVNURyszckFFbDJydldRRHFQd1U3?=
 =?utf-8?B?QzVnRnVyeHBVMlVmYTRGUE5qdEtpYjhNU0tRSzN0WjRWaEUwV3NreEVxSUZ4?=
 =?utf-8?B?a0hvaUtFOExXQ2RDVnJ6WGtiREZJOWZrYVBvVUNDbGdzNkNpUHBOUnhMVTRz?=
 =?utf-8?B?ekxyWGFpdGptWk1rdDZteDc3WW5ZS053cytrcTFJZUNOeXd0cnRpbzlLdUFr?=
 =?utf-8?B?VWhacUQ3dDFBK2oxRTdFUUxDMlRyWlBMcEltQllDcFRxeFo1ZlcvN0ZaNTBV?=
 =?utf-8?B?SExiSGZzSkNHNFlIam9TYU5wRzE2R0lXck95bVRoQmNrdklPSU8vSW9TcU1w?=
 =?utf-8?B?NnVtRGJvdXdPTzYrYnZJeGVwd3ZHTktJaW5XQXRkck1HY3ZxTjhCMVBaOEdn?=
 =?utf-8?B?RW1qRHpUNGV0UGIvVW9QRGlhYlIyaXNHZWVxR3R5aDhaWGtVaElRODgwa3My?=
 =?utf-8?B?dFM5MCtHRklsS3loWlpxM3FpZ0wvTlU2TGtCTjJHTk1lVWVuZTQraVVDbTBw?=
 =?utf-8?B?WXltckQ5ZElQZjZiV0d1ZnVjMkxlZE9TUFJOSXdic3JlUTZMa05kcTJzMVZk?=
 =?utf-8?B?N2pOb0tqTDlIVWhOMXc1cXF2VmtzTW9mdkttVkgrZzRjVS9wUHl0bnJxa0Rq?=
 =?utf-8?B?Z1RKSERKUFFBWlQxbkFwT0ZOb0VrbXFTWGZxYnJ5ZjVBU25vbFBLYnBLbDda?=
 =?utf-8?B?dVZBVkRPUGlJSHNIWWJ4R0NTeU15czc1WU5QUS9JZVBUTTU5YUNqeGxBeGRz?=
 =?utf-8?B?alJVMnFPRlVReEtxZW5DblFNa0JLbS9jL3dtMXBxTnpzZmtJT0Nod3owcURm?=
 =?utf-8?B?TU5BK0paUGNmV2JUb01sTkthTS9sR2ZPL2c1TzRYbFRBUWFCb0VWdDlwckV2?=
 =?utf-8?B?MHc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 9776adca-a603-436d-c624-08dc946d98bc
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6382.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2024 16:49:21.6594
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZWQtWtp23KyVkhOmFkPFZyvha1dyFdp129PcY1xqMHuviGNQwfSGIyeZMkbmERomFWNzj0QCIUisi4ddCnLmyXmyF2NDuZph7esNmVeStGE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7288
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_094929_036029_1FF63E29 
X-CRM114-Status: GOOD (  18.69  )
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

SGkgR3VlbnRlciwKCk9uIDE5LjA2LjI0IDE1OjMxLCBHdWVudGVyIFJvZWNrIHdyb3RlOgo+IE9u
IDYvMTkvMjQgMDA6NDUsIEZhcm91ayBCb3VhYmlkIHdyb3RlOgo+Cj4+Pgo+Pj4gSWYgaXQgaXMg
cHJvcGVybHkgZGVmaW5lZCBpbiBkZXZpY2V0cmVlLCB0aGUgZW11bGF0ZWQgQU1DNjgyMSBzaG91
bGQgYmUKPj4+IGFuIGkyYyBkZXZpY2UsIHBvc3NpYmx5IHNpdHRpbmcgYmVoaW5kIGFuIGkyYyBt
dWx0aXBsZXhlciwgbm90IGEKPj4+IHBsYXRmb3JtIGRldmljZS4KPj4KPj4KPj4gVGhlIGVtdWxh
dGVkIEFNQzY4MjEgYW5kIHRoZSBNdWxlIEkyQyBtdXggYXJlIGJvdGggcmVhY2hhYmxlIHVzaW5n
IAo+PiBJMkMgYWRkcmVzcyAoMHgxOCksIGFuZCBoZW5jZSB0aGUgdXNlIG9mIE1GRCBhcyB0aGUg
bXV4IG9ubHkgdXNlcyBvbmUgCj4+IEkyQyByZWdpc3RlciB0aGF0IGlzIG5vdCB1c2VkIGJ5IEFN
QzY4MjEuCj4+Cj4KPiBXaGF0ZXZlciB5b3UgZG8sIHRoZSBhbWMgY2hpcCBpcyBzdGlsbCBhbiBp
MmMgZHJpdmVyIGFuZCBuZWVkcyB0byAKPiByZW1haW4gb25lLgo+IE1vZGVsaW5nIGl0IGFzIHBs
YXRmb3JtIGRyaXZlciBpcyBzaW1wbHkgd3JvbmcsIGFuZCBJIHdvbid0IGFjY2VwdCAKPiB0aG9z
ZSBwYXRjaGVzLgo+CgpUaGUgaXNzdWUgdGhhdCB3ZSBoYXZlIGNhbm5vdCBiZSBoYW5kbGVkIGJ5
IGFuIEkyQyBtdXggYmVjYXVzZSBpbiB0aGF0IApjYXNlIGJvdGggdGhlIG11eCBhbmQgaXRzIGNo
aWxkIHdvdWxkIGhhdmUgdGhlIHNhbWUgYWRkcmVzcyB3aGljaCBpcyBub3QgCnN1cHBvcnRlZCBp
biB0aGXCoEkyQyBzdWJzeXN0ZW06CgoKaTJjLW11eEAxOCB7CgogwqDCoMKgIMKgwqDCoCBjb21w
YXRpYmxlID0gInRzZCxtdWxlLWkyYy1tdXgiOwoKIMKgwqDCoCDCoMKgwqAgcmVnID0gPDB4MTg+
OwoKIMKgwqDCoCDCoMKgwqAgI2FkZHJlc3MtY2VsbHMgPSA8MT47CgogwqDCoCDCoMKgwqDCoCAj
c2l6ZS1jZWxscyA9IDwwPjsKCgogwqDCoCDCoMKgwqDCoCBpMmMxMDogaTJjQDAgewoKIMKgwqAg
wqDCoMKgIMKgwqDCoCDCoMKgwqDCoCByZWcgPSA8MHgwPjsKCiDCoMKgIMKgwqDCoCDCoMKgwqAg
wqDCoMKgwqAgI2FkZHJlc3MtY2VsbHMgPSA8MT47CgogwqDCoCDCoMKgwqAgwqDCoMKgIMKgwqDC
oMKgICNzaXplLWNlbGxzID0gPDA+OwoKCiDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgwqAgZmFu
OiBmYW5AMTggewoKIMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKgwqDCoMKgIGNv
bXBhdGlibGUgPSAidGksIGFtYzY4MjEiOwoKIMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDC
oMKgIMKgwqDCoMKgIHJlZyA9IDwweDE4PjsKCiDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgwqAg
fTsKCiDCoMKgIMKgwqDCoMKgIH07Cgp9OwoKClRoZSBJMkMgbWFpbnRhaW5lciByZWplY3RlZCBz
dXBwb3J0aW5nIHRoaXMgdXNlIGNhc2UgYW5kIHN1Z2dlc3RlZCB0aGF0IAphbiBNRkQgY291bGQg
cHJvYmFibHkgYmUgbW9yZSBzdWl0YWJsZS4KCgpPbiBvbmUgaGFuZCwgdGhlIE1GRCBsb29rcyBp
bmRlZWQgbW9yZSBhcHByb3ByaWF0ZSBhbmQgYSBsb3Qgb2bCoEkyQyAKZGV2aWNlcyBhcmUgbW9k
ZWxlZCB0aHJvdWdoIHBsYXRmb3JtIHN1YiBkZXZpY2VzLiBPbiB0aGUgb3RoZXIgaGFuZCB3ZSAK
YXJlIGVtdWxhdGluZyB0aGUgYW1jNjgyMSBpbiBvdXIgZGV2aWNlIHdoaWNoIHJlcXVpcmVzIHVz
IHRvIGhhdmUgaXQgCm1vZGVsZWQgYXMgcGxhdGZvcm06CgoKIMKgwqDCoMKgwqAgKy0tLS0tLS0t
Ky0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwogwqDCoMKg
wqDCoCB8wqAgTXVsZcKgwqDCoMKgwqDCoMKgwqAgKE1GRCnCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwKIMKgMHgx
OCB8wqDCoMKgwqDCoMKgwqAgKy0tLS0tLS0tLS0tLS0tLS0rwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8Ci0tLS0tLS0tKy0tLS0tPnzC
oMKgwqAgYW1jNjgyMcKgwqDCoMKgIHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwKIMKgwqDCoMKgwqAgfCB8wqDCoMKgwqDCoCArLS0t
LS0tLS0tLS0tLS0tLSvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHwKIMKgwqDCoMKgwqAgfCArLS0tLS0+fMKgwqDCoMKgwqAgTXV4wqDC
oMKgwqDCoMKgIHwtLS0tLSvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHwKIMKgwqDCoMKgwqAgfMKgwqDCoMKgwqDCoMKgICstLS0tLS0tLS0tLS0tLS0tK8Kg
wqDCoMKgIHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwK
IMKgwqDCoMKgwqAgfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBWX1/CoMKgwqDCoMKgwqDCoMKgwqAgKy0tLS0tLS0tLSsgfAogwqDC
oMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB8wqDCoCBcLS0tLS0tLS0+fCBpc2wxMjA4IHwgfAogwqDCoMKgwqDCoCB8wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
wqDCoCB8wqDCoMKgwqDCoMKgwqDCoCArLS0tLS0tLS0tKyB8CiDCoDB4NmYgfMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCBNIHwtLS0t
LS0tLT58IGRldiAjMcKgIHwgfAotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0+
fCBVIHzCoMKgwqDCoMKgwqDCoMKgICstLS0tLS0tLS0rIHwKIMKgwqDCoMKgwqAgfMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCBYIHwt
LS0tLS0tLT58IGRldiAjMsKgIHwgfAogwqDCoMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCB8wqDCoMKgwqDCoMKg
wqDCoCArLS0tLS0tLS0tKyB8CiDCoMKgwqDCoMKgIHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIC8tLS0tLS0tLT58IGRldiAj
M8KgIHwgfAogwqDCoMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8X18vwqDCoMKgwqDCoMKgwqDCoMKgICstLS0tLS0tLS0r
IHwKIMKgwqDCoMKgwqAgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tKwoKCklmIHdlIGNhbm5vdCBwcm9jZWVkIHdpdGggdGhhdCB0aGVuIHdl
IGNvdWxkIGFkZCBhIGNvbXBhdGlibGUgdG8gdGhlIAphbWM2ODIxIGRyaXZlciB0byBhZGQgdGhl
IG11eCBkZXZpY2UgKEJhc2ljYWxseSB0aGUgInRzZCxtdWxlIiAKY29tcGF0aWJsZSBpbiBhbWM2
ODIxIGNvbXBhdGlibGUgbGlzdCB3b3VsZCBiZSBhIGNvbWJvIGRyaXZlciB3aXRoIG11eCAKbG9n
aWMgKyBhbWM2ODIxKS4gRG8geW91IHRoaW5rIHRoYXQgaXMgbW9yZSBhcHByb3ByaWF0ZSA/CgoK
Q2hlZXJzLAoKRmFyb3VrCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
