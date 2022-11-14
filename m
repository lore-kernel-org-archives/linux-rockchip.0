Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0096EC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Nov 2022 08:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DUz87CQksoR9eur2aNcvSt5ViOfrBwjJl5bOBmPJeWA=; b=bJ9NcWiVi+gHLE
	SCHWFCcKMuLFu4Rd0bFD+pTebKTuICfTb4DUhbAz0YlvEweeyGgizUVGOCC2FWPsgihnoQln0TvNG
	0359c8wZFco17cFrLpJnQW1XhDTUz4J6MYW7v0JEM1eJbtqLeN2TPPcEB4Y6yujFV5wMMokp1rK6J
	KuKjks5wcdPy9o6FiA26Bh9pVrF9MOukYbAwN6Jh4h2qQbDckzJI2Jg3/gxwVzz7mg7iplGl5I23r
	z2/cBHVJnpzU0OeR+QpD/bhJ7M8BE86jv/F8kklna3IEO74oBZlMT8WViKQju7q36ShynREIMFfOK
	r8vvmdTPH3jWcoDQVy9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouUgE-00GjE8-Ot; Mon, 14 Nov 2022 08:18:58 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouUg3-00Gj8R-1D; Mon, 14 Nov 2022 08:18:48 +0000
Received: from booty (unknown [77.244.183.192])
	(Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 39AB9FF804;
	Mon, 14 Nov 2022 08:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1668413921;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=X576UZhTAk2kjGWa6Mn1KvO6tfONS5DcXAcdb1drDss=;
	b=hocuovv9/oJJJ9D5Izl2DfBvqUrHK5qx8Mq+Y45rNa0Oth00wChrNtAI4XBEGW8Vr8JQlZ
	DRM/NWn/T9cUFsyLmWfriZ4qev88Yy0UAq/Un06b7LEa9T/HwMmCyxkxBGZR6wi1urgLjI
	pEP3pKkFcyzX+ZY6PFTG8L2LVwU23ZsZWOG52cgoyr/acNvg7SR7gAZdnUnPzY0dao4M76
	e9wCAOS/melM9YW2q+6T0tESPicC3NLr14zLh+FY/0OoCbLdgJUvbjWqunvA/eGMUJwCIr
	3HCUsZTLM92gfnqyBUycuaBil52uIJIu7ETd7VbMaYTkdub9JDAUtY9VfWURyg==
Date: Mon, 14 Nov 2022 09:18:36 +0100
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Heiko =?UTF-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>, Christophe JAILLET
 <christophe.jaillet@wanadoo.fr>, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] clk: Remove a useless include
Message-ID: <20221114091836.650b893b@booty>
In-Reply-To: <1jo7ta3aao.fsf@starbuckisacylon.baylibre.com>
References: <12dd5cb49efa7714f8e0389e4c7b3bc829e8a90e.1668289299.git.christophe.jaillet@wanadoo.fr>
	<3166437.e9J7NaK4W3@diego>
	<1jo7ta3aao.fsf@starbuckisacylon.baylibre.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_001847_245370_EA1CC9DC 
X-CRM114-Status: GOOD (  14.37  )
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

SGVsbG8gSmVyb21lLAoKT24gU3VuLCAxMyBOb3YgMjAyMiAyMDoyOTo0MyArMDEwMApKZXJvbWUg
QnJ1bmV0IDxqYnJ1bmV0QGJheWxpYnJlLmNvbT4gd3JvdGU6Cgo+IE9uIFN1biAxMyBOb3YgMjAy
MiBhdCAwOTo0OCwgSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4gCj4g
PiBBbSBTYW1zdGFnLCAxMi4gTm92ZW1iZXIgMjAyMiwgMjI6NDM6MDMgQ0VUIHNjaHJpZWIgQ2hy
aXN0b3BoZSBKQUlMTEVUOiAgCj4gPj4gPGxpbnV4L3JhdGlvbmFsLmg+IGlzIG5vdCBuZWVkZWQg
Zm9yIHRoZXNlIGRyaXZlcnMuIFJlbW92ZSB0aGUKPiA+PiBjb3JyZXNwb25kaW5nICNpbmNsdWRl
Lgo+ID4+IAo+ID4+IFNpZ25lZC1vZmYtYnk6IENocmlzdG9waGUgSkFJTExFVCA8Y2hyaXN0b3Bo
ZS5qYWlsbGV0QHdhbmFkb28uZnI+Cj4gPj4gLS0tCj4gPj4gIGRyaXZlcnMvY2xrL2Nsay12ZXJz
YWNsb2NrNS5jIHwgMSAtCj4gPj4gIGRyaXZlcnMvY2xrL21lc29uL2Nsay1wbGwuYyAgIHwgMSAt
Cj4gPj4gIGRyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay5jICAgIHwgMSAtICAKPiA+Cj4gPiBDbG9j
ay10cmVlcyBmb3Igc29jIGZhbWlsaWVzIG5vcm1hbGx5IGhhdmUgZGlmZmVyZW50IHN1Yi1tYWlu
dGFpbmVycywKPiA+IHNvIGRlcGVuZGluZyBvbiBob3cgd2Ugd2FudCB0byBtZXJnZSB0aGlzLCB5
b3UgbWlnaHQgbmVlZCB0byBzcGxpdAo+ID4gdGhpcyBpbnRvIDMgcGF0Y2hlcy4KPiA+Cj4gPiBC
dXQgYXQgbGVhc3QgZm9yIHRoZSBSb2NrY2hpcCBwYXJ0LCBJJ20gYWxzbyBmaW5lIHdpdGggdGhl
IHBhdGNoIGdvaW5nCj4gPiBpbiBhcyBhIHdob2xlLCBzbyAoZm9yIHRoZSBSb2NrY2hpcCBwYXJ0
KToKPiA+Cj4gPiBBY2tlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiA+
Cj4gPgo+ID4gSGVpa28gIAo+IAo+IFNhbWUgZm9yIHRoZSBBbWxvZ2ljIHBhcnQKPiAKPiBBY2tl
ZC1ieTogSmVyb21lIEJydW5ldCA8amJydW5ldEBiYXlsaWJyZS5jb20+CgpBbmQgdGhlIHNhbWUg
Zm9yIFZlcnNhY2xvY2s6CgpSZXZpZXdlZC1ieTogTHVjYSBDZXJlc29saSA8bHVjYS5jZXJlc29s
aUBib290bGluLmNvbT4KCi0tIApMdWNhIENlcmVzb2xpLCBCb290bGluCkVtYmVkZGVkIExpbnV4
IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
