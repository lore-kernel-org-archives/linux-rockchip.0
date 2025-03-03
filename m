Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E17CC282C5
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Mar 2025 09:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8/GxhlN1g2J69ZBDrXgNSgh+ebkvhSToBwWqMUq1wTU=; b=eLeWpT4vHJgF8Q+xqwMlLlotwu
	gkg5x7tq51CyHLLEKwhjJNmakZQ6GyC0+WGddD1hzQRKvnl1RRyb0t1rbJVMuYrCqU+VN5QXQocbu
	GokSdmfQVy5gSv25OJrRXft7lFCodUETPYBzNwh6sg9+CAHA2gb3cFD/JQS+V53uJcBJhh5BEK5vh
	KJPybeShJR9IbzbrurgyB+kKeGap9sNYFVs+QaGSYT212daYQcpIIDB5a+EIGIAa/9Jo9lOt9daBi
	shlS0zR13XJGiuKsPIpT2tN0hbRLc8OVWmIx205Qx0txgpKnneF4emG5y8Cx3PSMaHWVJaN62SAcl
	xdwL3viw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp2Fd-00000000ATG-1nPv;
	Mon, 03 Mar 2025 09:38:17 +0000
Received: from mail-am6eur05on20619.outbound.protection.outlook.com ([2a01:111:f403:2612::619] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp25L-000000008Ui-1jOz;
	Mon, 03 Mar 2025 09:27:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HpteV4V0qPY53lS5D9CRVj/P8v99hxCFC9tgu5eszrra86UGYbiltGKB8k1/efAZrexYQYphBfgIDsNP7M/YihBUfXHdHfHLFPhgwJCxxaEbX7hDuoZx3tY7svi6rIpCJc2SvGGgNqJ3L+oHluPugGgqmznoYwt6yGieDuuzUSdSvhLQKNCA1U3/SeZ/gGFNqnFg6LGBjQGywwMGl7762kU7qSX1tbAr4Dgw/oF7JtJGPfTNfzQ3iOEgAF8dl0H3koOQ3Es3SqVKRcYB/Z2iKiv1pqg2sbsSJpaYSz7ZrlOBU+sMtAlEbrAkn0ABK8BzbjX8+/e9wYFaELpjlqf8Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FAcM272slMqqpFleIjUe7shj2LaCG1puL/6aCMfQsGk=;
 b=MpPiNvg7A0QOCq4m4ZY4sSngfEdIOM8KVgTxjnvC9W4JhFKm6P2663ItHtwtQ5kclBuYoVKIG2qP4ctC0bMmcHTyUcoXYJGbADRqQm2v7H/ImWQBDsCbyzcbUoVhL/GAMV8bA8p0O2kRCiANH3YmYFn8mxY9v6krJhe4q9dYRBdLxfxgZJkNMV5ef/t8jdF+n4f9/vVIiIFvVH9apH3xUteK5ShxUd3Y+GW4CaM+9DaZtVUrYk8x/IM1o/6kvIjfYPGttaeRhtzln6Eu4i48BZhF4AP8zeTlfo5JDIe5UHbyUH3CmGvVqbUoo0Dm+lgnRaAT1HGZHTFEI9r6ZjXoNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FAcM272slMqqpFleIjUe7shj2LaCG1puL/6aCMfQsGk=;
 b=KfOBSXE3f2U/ec4L/Y30kdwLfmaHrcCzhocgAkpMJ6QrCeLABEeR6zU0jj9R1jYtRTfj0hx5pglstaQUlyZbvRati45S2q/HnUfEQNxGf9JKXE76qqDw85a7xLRWo+3YHn5ae9ZNSHRj6L1ewwoRYAvoDUtgBUlSXlrkY6PgW94=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PA2PR04MB10158.eurprd04.prod.outlook.com (2603:10a6:102:404::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.27; Mon, 3 Mar
 2025 09:27:33 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%6]) with mapi id 15.20.8489.025; Mon, 3 Mar 2025
 09:27:32 +0000
Message-ID: <2af85aa0-96dc-43ea-9542-88f91b21a028@cherry.de>
Date: Mon, 3 Mar 2025 10:27:31 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] phy: rockchip: usbdp: re-init the phy on
 orientation-change
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, vkoul@kernel.org, kishon@kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 christophe.jaillet@wanadoo.fr, Heiko Stuebner <heiko.stuebner@cherry.de>
References: <20250226103810.3746018-1-heiko@sntech.de>
 <20250226103810.3746018-3-heiko@sntech.de>
 <02757b21-7599-4ee7-9f97-247b04ba646a@cherry.de>
 <dkjpudmzuuxvaotz4mx46yx7iacof7q6ck746j3rrqvlgbq3hk@6vtvy3gy3kff>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <dkjpudmzuuxvaotz4mx46yx7iacof7q6ck746j3rrqvlgbq3hk@6vtvy3gy3kff>
