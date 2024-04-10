Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCC48CD128A
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 14:22:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tclrtQpRChGhd3X6ZLIdGEZU3X9YuH+qX5m94gtIZE0=; b=WaquCVOyoaBAiedr+Lq2T4SW+p
	IBmq8s2yvTi0LlZ5RT6kzUyOGZ9BhQZQot02UCggMrndAV+0/DgeZIhRJJpfZwur/XTvpMOWo0Qs1
	2GsZJiLl4jkF15dZ6ZgrwchhFkWM8mvGWsb6/wFCvA9e15ORc8rKNtqJV1+6gS64Oxr+SYew1I4uB
	wUAAPwW/jJHEX7GwFPyskSjPxwgYql2eajmIMlNrNuUlAVKUEnTJgjg/xXi/YMtvqzzYL6UGLyHcq
	viEjaQiot3E+V06iF/Nr3sc8gCpdwVMAzJaRaMBrFVSfV3VrKd+lCCQVb+gAppzxqbg9FHmXCibdQ
	30ashtnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruYqP-00000007RvO-1Exs;
	Wed, 10 Apr 2024 14:22:33 +0000
Received: from mail-mw2nam12on20701.outbound.protection.outlook.com ([2a01:111:f403:200a::701] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruYqM-00000007Ruk-0iyQ
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Apr 2024 14:22:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A/A39cTkRMay/8oLdSh+p5+w7tV7NcR+N18b1ZEOpspBZ2Fb7OpQ88YmVHRoGdjth7gLuKc/lEoO7HUrfyAbNONFHkeItgNdrwat7xVDHNx0jYGjLYxzGL9dzdv166AvM1x//dBZDJwzEU7/LrxFGjkAhV3OABIew/NAhwZatVBmpxOik9yX8XsiKQ5Y28lgTbqsHQXVcoawc6/uHrnXTf5IWniQr8BqtAUjWpVloP4JnctGYFRnybAbPe0PES/Roe38Et6whXxDo4xl4reX6UenNACwuqwpkscaXbuzr9Idqa137rXuBjt7LyIwE7r+Mlmsneo9rcruvD1ImEQLkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bK2luO03Ielw2QJsOORU4GatgvD/LP3DVTBkFsLY5t4=;
 b=T9oXnmiwLXAHBrnKPNZrn+DpRYvEcMJMRQve+kZUnXkpxJDPulAcpuyWPwGpz9+40pg7qhlvFiQ4D4V0y7D1qh2Zydnn9O9JGkAMn9McrhRUEZkORzL2rP7wr5wHem/b/ZSog9DFHebopF23WLl3G2yHQBdWb+eGptUM/BVCjT+TjXmcpLXDtzoBpRMAfa55KZg6UE2lSGIGg8/xoPYEJUbQx5ECYs0pzoxYWm6oHfLDHtwAn15MDxEbTrg8LUzD/kpMgFIayW8+cTuitzbrZrZ0PD1iz4Oyra3xqy5bEp0PNIaiBmm31+fh3hm5ZMGMv8s2QJjw341L6ERig85qaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bK2luO03Ielw2QJsOORU4GatgvD/LP3DVTBkFsLY5t4=;
 b=ft7AR8NaC9NpiJQjA3IT/5GuwLYTjeNtobEsVGwwgxgemozN/AOOKdH72Fh6B77NWDApKnwH9EPADdkxapavzhUhtZtUcKrDWSMpmwic/JTr/9VAuKND1fwcFaPyq+Hvvolw/RGBDeYOu/bTLGw96et7vi5U4kajIcRq2UF2jOA=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM4PR12MB5721.namprd12.prod.outlook.com (2603:10b6:8:5c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Wed, 10 Apr
 2024 14:22:19 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a%6]) with mapi id 15.20.7409.042; Wed, 10 Apr 2024
 14:22:18 +0000
