Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A71E0C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 17:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HTViFxbYehThEfENRezTjyDoPeB0MJ0g5M8+Za0IhRY=; b=nJb6MyqaGflzlN
	Wmfbv6SiTrm1pWPN2AkknpAFl5Uvr17iY43GgdssrVzm1LVv76B9I6Qn6bEm1Aw1ICmMCgHEB07Qe
	7LWpVXzgGmurVgsSc8/kYl07aoV4DAJkCOc4FkHoTrwjxOTOaVnspFVG5xJ7KdEyYMQ6nNB5hv/Io
	tHIiyD0XwN8q1lry0/BPRO3nH+23MDOc4Kt1lOTDPl9XMRjZfffOORch9uH2nJfzwR6aqAXp+Dvq2
	cEMlFZHYr8YbVLizzROaEQISoIH+LYnliePfYP0s3uKT1GBy0Rx5tSd4Q8JYyhml5dAH2S2ei/WRB
	cy3P/lLjKjMzdD4CAyKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxASt-00GFSs-Vu; Mon, 21 Nov 2022 17:20:16 +0000
Received: from mail-tycjpn01olkn20831.outbound.protection.outlook.com ([2a01:111:f403:7010::831] helo=JPN01-TYC-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxAM9-00GCOC-QR; Mon, 21 Nov 2022 17:13:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eb8DP6CDTDkQwFi7DOqpo4pxB/TsoPcnc27Ed1zh34aDDPIlYJh2tygRa/SqG6r4GmhTR3OCf/LYchy8drCQRm90ulwm4/zepaiWNOjsRTIgNb4U20NzyG/SELpCesZNhMZwmqM+TWp/Sg4ex++GZvcZg7P+WcW2bxP2S9iHpi1Yxs69Sg8BH37nPEiGVcdXg3lm6r9FOJn8o524QywpN6spk3NHqFhrt9KR6jxTtPSd1zzuxjDSu8q+jg6XtaagDvkwN5XuBLqMmSfy+eetaD1gKAfVJKJ7UNkF46mY9l2b6YQzF1Wdy9sXmzqE810vZGcMp9W7peUMJrL1tAoYKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rnXfQPQ4t4bm5arV9+8gd5VkfqXUuRtiwOe2mP3I6GM=;
 b=UFooCfwdwCkJUR8eGcwJRjvaNPiE15TKgT2P/CjaRRbugPU29KE/TJ6VEkhh32e2lOTutQlvJRLNRlfS9jdIpjkRyOw0qHfWk09vZCcI3go8125X7Xqh1jUx+LO3lfUKM01mbGko3EnBqFiyG/93Ng1uq5+PJ6Mzq30qlc7+PJiDjcMdaQrCVEbs5ufdSarU9bp2tnK/C+vDp8ajF665yoUxY8uV5j9ShhScpb4gO4dazj5I9IvkQGJe+54w1mCNBrH+Yu6KfvWM+iDM0T5JXinYcXY9c1RlvdBu6l/kjpio9Ot4QeTmZ4fCXrphB55OK2dNlEtWnV0B0szVYcCUKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rnXfQPQ4t4bm5arV9+8gd5VkfqXUuRtiwOe2mP3I6GM=;
 b=GHw9Qd+faeJrsi/6DzmYmR7V5fXnbSBApsJPAYyWnIts60ALFKj5fghWIg7hyepypRrFapq2qbWHJdLst7JV+Ro7YYCYDZko7FJiskstzvXP7n1RNI28QwywuYLdBbPZERzdnYNghEPhtfh+n0ja56ZBbv0WCXeZG7qBtExyGazw6GUxepGaBZ5kKYP0mxsMf82zK91IpnzIKPmf0McGii6xxQA+INGpy65uqPp1PCKSyRwZiyqw2mNoQivRsj3CKyRG4go5F34IuW6fSQ2sbSe3oPsnLuLOcCy3trsX4x2O68sJugb+7K2Ctv61gnZxWYDZSccmFoCX8uc++Rbezw==
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:252::12)
 by OS3P286MB3276.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:210::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Mon, 21 Nov
 2022 17:13:11 +0000
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::2fc3:974a:e206:6963]) by TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::2fc3:974a:e206:6963%9]) with mapi id 15.20.5834.015; Mon, 21 Nov 2022
 17:13:11 +0000
