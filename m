Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50E4ACAC599
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Sep 2025 09:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:To:Subject:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GPm/tkh1YI5sNjqeQTyKlKPJ22LSvkHgseolD/CpsVU=; b=GkDEQ2QThOtBFBHCKZbDSM6QyT
	6yGWzbboUgU28Pr/5RqYIPpxOFVjYperpLZ8JPFDMiKs04jxrp1RQeogau6mAcYQ7cgul9IUw+OSQ
	NFuEW3CPAI8NOyYC5ssv2UYRbgRhpWVbXwQ1X3Z9Hjrlk/DcVK/ThfR9wfpnedI//a53n0WMQxdYB
	bKNDqK39s17KZDM15G6IaJ0100cMlBpC/nsMgmLh2/3lmgYgC7tJ/TiNgFtJZgaMHZpCE5A02/ATw
	dot5i47hDZEb52jUbj0KCnmEFqLg3am45knGLIdKnOW84U/DuFXutvAOkNIMp+CM13/4bJoRs/OfW
	blslnLcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyRvG-00000007MOt-3aUq;
	Tue, 16 Sep 2025 09:24:26 +0000
Received: from mail-francesouthazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c207::3] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyRvD-00000007MNv-2E3d;
	Tue, 16 Sep 2025 09:24:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ir7hyMK3GuqQJsWIFGnAQBv1p+mhT+OpT8rK7QdopgdBLqx/7bl3vtCwCNgB2ZbiNLrT8JctMsI/cm3xhVTbBcsPxpAA6KIx6O4hZafzgBqXPhSw4MyweAUOhDveH7jwgajB8bWZccQxkNih4bSsQk2KZye2FYMJK1zrLgmNch70kghxLAWfOFNMIzfZ6Tr0t+fxa0qOQzYr01GyPXdGFy4t5DkKZoxInU7cAuSqN/t26gcN68stVcf4bQoac2IFw2Rsx1pZtrT1cyz+uVBZXNomqjZpQZBmkeNZ4NJHXQEI+F5fuKVJKpYzIGcYUrHcSAGd2vE980mVUpO//laIXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wLw2AwiM6e+G+HwMh9i9Up/raXmW2lXNLD8SxNow/fk=;
 b=x17fOElB7Cj4CleqnChGKRnz3MF3G7Lj1HsVd61hvPLxNQQCdPM9KBFajrwPmnpK3HdeFgu0urqGKCKEFhX5eI/dYrLbpFFkmDIRg3HG1Rjpo3hDPJ+o/scmL5PP4OejB8ngzT2u9Lf+xkUOPKDpw37vDHkxYJNcIk9qYdaUUsam9wTPBwgKt3Lmn5zgOWpXG81KnRPmFTWWG6BVSirAaY3KKPyv78SbLVsFH90fbVP2a1gvDVBGY5XnCRcWM3ZWciYejbz0njjS7MtKRMOlKRB9smnGVZrqUnS8Cy+rBrJjgHOtmQFA48We7wWsVKC9iPoQPOEsr+gSMm1PzmFjOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wLw2AwiM6e+G+HwMh9i9Up/raXmW2lXNLD8SxNow/fk=;
 b=Ee2AC1y8mypVPXVhtwxXYfSHTXKfnXtBadknxEofqZ9YTFYN7LD2PEJjkbLcfa5jmanp07HmD5t5CEu7cYTK/66JFi1Gl9CeYZWDi8GNWe14D1rEA8bb0dfN2GZoFgCPFd+nB9y73QgZdRfriZK8QxXnhclzXNM3SQwNw6nm8os=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by GV1PR04MB10749.eurprd04.prod.outlook.com (2603:10a6:150:204::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.12; Tue, 16 Sep
 2025 09:24:11 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1%6]) with mapi id 15.20.9115.020; Tue, 16 Sep 2025
 09:24:11 +0000