X-ClientProxiedBy: FR2P281CA0138.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9e::7) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PA2PR04MB10158:EE_
X-MS-Office365-Filtering-Correlation-Id: 1aa8fa80-fd0b-4917-40bc-08dd5a35a031
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZFYySFArMTgreVlNa2RkQUVOcVcrdnUrS0JFV1R3Qi95TktJaWhOSXpLL0xF?=
 =?utf-8?B?c1ZDclJoQU5vOWl1NzBoMXY2MEsya29hclZFNitYbkZSeFBlcnJlek5lRHZ6?=
 =?utf-8?B?M2YzdHJPTi9ObDBReDkxamdCdEovU3V1T2RiQXBuaVRKejRjYUlIck5MazdU?=
 =?utf-8?B?K3hlRDBZK3ptdlRSREw0bWNTRllQNlRNalBEYkJaMkNPamRxTi9NSXBoRlNO?=
 =?utf-8?B?OEVFS2xQOENIZ0puZDZzdGh3VHFOV0tXanlKK1JLcGI1cHdyVnlOS3FteCt4?=
 =?utf-8?B?N2RtQ1ZYUjZUalppK0Z2WnZTYmwzVExKZXNkdENJTzNrNkQ2Z0JrckNoZXk2?=
 =?utf-8?B?UmFjZUdvdHdUUmRIYjJ0K1p3d0FMY3QyVW4xa0FXWDI5aEQyL25HanB2c2M2?=
 =?utf-8?B?U1N0L0x3MjdhYVBuK0Uxa2MrVGxKK0tLUG5ZRVFTSWt5OXZEbXJNYVdsYlYy?=
 =?utf-8?B?aUtYRGpmVkI5bkJwQ1AzZjQzSUJFdEdMSTIvRi9hTFNjeU5uM2RiTzZuTGVq?=
 =?utf-8?B?cnliS2haZlpZVnlEeHlLV1ROWnJzWFlzdGpGbFFYb1YwT1JCRmNQZUczVjUr?=
 =?utf-8?B?OWx5UXFkUW1ITEJMT3ZNUXVuZGQxK2NMV24vMXNHaHNqMTRiQVoyVEJwd2s3?=
 =?utf-8?B?TzlsY3Z4ak1FeGgrTC8zVmtyeEZTU1dCVUJFNnR0eUtzYzlrSnRTRDEwaEVB?=
 =?utf-8?B?M3ZTZkNBTC9xYTJpWUxxcUFzc2cvSnFlTWFna01MRENVdXBiTkRDYnFocHdr?=
 =?utf-8?B?Vkg2NHpFYWRJQmFEak1oaUh2NHdBMzFsZy9yd1M1aWRYTlprYzJrZFdBenMr?=
 =?utf-8?B?b1NMSlpMM3B5WTE1T2RLRFpKYm11dFloakJPTCtrMkZqTXo3ZHJnOUdNdHdO?=
 =?utf-8?B?b1RJdCtBMTZKRzhkQk4xYVFYQ21JanBOeis5MGpGSzBacW84V3A0Zm1DNUdx?=
 =?utf-8?B?U0REdnhjYTZFdy9mSVQ4MGs1ME9HbDJsVGk0Z2F4RWRPU00xdVI3TTVFZ2hz?=
 =?utf-8?B?OEgrWFNZbWNPV25RRi91VVlSeVNISWFZWkRlS0NWeWp2eFQyTS9FNllaamRD?=
 =?utf-8?B?N2w4TUtndmRraDJUbTliS25EcDhJMDBhY3VUQXpJMmhUNkdGNzYwaDRhck04?=
 =?utf-8?B?YmtaeUc2QndGemRtSndubG43WnUzVVV3MWtHQmUwZmYzbU4xQkpyVGgwck9G?=
 =?utf-8?B?ZUFkaXQ5d2FGSWZUSFphTmZ5dSt2Si81d0Y0UnoxTUphSzJDbC8zNm8ybzFF?=
 =?utf-8?B?bDZ5dkw1b01hMnRONWNmRnRZaGczT25MSHlTZUFPNS9JeG1SZ0JmU2xFZjl0?=
 =?utf-8?B?YUxITi9DNzFhK20rdnNmbmhmWTdyb0FFZGlHMnNaa0M5dm9zTkdxWUhoOE0y?=
 =?utf-8?B?a3JrZTZhNWJqVGk3NmJwNFNWa0krL0c4YW82KzI2bzBleElaWlpzMXFDMXI1?=
 =?utf-8?B?WnVjak5DbVhXb1BSbG9PcVYzelUyOXdkaHVIS0tOdUY1cU1UNGNnQ25FRld4?=
 =?utf-8?B?K1c5ZzlQcTNnVTE2RVQyN0RJejVPNjN1OEp1R2NmSU81OE9kQnprNEZBQ3pC?=
 =?utf-8?B?MU04REdWWHlGczN4TEdWc0xNTFJQMEZ2NlY3M3UzMGplcGJhOUM1S1lHNS9F?=
 =?utf-8?B?RDg0VGxxSGNUbTc2aDR5Q0dDNXdWOXJpMkx0NElleDNaWnZ4WmYvUmxQNGZN?=
 =?utf-8?B?QzA0Qlp3TElFckNrRG1vTDZTMTMrRFFnQ2JvNzVVMmhheUFnczlxZXcxcFZ2?=
 =?utf-8?B?bHpCaXEraU0vU3VwWVRrQ21HM1BTbHpzdlZOTHJ3S20rOUJjRE83MHAwQUVi?=
 =?utf-8?B?U01oYVNlUW5kbXJBTE5QZ3QxSkFEWGVXVFpwWDl2T2I4ajEyWnVaQUYwU0oz?=
 =?utf-8?Q?mvPrRf8o/ETYA?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b2Rram0xVDBIZjg2M0dSTjRIbWl1b2pBUDM4WHR6emM1eU9majZXYWVmcVNQ?=
 =?utf-8?B?STBIMG9IYXF2a3lJQlpLY2ZoREVCZ3pKOWhTSGNvMXBSZFR0Vko5U2hQZ3RQ?=
 =?utf-8?B?NjBmZzRNRmR5UlhuYzhsNXZBQXNTV214cGs1MWsvSVc3WU5qM0RlbW1Jalhv?=
 =?utf-8?B?TVZVcGhHTkk5QzcwaEw3bFkzcDVNN216NnJIcXpLNmYyTU5jY3NHbkxxUXZq?=
 =?utf-8?B?dS9vWUJGRWl0cGpUY0NsZ0FqQXNMeS9nZlptV2w5dEFsZEZCRTloalhxeW9n?=
 =?utf-8?B?RjU5QU9JaEcwdmViY2FOdGEva3kyUUU1SStMaDk1cGNQMFZ3K1F5U0tJUFZy?=
 =?utf-8?B?RkVkbC9yVnBWWnhRZ3M4cTkwbTJsTHJ5SmhyNDFPaFpiZklPd005YkxpS3Yz?=
 =?utf-8?B?QlR6QS9Nd1Y5clN0dHZudklYWGJKQURkZCsxaG1XN3NYSXBXK3ZiazdRRWlW?=
 =?utf-8?B?Tk1MaXRtSVRjeFpXWk9NWVBZZmlHcVBEc00zaXZkSEdiVFZ1b2RsTkFJSDRu?=
 =?utf-8?B?bDhGY2hZMXFHT2lTNGI1OFpaWnkwOWlrUENnam56QTVVS1gwSm9LejZLK2lG?=
 =?utf-8?B?UXg2WG5WZFhKcDM5bFovVnhpM2pxSDdEWlczeVV5WFgveXZNYUZoVnlLT0ta?=
 =?utf-8?B?eTIwOFBzUnhuMGJ4Vi9HZFV2RUhvQWNwY1VReVUvTmlrUDFBRzQ3bzhLYU9N?=
 =?utf-8?B?NHBOT3NEZW9UNmZ0bEZsZ21FMi9ONmk1U1BqL3ZFZ21FRWY3aHFESHh6N1U2?=
 =?utf-8?B?U2tUaTVmV1VCNkU0c2ZXeTdUUkhJRGlDNmE4WU1vNGR0SFVxS2hlRGd6RW11?=
 =?utf-8?B?T3dBcDIzS3NwelcrSXJFSkd2RHl4TElpNU5FQ1d5WndCU3VOeXkxSGpabm9r?=
 =?utf-8?B?NGo0ZkR1WjhLNGVpcE5WUmVycWdiSEFaSU9IWDFqMmt3NXFzcEE1M3RoNkJC?=
 =?utf-8?B?SnpOSkhQNVJrb0hwV29MaFlGeUhNam4wQlVwcXlzWjVlaGdBdUtZbGJpSWlU?=
 =?utf-8?B?Zkc1Snl0NzdpL0xia0E1Q3VMZkZwMXR2alVJVXh3VVpuU0h0UWIzYnpSTVo0?=
 =?utf-8?B?UnRnUHlNbXFSZjlxcHlzdGl3OXhrOGFaS0lER05qOEowSWFuVXV2UG9ZNDV1?=
 =?utf-8?B?YXNFM1ZVeElYTjRpOHoyQzM1LzJZckYwSnJvaWc4T05YRkdRSjVzUUpSMElt?=
 =?utf-8?B?bkhZNjF0VWgvU0s2RDNndFQ4NnFkUGZ0OG9aN2pWWm15a2NyYy9NRkh3QlJr?=
 =?utf-8?B?dlBtWkU0RUZOVkFGVU44QTU4amM4ejNpZzN4UDRyQmdDVzBjL2NPRytWVmZE?=
 =?utf-8?B?a2hRcFZObWFHMm9tNXBBcDEzbTdBdk5VNktjQWphZ3dPZ1lTd0s4NGZGS3Nz?=
 =?utf-8?B?NEdUY1NSNEY2RlViNHFEMWd0anBnM1A2N3lzN2ZIWU1idlZpU3IrdFZQdG10?=
 =?utf-8?B?NnBhR21hTUxvQjgwMDZ3eW40NEJrRHlBMW1FMGlScjdIWEdkTXhaVlhsbUVH?=
 =?utf-8?B?amxxODloZ1dRbkJaUTRQTGNRRXdMRWFmQVFPUzg5YkMzUmZZOHhIMStINGVB?=
 =?utf-8?B?Q1doZFkvV284dVllOWplVDRLdmZOcFF6NHBsMUR6N3NlcW5ReWxOcWwzRmpZ?=
 =?utf-8?B?NE9VTUtOM3ZRV2VSaVJoZU1PTTV2VmFxbDRIRUIzWGE4dGRpaEpxN0RMQjNF?=
 =?utf-8?B?c05xY200K21Zc1hPQVZWZlpPQURKdFVWSzJNSGx3N2tjWlRNOVpNeE1jdUNJ?=
 =?utf-8?B?c0pQQ3ZRd3lvNWVqWlRGMUcwNGhoajRIcVRKRjZkTE9FcklvbEdUWjM0bzJ5?=
 =?utf-8?B?Y3crN3dQa1lmYlJ4d2wxMnRabFVjNXVTQ3dSOXNYTjRmTU54OUFkSHpsbkwr?=
 =?utf-8?B?SXJaUUJqL1pxTDlEMXE0SnMwNmNWTjNBSjdha0pFMmJhTUh1dGpEUGliWW9Y?=
 =?utf-8?B?YlFLc3hYM200cHR5QXF3ZWdjampPTGxuV1Z0N014VEJaSmJQQ1BpWUN2SElW?=
 =?utf-8?B?cG9OSFdzbndISmYvcGpuV2UvVUQzb0VZOG90M3VDMUdhS0xSY2oycTBaWmJ6?=
 =?utf-8?B?T0loWGlRWFl4dEMxczlLekhhM3Q0MlJoRkFRZzJ2ZSt4SE5yZFljY281Tldl?=
 =?utf-8?B?OXRIMkxnTUs1VXVWa1M5Ym0zelgzNXNBaEx3TmlBVzN3VTVReUxjYjlheWJH?=
 =?utf-8?B?QXc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 1aa8fa80-fd0b-4917-40bc-08dd5a35a031
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2025 09:27:32.6343
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: urebA7n+xzR/Pg5KIXIya6o2SQDITabFUZ/RbUj/RNaGymz9VssPHdNbd4+1nlRU5M1dm1AXWVHu/FBuARcc9NMyhQt14lhsFViole6f4uI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA2PR04MB10158
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_012739_619064_4FCF03FF 
X-CRM114-Status: GOOD (  17.25  )
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

