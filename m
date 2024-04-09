Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6014CC67861
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Apr 2024 07:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RKgzdmqdlS7fHnJgoIQdd7fpZFozD/7k7nne3UHZI+0=; b=0Nhdee+ir6wVQC5DOzU2Z/i8LB
	fa4DzoRTEQmJDJ8NBBDdSL7jNAXe9bszI91yhtAqTSzkO0bfyGpty9SDJg3eGzYU/3c4/DCpiR3GG
	b+8BVOB6blK1hJ/NB9U9hELxmMZP98XehQ6g7D6FYeF/ijuD0HiThvAG7YjFxHxlyXzsJlIiogHtH
	xtkKKikRy1pzVCyJKj0F9ntmRV8rJeWs3VBjj/ujOxrESq9cxGCVPF/WZjMLrIGBAiEApY2LVfuMq
	AXYVWQesr3MuKKivES7AUq7G/lbQokg4ZmBt3+64ZKVitOGqRQLDO+fDnRg3pyBo/JKr1ibdmmqwB
	bvkoB0RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ru5yT-00000000lMY-1C57;
	Tue, 09 Apr 2024 07:32:57 +0000
Received: from mail-sgaapc01on2070b.outbound.protection.outlook.com ([2a01:111:f400:feab::70b] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ru5yP-00000000lFr-1hN7
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Apr 2024 07:32:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xullh10Zva2jD0YY/derK6gSwYBFf0jK/zRJRECtNkMxPoWGDPpGT2FgybIQiGg+AXXci0dRFVxCA4Pc2KSdrDCvOxaGbyvaoFgMeRUdEf+FEnxVmWlykbj+F5jge2/E/dAip38cS0ieRT8uvKaf8180dqloSE5T3hce9uZ9QSaSz8dcvIDJJL9JCx6oJZYRrBzBfRq948a+n/KFBC+4Y92ZoZQBRobCnPrcXESBmRyzRKk1g4NH3Io7rIUkuxgJgQQMlw3brhhI3e8DMG60h9pFCoUxky8MJV1Gu9Z01G48jA0zrDYEctkVv1hzw1wg9YqjEsomCI/BUl4a7u8+4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2pB/4+zaZFgcr/yH5WFbcvfSTz7QiVNqcENnUiVVQdQ=;
 b=UZUHURbhgWSw6Jf2RDBjCGpEfC2Y6ZU+JFhNzdQf9I8MCMrMcmJrTRBmSFk0DM5os8aIyg8NFDmCXxxwwDoHD08FL7c/+ltWAa165o65R0yNZ1BXD7zvFoH0l5iCHQnzvf828PiB2v9ck+h/NQOXawzeWIn9KQqHpXUtQfeBxYslKTEGiUFLbR+T4hf/vu5kS5NytlYtsE7gNeP17fFipeEnl96SPXV/6WdjWfwKl28IeaeSR1cjDGso4Tog6azdFHT/t/taXWYfmlEByvOu1bfViE7xNvOP0cx50sFt+1wZycWFJVH7TjNFGOeE6OS0uB214l3WeI9JrkFWxMoTwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2pB/4+zaZFgcr/yH5WFbcvfSTz7QiVNqcENnUiVVQdQ=;
 b=jTCeL9KWGhPraDrhUrNAeXPmXGZpiEfIkz3X4TIv1TepaaD+fPNUBHxsFRUht4IGQnp+Tx8NnG3PZ4x2c9tFFYEoLigs2XcOkOEXKu0mFqEPqULMdKIlbDB4O39c6GR0e1FlDDE3OTq3KOOPS7I5NmKVp0r2FTcVIqhQkBTUXCAsVrqEfyz5bS43IR3R2V77e/3K5mU8PhLBmyz1/25cWDLLrBGO3DHUt2/3O8AL5ZxhCTu5ZehnT/g6Kp4dSeP2uTv10YwLdFUTX4nl8oRRqzbR4Kj+clgb3DlQvGQakavu2q/Gw9H9INsyFmZDb+c2XlPEz+Y6dHfpIb73D5/tvw==
Received: from SI2PR06MB5140.apcprd06.prod.outlook.com (2603:1096:4:1af::9) by
 SEYPR06MB6564.apcprd06.prod.outlook.com (2603:1096:101:16c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Tue, 9 Apr
 2024 07:32:34 +0000
Received: from SI2PR06MB5140.apcprd06.prod.outlook.com
 ([fe80::a60c:298:c201:e4a1]) by SI2PR06MB5140.apcprd06.prod.outlook.com
 ([fe80::a60c:298:c201:e4a1%3]) with mapi id 15.20.7409.053; Tue, 9 Apr 2024
 07:32:34 +0000
Message-ID: <5c7ac24c-79fa-45fc-a4fd-5b8fc77a741b@vivo.com>
Date: Tue, 9 Apr 2024 15:32:31 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dma-buf: add DMA_BUF_IOCTL_SYNC_PARTIAL support
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Rong Qianfeng <rongqianfeng@vivo.com>, Jianqun Xu <jay.xu@rock-chips.com>,
 sumit.semwal@linaro.org
Cc: pekka.paalanen@collabora.com, daniel.vetter@ffwll.ch,
 jason@jlekstrand.net, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20211113062222.3743909-1-jay.xu@rock-chips.com>
 <1da5cdf0-ccb8-3740-cf96-794c4d5b2eb4@amd.com>
 <3175d41a-fc44-4741-91ac-005c8f21abb8@vivo.com>
 <9e6f1f52-db49-43bb-a0c2-b0ad12c28aa1@amd.com>
From: Rong Qianfeng <11065417@vivo.com>
In-Reply-To: <9e6f1f52-db49-43bb-a0c2-b0ad12c28aa1@amd.com>
X-ClientProxiedBy: SI2PR02CA0025.apcprd02.prod.outlook.com
 (2603:1096:4:195::21) To SI2PR06MB5140.apcprd06.prod.outlook.com
 (2603:1096:4:1af::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SI2PR06MB5140:EE_|SEYPR06MB6564:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9B9aUgMtylU1x8nnPKjLeIMIFC9V3kN+7PqNKzeOaqFmLW9ARSmNmXmkAsRYngQRFqif+eP7U/v+KyZnvCVYxBfspWiRLghySbI+szp2BqgTev3gLP8BsoB4bMkS/rh/JTVp6g8NHtK2Vqr4I8BJAw225PFmu4AqoxdOb9R5XG1jd//8c6k40lLrvBGllB87kEdrhm3clRayvuoRtC7oElGYeY4me0toDf8/DzpRQpCtPrtwLF7m0fMaFgd/fTPvw6rIep++v9ycDthitPjomEpEGK/SfY5e4FySO1yWXk8FwUBz8fEw4UQdd/E6U3G9Kd7RNEOtxW05nJhqPcWURk9vtJ+pCA9/lUe2PYs9iyEfk3dbB4QJgEUNlo6YY6iw/qhF6CxEPPyyTgRADkbrFmzU7J6UEiLrqtPZ9vAJNQXFOnWfY+wAxSa3nPjMFFedW1RrOtvrTGU0PpUmOlZUGNo3Zs51CSDirZcqzhIKwWxCTEMfSy17NZwo5mjp8KLnKLKCgW7SXemmSLLX2EjH3pBZROG2dX2UfDOcD4OACu9ilJz0l2QWMbTCxC9PTH4PZFRm7R70magKCq3m+bCQSORBau5BGMDvD4/j0BtyPM9PFUcm1YPMX/8DSbrMdEqAYY5E2N+m7SxSfefbtsuEpmX/wPweXQsEZ8GafwgYcOwmH1OQlqPiVit81zX11gKHk1NmHx+4wSn7732MyCl56naYbKdYxYwtYLpRRfiHwUQ08JQWsu5tpEAnyIXf+BHx
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SI2PR06MB5140.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(7416005)(1800799015)(52116005)(376005)(38350700005)(81742002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXpMZGFEM2w0aTdjYjViZmlzVzFzL0I4US94M1hzS3Y3L2puSmpzMFIyck9I?=
 =?utf-8?B?VmJ4Ny95Q0xJekRHS1h3UzZsTkhIaWpYMTViY1dxcGhBS2tMN1F6Vyt5eXpq?=
 =?utf-8?B?RllmL01LTXE5ekxTWlZGY2NHcU9sS3ZIRDFwOG1TZ1JBNmpxd2lqajY1UWRU?=
 =?utf-8?B?VHJYSFZmclN4NGViN3ZxZm5udnVKc25sVmEwY2xtWnBHbUYrL3ZZdTBLVGZv?=
 =?utf-8?B?QUY5TWZMamZuTHZDVHdDSE9oanE5Nm04cW9yN0hWQUN4bGdpRnF4cnQ4bEM3?=
 =?utf-8?B?WWt3MUlyeEdLeWJnRFpzMFBRSmFLN0RXNnN1MkhxejBxQk04YVByTDFraTRF?=
 =?utf-8?B?Z0ptOHFBVGw4M2ZyKzlyM3puRGM3OTZJRnNZbVkxK1oyb1g2RWJFUGhrUnZU?=
 =?utf-8?B?czZqMUlHc0g5bnl1VGdXeU9oSlVYd0h0Q2xIS2pueENPdjlkeUxvMStrVW5a?=
 =?utf-8?B?UDJ6SU9OSGNGOUhSVmFnZXU1WGcrSTdoYlRmMDVxcGpwU0tyWmJwK0tMenRZ?=
 =?utf-8?B?MC9PYzVVeUwwTUhjY0o2TThlcUJDV0NOTjVTaUgyL0JZMStDNGZCRVVyNE95?=
 =?utf-8?B?Uy95YllacjFEaTlpUHFXNVZUbVJ6eGlKNmZUQlZmKzU3Z3lta3FCY2FkUjBm?=
 =?utf-8?B?RHV2M29leXY4dEVvM1J5WXR5ZTZCdnduWnRJNW9DS1RHcFVsUWhJMVVRZTkz?=
 =?utf-8?B?KzRpTHVBeFB6VGpXVm44OHhQcXQxRWtCTGhiZWE2ZDJkeGpXNFZhVng1VEdi?=
 =?utf-8?B?VVlrU2huVDBXOTZzZGRSSVJPUWptZVROdU5lM2t5S2hCcjFOT0hzNmFWeXRr?=
 =?utf-8?B?ZjE2blZvMFMvaEZsdzB4SUtJb0dHVlJCV2R0Q1g5RUZQVTBpWVZQMFg4dWpD?=
 =?utf-8?B?NnROczcwNGZqdFlhQjFqenRRL3RYVzBQWGJYblJINGpGTU5TVlZrNHpKNHM0?=
 =?utf-8?B?RGRMSENNRmp6OG9qT1F1Y0VXZFpwbndYNk5GakFoU0hnaG9vblpPVHN2eWh3?=
 =?utf-8?B?L3BLdEdVeUVpcVhzV3JxTTd5RXhta0RiSkg1N0szamRKK1BMc1lsamNPYmkw?=
 =?utf-8?B?ODUyN0pTakVwSkFnWUZLbkZPN0JvV3N4d05NQklDY2hBYXl4dGlzS1NZNHRB?=
 =?utf-8?B?MlA2UjlxRjV6LzQ4cXVkWUZRSm1aUmRQM05PQXJFZkJGQ1JvcTVYM1Zsczcy?=
 =?utf-8?B?NlhTYXBubWY3dU5OTjlZV0NzejNKeXJtZXUzNWEyck93MmxrczVKMmNaK1Uz?=
 =?utf-8?B?cThubFFUSHh5NzZ6U25yM3lqdE1GeUcxR1VROWlmMGdzMzVFS0V1Vk1UWVFn?=
 =?utf-8?B?YVZaK2R0YWwyZmtBSFIyOThtcmZwRWZpNWt3Rlc0THJxa0paOHpXVDAvaXFV?=
 =?utf-8?B?SmMzQjRrdUI4US9YbDE1TGY1VnE0M1NMeENiREdrNjZvc0wwbnFNaXVBMThI?=
 =?utf-8?B?WVMxYVhZMG1TeWVvVmNEMFlTcUNjTzlXZmFpRHUyNldwZTdxdFl4b3BYZTFl?=
 =?utf-8?B?Y2tweW9XUTk4eGJSWHV0L3lGemErVkhQSWQ0QXU5N0I5bUpvYzU4WG9OZnM5?=
 =?utf-8?B?RXhiTXEybDU3VjlqL0xTWXE5SUV4cVRBWlJLTFBFZFJmMHJ1Y1hmUDQ5MXF0?=
 =?utf-8?B?aTYwTEc5MG9Pcjg4akFORjY3ZXl2M3k2RGhyVmdJSWYwVnpaZDV0dCtVcGdr?=
 =?utf-8?B?dS8zMVJzaUM0Wkd1L1ZYdzk0aEg0amVidHZJRUpieHVjNlMvVEVGd1FqbHpT?=
 =?utf-8?B?L09WQUdXUUlWVG1qaGwya0hKZmhUNHU4T1FxWllrenFMM05NSS9YNnFVYU9D?=
 =?utf-8?B?eXZvQjlqOTB0RHVHQzF2MURTSU1LSjcvSTBDNVExVWdTcVV5UndUN2ZiU2tx?=
 =?utf-8?B?d0VzRHM1WlZ6ZGZEUGRMVWNNb3R4bmJiUlBLREU5czF6Rk8zUTc0cXp1OS9M?=
 =?utf-8?B?VjQwbHpjUlRia3MzUHgxRDZzb3JnL1BWeEh4K0FOcHlzczVCYzdON3dpMlZx?=
 =?utf-8?B?WUIzZnhmenJtdkZSQTB2RWxvNWVLWC9WZ1I5UFRyb1lFcHJraTJQWHZ1aU9q?=
 =?utf-8?B?TmJXS2RLbUVqa1cxdGJLN0c3bHVWaFJadmRrbEFOWnRWa0hNNEpDdVNDN0k3?=
 =?utf-8?Q?PCMRcrvQ7AULorsMfuWsoWTzV?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cdde8fc7-a667-4a37-fcbf-08dc58673929
X-MS-Exchange-CrossTenant-AuthSource: SI2PR06MB5140.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2024 07:32:34.4558
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9AiXdDMq2Ip/SwPt5KE9T0wFYk/DFqL30aL6JKOrraoQjBACTjeVylYigNfO+0EWv1eutw/mZCQ3Vv9zwL8S8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR06MB6564
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_003253_868159_875ED79A 
X-CRM114-Status: GOOD (  15.85  )
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

CuWcqCAyMDI0LzQvOCAxNTo1OCwgQ2hyaXN0aWFuIEvDtm5pZyDlhpnpgZM6Cj4gQW0gMDcuMDQu
MjQgdW0gMDk6NTAgc2NocmllYiBSb25nIFFpYW5mZW5nOgo+PiBbU05JUF0KPj4+IEFtIDEzLjEx
LjIxIHVtIDA3OjIyIHNjaHJpZWIgSmlhbnF1biBYdToKPj4+PiBBZGQgRE1BX0JVRl9JT0NUTF9T
WU5DX1BBUlRJQUwgc3VwcG9ydCBmb3IgdXNlciB0byBzeW5jIGRtYS1idWYgd2l0aAo+Pj4+IG9m
ZnNldCBhbmQgbGVuLgo+Pj4KPj4+IFlvdSBoYXZlIG5vdCBnaXZlbiBhbiB1c2UgY2FzZSBmb3Ig
dGhpcyBzbyBpdCBpcyBhIGJpdCBoYXJkIHRvIAo+Pj4gcmV2aWV3LiBBbmQgZnJvbSB0aGUgZXhp
c3RpbmcgdXNlIGNhc2VzIEkgZG9uJ3Qgc2VlIHdoeSB0aGlzIHNob3VsZCAKPj4+IGJlIG5lY2Vz
c2FyeS4KPj4+Cj4+PiBFdmVuIHdvcnNlIGZyb20gdGhlIGV4aXN0aW5nIGJhY2tlbmQgaW1wbGVt
ZW50YXRpb24gSSBkb24ndCBldmVuIHNlZSAKPj4+IGhvdyBkcml2ZXJzIHNob3VsZCBiZSBhYmxl
IHRvIGZ1bGZpbGwgdGhpcyBzZW1hbnRpY3MuCj4+Pgo+Pj4gUGxlYXNlIGV4cGxhaW4gZnVydGhl
ciwKPj4+IENocmlzdGlhbi4KPj4gSGVyZSBpcyBhIHByYWN0aWNhbCBjYXNlOgo+PiBUaGUgdXNl
ciBzcGFjZSBjYW4gYWxsb2NhdGUgYSBsYXJnZSBjaHVuayBvZiBkbWEtYnVmIGZvciAKPj4gc2Vs
Zi1tYW5hZ2VtZW50LCB1c2VkIGFzIGEgc2hhcmVkIG1lbW9yeSBwb29sLgo+PiBTbWFsbCBkbWEt
YnVmIGNhbiBiZSBhbGxvY2F0ZWQgZnJvbSB0aGlzIHNoYXJlZCBtZW1vcnkgcG9vbCBhbmQgCj4+
IHJlbGVhc2VkIGJhY2sgdG8gaXQgYWZ0ZXIgdXNlLCB0aHVzIGltcHJvdmluZyB0aGUgc3BlZWQg
b2YgZG1hLWJ1ZiAKPj4gYWxsb2NhdGlvbiBhbmQgcmVsZWFzZS4KPj4gQWRkaXRpb25hbGx5LCBj
dXN0b20gZnVuY3Rpb25hbGl0aWVzIHN1Y2ggYXMgbWVtb3J5IHN0YXRpc3RpY3MgYW5kIAo+PiBi
b3VuZGFyeSBjaGVja2luZyBjYW4gYmUgaW1wbGVtZW50ZWQgaW4gdGhlIHVzZXIgc3BhY2UuCj4+
IE9mIGNvdXJzZSwgdGhlIGFib3ZlLW1lbnRpb25lZCBmdW5jdGlvbmFsaXRpZXMgcmVxdWlyZSB0
aGUgCj4+IGltcGxlbWVudGF0aW9uIG9mIGEgcGFydGlhbCBjYWNoZSBzeW5jIGludGVyZmFjZS4K
Pgo+IFdlbGwgdGhhdCBpcyBvYnZpb3VzLCBidXQgd2hlcmUgaXMgdGhlIGNvZGUgZG9pbmcgdGhh
dD8KPgo+IFlvdSBjYW4ndCBzZW5kIG91dCBjb2RlIHdpdGhvdXQgYW4gYWN0dWFsIHVzZXIgb2Yg
aXQuIFRoYXQgd2lsbCAKPiBvYnZpb3VzbHkgYmUgcmVqZWN0ZWQuCj4KPiBSZWdhcmRzLAo+IENo
cmlzdGlhbi4KCkluIGZhY3QsIHdlIGhhdmUgYWxyZWFkeSB1c2VkIHRoZSB1c2VyLWxldmVsIGRt
YS1idWYgbWVtb3J5IHBvb2wgaW4gdGhlIApjYW1lcmEgc2hvb3Rpbmcgc2NlbmFyaW8gb24gdGhl
IHBob25lLgoKIEZyb20gdGhlIHRlc3QgcmVzdWx0cywgVGhlIGV4ZWN1dGlvbiB0aW1lIG9mIHRo
ZSBwaG90byBzaG9vdGluZyAKYWxnb3JpdGhtIGhhcyBiZWVuIHJlZHVjZWQgZnJvbSAzLjhzIHRv
IDNzLgoKVG8gYmUgaG9uZXN0LCBJIGRpZG4ndCB1bmRlcnN0YW5kIHlvdXIgY29uY2VybiAiLi4u
aG93IGRyaXZlcnMgc2hvdWxkIGJlIAphYmxlIHRvIGZ1bGZpbGwgdGhpcyBzZW1hbnRpY3MuIiBD
YW4geW91IHBsZWFzZSBoZWxwIGV4cGxhaW4gaXQgaW4gbW9yZSAKZGV0YWlsPwoKVGhhbmtzLAoK
Um9uZyBRaWFuZmVuZy4KCj4KPj4KPj4gVGhhbmtzCj4+IFJvbmcgUWlhbmZlbmcuCj4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