Message-ID: <0df41277-ded5-4a42-9df5-864d2b6646f5@amd.com>
Date: Wed, 10 Apr 2024 16:22:00 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dma-buf: add DMA_BUF_IOCTL_SYNC_PARTIAL support
To: "T.J. Mercier" <tjmercier@google.com>, Rong Qianfeng <11065417@vivo.com>
Cc: Rong Qianfeng <rongqianfeng@vivo.com>, Jianqun Xu
 <jay.xu@rock-chips.com>, sumit.semwal@linaro.org,
 pekka.paalanen@collabora.com, daniel.vetter@ffwll.ch, jason@jlekstrand.net,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20211113062222.3743909-1-jay.xu@rock-chips.com>
 <1da5cdf0-ccb8-3740-cf96-794c4d5b2eb4@amd.com>
 <3175d41a-fc44-4741-91ac-005c8f21abb8@vivo.com>
 <9e6f1f52-db49-43bb-a0c2-b0ad12c28aa1@amd.com>
 <5c7ac24c-79fa-45fc-a4fd-5b8fc77a741b@vivo.com>
 <CABdmKX1OZ9yT3YQA9e7JzKND9wfiL-hnf87Q6v9pwtnAeLHrdA@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CABdmKX1OZ9yT3YQA9e7JzKND9wfiL-hnf87Q6v9pwtnAeLHrdA@mail.gmail.com>