Hi Sebastian,

On 3/1/25 10:19 PM, Sebastian Reichel wrote:
> Hello Quentin,
> 
> On Wed, Feb 26, 2025 at 01:38:10PM +0100, Quentin Schulz wrote:
>> Unrelated to this patch (but may be triggered by this patch?), I'm wondering
>> how flip is really handled.
>>
>> It seems like we have flip store the orientation of the cable, but also if
>> rockchip,dp-lane-mux is set to <0 1>. But wouldn't that break if we ignore
>> that initial flipped lane-mux whenever a USB-C cable is inserted in reverse?
>> Basically, shouldn't a reserve orientation of the cable when
>> rockchip,dp-lane-mux is set to <0 1> mean "normal mux"?
> 
> If a USB-C connector is involved, the TypeC controller is supposed to
> setup the lane muxing based on the connector orientation. This
> happens via the typec API and in this hardware setup the PHY should
> not have the rockchip,dp-lane-mux DT property set.
> 

I could see some HW routing "mistake" where the USB-C connector in 
normal orientation has DP lanes routed to RX1/TX1? Or is this expected 
to just be faulty HW we shouldn't attempt at supporting?

> The rockchip,dp-lane-mux property is required if no USB-C connector
> is involved. For example if the lanes are routed to a Displayport
> connector. In that case the lane setup is fixed in hardware and
> there is no TypeC controller involved, which could do any setup ;)
> 

Yup I've seen that for the Rock 5 ITX and the evaluation board(s) do 
this. Quite interesting :)

Cheers,
Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
