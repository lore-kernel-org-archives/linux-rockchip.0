Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82A0EC2BA1A
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 20:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mPn0ayNnnRTSZtl95mQjXh0mU8mJpA8v/KXxIOgaCnk=; b=T+NCHANy/xmhNQcrPEpgLZTQ44
	FAkSDiT8SOdx5Ms2CHFKh2ryIYu+dYGgN1eMWLSjMv/tvKMe1v0ZAthT5HU60K3EFZMwO8yyt4kK/
	873Cdv6FgTuW0HRtsc8BYYM8UWp2r1rBJCJJJISF2o6qhZ8alT5vLwwyIxCYipM70fftPsX1rcHgB
	KDBDPG6t9HpyjVMXpecWP8PG6bSI13kIhqBjtKDDJvZhlYDyh6e43IjP6MbEQMoJy9u3VF+JMTE9m
	9lQHFFezWd9rBnWtC2ln1g497PrE184Xyx3FqfSeU+d8RHcrHQxTmW3q1HV8tO3xJjlH2B94l/MEL
	t3xyY8VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJJPV-0000000CcBk-3npt;
	Mon, 17 Jun 2024 20:57:05 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJJPR-0000000CcAf-48iW;
	Mon, 17 Jun 2024 20:57:03 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1718657818;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=B0b1pWrdGahjc5mnO1xKSRT8jsHp5loCfKfaw5bWIjA=;
	b=gDQRIre07RFJ9Xp9kBuZUFFbeI0LYbWhqlDGqneNFGAMGrNN4LGcvP+moA3SbkdvSl3HUX
	/MRz/oSChHsfy2VaLmaHZznZUN5ferXomuvLZDHJH7oZmisflT++kGT0MC64wGLrvHbKay
	TFOV8EKkjRjFBy0ULt3zQKAZN9IEEfjUaadRyqOaaiBTGOx8e61E5dg+fvc7k5VmLBD+1d
	CeR5cqgdnW69NqJlFoEbdO+ymYc5yUWjcy66G8GNzFU2nygQtWb73o2sbSbyVqKPcz6qzO
	nejY76uk20AGlEpI7pJndPsTpFf4MsMyJjQgeAJ9n+N5f3MlDQphjmIDuIRg0w==
Date: Mon, 17 Jun 2024 22:56:57 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 dri-devel@lists.freedesktop.org, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Yakir Yang
 <kuankuan.y@gmail.com>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH 02/13] clk: rockchip: Set parent rate for DCLK_VOP clock
 on RK3228
In-Reply-To: <6a2293ec-1506-4fe7-a3cf-fcfc594c19cc@kwiboo.se>
References: <20240615170417.3134517-1-jonas@kwiboo.se>
 <20240615170417.3134517-3-jonas@kwiboo.se> <19757196.sIn9rWBj0N@diego>
 <6a2293ec-1506-4fe7-a3cf-fcfc594c19cc@kwiboo.se>
Message-ID: <32481efc439b66da6d109e1484255aaf@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_135702_198569_DF441D76 
X-CRM114-Status: UNSURE (   9.85  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyNC0wNi0xNyAyMjo1MCwgSm9uYXMgS2FybG1hbiB3cm90ZToKPiBPbiAyMDI0LTA2LTE3
IDIyOjMwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4gQW0gU2Ftc3RhZywgMTUuIEp1bmkgMjAy
NCwgMTk6MDM6NTMgQ0VTVCBzY2hyaWViIEpvbmFzIEthcmxtYW46Cj4+PiBTaW1pbGFyIHRvIERD
TEtfTENEQyBvbiBSSzMzMjgsIHRoZSBEQ0xLX1ZPUCBvbiBSSzMyMjggaXMgdHlwaWNhbGx5Cj4+
PiBwYXJlbnRlZCBieSB0aGUgaGRtaXBoeSBjbGsgYW5kIGl0IGlzIGV4cGVjdGVkIHRoYXQgdGhl
IERDTEtfVk9QIGFuZAo+Pj4gaGRtaXBoeSBjbGsgcmF0ZSBhcmUga2VwdCBpbiBzeW5jLgo+Pj4g
Cj4+PiBVc2UgQ0xLX1NFVF9SQVRFX1BBUkVOVCBhbmQgQ0xLX1NFVF9SQVRFX05PX1JFUEFSRU5U
IGZsYWdzLCBzYW1lIGFzIAo+Pj4gdXNlZAo+Pj4gb24gUkszMzI4LCB0byBtYWtlIGZ1bGwgdXNl
IG9mIGFsbCBwb3NzaWJsZSBzdXBwb3J0ZWQgZGlzcGxheSBtb2Rlcy4KPj4+IAo+Pj4gRml4ZXM6
IDBhOWQ0YWMwOGViYyAoImNsazogcm9ja2NoaXA6IHNldCB0aGUgY2xvY2sgaWRzIGZvciBSSzMy
MjggCj4+PiBWT1AiKQo+Pj4gRml4ZXM6IDMwN2EyZTlhYzUyNCAoImNsazogcm9ja2NoaXA6IGFk
ZCBjbG9jayBjb250cm9sbGVyIGZvciAKPj4+IHJrMzIyOCIpCj4+PiBTaWduZWQtb2ZmLWJ5OiBK
b25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+Cj4+IAo+PiBkaWQgeW91ciBtYWlsZXIgaGF2
ZSBhIGhpY2t1cD8gU29tZWhvdyBJIGdvdCBwYXRjaDIgKG9ubHkgdGhpcyBvbmUpCj4+IDIgdGlt
ZXMKPiAKPiBTdHJhbmdlLCBub3Qgc29tZXRoaW5nIEkga25vdyBhYm91dCwgZWFjaCBwYXRjaCAx
LTEzIGFyZSBsaXN0ZWQgYXMgMjUwCj4gQWNjZXB0ZWQgKGhlaWtvQHNudGVjaC5kZSkgYW5kIHBh
dGNoZXMgYXJyaXZlZCB0byB0aGUgTUwgYW5kIHBhdGNod29yazoKPiAKPiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9hbGwvMjAyNDA2MTUxNzA0MTcuMzEzNDUxNy0xLWpvbmFzQGt3aWJvby5zZS8K
PiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzEzNDkyNi8KPiBodHRw
czovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzEzNjk5MzIyLwoKSXQgbWlnaHQgYmUgdGhh
dCBzb21ldGhpbmcgaXMgd3Jvbmcgd2l0aCB0aGUgTVggaG9zdCBmb3Igc250ZWNoLmRlLCBJIApn
b3QKb25lIGVtYWlsIHJlamVjdGVkIHRvZGF5IHdpdGggImludmFsaWQgY2VydGlmaWNhdGUiIChv
ciBzb21ldGhpbmcgbGlrZSAKdGhhdCkKYXMgdGhlIGVycm9yIG1lc3NhZ2UuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