Date: Tue, 22 Nov 2022 01:13:02 +0800
From: Shengyu Qu <wiagn233@outlook.com>
To: Michael Tretter <m.tretter@pengutronix.de>
CC: devicetree@vger.kernel.org, ezequiel@vanguardiasur.com.ar, heiko@sntech.de,
 jacob-chen@iotwrt.com, kernel@pengutronix.de,
 krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 robh+dt@kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add RGA2 support to rk356x
In-Reply-To: <20221121164116.GE15565@pengutronix.de>
References: <20221121151755.2072816-3-m.tretter@pengutronix.de> <TY3P286MB2611FB223B1CC437B01BD984980A9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM> <20221121164116.GE15565@pengutronix.de>
Message-ID:  <TY3P286MB261119C709225F2DED97CF81980A9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
X-TMN: [MJYhKfNc516eIf/hNPuSu9SDubnuFB+l]
X-ClientProxiedBy: SG2P153CA0051.APCP153.PROD.OUTLOOK.COM (2603:1096:4:c6::20)
 To TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:252::12)
X-Microsoft-Original-Message-ID:  <2E893236-E8E8-4C82-83DB-58E4DF830CC5@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TY3P286MB2611:EE_|OS3P286MB3276:EE_
X-MS-Office365-Filtering-Correlation-Id: a036634b-c10d-4a92-7d3b-08dacbe3a9e3
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	W9VpJObrYvpyuaa7WT9AzsPWVijk49H1bB0JIqPjkQOG3vx/rmDspXAuN7jrSWYQs1z/gm4WVXSYhy4a8kOSX7Hz4koTt3XAnrjV85JBgws59pO5YVSPg8PfPi5rPxaNisAaEO0DsTfxLdRNjyeVcxzwnZFGHBaYrdCinyItNukX1sGP8yi4j580yVtUtvoiwOuvxOxAIUTIDC+/kPa/HptX/JgldvXpFotq0552QhFAQV/PTbhH4Gdw9UnJzsHCzPaJpdy4xJRFFEK2y+OgByNjXRc0XAQ/intBzI7b2HolyhcHhS77G8zYF+66mmBnxt3Jth91JxQBrLU8bcRhYVF9JFxAUw5Oi0pVX7M6FUMnT4F4eTzDG7nhwsdcgNMZFkb7eWyNpPFw7s21S8Mdr8w1ASumoQ0+VWmWJK5TIaJRyFVNY9TQGhNQzQrcAGfUHR3d4lL6YGrSjcl3+DwPFi0VYNybayMLuLSVC4sDIsrTp3NCBV2YkPNJzrz3cJNNGT7q2WTNvxo/9EPXVmvHZfc6pI0JJk5ABkXL0qGkA5udxG/Jf1D2DbHNFdafprfRZqns/WlSYPFrad84JhFZohHmu4jJXDQfuDAQ2ztm3mlNyqzDWHt1UFXKCnMKNesp0CE3/7UiDe2ynvYEd6gOyg==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?NTBGL0JCdjFJcTZkaUlndEQ1VzN4VU40NEpRT3U4SWZNcE5WaTFpb1R0dFZt?=
 =?utf-8?B?Wkc0bFoyODFRUHJuUFc2bVVKc3UyTHRHWHRtWDNqOXhXM0c5NnNrWDdrbjJE?=
 =?utf-8?B?WGovcEg4U0tUbnJvaUg0TEF1RmJDYm1GelQ2akw0ZU51d2hCTG5JSDRjSjFD?=
 =?utf-8?B?aGdEWjRGVjZNZ3kySndIcERiVUVYWERVbGxITHBtdHB5bUwrQVd1bFRjY1cv?=
 =?utf-8?B?bS9sMC82Nml4d3FxbUFTZ3NoUittZTFNZXZHbnJPWkdhdy9lbkZUdG83U2l6?=
 =?utf-8?B?QlBVNkc3ZmN6Q3Vhd24wSUttVGJva3lKZDhtUWtCOUZkS0w5Q0xQNSt2akp3?=
 =?utf-8?B?RXpKa1Y4MnVKa1c0SFZDeVFCVThkTmdGemd5YmNzcS9EeVlPY2N5RElQVWhs?=
 =?utf-8?B?N0UwWUlKK1lBb0FuTHh0MUx0MkN6enkrYXFZd25LeTZFbHo0YzhVNnltTnd2?=
 =?utf-8?B?K0w5UXZydTNEczEvb2I1TmpQaERQZGNPbG9rSzRFVGNxVFRNaDFFVVg1elo5?=
 =?utf-8?B?TlNuUE9kZ0VOUUVwLytiWnZ2eTdlTXExYWlYTFBaK2M0UFlHUlpDNzhUeG1V?=
 =?utf-8?B?Vkd4ZVZMNHlqYjFYL2c5UFVTeVlBWWJITytOQzFGUno0MHdSVnRUSXlqYk9Y?=
 =?utf-8?B?VjJoUWpPdWdiM0VPN2tLd3huLzIwQk40RHRPK1FGWHJQNm9pYTVpeGRkZUph?=
 =?utf-8?B?cHYyVTlaY1BNWm1HalBYYnR1YlI0T0dGOGFQNVZjcUZrakUzOXBaMWZqV0ZF?=
 =?utf-8?B?QWtBVDdPdEhDQlBPNEE2ZUVFNWdNOWVhNkJwdDJlVTNXWDZyQzhVUmdsV0d6?=
 =?utf-8?B?WmdUMUVjLzgxbmh4eHViZXpNV2JXVWw0SUpHY0duaEovdUtxbm1odjA5dWF5?=
 =?utf-8?B?WTFlV2pCcnVUd1FkWmlIc2d6S1dIT0Q5RGpsdWYxRzVCMUVXNHRyY1g4d0hH?=
 =?utf-8?B?dkV1ZlczRGdZK0ZnSWN2QTJWVlBPbzdDUmJuQ0dSelZDU3pzMXhCZjZNYmxD?=
 =?utf-8?B?dnN5QjhHYlJSblY4YzkrNzJHTmlsWHFMMmI3VzB1NlJxK3hudjdrOXBXZ2hV?=
 =?utf-8?B?Y3ArdDJVLzdBQU0vWHZCc1FBTC9QM0t4ZjNXTFpYM0NkNkE0aGlSK3VJbmpt?=
 =?utf-8?B?OGgzK00zM2Z5WHFleU9lRVdsUGZkRkM3cGdmS2FKcWlpNnJzdVFJSG1UWWVp?=
 =?utf-8?B?ditpVkZ6ZTVWRytMQnRiTnlOa21VWldxdHpIdEFTSzdwVG1Cay9YR0tWQUhq?=
 =?utf-8?B?WVlORUw1bHd0aVVoR1pOUmdFcnpyYnlrUGZuT0V5L0NhdXJVUHlDOWRLd01s?=
 =?utf-8?B?L0YvRklVZmNzQlRKajg3azMwd3pEOGhqc2pNaUUva2ZCejhnOHNCOG9vVGJL?=
 =?utf-8?B?Ylg5aS9ZdGJrVVhmcFc2ZUJEdW9keWNXTlFmVnk0R0lEQTM2dEY5Z1ZnOE9N?=
 =?utf-8?B?ZytxelhqY0RXdVV3RVlBb29mZXd5U3Znc1JtVGQwUkwyZ0hTNGNMSlZrdEor?=
 =?utf-8?B?eU4vSHRFZ01Gb3dYR05nblh5WGgwT0o0OHV0UFNPRXZ4T0l6QmxOT2l2eXRQ?=
 =?utf-8?B?WHhld3NXeXZUUHZxS05UUmQ2UzdVWjVhUVBWN1BvYXUrRnpSRUxGa3J5bVZy?=
 =?utf-8?B?Sk9qcGw3Y0t0TzlBTSt2eVRESkVvUEtoTWo1QzdwSzFIbEMwTlNLUnBqT3Ux?=
 =?utf-8?B?dVFpakFSKytQUVBMdkNNQUtrMHU5eUhRNCtHTkZhVThsRStqVVNGTWVBPT0=?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a036634b-c10d-4a92-7d3b-08dacbe3a9e3
