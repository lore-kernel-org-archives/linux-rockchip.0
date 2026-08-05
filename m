Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39D17C55174
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 17:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CwyUsR69e7lqiqgjAh05/eTgRLprfMj6p0u5/gee6T0=; b=xAcsThYD2LBDem
	U/VW2Pa7HeOG+TRZV4q0uMXP1L/jf6CyReeUuJYxBt1s4Xv1ePlwnk9+yP/citiehWuNpheq9EzSE
	Nl70rP5qsXV2FVb6W0IMCmWIwm8zjdaG+BEYjnZMn9yCPQ4ish3ujGJwT1UbbRzPhsC20Ql9/F74+
	h7zh0vcrSZZxaR1u9bGFVTBWJdJWiJlciV8t9ayXk1lHjhNM/0FHfLSynvlh78hBHrkDYH9Atmvhn
	2D8GAUGpYYrSU0Da5l4E6/FmqHzc6gPmTrH1DAp8iG/6hPX7/TVOSLpU6iszM5f3COxve8TR+ls3y
	3nooq71e04PG4X7me/vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wreya-00000004J9q-1JJj;
	Wed, 05 Aug 2026 17:00:20 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wreyY-00000004J9P-3ohG
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Aug 2026 17:00:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C919F60A94
	for <linux-rockchip@lists.infradead.org>; Wed,  5 Aug 2026 17:00:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8195D1F00AC4
	for <linux-rockchip@lists.infradead.org>; Wed,  5 Aug 2026 17:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785949217;
	bh=WBGLmgn1KuR6ekaDfS9NzoAp0N4ym3eZDjfC7Q20pVI=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=SMWCYEvcM74kJ2TgjQBqvWi4t4taCknixxdGSZjw76yTmZQgqVCHjoSNcC7dx3lF8
	 JlG6+1yM5zXvibUGlYm6788ep6CZfz+1ar5kTlKPrZ7aujiOudwt8i8xq9HrNG5OQ9
	 ZZWSqdMBikBMNTBBXvUemGwNQ9Z92E8gukI2Gw9bzwjlsCMn1GVttbrrcRfQuass9V
	 BxS/F+1nrvQ7i2+4hW3sF4VYf8ctqZHfmE1bBfGuc2IGjf875mk8T0UqP3RCqtJr0t
	 8LGsjrqufehPnoxwzYCrJ1BZqOHDM0ixpygJhMMO72tZPVLd9yul7BPzpabN6l+XNS
	 QndKgDwiWk5HA==
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-39db07589caso11650001fa.2
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 10:00:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Rq1T7XfeNEcexX+Spj74+Kcc5x6BxHUFqJAYoZtvCwUmWuuPvQYCxgZfXK5mm3wiwxXEGsWqNGRJVrQdV/3mQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxcxFy3njRDvyghvwI4ek62+6DnIiEhL/yqIk7VCrqIOphkgB92
	L+qJ3TuDhY1+ln8nkX60C0JAsvDHFUt6my3+aGAlT0HWussLdqxKf8hnDY9TELKQ6X9uiF1J9It
	h+azXx6/LlL9/Wo/DLte8ooDb53ZSlfo=
X-Received: by 2002:a2e:9a0b:0:b0:39e:b3b2:e95f with SMTP id
 38308e7fff4ca-39fbb2646cbmr11047971fa.18.1785949215957; Wed, 05 Aug 2026
 10:00:15 -0700 (PDT)
MIME-Version: 1.0
References: <20260624123914.1767374-1-hello@superkali.me> <178267399833.3089434.5140309637329023610.b4-ty@sntech.de>
In-Reply-To: <178267399833.3089434.5140309637329023610.b4-ty@sntech.de>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 6 Aug 2026 01:00:02 +0800
X-Gmail-Original-Message-ID: <CAGb2v64kcadr1nAisu_3kyE-=-4oypDXTvAy--jQHa0VhmYoXg@mail.gmail.com>
X-Gm-Features: AUfX_mzxTaQi5lmCrQEStGQqjdfqlwh8KWbld4ds13aZOb9Ofar8XPEAC5gsAkU
Message-ID: <CAGb2v64kcadr1nAisu_3kyE-=-4oypDXTvAy--jQHa0VhmYoXg@mail.gmail.com>
Subject: Re: [PATCH] clk: rockchip: rk3588: don't disable unused I2S MCLK
 output gates