X-ClientProxiedBy: VI1PR08CA0239.eurprd08.prod.outlook.com
 (2603:10a6:802:15::48) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM4PR12MB5721:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RAXuz9Ue2n4VdHjHSbGXIZ/vzZ+1nvGL/X64R5AM9YvsqaC7qLb4moYn+texMzZJEs4RHXH1J63x1CftnPE+uPopw8Hf4VKx0twtv0cumaQR2+SQZDAAHCNjXbjFsR4VcPLGcTckAVhRIwo1kbu9cMkBvy46p7ArjtkR/ojVU20Vyxpj1XdZe9hzJIrVvMH2jz+ZwbgBhgqES8iOCHHC8kGaICcJtpOvPfJh3DzYHOjW5A8ylok+xcn2kjXuL5nkmSZlbEPe3Yb3V5JvJnL5KWgVmFvo2Vdg+bVkVbA7RPutVHXlfMfkzEiuE183NCCLql4VF1MIXJFr3+6mGlhgSwb7wbriPvzS82952Z/JQzYfR91FPFmyCdr5vyJyEFvPGWLl6/nQT84ZNd95iGjChALeZpxwzCy0q5nZxDa54qP3ysoFojNpLdqNEm7siT5NcBTgKqUrvm4cPCfin5pZHrmcp0sQoZJxQY75PamlbYk12s6YfG5hp+KGNSSFWJSU2U4wjzhWQTUmFDZdaNPYsabSAySyRkWzd51deif6u66aFM7UgDI1x0oddYvg4O37M9t3z52R+zuP5X9dvQ6TM2K8W3vNLNWqE/p47LlUv+o=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7416005)(366007)(376005)(1800799015);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d1JCRnczTDVWSzRSeXhIN3FTYk1lTXhuWkpWUG9FK2Y5bEx4UFd2ekRJa0hU?=
 =?utf-8?B?R3BxN29GemtIMWdja0MvMlptcW9jY3NtWm5CM25PTHpHTk84RWRCOU9KMzd6?=
 =?utf-8?B?YXdMclR0b1NBR3lnWkJwN2tCdllpQ0d3K0l6bjM5cEQ5ME5WRlUxbjZVUDhp?=
 =?utf-8?B?cXJ0SlNTZTExc3lqV213MjlYK0ZRdjduc3B3MFFUZnErK29OTXB1c05vaG1R?=
 =?utf-8?B?eDFGNkloeUNFdUZqMU1yVVF1OWZrQmZYYXRCSHh3VUtwZDJiR0V4NC9KdTNP?=
 =?utf-8?B?S2hsTHZDWEZDbzRSMnZxaTZwZmxYSlVzd01uakQ3VlZYcTBVbnpUcU53WUJs?=
 =?utf-8?B?R284RkVyRzJzV2hxbnhFa09LaFBxRFlmTkw5UGFRQUZkK0MzYk1XeThMUkRV?=
 =?utf-8?B?RmRlQURiQUtMMTNnS09hWXM5Rm44TWZoV1FVem1iQlF3VCtiUUZzZVFaVzJw?=
 =?utf-8?B?emF4NElvYTM3RUFlVi81M3pRWGNKWkpCTXdpRndyd2RldTJUM3BUbXE4ZnM0?=
 =?utf-8?B?YUxRSW5SZ0d5UlFWS1RXMGwxQWxUZGl4OXcvN2JwdFhIc1lzejJkOE5kWkpJ?=
 =?utf-8?B?Vk5tNG53TVY0L21iYWtRSE9XakxDZjU1MUo0bzNqREdwVExIZlB2UEZScUhH?=
 =?utf-8?B?aU1aUk4vc1p5clo2UUwwUkFmQ0xtQ2FST2ZEVGtpcDI2VE9hNUJSSkRma1A4?=
 =?utf-8?B?aDM1NEJLRzM3RzZiNHJiK21LOG9odGE2aVNDL2RzQXRsajU1dTFHSUNXTkpK?=
 =?utf-8?B?SVNXM2ltd1B5Y0xjdktvVFo0YnRnWERHdkdNZlhRRHY1bkozSnlqbElXTE9z?=
 =?utf-8?B?T25Sd201b0oxelgwbmV1QnR4eGY1aGxIQkZJWXQrRzcxamx4MW4zN25BeXZ1?=
 =?utf-8?B?K1RmOTlic0tISEIzVHg4N0J1Zi9oTzlqYU15ZHJrUWdVNitrOGdMR0szZkZC?=
 =?utf-8?B?ZTZCNmRPdnNieFFqMXcrS1hmamxZMFgyblF4WnFqc0VNYUM2MEx0blk1SGor?=
 =?utf-8?B?OVJHaWFSMWtpMEJRVU5SSnJxUDlHLzFZMUptSFJ1SG45V3YxV1BoYXdvRkhS?=
 =?utf-8?B?ZU1wNUQyaDFQVFBCam1iK1BmMDhBdzcxazB2ajVCTWZFVGc2SHFlT0szMlNH?=
 =?utf-8?B?OXk4WUprbTRUUGxQZUZPQ0xuQWF0b2J6a0ZyaWRmckNDN3ppdnFDa2g0ZmYw?=
 =?utf-8?B?OHJlVXhpYXN1UlJUWlE2N2Nkc1k2dHBucVJvSVJYVUlpZVA0dXpoM05CeHVG?=
 =?utf-8?B?UDF2Y09Qc1lldG8zbnhWazd0Q284UXRIOW5QL1dscTdEaFFoRTZPOHQ5L1lx?=
 =?utf-8?B?MXM1Q3JCZGVwSlVtbWxOMkxaL01FS1QxajRISndXblJmYmozK0l0NkpCZXNk?=
 =?utf-8?B?WDVreWNnQzNSa2xKOTZoOHp6ZVB0Z2JzZ1A5TW9qRDByOVdMQmhPbzllWC9V?=
 =?utf-8?B?ZlNYT3E2d1d6MEh1VFBLR0owMXVBWTA3SVdvSGhRazhzMmpjeVJWZExFbVZl?=
 =?utf-8?B?Mkd2Q2J6aVUrSmhXK1VHaTRBeURSUWJOMnBHc0tNSm84dVcvdzdnZUhHUHls?=
 =?utf-8?B?NlFGUWtlOG9ZVU4zdDk1aVBGTEloLy9DaDBsM2pReXdyU2U4cC9sOWNjaTZi?=
 =?utf-8?B?WnJjbVJNWUFvRkpibFlNdlVJbEp2TmpXd25iWE1SRENpTm82UVhwN25XL3k2?=
 =?utf-8?B?M2pLbWpsNVVhZnUvSnNuV0NVT2oydkE2SE9BdllZdGFNMmxhQVN5N1haRnBF?=
 =?utf-8?B?K1hWSE5oS0FaWkdUOHB0d2YvQWROdW44dFdac0pjR2p2b1lZR2VjbHFhU2ZF?=
 =?utf-8?B?R2ppNzlDcEp0VUNEeEwzU04yMHFHZ3JVeVJJQS9sZGltYzQzbWlOQXhpYlNp?=
 =?utf-8?B?Tzh4TnlLOEtEWllUS3Z4aFJud2pMaUE1ekVjd1FMWkJsaWdIRkF5RFU4THpK?=
 =?utf-8?B?cGV0ODNHMmJIRDZVazN4NzF4ZGN5YkhFdll6dzl1SFVKYVRyYTUzMW10OUlN?=
 =?utf-8?B?SDh4L3ppeDdBSGV4NzYvN09RQ0xnKy9MeFgzaDc3WUtFRHV4M0s0WjN1OHg3?=
 =?utf-8?B?aFNQZ0tpK1NRWTVkQmMzY1RvV0o5QWt5TmFSZFdxQWJaMC9RemxYd1F6cG1s?=
 =?utf-8?Q?v17umNHXgyWVmR1ZeLPtGRGUg?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0acf21fd-0ed0-4e31-a196-08dc5969a0e0
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2024 14:22:18.8185
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /2ZcmmtpC3S/0NksgbRKDopFUvc261CS1ni5e3G/T190y/UqE0sEOZuo3TzKDG3x
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5721
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_072230_376795_5F7C0911 
X-CRM114-Status: GOOD (  23.93  )
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

