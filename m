Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A47A7C25B7E
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jun 2024 08:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GxKD+0T+Bk1QB/MI9pcSDyrUmd5jdLdhoFErwzdAhLc=; b=aCqdMF9m7Qp/Tfo/7/4yYAoY2l
	4Xt2wOh10u8J7oke7uu9C72xjdlQ0ko0r3sXeTkrpWdOBJyJeGvNxRy0UwmrloI4Vjc/QXBs0J5Zw
	QNOXj8d6yfbksQwI6M4jTYew5Zwa3V4O6wZ4eFhX4zGCKpfEm3U9B3CWOTM7yOyV3HhwC+yGN6WNI
	Q5+SxoWDv7/wLjHZt120NDjJEstaAf6Y+qXU8ORlxGOctJfMm3iZBU97iDqwdRqcVyD0kZ3IHsRzR
	ppeSPCT5Vl46eN3Ice72v7BquYjkHxCx0fXd9O98skx8mqRnmWVx8/aYmc0/VQMJ50Ew3mDMDIHwu
	imceAlpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEPnU-00000001iHD-2II8;
	Tue, 04 Jun 2024 08:45:36 +0000
Received: from mail-db3eur04on0712.outbound.protection.outlook.com ([2a01:111:f400:fe0c::712] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEPnQ-00000001iFj-3Wzn;
	Tue, 04 Jun 2024 08:45:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eqIphBIXsMIuNfcq1TjkU168hgp9z0z2qrzX7M1YgvCGAZ4wY/mxXcLp8NPTs5vwbGMOxNDoH6FAJwoSMVN8CO0Z+zouA/dv8J4crcjVagfX7d7o0YOaqIEQw9ziDKzcj4CorcV7Vh1ibRElcF1iYTw4EHGd5MZVx01FHSoIgrtTz8SbxLAsrsna3GB4eqHfyxc0dKWH4KOcC9263QhcKcWbsGDQKHjZh+4RJpyHUtQ2bVjTwlBhkSuh3Hf74UxajZUfgmmjwQHpMD3oLiF95QitJC+vtqiq/HI4IiK/z/q8pnyZcV5ItjdtSuCTa0mnt/XixZMrce4wP68QRex74g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tJoA4O0njHe14ZeAmaC7iAAWxHhHJm+25C/HHmpxnR0=;
 b=PU2FWx2wRU1+7Upzz/VIfinpGzUQ7XNNI8kjuSFXx86UglIA2nTahEo5oqR72/dgIhvfU/UiX22CerjaHSp1OzNe6iAjZLazbLB9BKI59DikKIQRyqkQvKww+1ZdXtgLD9oZ9UzxHr3BxXhwVtuGxm67xLpV3WdYr8MN+wRvc8Ou5mMhFORUrN4FrXitsyqfrL0u3vvDyBYB09gJ6Omzr/EW1xJDq9ilZ2SYk6Noy1zC7I3ZzbmnovOhWKPTZZuzF7REAOIiy7b09LruYr4jqYyHiTwQE8aYRcxGLLeLxzcw0bA93ljYgK1B8eJm0g1XOw3PA2TH3bQYuimx/1dFbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tJoA4O0njHe14ZeAmaC7iAAWxHhHJm+25C/HHmpxnR0=;
 b=hdLgd9ik9Ry69DAQdcJjMYyQ463lkq50S+/CPbdSc0pWWsdA3PJeGQf2LHsPDn29VyZbtN33XkRf+Z4lfr3oH9hCejGSe1WyfavSecHkkxp+LrRwX1Sr0kvQW8NUW6iWoTGeyd4lX5jCbDVciw5hOlAbybCpwUqMVvf5WH0iZbM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from PA4PR04MB7982.eurprd04.prod.outlook.com (2603:10a6:102:c4::9)
 by AS8PR04MB8660.eurprd04.prod.outlook.com (2603:10a6:20b:42b::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Tue, 4 Jun
 2024 08:45:21 +0000
Received: from PA4PR04MB7982.eurprd04.prod.outlook.com
 ([fe80::3c4:afd5:49ac:77af]) by PA4PR04MB7982.eurprd04.prod.outlook.com
 ([fe80::3c4:afd5:49ac:77af%4]) with mapi id 15.20.7633.021; Tue, 4 Jun 2024
 08:45:21 +0000
Message-ID: <408bc022-62c5-4cb5-9bdc-cd222883975e@cherry.de>
Date: Tue, 4 Jun 2024 10:45:19 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: set correct pwm0 pinctrl on
 rk3588-tiger
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Heiko Stuebner <heiko.stuebner@cherry.de>
References: <20240603192254.2441025-1-heiko@sntech.de>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20240603192254.2441025-1-heiko@sntech.de>
X-ClientProxiedBy: WA2P291CA0041.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::27) To PA4PR04MB7982.eurprd04.prod.outlook.com
 (2603:10a6:102:c4::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB7982:EE_|AS8PR04MB8660:EE_
X-MS-Office365-Filtering-Correlation-Id: 6cc0bf77-4d85-47f9-309a-08dc8472ab0c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?emg5Z0F6T0MwRXI5WE1vMXl4L0l1VzVZTi9iVGpoRUFIV29reFhGSVZ5Q2Vs?=
 =?utf-8?B?Um4yYVd5bUlYaWpCSUVMSk9CVEU3SG02WkRRU1RYRnNhRjZaQjdYUkJoUG8w?=
 =?utf-8?B?U3paQUQyVUNHUkZ2WE12b1lyUWVnYnpKL2dWVTQvTTlzWmRtQmEweTdIWEhk?=
 =?utf-8?B?QWZjd28xMWNDVllRM0hVOG5iUE9UOE1BRU1YK1JJcWVmRW5lOG9Xcy9uNytP?=
 =?utf-8?B?aW83OHM1cDN5Ym5jWllyOTgzY2U3QzFxVll6bmxCaVdxWG5nU2htVUk3Rlpk?=
 =?utf-8?B?V2UyWjZzeUkwZWZRbVQ2N2Z0bzdZSFhpYjcwam82K2Vub3RCclJPMWxDdi9j?=
 =?utf-8?B?T0VDRlNiRlFyTnRzdXJOM1daRWthVjMwcmpzeDQyOXphMnNnYmk1cG95c2ht?=
 =?utf-8?B?T2FlaDRhWXc3eUVTRjB0dExuMXE4cUFSeTFucGhJK0VDQWd0SVhEb0NHQ0lW?=
 =?utf-8?B?QnlQS2RLMjd1QWN2VE5UR2RwQU5zM2l3akI5T042RkVncTdvbmxKOVRJT014?=
 =?utf-8?B?ZmNPdy9HTi9aY0l5bjVFRzVCakhDSitubDdoT3U0cm1OMDZYR3o2UDF1M08x?=
 =?utf-8?B?b05jSGxWbm1RdVNhS0F4TnNxb0RJZnZlRHYvMGNpMkplM2xETXo3b0N5dERs?=
 =?utf-8?B?NTJuSXRSYTVwZG5LaUR2M0p1MkhwQjV2cWxldWlieXVUWkh4VWJ3WVFxSngz?=
 =?utf-8?B?OXNoWTRUUEZYZlZ4UnRDWEhRZVgzTTVKRkx4MGgzdlJZOE5vbTkrTi9Vcllj?=
 =?utf-8?B?Rml0Q2lhZ2pTcXdwRnNOVlY0NjFqTU5JbDhGaWppUGdLSi9WZ3hBY1l5ZmxO?=
 =?utf-8?B?Y0hMMms5a3NxVmdydithNThTOWVrYW5lVFVEaFVzMFRiUElBR3JEL2xnODV0?=
 =?utf-8?B?cTZHSlNmVVY3czROVnJIUE91clhGRmtLYWQrQ1NNanNEL2hWMzFNbGhSOWxv?=
 =?utf-8?B?cjd4c3ZvcFQ2TWJVSzZPbnB4OTA5c1p0dW4rbmxIalJ3c1Bsd0VrZlZwV3Jj?=
 =?utf-8?B?VVRCQzhaeUJtTzNqLytIL3cweE9kVzNhMk9tb24yUjV2Q2JmWnJhWTNlSVFx?=
 =?utf-8?B?ZGVmUTYxNGJFNXRIdDlBWVJpbWRLZktaYzJwK1h6bzRwMTg5RGxCUzQzNFdB?=
 =?utf-8?B?UjgydnpKSjZzUkUyQjJ1OWlldXorMjlpUjlNbitqTno1SXoyRnlHREJ1V0la?=
 =?utf-8?B?QS92eDRIRWU1dTEwNjQ1SXpPVFViYVRpc1FtVDd0ekxwYVkwVVpjRzJ6SlQ5?=
 =?utf-8?B?ZnozcGpkSExnQm10OXp2ZnJHNFkwZUhxTmhDWEJqZXg0bExLaWQ3cXloaGVQ?=
 =?utf-8?B?bHozeDVNYWQ0UlRCczJoM3VCNG9scjI3aTNpSWtiSDlZengvRVc2aVRZZldS?=
 =?utf-8?B?bDVuZTdtOFZRdnpGeUxYeFFhcm5wakhxRE5ld1NaVXhrMjMxUFhLWlUwbFNH?=
 =?utf-8?B?QjZEcHJIL1EwWURFNFBKcnM4bnFDbWJGbmd5MkJOK1cyQVBObk9ZVllraHVl?=
 =?utf-8?B?bTZ6c1Mrb3RYaEtkNHJyMWFzUGlGaUJrL3ByV1o0ZmlpY3NzMHhpbnkxMHZJ?=
 =?utf-8?B?YjVZVE1JVGNQR052bklwY05FTVZyVHNLVXFHREdWcHYvUnJmNEFUQzZCbldN?=
 =?utf-8?B?aVh6a3NqQ2FaeWtiOEtrNWhCNU05MUVwM1FveU0weU9BdncxcUpqZmRWcldT?=
 =?utf-8?B?cFN6TytFcE4rRWQ4ZzRrWUpwb3VYUVcrTU9JZjRYczJxamp5bFdZdDZBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB7982.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(376005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHRlcXpvbUJQSVhzdm1HZnN5clQrUDhDWGtNT2p3aTJkV2lUV0lzcyt2bWF2?=
 =?utf-8?B?dUUwM0R5MldFMWdzazEzMHZ6enUzaVY0MXRuTGpURXVNOTRCbHZvN2dxbktI?=
 =?utf-8?B?anRxeVZiSUVqemg0TFF2MWNaSVFrRjAzbmdkRWtaV3VzQmFtTUF6RUkzVlVW?=
 =?utf-8?B?Y01OZkxCZXA1NnNkYTV6VVV4L3FWN0pHY0tVWHpudjFQVzI3SWpnUXIzOG0x?=
 =?utf-8?B?L0ZtWEdZL0ZwS1N3MkhlQUxEK1EwTEs3RElwYSt0d29wSFhaeWF2U1BsYlZM?=
 =?utf-8?B?Mk50RlZ6WHlHUU4rcTE3RTMrQU5Vb0M5bURNc3lnbDlPOXhRYk1jN1BlK2dY?=
 =?utf-8?B?dXQxam8rTGtaNitOcXk0azFJLzNROHRBNm1vd0dzOUg5YWdVL2s2azg4V0E4?=
 =?utf-8?B?dEJFaStoYmFJcXVlc2RaYmVBSXhlV3dLVVNpQmFiVW82RHEySnd3dkZiRE1t?=
 =?utf-8?B?cFRYRHpZN0puYUpwYU9iakVlZ3BTVGJKbW5DTTJUNG9XRUJmUm5PTVpIc3FP?=
 =?utf-8?B?KzJVOGpvZHdaMk5YSlQ5bkZkSUppV3g5VWpqTk83MVpFWXNtV29UUk5JRTF3?=
 =?utf-8?B?TVV5RFBhLytQdk91Mk5lQ0VyQ0h5S29iTzhpQzZJN3JWM3dlb3UwZUdwZzRG?=
 =?utf-8?B?NVRiSURYYnFmNGlEYkcvUlFUZkxOZWdoOVptdXFreWFCbXM2ZWY2MWVGUWRR?=
 =?utf-8?B?cWJCd1RUZzExODN1VEdHbXZacWFwd1FubGxKQThEeno4VTZvNEpYa3RPMDVH?=
 =?utf-8?B?eUpxaUc3bVpPaWhPT0h4T3BlMmx0U0w5aWpCK01UNTFBNm9CcVl1OWRaYUpv?=
 =?utf-8?B?M3kyZkRmZ044WWdEWWFucFRUSlFESXQrRFRIUnhOTHdpZnpiVmwvdmczOWhY?=
 =?utf-8?B?ZFkxemN0VnlMcmFMb1F6Q0lZS1JxRHRPK2FQYit1VVN5d0FHbW42SmJBWGtx?=
 =?utf-8?B?R0dxd2tqSTFRNFhSUmdGS29DaVZxTzhWYTJXb0ZqNjRDT0RDRW91d21Hcjht?=
 =?utf-8?B?OFdsSnNtS1IxaDNTNHk1VmVxWkIraGVVWHZmZVloNExHR0RoVmVNRGpSb25L?=
 =?utf-8?B?MnpSY1prWGJiTXZhV0pJVDFoVFMyRlFNWi9laVVmWjJmdHZFaE9Wc3paUmdI?=
 =?utf-8?B?NmtkZ3htSFRCa2dtN09VYUtnZXB1LzF4TE9wZDVDVWd4a21FZXhvajdYSFRD?=
 =?utf-8?B?NWd6cjNBQ1JoQTdNVjNnVFh4NjNqN0xSSTlIc05XY3RlczFmQWZLOVFBeXFa?=
 =?utf-8?B?bUtFT1BWb0x5WU5GRVJwUVJHUWxueXIwZ3ZUZTloVHJMcHdZRzMzdE9Ed3Zq?=
 =?utf-8?B?M01PQzdQMFViY1hyZFBqbkVHUlc1b3JyaW5IVW95cW03bEVta1Nmajlzemgv?=
 =?utf-8?B?QXhTdG9QZTUrVDN0V1JhZUFGcllmU3ZUeDg4WGlINjhqaHdVMU9LUnJUazdx?=
 =?utf-8?B?Zi9GU1g4cHdNSm9FSURBMWRBRjRLdEh0OXY4eGYwTHR0YVBpWnBmNldhMEhk?=
 =?utf-8?B?SVFoRjNEdVNiR2h6MHRqRUxkTjdyamNOOC9zNnhNSVRtZFBoeDYxbkQ2Z084?=
 =?utf-8?B?aldIRCtKM1Z4ZmgrN3lnY3o5b21vWkhGSW9vdTlGWWVqdEU0dmF0Q21uZjMr?=
 =?utf-8?B?M0VHbWx1ZjhGL05odHJKRTJMRnBBSzg2cCtCeUQzMDRGY2RqQmh4M3BCbEJs?=
 =?utf-8?B?ZlJ2Q2VpMUlPb3R6NnVrUGRieUxtYzA2c1dTL1hZNnRGL21sNDZkV3VCdzJC?=
 =?utf-8?B?SUVRcUJYZG1peEZrcUkxd1l3a2VMakQ4b3lXUEJqMTd5ckpLbG5sSmpJYURt?=
 =?utf-8?B?NEt2bUFSemkraDBjR2lsdm54S1g3RFp1ZkVidE9XVUJpaUxaSmxObzcvbzIz?=
 =?utf-8?B?MXZZMjNIZElvTlBoeXcvcmNqTmI2T2N5alh5WElRQ3ZSWVBnb043cVdnUmo2?=
 =?utf-8?B?b2p2bnoweU1aQkp2OW1JejUzaml6a2RPZkFjb3h0VERSV1haQnd2MFg1SUUr?=
 =?utf-8?B?ajhpOUFNZldCNi9HelI3TytKbW5OR1VCcGdTbUZKS2xPNDN4YjIrYlljVUht?=
 =?utf-8?B?WlVWUFBUUHNJQXI4eGJFWk9FS3o0eGVjeU9hYTg2bkttbmtpSTZ5QmZBY21U?=
 =?utf-8?B?TzVrRS9xVXVRb3dSeFFDSWgzRUlKaS9VM2F4MXBqWkVDVHNqMnNtd2dsT3BV?=
 =?utf-8?B?alE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cc0bf77-4d85-47f9-309a-08dc8472ab0c
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB7982.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2024 08:45:21.2525
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3WUEuZpY08g2YZqOjUZqWaPmaLsEGqD0MwM2uNldlV5T1LIQtvy67WaVWUagG7k09nt8b6C6FbXmUyReutHBkl1ze8xTMKAL8ojlx1M7rEU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8660
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_014532_942648_70DDF122 
X-CRM114-Status: GOOD (  11.14  )
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

Hi Heiko,

On 6/3/24 9:22 PM, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> PWM0 on rk3588-tiger is connected to the BLT_CTRL pin of the Q7 connector
> meant as the name implies to control a backlight device.
> 

If not used for backlight, it can be used as a General Purpose PWM 
Output according to the Qseven standard as well.

> Therefore set the correct M1 pinctrl variant for it. The M0 variant
> cannot ever be used because that pin is routed to a connector pin on the
> Q7 connector that is reserved for CAN use and the pin reachable by the M2
> variant is reserved for the embedded MCU on the SoM.
> 
> Fixes: 6173ef24b35b ("arm64: dts: rockchip: add RK3588-Q7 (Tiger) SoM")
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>

Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>

Thanks!
Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