X-MS-Exchange-CrossTenant-AuthSource: TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2022 17:13:11.1503
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3P286MB3276
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_091317_926620_25AB8450 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
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

SGksCkkgcmVtZW1iZXIgc29tZW9uZSBzYWlkIHRoYXQgcmdhMiBoYXMgb25seSAzMmJpdCBhZGRy
ZXNzIHNwYWNlIGJ1dCBub3QgaGF2aW5nIGEgbW11IG9yIG1tdSBuZWVkcyB0byBiZSBjb25maWd1
cmVkLiBCZXR0ZXIgYXNrIGJ5IHlvdXJzZWxmIGluIHBpbmU2NCBkaXNjb3JkIHNpbmNlIEknbSBu
b3Qgc3VyZSBhYm91dCB0aGF0LgoKU2hlbmd5dSAKCgrkuo4gMjAyMuW5tDEx5pyIMjLml6UgR01U
KzA4OjAwIOS4iuWNiDEyOjQxOjE2LCBNaWNoYWVsIFRyZXR0ZXIgPG0udHJldHRlckBwZW5ndXRy
b25peC5kZT4g5YaZ5YiwOgo+SGksCj4KPk9uIFR1ZSwgMjIgTm92IDIwMjIgMDA6MDE6MjggKzA4
MDAsIFNoZW5neXUgUXUgd3JvdGU6Cj4+IFNvbWVvbmUgZnJvbSBwaW5lNjQgZGlzY29yZCBmb3Vu
ZCB0aGF0IFJHQTIgZG9lc24ndCB3b3JrIHByb3Blcmx5IG9uIG92ZXIKPj4gCj4+IDRHQiBtZW1v
cnkgUkszNTY4IGRldmljZXMuIEFyZSB5b3Ugc3VyZSBjdXJyZW50IGRyaXZlciB3b3JrcyBub3c/
Cj4KPkkgYW0gYWJzb2x1dGVseSBzdXJlIHRoYXQgdGhlIGRyaXZlciB3b3JrcyBvbiBhIDJHQiBS
T0NLM0EgYm9hcmQuCj5VbmZvcnR1bmF0ZWx5LCBJIGRvbid0IGhhdmUgYSBkZXZpY2Ugd2l0aCA0
R0Igb3IgbW9yZSBtZW1vcnkgYW5kIEkgY2Fubm90IHRlc3QKPnRoZSBkcml2ZXIgd2l0aCBzdWNo
IGEgZGV2aWNlLgo+Cj5BcyB0aGUgZG9jdW1lbnRhdGlvbiBmb3IgdGhlIFJHQTIgaXMgdGhlIHNh
bWUgaW4gdGhlIFRSTSBvZiB0aGUgcmszMjg4IGFuZAo+cmszNTY4LCBJIHdvdWxkIGd1ZXNzIHRo
YXQgdGhlIGRyaXZlciBkb2Vzbid0IHdvcmsgb24gYSByazMyODggd2l0aCBtb3JlIHRoYW4KPjRH
QiAoaWYgdGhlcmUgaXMgc3VjaCBhIHRoaW5nKSBlaXRoZXIgYW5kIHRoZSBkcml2ZXIgbmVlZHMg
dG8gYmUgZml4ZWQgZm9yCj5ib3RoIFNvQ3MuCj4KPk1pY2hhZWwKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