QW0gMDkuMDQuMjQgdW0gMTg6Mzcgc2NocmllYiBULkouIE1lcmNpZXI6Cj4gT24gVHVlLCBBcHIg
OSwgMjAyNCBhdCAxMjozNOKAr0FNIFJvbmcgUWlhbmZlbmcgPDExMDY1NDE3QHZpdm8uY29tPiB3
cm90ZToKPj4KPj4g5ZyoIDIwMjQvNC84IDE1OjU4LCBDaHJpc3RpYW4gS8O2bmlnIOWGmemBkzoK
Pj4+IEFtIDA3LjA0LjI0IHVtIDA5OjUwIHNjaHJpZWIgUm9uZyBRaWFuZmVuZzoKPj4+PiBbU05J
UF0KPj4+Pj4gQW0gMTMuMTEuMjEgdW0gMDc6MjIgc2NocmllYiBKaWFucXVuIFh1Ogo+Pj4+Pj4g
QWRkIERNQV9CVUZfSU9DVExfU1lOQ19QQVJUSUFMIHN1cHBvcnQgZm9yIHVzZXIgdG8gc3luYyBk
bWEtYnVmIHdpdGgKPj4+Pj4+IG9mZnNldCBhbmQgbGVuLgo+Pj4+PiBZb3UgaGF2ZSBub3QgZ2l2
ZW4gYW4gdXNlIGNhc2UgZm9yIHRoaXMgc28gaXQgaXMgYSBiaXQgaGFyZCB0bwo+Pj4+PiByZXZp
ZXcuIEFuZCBmcm9tIHRoZSBleGlzdGluZyB1c2UgY2FzZXMgSSBkb24ndCBzZWUgd2h5IHRoaXMg
c2hvdWxkCj4+Pj4+IGJlIG5lY2Vzc2FyeS4KPj4+Pj4KPj4+Pj4gRXZlbiB3b3JzZSBmcm9tIHRo
ZSBleGlzdGluZyBiYWNrZW5kIGltcGxlbWVudGF0aW9uIEkgZG9uJ3QgZXZlbiBzZWUKPj4+Pj4g
aG93IGRyaXZlcnMgc2hvdWxkIGJlIGFibGUgdG8gZnVsZmlsbCB0aGlzIHNlbWFudGljcy4KPj4+
Pj4KPj4+Pj4gUGxlYXNlIGV4cGxhaW4gZnVydGhlciwKPj4+Pj4gQ2hyaXN0aWFuLgo+Pj4+IEhl
cmUgaXMgYSBwcmFjdGljYWwgY2FzZToKPj4+PiBUaGUgdXNlciBzcGFjZSBjYW4gYWxsb2NhdGUg
YSBsYXJnZSBjaHVuayBvZiBkbWEtYnVmIGZvcgo+Pj4+IHNlbGYtbWFuYWdlbWVudCwgdXNlZCBh
cyBhIHNoYXJlZCBtZW1vcnkgcG9vbC4KPj4+PiBTbWFsbCBkbWEtYnVmIGNhbiBiZSBhbGxvY2F0
ZWQgZnJvbSB0aGlzIHNoYXJlZCBtZW1vcnkgcG9vbCBhbmQKPj4+PiByZWxlYXNlZCBiYWNrIHRv
IGl0IGFmdGVyIHVzZSwgdGh1cyBpbXByb3ZpbmcgdGhlIHNwZWVkIG9mIGRtYS1idWYKPj4+PiBh
bGxvY2F0aW9uIGFuZCByZWxlYXNlLgo+Pj4+IEFkZGl0aW9uYWxseSwgY3VzdG9tIGZ1bmN0aW9u
YWxpdGllcyBzdWNoIGFzIG1lbW9yeSBzdGF0aXN0aWNzIGFuZAo+Pj4+IGJvdW5kYXJ5IGNoZWNr
aW5nIGNhbiBiZSBpbXBsZW1lbnRlZCBpbiB0aGUgdXNlciBzcGFjZS4KPj4+PiBPZiBjb3Vyc2Us
IHRoZSBhYm92ZS1tZW50aW9uZWQgZnVuY3Rpb25hbGl0aWVzIHJlcXVpcmUgdGhlCj4+Pj4gaW1w
bGVtZW50YXRpb24gb2YgYSBwYXJ0aWFsIGNhY2hlIHN5bmMgaW50ZXJmYWNlLgo+Pj4gV2VsbCB0
aGF0IGlzIG9idmlvdXMsIGJ1dCB3aGVyZSBpcyB0aGUgY29kZSBkb2luZyB0aGF0Pwo+Pj4KPj4+
IFlvdSBjYW4ndCBzZW5kIG91dCBjb2RlIHdpdGhvdXQgYW4gYWN0dWFsIHVzZXIgb2YgaXQuIFRo
YXQgd2lsbAo+Pj4gb2J2aW91c2x5IGJlIHJlamVjdGVkLgo+Pj4KPj4+IFJlZ2FyZHMsCj4+PiBD
aHJpc3RpYW4uCj4+IEluIGZhY3QsIHdlIGhhdmUgYWxyZWFkeSB1c2VkIHRoZSB1c2VyLWxldmVs
IGRtYS1idWYgbWVtb3J5IHBvb2wgaW4gdGhlCj4+IGNhbWVyYSBzaG9vdGluZyBzY2VuYXJpbyBv
biB0aGUgcGhvbmUuCj4+Cj4+ICAgRnJvbSB0aGUgdGVzdCByZXN1bHRzLCBUaGUgZXhlY3V0aW9u
IHRpbWUgb2YgdGhlIHBob3RvIHNob290aW5nCj4+IGFsZ29yaXRobSBoYXMgYmVlbiByZWR1Y2Vk
IGZyb20gMy44cyB0byAzcy4KPj4KPiBGb3IgcGhvbmVzLCB0aGUgKG91dCBvZiB0cmVlKSBBbmRy
b2lkIHZlcnNpb24gb2YgdGhlIHN5c3RlbSBoZWFwIGhhcyBhCj4gcGFnZSBwb29sIGNvbm5lY3Rl
ZCB0byBhIHNocmlua2VyLgoKV2VsbCwgaXQgc2hvdWxkIGJlIG9idmlvdXMgYnV0IEknbSBnb2lu
ZyB0byByZXBlYXQgaXQgaGVyZTogU3VibWl0dGluZyAKa2VybmVsIHBhdGNoZXMgZm9yIG91ciBv
ZiB0cmVlIGNvZGUgaXMgYSByYXRoZXIgKmV4dHJlbWUqIG5vLWdvLgoKVGhhdCBpbiBrZXJuZWwg
Y29kZSAqbXVzdCogaGF2ZSBhbiBpbiBrZXJuZWwgdXNlciBpcyBhIG51bWJlciBvbmUgcnVsZS4K
CldoZW4gc29tZWJvZHkgdmlvbGF0ZXMgdGhpcyBydWxlIGhlIHByZXR0eSBtdWNoIGRpc3F1YWxp
ZnlpbmcgaGltc2VsZiBhcyAKcmVsaWFibGUgc291cmNlIG9mIHBhdGNoZXMgc2luY2UgbWFpbnRh
aW5lcnMgdGhlbiBoYXZlIHRvIGFzc3VtZSB0aGF0IAp0aGlzIHBlcnNvbiB0cmllcyB0byBzdWJt
aXQgY29kZSB3aGljaCBkb2Vzbid0IGhhdmUgYSBqdXN0aWZpY2F0aW9uIHRvIApiZSB1cHN0cmVh
bS4KClNvIHdoaWxlIHRoaXMgYWN0dWFsbHkgbG9va3MgdXNlZnVsIGZyb20gdGhlIHRlY2huaWNh
bCBzaWRlwqBhcyBsb25nIGFzIApub2JvZHkgZG9lcyBhbiBpbXBsZW1lbnRhdGlvbiBiYXNlZCBv
biBhbiB1cHN0cmVhbSBkcml2ZXIgSSBhYnNvbHV0ZWx5IApoYXZlIHRvIHJlamVjdCBpdCBmcm9t
IHRoZSBvcmdhbml6YXRpb25hbCBzaWRlLgoKUmVnYXJkcywKQ2hyaXN0aWFuLgoKPiAgIFRoYXQg
YWxsb3dzIHlvdSB0byBza2lwIHBhZ2UKPiBhbGxvY2F0aW9uIHdpdGhvdXQgZnVsbHkgcGlubmlu
ZyB0aGUgbWVtb3J5IGxpa2UgeW91IGdldCB3aGVuCj4gYWxsb2NhdGluZyBhIGRtYS1idWYgdGhh
dCdzIHdheSBsYXJnZXIgdGhhbiBuZWNlc3NhcnkuIElmIGl0J3MgZm9yIGEKPiBjYW1lcmEgbWF5
YmUgeW91IG5lZWQgcGh5c2ljYWxseSBjb250aWd1b3VzIG1lbW9yeSwgYnV0IGl0J3MgYWxzbwo+
IHBvc3NpYmxlIHRvIHNldCB0aGF0IHVwLgo+Cj4gaHR0cHM6Ly9hbmRyb2lkLmdvb2dsZXNvdXJj
ZS5jb20va2VybmVsL2NvbW1vbi8rL3JlZnMvaGVhZHMvYW5kcm9pZDE0LTYuMS9kcml2ZXJzL2Rt
YS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYyMzNzcKPgo+Cj4+IFRvIGJlIGhvbmVzdCwgSSBkaWRu
J3QgdW5kZXJzdGFuZCB5b3VyIGNvbmNlcm4gIi4uLmhvdyBkcml2ZXJzIHNob3VsZCBiZQo+PiBh
YmxlIHRvIGZ1bGZpbGwgdGhpcyBzZW1hbnRpY3MuIiBDYW4geW91IHBsZWFzZSBoZWxwIGV4cGxh
aW4gaXQgaW4gbW9yZQo+PiBkZXRhaWw/Cj4+Cj4+IFRoYW5rcywKPj4KPj4gUm9uZyBRaWFuZmVu
Zy4KPj4KPj4+PiBUaGFua3MKPj4+PiBSb25nIFFpYW5mZW5nLgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
