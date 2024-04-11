Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 169E1CD128A
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Apr 2024 08:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XEIn4FsxviluP3SkRjjAARgaeMUhlRoS8r7fe2PsSxI=; b=dKzjEZ0/00zecpBEBruqJQ1V1l
	A1K24wT7GMr3q8H2HPNAJ67+wwwEp6Ok7IrRg+rsAdFN48qX0pnGsX0BUktzk0EkkR9cY7mQBMHsN
	HCivZOCllD8YAPg3RnzwFKXbWqPtuaxFq5KT4Mhz27IxbwgeUZjdiAGq5ROI08q2r0LYUlnSg+4xz
	XPncxHCzaXRBHL7aQhK6WSG54dL3Qcx0GbtSQEAl/r9z0JQ+VCsIvq55b2KYUzDPRG1Y4chdgBN64
	Z8Tucdw1xHteZxJXH44Fb5EReMT1M55J7Lk6i1uWAJxQcv3Xx8jsxU95T+W327J7AzLMvcDYVmtBA
	SEbnoAlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruq2M-0000000BA92-2kpu;
	Thu, 11 Apr 2024 08:44:02 +0000
Received: from mail-sgaapc01on20620.outbound.protection.outlook.com ([2a01:111:f400:feab::620] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruq2J-0000000BA7w-2v0d
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Apr 2024 08:44:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gPZAC99mUn1DYKpNRgj8pz4U5VF9hOgXwLsJa4dCdrjPJRnJEaPOJ93CIrUYDp4gnon/6AYEL0u5obec8In47G8ZD+MAOxq2/q3yOEBtN+UyCOlKVYoV2/qWKVTZ/9KLDbAqkoocHZdMpQO+6O5dLs5VBexFIDrxGMFNLFYfDP7H7I2zP4l5IKSJCsXd0ejqBe4kUxsBHTLCuzQYgBDUXdReTwt4gvThty5GUtCbl1L7m5sGF1KV8yDJvDXHnuk7r2Wbr2oiPsaEwSk1fKoqHwzVGqM2GkJhyG2S5QvaPZ0/bKE9h5Q0YREIuLRNK2Dq7RlA0oYN6nGMVzaDI7l0PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YdICYd8AHPB/nqHMaPuFEH7y6fHOJe7YCrfuid59zlA=;
 b=G5mdKMdoXxM7pgwfETk+/zJkWhZrYRb7JnWfqTwY7n1pHJUdYoDY60JhYnaNLp1U0uiffmo/dWj3bWVBkIce2sVFum+udhrUg+yRv2FRjpQ5bdIRwuUsQJ4XLiwze88Uch0qT2BiePMWZ1RQZ7+FxscBDBtgwVjdKgNQDWQiedcnBxXDrzMGVNxL3ixuMWEgz+GZSvuHFpoq+cBAizYqp2y91++izI6esiuFGjaXgGNUentVA/lPu347+cQCmTl0kaDVzMpFbQupBrpJAo7qiTDlOLIMVXtHzuOoA7JyfVSZ83HIGBETVBVxx9Xkqtxh90IIROPkczgyf42g7kOPZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YdICYd8AHPB/nqHMaPuFEH7y6fHOJe7YCrfuid59zlA=;
 b=EN8Nmyen2/aDpKTQv27JamiB+YYUDuvsNepnZS2sgZqhoJHc2R3TR7Hnzp/rYj6W2NjeU8Dqlc8kmLEkzRgoSfCryryb769goeY2H+lFgyKebs9x7rdau1PhZpXC/BRBwEbtXGzn7cxPjzejZ+2rCbQeUagEW2IrV/qwciQrycEOMmSr6ChafQgFgr/lBMTlXVja2VlFBnUems0gcOpoahiA4j7N1FvdEsr0DeagRXXuj6ZIpnobaJ0NGlUkFntg00KkVkrZJBh4Wk0+N5CMWxD4YEBrnf9c2GhTh31+rUycEWjWEOYrhPTa3O+zoz6Ef5Y/ZYLiuJhFt5mkXTW2CQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SI2PR06MB5140.apcprd06.prod.outlook.com (2603:1096:4:1af::9) by
 JH0PR06MB6703.apcprd06.prod.outlook.com (2603:1096:990:36::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.55; Thu, 11 Apr 2024 08:43:51 +0000
Received: from SI2PR06MB5140.apcprd06.prod.outlook.com
 ([fe80::a60c:298:c201:e4a1]) by SI2PR06MB5140.apcprd06.prod.outlook.com
 ([fe80::a60c:298:c201:e4a1%3]) with mapi id 15.20.7409.053; Thu, 11 Apr 2024
 08:43:51 +0000
Message-ID: <32f166c8-7810-4cef-befb-44e34f9b5372@vivo.com>
Date: Thu, 11 Apr 2024 16:43:46 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dma-buf: add DMA_BUF_IOCTL_SYNC_PARTIAL support
Content-Language: en-US
To: "T.J. Mercier" <tjmercier@google.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
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
 <0df41277-ded5-4a42-9df5-864d2b6646f5@amd.com>
 <CABdmKX03Of7OE_9PfAy5DWcCwwvQvJGXDjzAE8c4WRrz_0Z_eg@mail.gmail.com>
From: Rong Qianfeng <11065417@vivo.com>
In-Reply-To: <CABdmKX03Of7OE_9PfAy5DWcCwwvQvJGXDjzAE8c4WRrz_0Z_eg@mail.gmail.com>
X-ClientProxiedBy: TYCPR01CA0058.jpnprd01.prod.outlook.com
 (2603:1096:405:2::22) To SI2PR06MB5140.apcprd06.prod.outlook.com
 (2603:1096:4:1af::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SI2PR06MB5140:EE_|JH0PR06MB6703:EE_
X-MS-Office365-Filtering-Correlation-Id: 20d083b1-c31a-4df6-045e-08dc5a038340
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JliPPk+JxF9RK3lSif6gsh2/Gkn26W9T8AMHohRj2FTd+V6Z7BuL9/6UzGdVgYSILrr76gU9fwY6Lj9aAmnmkGIpyjCkUcWs7bgeNEIS1fZHzCyM0FciDp0XFBFMQIaCMWLenzgXducC6OOPjcSwcQC9uGmyfiXn0iU81ZZENRbwKvDKs7LU1F/YtNW651DNNgt3/t846OwXI30w3pDoidr5n6GTJ4U1oUCko4QqY/r+jYgFIXDWTphnwkoNigHF9KBU9v4NEUBigtLVy0vqCjxIn+BKJoeCeCpf7Fdy7aHDbLF+nb1+IKOfHN6+fVhc2LScI+DCIiom9SXLEtbLVYHpjUg9JWwFKGiBOZTEkCkF8qpFIkuEjPTYIoFljyY3RGH35xUZmE2+MRWAq64VNoxBidoGBCi7sBsdKmaARepaKDaYgjzbrMpUPh0twAW+PH3VGfjl7RJE9ukb/Xk9gEGpImUTNOyhH/oaAKzAvgmqK6yphR4H+jEelN1S+N3CFQtJs8xhoQ7f+Z3mBqBqd4peWF5BS50USEmQrorF8l8EdwgpC0IYffVR8x+zryvsEirotTBZVRH5vy0gDIfe1sX/lD0DG/ZtvXyaq7/VYjVf+eI7O2PDCp3xI4un9vrQxGRGoIlWsZr/2STBCtRQ5gXKdx6vHE6nJl8bdB70U7CuR3R8l9cLNIeSawgqZyDr
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SI2PR06MB5140.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(52116005)(1800799015)(376005)(366007)(7416005)(38350700005)(81742002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OXNyV3E5R05HdURORXVZUHhoK1pZQXNEblZzMzI0d0JUVVVQUnNmREIzNzlS?=
 =?utf-8?B?Qi9jNUM3ck84dHg2OXQyWXBzZFFjcWFCRjNJdHQrVnRGVnJnSlNsNENoNi9m?=
 =?utf-8?B?ZVg3NytCVERwTDZ1dlh0ZElkVkdESmticVpsLzczQ1BhVHRkSkV0aGJUeWR3?=
 =?utf-8?B?ZFo4OXMvczcxdmo3a283VlRzdStZczZra1lIVmI0YnRBSkJmL1B3ZmpKN0Ir?=
 =?utf-8?B?N3hYUHNpV3UwQWxRa1V6Tldpb0p2RnpaZFJuUDNVZ0RFNjgwRW5BS3VXd2cy?=
 =?utf-8?B?WFpTOGtvc1FoS3YraGg2aFc2ekh6cThrV2llbXp5QWhzYXhvNmxPYTVIMlhG?=
 =?utf-8?B?WkxWOVlUZ3pmdkFCWFA3dVBYczJKM242c1dVSU13OFZxM3QxMFBQbm43SklD?=
 =?utf-8?B?NmdaOC9aMWNERjZOY0RqeGZvTDJTUjlBVGJmR3lPYzhyM1pSNkZlb1lwSDN1?=
 =?utf-8?B?bkQ3WUEvN29XV0hGSWxEQ3hTWmVqanJyNkVuTFowUG1sUGdDcFhHdFpyU0VF?=
 =?utf-8?B?aFRhTEhQVC9SY1RpN210RXB6cG5aa0Y4YVJxamEyUnlNcW93THRIbzJjbjR4?=
 =?utf-8?B?MHBLSEtuRk9wZ0ZoTTFRb2FqTXV3cVR4aU44cGNpek9NWlFUbFY1U3IybnM2?=
 =?utf-8?B?WmRpcFIrNDFOSkl6cUVFenNPZkc5NVFhb2wvMjBQSUZoUGQrYkxMQW5TRmtz?=
 =?utf-8?B?QVhySkt2SythdFhmL1p1N09RU3lpTnV1QzFraHgxWTBWMnlWY2hJekg2S0Zy?=
 =?utf-8?B?eDZrY3VIN2FEUXZJUnd0dEhwRW1WbkExTTB1ZkFIbUxEYkhuQTRhRFdGQ0F3?=
 =?utf-8?B?ZExsZDQvWjY0U1dsWGY5ME5ZYTk0QkJkU2VnbEtsa2RkaVhXQ09sNEhCNmhE?=
 =?utf-8?B?dkE5SzRNWmlqcVBFTUhoUWxaN1QrcjhMWC92REdidWpqazVodEk0ejhQWGxm?=
 =?utf-8?B?aC9SRll0Z2M2ODdYRWIybVZYRFN0d0JoN1B3OEUyMmc5ZUMxeHdvZjFwV0I0?=
 =?utf-8?B?anFkTUZBOUZxQVE1Q29UQ2pkNm02dm53MWJNeS9iMU1vRC9PWXhwMk50RXpG?=
 =?utf-8?B?WklTaGpLSVVDdnMyeEd1MCtrUjBHektybURnVTUybEF2Z2dWQVQ1bU1zUWZ5?=
 =?utf-8?B?YWhWdW5kYlVLSVlwRStrVGRqbXJnWjJIQVBsWmgxMm44cTFUblpBeHNnelNO?=
 =?utf-8?B?STJ4UDlBc013ZTJzUWJlVEozSDdrdE81Y0drYklaYzFIcWZyUTJ2RDBha1NJ?=
 =?utf-8?B?UmRKeDd0Zkk5RVptQUhyMTY5N2F6bEwvMTdQc05GRGNZOHA3U3g4bkJSUnpU?=
 =?utf-8?B?bmlVMnpQR21pQXpSYk42U0VPQmUybzFTalJXMDYrUFJXQlVXUDVrU0hDUHFV?=
 =?utf-8?B?RjA2MnZTUFNoMFNFaS9KVWJ2YlFqbkpFM0o0VG1Yc21ZYm0yZDBzTUlEYkV4?=
 =?utf-8?B?bEFNR0dhcnd0L2o2WFJjNTlFSUM4YWVXSW5kcTFkVVp2Tll0UkhWTjUvOGVD?=
 =?utf-8?B?VjNMU1U3Yjd3MGRyckNsK1hvLytvNVppYzJ0bFZlUkMwODJzaE40cTZtZU1S?=
 =?utf-8?B?a2VrdnZaS0ZiUFUvblRndnpTdEtmcTcwZkprNVlYcmEvSXVjS0lmRWdGa21s?=
 =?utf-8?B?Nm00RDhXb0hscE5yMEw4NUViWGlVeWE1ZEowY3pLYXJrVjk2SHRuRlhLWity?=
 =?utf-8?B?eGJucUYxYi9US0ZEV2xTRXdkS0VYWWg1S1V1TE9ERWswbGtJVWEzVlo4UG1O?=
 =?utf-8?B?aThZcmNrZ0kvMnNvY1B1eWQxS3VUK0VDNEpqenFCdG9IdzE1NC9oNzNOVHZl?=
 =?utf-8?B?dW9Zenl0MFFnRVpWaVMwdThJb241VlNYdlhDcEhWcitDVTF1c3lPbTRYOGZU?=
 =?utf-8?B?dDRPQ09KZU8yQURBSnhNejJETnUvQjJEUlBRTkxxMGwwbXlGdWRsOFBYR09r?=
 =?utf-8?B?a2pxNmVJWkpTdmRDZHNnMTd0MWppbEJvOXVnYVM4dERPK3pmbEpZT21BS204?=
 =?utf-8?B?UTB3eWlRTlRGYTREeHBrMmlxK3JDT3ZFV1FTSS82NTlKRXc0ZDNneEdyQ2FL?=
 =?utf-8?B?VWJ0aHlFZVBVZjF0MnN4eTlkL2VqRFEvWElkQU1FSzUwWGVNSVNUeUdTNENq?=
 =?utf-8?Q?u7Y7f6oMlIo9tXOtvT0ELVPm9?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20d083b1-c31a-4df6-045e-08dc5a038340
X-MS-Exchange-CrossTenant-AuthSource: SI2PR06MB5140.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2024 08:43:51.5678
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zrk6kkKR4Dd6+Ibr+AUoezzmZq6cQOnLsaO6fcmzm/N6LPJJZfI6BRqQ9IsSVluUlPqu0OTH2Rji31wLMehorQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR06MB6703
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_014359_770238_2765F109 
X-CRM114-Status: GOOD (  29.50  )
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

CuWcqCAyMDI0LzQvMTAgMjM6MDcsIFQuSi4gTWVyY2llciDlhpnpgZM6Cj4gW1lvdSBkb24ndCBv
ZnRlbiBnZXQgZW1haWwgZnJvbSB0am1lcmNpZXJAZ29vZ2xlLmNvbS4gTGVhcm4gd2h5IHRoaXMg
aXMgaW1wb3J0YW50IGF0IGh0dHBzOi8vYWthLm1zL0xlYXJuQWJvdXRTZW5kZXJJZGVudGlmaWNh
dGlvbiBdCj4KPiBPbiBXZWQsIEFwciAxMCwgMjAyNCBhdCA3OjIy4oCvQU0gQ2hyaXN0aWFuIEvD
tm5pZwo+IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOgo+PiBBbSAwOS4wNC4yNCB1
bSAxODozNyBzY2hyaWViIFQuSi4gTWVyY2llcjoKPj4+IE9uIFR1ZSwgQXByIDksIDIwMjQgYXQg
MTI6MzTigK9BTSBSb25nIFFpYW5mZW5nIDwxMTA2NTQxN0B2aXZvLmNvbT4gd3JvdGU6Cj4+Pj4g
5ZyoIDIwMjQvNC84IDE1OjU4LCBDaHJpc3RpYW4gS8O2bmlnIOWGmemBkzoKPj4+Pj4gQW0gMDcu
MDQuMjQgdW0gMDk6NTAgc2NocmllYiBSb25nIFFpYW5mZW5nOgo+Pj4+Pj4gW1NOSVBdCj4+Pj4+
Pj4gQW0gMTMuMTEuMjEgdW0gMDc6MjIgc2NocmllYiBKaWFucXVuIFh1Ogo+Pj4+Pj4+PiBBZGQg
RE1BX0JVRl9JT0NUTF9TWU5DX1BBUlRJQUwgc3VwcG9ydCBmb3IgdXNlciB0byBzeW5jIGRtYS1i
dWYgd2l0aAo+Pj4+Pj4+PiBvZmZzZXQgYW5kIGxlbi4KPj4+Pj4+PiBZb3UgaGF2ZSBub3QgZ2l2
ZW4gYW4gdXNlIGNhc2UgZm9yIHRoaXMgc28gaXQgaXMgYSBiaXQgaGFyZCB0bwo+Pj4+Pj4+IHJl
dmlldy4gQW5kIGZyb20gdGhlIGV4aXN0aW5nIHVzZSBjYXNlcyBJIGRvbid0IHNlZSB3aHkgdGhp
cyBzaG91bGQKPj4+Pj4+PiBiZSBuZWNlc3NhcnkuCj4+Pj4+Pj4KPj4+Pj4+PiBFdmVuIHdvcnNl
IGZyb20gdGhlIGV4aXN0aW5nIGJhY2tlbmQgaW1wbGVtZW50YXRpb24gSSBkb24ndCBldmVuIHNl
ZQo+Pj4+Pj4+IGhvdyBkcml2ZXJzIHNob3VsZCBiZSBhYmxlIHRvIGZ1bGZpbGwgdGhpcyBzZW1h
bnRpY3MuCj4+Pj4+Pj4KPj4+Pj4+PiBQbGVhc2UgZXhwbGFpbiBmdXJ0aGVyLAo+Pj4+Pj4+IENo
cmlzdGlhbi4KPj4+Pj4+IEhlcmUgaXMgYSBwcmFjdGljYWwgY2FzZToKPj4+Pj4+IFRoZSB1c2Vy
IHNwYWNlIGNhbiBhbGxvY2F0ZSBhIGxhcmdlIGNodW5rIG9mIGRtYS1idWYgZm9yCj4+Pj4+PiBz
ZWxmLW1hbmFnZW1lbnQsIHVzZWQgYXMgYSBzaGFyZWQgbWVtb3J5IHBvb2wuCj4+Pj4+PiBTbWFs
bCBkbWEtYnVmIGNhbiBiZSBhbGxvY2F0ZWQgZnJvbSB0aGlzIHNoYXJlZCBtZW1vcnkgcG9vbCBh
bmQKPj4+Pj4+IHJlbGVhc2VkIGJhY2sgdG8gaXQgYWZ0ZXIgdXNlLCB0aHVzIGltcHJvdmluZyB0
aGUgc3BlZWQgb2YgZG1hLWJ1Zgo+Pj4+Pj4gYWxsb2NhdGlvbiBhbmQgcmVsZWFzZS4KPj4+Pj4+
IEFkZGl0aW9uYWxseSwgY3VzdG9tIGZ1bmN0aW9uYWxpdGllcyBzdWNoIGFzIG1lbW9yeSBzdGF0
aXN0aWNzIGFuZAo+Pj4+Pj4gYm91bmRhcnkgY2hlY2tpbmcgY2FuIGJlIGltcGxlbWVudGVkIGlu
IHRoZSB1c2VyIHNwYWNlLgo+Pj4+Pj4gT2YgY291cnNlLCB0aGUgYWJvdmUtbWVudGlvbmVkIGZ1
bmN0aW9uYWxpdGllcyByZXF1aXJlIHRoZQo+Pj4+Pj4gaW1wbGVtZW50YXRpb24gb2YgYSBwYXJ0
aWFsIGNhY2hlIHN5bmMgaW50ZXJmYWNlLgo+Pj4+PiBXZWxsIHRoYXQgaXMgb2J2aW91cywgYnV0
IHdoZXJlIGlzIHRoZSBjb2RlIGRvaW5nIHRoYXQ/Cj4+Pj4+Cj4+Pj4+IFlvdSBjYW4ndCBzZW5k
IG91dCBjb2RlIHdpdGhvdXQgYW4gYWN0dWFsIHVzZXIgb2YgaXQuIFRoYXQgd2lsbAo+Pj4+PiBv
YnZpb3VzbHkgYmUgcmVqZWN0ZWQuCj4+Pj4+Cj4+Pj4+IFJlZ2FyZHMsCj4+Pj4+IENocmlzdGlh
bi4KPj4+PiBJbiBmYWN0LCB3ZSBoYXZlIGFscmVhZHkgdXNlZCB0aGUgdXNlci1sZXZlbCBkbWEt
YnVmIG1lbW9yeSBwb29sIGluIHRoZQo+Pj4+IGNhbWVyYSBzaG9vdGluZyBzY2VuYXJpbyBvbiB0
aGUgcGhvbmUuCj4+Pj4KPj4+PiAgICBGcm9tIHRoZSB0ZXN0IHJlc3VsdHMsIFRoZSBleGVjdXRp
b24gdGltZSBvZiB0aGUgcGhvdG8gc2hvb3RpbmcKPj4+PiBhbGdvcml0aG0gaGFzIGJlZW4gcmVk
dWNlZCBmcm9tIDMuOHMgdG8gM3MuCj4+Pj4KPj4+IEZvciBwaG9uZXMsIHRoZSAob3V0IG9mIHRy
ZWUpIEFuZHJvaWQgdmVyc2lvbiBvZiB0aGUgc3lzdGVtIGhlYXAgaGFzIGEKPj4+IHBhZ2UgcG9v
bCBjb25uZWN0ZWQgdG8gYSBzaHJpbmtlci4KPj4gV2VsbCwgaXQgc2hvdWxkIGJlIG9idmlvdXMg
YnV0IEknbSBnb2luZyB0byByZXBlYXQgaXQgaGVyZTogU3VibWl0dGluZwo+PiBrZXJuZWwgcGF0
Y2hlcyBmb3Igb3VyIG9mIHRyZWUgY29kZSBpcyBhIHJhdGhlciAqZXh0cmVtZSogbm8tZ28uCj4+
Cj4gU29ycnkgSSB0aGluayBteSBjb21tZW50IGxlZCB0byBzb21lIGNvbmZ1c2lvbi4gSSB3YXNu
J3Qgc3VnZ2VzdGluZwo+IHlvdSBzaG91bGQgdGFrZSB0aGUgcGF0Y2g7IGl0J3MgY2xlYXJseSBp
bmNvbXBsZXRlLiBJIHdhcyBwb2ludGluZyBvdXQKPiBhbm90aGVyIG9wdGlvbiB0byBSb25nLiBJ
dCBhcHBlYXJzIFJvbmcgaXMgY3JlYXRpbmcgYSBzaW5nbGUgb3ZlcnNpemVkCj4gZG1hLWJ1Ziwg
YW5kIHN1YmRpdmlkaW5nIGl0IGluIHVzZXJzcGFjZSB0byBhdm9pZCBtdWx0aXBsZSBhbGxvY2F0
aW9ucwo+IGZvciBtdWx0aXBsZSBidWZmZXJzLiBUaGF0IHdvdWxkIGxlYWQgdG8gYSBuZWVkIGZv
ciBhIHBhcnRpYWwgc3luYyBvZgo+IHRoZSBidWZmZXIgZnJvbSB1c2Vyc3BhY2UuIEluc3RlYWQg
b2YgdGhhdCwgdXNpbmcgYSBoZWFwIHdpdGggYSBwYWdlCj4gcG9vbCBnZXRzIHlvdSBraW5kIG9m
IHRoZSBzYW1lIHRoaW5nIHdpdGggYSBsb3QgbGVzcyBoZWFkYWNoZSBpbgo+IHVzZXJzcGFjZSwg
YW5kIG5vIG5lZWQgZm9yIHBhcnRpYWwgc3luYy4gU28gSSB3YW50ZWQgdG8gc2hhcmUgdGhhdAo+
IG9wdGlvbiwgYW5kIHRoYXQgY2FuIGdvIGluIGp1c3QgQW5kcm9pZCBpZiBuZWNlc3Nhcnkgd2l0
aG91dCB0aGlzCj4gcGF0Y2guCgpIaSBULkouCgpJZiB0aGVyZSBpcyBhIGNoYW5jZSB0byB1c2Ug
dGhpcyBwYXRjaCBvbiBBbmRyb2lkLCBJIGNhbiBleHBsYWluIHRvIHlvdSAKaW4gZGV0YWlsCgp3
aHkgdGhlIHVzZXIgbGF5ZXIgbmVlZHMgdGhlIGRtYS1idWYgbWVtb3J5IHBvb2wuCgpUaGFua3MK
ClJvbmcgUWlhbmZlbmcKCj4KPj4gVGhhdCBpbiBrZXJuZWwgY29kZSAqbXVzdCogaGF2ZSBhbiBp
biBrZXJuZWwgdXNlciBpcyBhIG51bWJlciBvbmUgcnVsZS4KPj4KPj4gV2hlbiBzb21lYm9keSB2
aW9sYXRlcyB0aGlzIHJ1bGUgaGUgcHJldHR5IG11Y2ggZGlzcXVhbGlmeWluZyBoaW1zZWxmIGFz
Cj4+IHJlbGlhYmxlIHNvdXJjZSBvZiBwYXRjaGVzIHNpbmNlIG1haW50YWluZXJzIHRoZW4gaGF2
ZSB0byBhc3N1bWUgdGhhdAo+PiB0aGlzIHBlcnNvbiB0cmllcyB0byBzdWJtaXQgY29kZSB3aGlj
aCBkb2Vzbid0IGhhdmUgYSBqdXN0aWZpY2F0aW9uIHRvCj4+IGJlIHVwc3RyZWFtLgo+Pgo+PiBT
byB3aGlsZSB0aGlzIGFjdHVhbGx5IGxvb2tzIHVzZWZ1bCBmcm9tIHRoZSB0ZWNobmljYWwgc2lk
ZSBhcyBsb25nIGFzCj4+IG5vYm9keSBkb2VzIGFuIGltcGxlbWVudGF0aW9uIGJhc2VkIG9uIGFu
IHVwc3RyZWFtIGRyaXZlciBJIGFic29sdXRlbHkKPj4gaGF2ZSB0byByZWplY3QgaXQgZnJvbSB0
aGUgb3JnYW5pemF0aW9uYWwgc2lkZS4KPj4KPj4gUmVnYXJkcywKPj4gQ2hyaXN0aWFuLgo+Pgo+
Pj4gICAgVGhhdCBhbGxvd3MgeW91IHRvIHNraXAgcGFnZQo+Pj4gYWxsb2NhdGlvbiB3aXRob3V0
IGZ1bGx5IHBpbm5pbmcgdGhlIG1lbW9yeSBsaWtlIHlvdSBnZXQgd2hlbgo+Pj4gYWxsb2NhdGlu
ZyBhIGRtYS1idWYgdGhhdCdzIHdheSBsYXJnZXIgdGhhbiBuZWNlc3NhcnkuIElmIGl0J3MgZm9y
IGEKPj4+IGNhbWVyYSBtYXliZSB5b3UgbmVlZCBwaHlzaWNhbGx5IGNvbnRpZ3VvdXMgbWVtb3J5
LCBidXQgaXQncyBhbHNvCj4+PiBwb3NzaWJsZSB0byBzZXQgdGhhdCB1cC4KPj4+Cj4+PiBodHRw
czovL2FuZHJvaWQuZ29vZ2xlc291cmNlLmNvbS9rZXJuZWwvY29tbW9uLysvcmVmcy9oZWFkcy9h
bmRyb2lkMTQtNi4xL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jIzM3Nwo+Pj4K
Pj4+Cj4+Pj4gVG8gYmUgaG9uZXN0LCBJIGRpZG4ndCB1bmRlcnN0YW5kIHlvdXIgY29uY2VybiAi
Li4uaG93IGRyaXZlcnMgc2hvdWxkIGJlCj4+Pj4gYWJsZSB0byBmdWxmaWxsIHRoaXMgc2VtYW50
aWNzLiIgQ2FuIHlvdSBwbGVhc2UgaGVscCBleHBsYWluIGl0IGluIG1vcmUKPj4+PiBkZXRhaWw/
Cj4+Pj4KPj4+PiBUaGFua3MsCj4+Pj4KPj4+PiBSb25nIFFpYW5mZW5nLgo+Pj4+Cj4+Pj4+PiBU
aGFua3MKPj4+Pj4+IFJvbmcgUWlhbmZlbmcuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