To: Heiko Stuebner <heiko@sntech.de>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Daniele Briguglio <hello@superkali.me>, linux-clk@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Diederik de Haas <diederik@cknow-tech.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Ricardo Pardini <ricardo@pardini.net>
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBKdW4gMjksIDIwMjYgYXQgMzoxM+KAr0FNIEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IHdyb3RlOgo+Cj4KPiBPbiBXZWQsIDI0IEp1biAyMDI2IDE0OjM5OjE0ICswMjAw
LCBEYW5pZWxlIEJyaWd1Z2xpbyB3cm90ZToKPiA+IE5vIGluLXRyZWUgYm9hcmQgcmVmZXJlbmNl
cyB0aGVzZSBnYXRlcyB5ZXQuIEJvYXJkcyBkcml2ZSB0aGUgY29kZWMKPiA+IE1DTEsgdGhyb3Vn
aCB0aGUgcGFyZW50IEkyUypfOENIX01DTEtPVVQsIGFuZCBub3cgdGhhdCB0aGUgZ2F0ZXMgYXJl
Cj4gPiBtYW5hZ2VkIGNsb2NrcywgY2xrX2Rpc2FibGVfdW51c2VkKCkgdHVybnMgdGhlbSBvZmYg
YXQgYm9vdC4gT24gYSBib2FyZAo+ID4gdGhhdCByZWxpZWQgb24gZmlybXdhcmUgbGVhdmluZyB0
aGUgb3V0cHV0IGVuYWJsZWQsIHRoYXQgY3V0cyB0aGUgTUNMSwo+ID4gYW5kIGFuYWxvZyBhdWRp
byBzdG9wcyB3b3JraW5nLgo+ID4KPiA+IE1hcmsgdGhlIGZvdXIgZ2F0ZXMgQ0xLX0lHTk9SRV9V
TlVTRUQgc28gYW4gdW5yZWZlcmVuY2VkIGdhdGUga2VlcHMgdGhlCj4gPiBzdGF0ZSBmaXJtd2Fy
ZSBsZWZ0LiBBIGJvYXJkIHRoYXQgd2FudHMgdGhlIGtlcm5lbCB0byBvd24gdGhlIGdhdGUgY2Fu
Cj4gPiByZWZlcmVuY2UgSTJTKl84Q0hfTUNMS09VVF9UT19JTyBmcm9tIERUIGluc3RlYWQuCj4g
Pgo+ID4gWy4uLl0KPgo+IEFwcGxpZWQsIHRoYW5rcyEKPgo+IFsxLzFdIGNsazogcm9ja2NoaXA6
IHJrMzU4ODogZG9uJ3QgZGlzYWJsZSB1bnVzZWQgSTJTIE1DTEsgb3V0cHV0IGdhdGVzCj4gICAg
ICAgY29tbWl0OiA5NDYzNTJiMmY4OGZkMjM3OGYwMzQxMzEyZTQ3ZGZmMWU4ZGMyZmFjCgpJbiBo
aW5kc2lnaHQgbWF5YmUgaXQgd291bGQgaGF2ZSBiZWVuIGEgYmV0dGVyIGlkZWEgdG8gbWFwIHRo
ZSBleGlzdGluZwpjbG9jayBJRCBJMlMqXzhDSF9NQ0xLT1VUIHRvIHRoZSBuZXcgZ2F0ZXMsIGFu
ZCBhZGQgKG9yIG5vdCBhZGQpIG5ldwpjbG9ja3MgZm9yIHRoZSBpbnRlcm5hbCBNQ0xLIGdhdGVz
LgoKVGhlbiB5b3Ugd291bGRuJ3QgbmVlZCB0byB1cGRhdGUgdGhlIERUcywgd291bGRuJ3QgbmVl
ZCB0aGlzIHdvcmthcm91bmQsCmFuZCB3b3VsZG4ndCBkZXBlbmQgb24gdGhlIGJvb3Rsb2FkZXIg
dG8gc2V0IHRoZSByZWdpc3RlcnMgY29ycmVjdGx5IHdoZW4KYm9vdGluZyBhbiBvbGQgRFQuCgoK
Q2hlbll1CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