Message-ID: <72ddffd6-bd8f-418e-996d-70267d3ca7e4@cherry.de>
Date: Tue, 16 Sep 2025 11:24:10 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Enable DisplayPort for rk3588-evb2
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>, Chaoyi Chen
 <kernel@airkyi.com>, Heiko Stuebner <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>
References: <20250916080802.125-1-kernel@airkyi.com>
 <50379c05-c8b7-4858-98ff-da7ebdc06863@cherry.de>
 <352856bb-76b6-4861-8a3f-80f94f7c7375@rock-chips.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <352856bb-76b6-4861-8a3f-80f94f7c7375@rock-chips.com>
X-ClientProxiedBy: FR4P281CA0070.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ce::12) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|GV1PR04MB10749:EE_
X-MS-Office365-Filtering-Correlation-Id: 5fde7808-ace4-43c2-0bad-08ddf502cbc9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dEFFYzBpbGJFcjN6aEpuVWhsQmhLMERKOXdMelkvQlJodW5RdkxMakN1VmNx?=
 =?utf-8?B?ZytDNWEvNnlMWjRrMDFtMVJBdTVJZnF2bXNENXVvamU0TDBHMkdhS3NvRzQ3?=
 =?utf-8?B?K2JTUzJsTUpPRnp5VDl0cnBvV000SFlJUC8rNHZZY3NUcy9ZazI1OVhRWHdq?=
 =?utf-8?B?SkJ0OVJTZWlIL3dWeVN4SXpZVEhLbE11dlRUQUhpa0NsVHpCMk1VWExwbVZ2?=
 =?utf-8?B?NGdwL2lDcHVLelc1bmdiZFI0aGNIVTBWSFl2aElQQ1Q1L3BGQW5VQlAxTmUr?=
 =?utf-8?B?aWc5WFZ6S0hjZlNCNFVRQjJaQnpYMzE4UXY0cWFtdzMyeVptaW1yYnNNc0Iy?=
 =?utf-8?B?WU1UVlFGMnZ2YVpQTkFZNmhhR1JmT2w2eU96WEg3cWxlTHo1Q1REMEhFZy9o?=
 =?utf-8?B?cUFaV3NiekljdEVJNEZvNWhOWlIxSktKcGI0OGVxWno1dm9hMmR0Sk1DY3Nj?=
 =?utf-8?B?UFpwNElEQVlHUlhNTGlnRGN2UmgrVEdkMmZLenhhQXVXYzNDc0tZMHFaNkRu?=
 =?utf-8?B?SjROTEdTZXNyanhna1IrazFhNTlDS1V4Y2JpVGlnaVJEODZGaW10SlVJOWp0?=
 =?utf-8?B?bmtURjIrWjZnamJKakdEMGdEKzkxRG5yUmJYZzdrMkROeC9jU21BMXVTYVlp?=
 =?utf-8?B?VjlpZlZxQnBBQzdIR3hMd0swUm1tcVJWTVVIY2JKZXNPUW14bk95c2Q1L1FC?=
 =?utf-8?B?aGU2R3pTanpNQXBITVhJRnlnK2hSTm4xWmZXY1ErTm0zTVlxMWRHV1lXNlJ5?=
 =?utf-8?B?blVObkJWRFR3WE1xbVB1YjhGTHdJbEJ3N2sxWDcxVFJtSGdMeEg5RWxHVHBI?=
 =?utf-8?B?TEttaUNBYWpvMHRZS1dnSlozYzVGU3NSWFQwQ2h5ZU1mbzlucytNcW5aWWlS?=
 =?utf-8?B?MmU5UCswZjErMTlmcDQ4RzNidEJkZVVSYXRDQm1MRm51R3EwUEJlRm4yVmNJ?=
 =?utf-8?B?NnZwcjFUVDhZcDZxazZsNCtJMkF4bU1HUk5tSFdhV3VyUnV1VlpJREZVMito?=
 =?utf-8?B?YlpWS0t0NWRseENIMjFka1h2YkhkMlAvemhYWXFtOEVXWGRpZ25YVU1vN3Jp?=
 =?utf-8?B?NlBvWnhiUkRGZDIwZlNuL01aRkdTUnVBb0JtNnpLU0ZQRHNFWG1JazhuVzRi?=
 =?utf-8?B?SG5OUDhMTDNnNjVIdUZieGNOc3Z3RGgzbEdJcmJGT2xBTlkrd0ErOElrMk9Y?=
 =?utf-8?B?MThMWVU2cHN5WUJYS2lqMUdGTFA3WDFFK25oeXFCUzFGQXg2Wml3N1dMcXdy?=
 =?utf-8?B?REF2dXNIYnJudnJPWXF5ZHFKMzg5YVZuNEp3bEl2S3JTNmhIakw0eWJrSTQ5?=
 =?utf-8?B?Y3FuVmZUbHBVT0tYck5OZWNQUjhNUHJ5M3hFalgwbW5rOHhHY2taM1lnZFJ6?=
 =?utf-8?B?MWJkclNFSW1kbGhJVjFPTlNvb1JOVGhoc3V6SFhBREsybzRhN3FFZG1NWkFL?=
 =?utf-8?B?aEsvZ01IYnJTMFNLOGZyakNDSExGY3d5dzhqbUFHV1lsYnJTMklseWNaMHZ2?=
 =?utf-8?B?UnpXR2N3bVhhcktHOXhJQXdjaVR5YkgvVlBrWjB4UzVzWEJWd1dhdVAwbWxM?=
 =?utf-8?B?QnQwdytSTzRMVXRvQmhoSjhyNjNRRElxU29YU21kNnJTeHpSTlVrSVFPWVNO?=
 =?utf-8?B?WWZNU1NVci9OWS94TktLMU1tYlY1a1VjUkFhcVlwQ1N3SEtJWmwwMi8zRk50?=
 =?utf-8?B?UVZqZEZ2eDNyUm9pVjQyVWRiS1plV0NrN2NiVEFtODRvSUdtazBtaVFIc2Ju?=
 =?utf-8?B?Mm05MEFJa1hXLytySkxEb0NOUlF3NTU3OXRBSGtCM25CdGFidWZNTUZESE9v?=
 =?utf-8?B?bU5VWVVFSW5Hd2dJK1RaRmc5R010Y2pEa3kwbkZmNWZIN0R0U3JickgvdGxn?=
 =?utf-8?B?RUR2U0txRFcrNkwrRWtWNTJpaDZzOVFQSGlvSFF0eS94ZXhKWWpkMXU0TjMr?=
 =?utf-8?Q?8V7BPdmpgX0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VFZieW12NVNZK0FEYzBhamV0VmRrdXUrcDlOUmVpK2dCb0R3NWNvWmlrc2RJ?=
 =?utf-8?B?aC9SbzluMkRVWnJiVEpYYzlibUI3Y3UxRDE2b2hKOUl5SE9XaWNaK0VNOGdu?=
 =?utf-8?B?TWxXNmJ0Y2ZiNlhpamV3c1Mya0NzSFczbk1lNWlzVTFnVUh6L0wwTm5MSUw5?=
 =?utf-8?B?ejhici9HNzZaVVg5Rkk3WFVualNxSlI2U3VVcS9EbXJiVnlFeUFnV2xRd0o1?=
 =?utf-8?B?ZkdSbzJsaXZqendqQkNvbUY2Ym5JeHlOd1J5aTNpWHJvcnNjY0cxSFg4aGRs?=
 =?utf-8?B?QjkxbkVJOHAxUHdCVDNiNWNFMFBuTGtaU2QvRVppRHBncWQzOEdmQk94OXlK?=
 =?utf-8?B?WTNORjJEUER5enJTd1R5VzI1YTJRY3F2b0tuNXdpSlp6SGFoWVBRTDl5bzN6?=
 =?utf-8?B?bFczR0U4TnJCd3pBMlZ6S0pIc1hwa2txQSsyUTBtSVdoSWlYTkl5Rm5LRzRD?=
 =?utf-8?B?M0xncy9ZY1J3bHAvSjIxNE1oaHRlQjQzRmY4S204eVh1N2trOU90dkNVZDJl?=
 =?utf-8?B?MEREYXlMSllyM3Y3eHNyK2x1MmpKMnhOeGJKZnJXUTBIVXdpV3M5NHBaM2wz?=
 =?utf-8?B?SENJTnRlSGliUjYzbW0yS0pNV2crNndJSVhpV3IxOEFEZXRuVDdYaEswbDQ4?=
 =?utf-8?B?UjVIdWM3d3dndmxDWks0U2hjNFZBdnNURk11YTFJQlAxRFYycmVDR0s4VC9X?=
 =?utf-8?B?MmRmYjcrcVFYR0lLV1dVVHVPYTIvTnB5T0dBVzR3UTN0UW1MMkhTWFRVKzRZ?=
 =?utf-8?B?NWVkeHpJdFFVclNDbDVUa2NjLy9tS3hZUURnek44TUJua2gxN3d3L2tGS09X?=
 =?utf-8?B?bjNlSE1uRFdzSFBZZnFXblpXNHpkRzVPUkx6QngwTkpHMUtmZyszbDVpT2Qw?=
 =?utf-8?B?anRjelpiTTBWMmdHbFo0TjJJZExyNUVWbHptWHVaR2pFZ0FkYzY1cmdtcE1o?=
 =?utf-8?B?MTdsd1lMWGgzeUtOVVhIQ3VaOEZCZDMwb3ZuWGdlaGtwdG53OVJUS08za2NG?=
 =?utf-8?B?UVhxQ0VOZVYxSEliSG11MU40VGVaT1JNcktlK1A2amExeldGaWFwRWVxUDRl?=
 =?utf-8?B?ckoyOGtFMHhESGNNYk9WNHFRNmxSY21sbFJzRVB2KzVFdk1Yd3c4anBkM3VK?=
 =?utf-8?B?ZlFsSjlCcjdzWlQ5Mi9WWG1TZmJscElUTGQzYzlsVmhGNlc4VEFhVUNPOFYr?=
 =?utf-8?B?aTVpNEQ3Z0xIZjJUQkw4M0tQVmowMzQwaldUOFN3WFFUYjB4ZzYvcXRtd3BN?=
 =?utf-8?B?TWFBZTJ2YVlCaFRCTFpGQytNZjhDVEFhdGY1aUFFeWs2U3d0WHZtTVRTT2VU?=
 =?utf-8?B?OC8rYUVSY1NiVUQwd2VkTGtpakJyNmZzMnYyYWlDemsvY2hSNG5oRWhLbmVm?=
 =?utf-8?B?am1GaWpzaG8rUDJRcUM1ZVdpMWJCYWJDK2VGR3ZSU1E3UTNGcFRlNjBPcFJk?=
 =?utf-8?B?cTRUNGgzOHZOQzdHZi92bWY3N1kwbDlTQ2lVYnJTWmdEbWdOVGFmT0k1MGs5?=
 =?utf-8?B?UlVqby9XU1ZvcXhJVUZrT1JGRiszUjZucTFHd0gzMm5MbkhEcVQyQW8vdm93?=
 =?utf-8?B?Q2dtWXdqOUVtMXM5MGJOckR6blUySFJERGs4MWNac1gwWExYdCtqMFMvZWhl?=
 =?utf-8?B?TFZBTEFzV3JVUUtjbEs3WkZmTjBLdHpQQzlrYTdxdGVBZ085eXlUdlNxZkpM?=
 =?utf-8?B?c3dTU3dTaU5haEVkM1pHSm9tOVZPeG15NUZEZU5EbklvRjkxU0RIMTBTSEpU?=
 =?utf-8?B?d2tCcHErV0kvUjNFYVR5NWZ4Y1R5Mmh3a3JVWGhDWiswK2J4V0djYzFJMXVI?=
 =?utf-8?B?d3ZMK0Q5QXQ2RnlCL2ZQTUZyNGcyaDhaMy9QcUpRemJBSjh6aUxDeGFqU3Vh?=
 =?utf-8?B?NFNwZG0wRHl4bkVidHRxdkJsMEhHalpnd2h6VVhKNXN0TEFRWHpIdGZpMWtt?=
 =?utf-8?B?TFFwT3RzblNWTmE1cmVVejV4ZjZIUHAveVVLeE5zcGJ6Y3FIK0JCMlR6SXdD?=
 =?utf-8?B?dTJrUWF5REMrMGkxNjlCOHExZjZWbkZSRExwcFFveGJwUFBsUHhpR3N0bzFC?=
 =?utf-8?B?dlkzT1NMOHcxR2UrbGUwNW5YT0JyYnNkeCtDbW91SEQ0c0tSTW10dDNYWXhj?=
 =?utf-8?B?U1hPYXMxN3NCbEFqY3R5NkdudnBYU0RBMnp6SFFNTnArMzNhTzQ5eXFVTzh1?=
 =?utf-8?B?aFE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fde7808-ace4-43c2-0bad-08ddf502cbc9
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2025 09:24:11.6358
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Eu7HwJdHZRicH/mx6Pse8kK4NV2505mjaWcz/vovSyOmiIsjVc1fnC0ZzhXya7p9V5JuMIuYy9xUlC6QoK/1+JZNdTN8u7PcsgiX0XJAzss=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB10749
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_022423_574938_56F0B7E4 
X-CRM114-Status: GOOD (  26.57  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Jonas Karlman <jonas@kwiboo.se>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, Peter Robinson <pbrobinson@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gOS8xNi8yNSAxMToxOCBBTSwgQ2hhb3lpIENoZW4gd3JvdGU6Cj4gSGkgUXVlbnRpbiwKPiAK
PiBPbiA5LzE2LzIwMjUgNDo0MSBQTSwgUXVlbnRpbiBTY2h1bHogd3JvdGU6Cj4+IEhpIENoYW95
aSBDaGVuLAo+Pgo+PiBPbiA5LzE2LzI1IDEwOjA4IEFNLCBDaGFveWkgQ2hlbiB3cm90ZToKPj4+
IEZyb206IENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkByb2NrLWNoaXBzLmNvbT4KPj4+Cj4+PiBU
aGUgcmszNTg4IGV2YjIgYm9hcmQgaGFzIGEgZnVsbCBzaXplIERpc3BsYXlQb3J0IGNvbm5lY3Rv
ciwgZW5hYmxlCj4+PiBmb3IgaXQuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQ2hhb3lpIENoZW4g
PGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+Pj4gLS0tCj4+PiDCoCAuLi4vYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4LWV2YjItdjEwLmR0c8KgwqDCoMKgIHwgMzkgKysrKysrKysrKysrKysr
KysrKwo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZXZiMi12MTAuZHRz
IGIvYXJjaC8gCj4+PiBhcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZXZiMi12MTAuZHRz
Cj4+PiBpbmRleCA5MWZlODEwZDM4ZDguLjBlNWFmNjFmNjZmZSAxMDA2NDQKPj4+IC0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWV2YjItdjEwLmR0cwo+Pj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZXZiMi12MTAuZHRzCj4+PiBAQCAt
MjUsNiArMjUsMTggQEAgY2hvc2VuIHsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBzdGRvdXQtcGF0
aCA9ICJzZXJpYWwyOjE1MDAwMDBuOCI7Cj4+PiDCoMKgwqDCoMKgIH07Cj4+PiDCoCArwqDCoMKg
IGRwLWNvbiB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJkcC1jb25uZWN0b3Ii
Owo+Pj4gK8KgwqDCoMKgwqDCoMKgIGxhYmVsID0gIkRQIE9VVCI7Cj4+PiArwqDCoMKgwqDCoMKg
wqAgdHlwZSA9ICJmdWxsIHNpemUiOwo+Pgo+PiBUaGlzIGlzbid0IHZhbGlkIGFjY29yZGluZyB0
byB0aGUgZHQgYmluZGluZy4gSXQgc2hvdWxkIGJlICJmdWxsLXNpemUiIAo+PiBpbnN0ZWFkLgo+
IAo+IFdpbGwgZml4IGluIHYyLgo+IAo+IAo+Pgo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgIHBv
cnQgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHBfY29uX2luOiBlbmRwb2ludCB7Cj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlbW90ZS1lbmRwb2ludCA9IDwmZHAw
X291dF9jb24+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4+ICvCoMKgwqDCoMKg
wqDCoCB9Owo+Pj4gK8KgwqDCoCB9Owo+Pj4gKwo+Pj4gwqDCoMKgwqDCoCBoZG1pLWNvbiB7Cj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJoZG1pLWNvbm5lY3RvciI7Cj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqAgdHlwZSA9ICJhIjsKPj4+IEBAIC0xMDYsNiArMTE4LDI0IEBAIHZj
YzV2MF91c2JkY2luOiByZWd1bGF0b3ItdmNjNXYwLXVzYmRjaW4gewo+Pj4gwqDCoMKgwqDCoCB9
Owo+Pj4gwqAgfTsKPj4+IMKgICsmZHAwIHsKPj4+ICvCoMKgwqAgcGluY3RybC0wID0gPCZkcDBt
MF9waW5zPjsKPj4+ICvCoMKgwqAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4+ICvCoMKg
wqAgc3RhdHVzID0gIm9rYXkiOwo+Pj4gK307Cj4+PiArCj4+PiArJmRwMF9pbiB7Cj4+PiArwqDC
oMKgIGRwMF9pbl92cDI6IGVuZHBvaW50IHsKPj4+ICvCoMKgwqDCoMKgwqDCoCByZW1vdGUtZW5k
cG9pbnQgPSA8JnZwMl9vdXRfZHAwPjsKPj4+ICvCoMKgwqAgfTsKPj4+ICt9Owo+Pj4gKwo+Pj4g
KyZkcDBfb3V0IHsKPj4+ICvCoMKgwqAgZHAwX291dF9jb246IGVuZHBvaW50IHsKPj4+ICvCoMKg
wqDCoMKgwqDCoCByZW1vdGUtZW5kcG9pbnQgPSA8JmRwX2Nvbl9pbj47Cj4+PiArwqDCoMKgIH07
Cj4+PiArfTsKPj4+ICsKPj4+IMKgICZncHUgewo+Pj4gwqDCoMKgwqDCoCBtYWxpLXN1cHBseSA9
IDwmdmRkX2dwdV9zMD47Cj4+PiDCoMKgwqDCoMKgIHNyYW0tc3VwcGx5ID0gPCZ2ZGRfZ3B1X21l
bV9zMD47Cj4+PiBAQCAtOTE2LDYgKzk0Niw4IEBAICZ1c2JfaG9zdDFfeGhjaSB7Cj4+PiDCoCB9
Owo+Pj4gwqAgwqAgJnZvcCB7Cj4+PiArwqDCoMKgIGFzc2lnbmVkLWNsb2NrcyA9IDwmY3J1IERD
TEtfVk9QMl9TUkM+Owo+Pj4gK8KgwqDCoCBhc3NpZ25lZC1jbG9jay1wYXJlbnRzID0gPCZjcnUg
UExMX1YwUExMPjsKPj4KPj4gVGhpcyBpcyBzdXJwcmlzaW5nLCB0aGUgb25seSBvdGhlciBib2Fy
ZCB3aGljaCBoYXMgdGhlIERQMCBlbmFibGVkIAo+PiAodGhlIENvb2xQaSA0QikgZG9lc24ndCBz
ZXQgdGhlc2UgdHdvLgo+Pgo+PiBEb2VzIEhETUkgc3RpbGwgd29yayBhcyB3ZWxsIGFzIGl0IHVz
ZWQgdG8gd2l0aCB0aGVzZSBuZXcgcHJvcGVydGllcz8gCj4+IFdoeSBhcmUgdGhvc2UgbmVlZGVk
PyBTb21lIGNvbnRleHQgaW4gdGhlIGNvbW1pdCBsb2cgb3IgYXMgYSBjb21tZW50IAo+PiBpbiB0
aGUgRFQgd291bGQgYmUgbW9zdCB3ZWxjb21lIQo+IAo+IFllcywgSERNSSBhbmQgRFAgY2FuIHdv
cmsgbm9ybWFsbHkgd2hldGhlciB0aGVzZSBuZXfCoHByb3BlcnRpZXMgcmVtb3ZlZCAKPiBvciBu
b3QuCj4gCj4gVGhlIGtleSBwb2ludCBpcyB0aGF0IHdoZW4gdXNpbmcgVjBQTEwsIHdlIGNhbiBn
ZXQgbW9yZSB1c2FibGUgCj4gcmVzb2x1dGlvbiBiZWNhdXNlIERQIHJlcXVpcmVzIGEgcHJlY2lz
ZSBjbG9jay4gSWYgVjBQTEwgaXMgbm90IAo+IGV4cGxpY2l0bHkgc3BlY2lmaWVkIGhlcmUsIHRo
ZW4gZGNsa192b3AyIChWUDIpIG1heSBiZSBkaXZpZGVkIGRvd24gb24gCj4gR1BMTCwgQ1BMTCwg
ZXRjLiBJbiB0aGlzIGNhc2UsIG9ubHkgYSBmZXcgZnJlcXVlbmN5IHBvaW50cyBhcmUgCj4gYXZh
aWxhYmxlLiBJbiBteSBjYXNlLCB3aGVuIFYwUExMIGlzIG5vdCB1c2VkLCBvbmx5IHJlc29sdXRp
b25zIHN1Y2ggYXMgCj4gMTAyNHg3NjggYW5kIDY0MHg0ODAgYXJlIGF2YWlsYWJsZS4KPiAKPiBG
b3IgSERNSSwgSSB0aGluayBpdCB3aWxsIHVzZSBjbGtfaGRtaXBoeV9waXhlbDAvMSBhcyBjbG9j
ayBwYXJlbnQgd2hpY2ggCj4gaXMgcHJvdmlkZWQgYnkgdGhlIEhETUkgUEhZIHdoZW4gaXQgd29y
ayBvbiBUTURTIG1vZGUgc28gdGhhdCB3ZSBkb24ndCAKPiBuZWVkIHRvIHNldCBpdCAuCj4gCgpD
b25zaWRlcmluZyB0aGUgY2xvY2tzIGFyZSBhbGwgaW50ZXJuYWwgdG8gdGhlIFNvQywgc2hvdWxk
bid0IGFsbCB5b3UgCmhhdmUgZXhwbGFpbmVkIGJlIGFwcGxpY2FibGUgdG8gdGhlIENvb2xQaSA0
QiB0b28gKGFuZCBvdGhlciBib2FyZHMgd2l0aCAKRFApPyBJJ20gdHJ5aW5nIHRvIHVuZGVyc3Rh
bmQgaWYgd2Ugc2hvdWxkIGFkZCBzb21ldGhpbmcgc2ltaWxhciB0byAKQ29vbFBpIDRCIERUUyBh
cyB3ZWxsPwoKQEFuZHksIHlvdSdyZSB0aGUgb25lIHdobyBhZGRlZCBzdXBwb3J0IGZvciBEUCB0
byBDb29sUGkgNEIsIHdpdGhvdXQgCnRoZXNlIHByb3BlcnRpZXMsIGlzIHRoZXJlIHNvbWV0aGlu
ZyB3ZSBuZWVkIHRvIGRvIHRoZXJlIGFzIHdlbGw/CgpUaGFua3MhClF1ZW50aW4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
