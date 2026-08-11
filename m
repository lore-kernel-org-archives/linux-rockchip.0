Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D372DC5B572
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2026 15:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=243pBTBeEYu56099I2M3tBQZJm9uwo0jts5f+Fo+WEs=; b=2ca9Vp81FkInhY
	YAxo4CXudwtwEKZJvk2DwWKu5OGXroyEpx7sfZFjDquZjXnCpUiV7qVhX6w78E9yCw80eBcGgdJ7k
	kAAwmKQHozXys+HY5fEuGuqHIQIlpd2FLqO6r1TYbOib9LUQHjJ2ez90Gf4uFqzVlNOnbqz6lVkrW
	b5gX2bmNcFpeFF+ZYMEQ4xMV+qDyJWYXGIuLG76EyggE6sr3vaYzQFOW4swLFx2U8gOuN7wuXxX5w
	w6tiJPhEcm6WnQ55+z/DRA7VMA/jTTIIWIQFnKhd1yuwM/R5AtMxa4+JaqxmiBuEXbj2LVpAr4K7T
	RYtTs4+EM+omLN3D/bLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wton0-0000000EP8W-1q7O;
	Tue, 11 Aug 2026 15:53:18 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtomy-0000000EP7n-1CJh;
	Tue, 11 Aug 2026 15:53:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 40FA6600AF;
	Tue, 11 Aug 2026 15:53:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B16171F000E9;
	Tue, 11 Aug 2026 15:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786463595;
	bh=DnF3aQdkXNx4oU+Fl+i9D15DW8KRXhFLW9FERxBFTB4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=AnBX8YUZAaCz4DWFbJVo8gwN0rMr0SQ87izcGiOCA8nKHT0RqjFPMsRZojovf1ARD
	 R5XkNTvGzeFQAU5mg2idWrFbIwVVzAD9RSLBSFdfsCWYwNHz4H+gjbsAPn88kJWRk+
	 wveagclyOQ7huxROaH9sdj2yv6rNO1qXpteNII8BFYSFExL2MDPOcYxWHR7f3mm5LR
	 /jU41Z3dF5zhd1omvwkQVRIy5/zaud7PaVIy3tHMqxf3jNtOXwVGNc/ZXUC3X6uwqq
	 DjWjoFk+g0u02Vd8xPFPyxWH/V95eAmH0jPD/oqP3vkmOrLhHgrclkzlhC5O0382d6
	 uCdkZ/wtPpeJA==
Date: Tue, 11 Aug 2026 08:53:13 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <ukleinek@kernel.org>
Cc: Vladislav Leonov <vlad@zlab.su>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Simon Glass <sjg@chromium.org>,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Andi Shyti <andi.shyti@kernel.org>, Andrew
 Lunn <andrew+netdev@lunn.ch>, Aurelien Jarno <aurelien@aurel32.net>, Brian
 Masney <bmasney@redhat.com>, Conor Dooley <conor+dt@kernel.org>, Daniel
 Golle <daniel@makrotopia.org>, "David S. Miller" <davem@davemloft.net>,
 David Wu <david.wu@rock-chips.com>, Eric Dumazet <edumazet@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Heiko Stuebner
 <heiko@sntech.de>, Herbert Xu <herbert@gondor.apana.org.au>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Mark Brown <broonie@kernel.org>, Maxime
 Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Michael Turquette <mturquette@baylibre.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Nicolas Frattaroli
 <nicolas.frattaroli@collabora.com>, Olivia Mackall <olivia@selenic.com>,
 Paolo Abeni <pabeni@redhat.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>, Vinod Koul
 <vkoul@kernel.org>, linux-crypto@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pwm@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-usb@vger.kernel.org,
 netdev@vger.kernel.org
Subject: Re: [PATCH 00/25] ARM: rockchip: Add peripheral support for RV1106
Message-ID: <20260811085313.379ac489@kernel.org>
In-Reply-To: <anq1ouUnKA02Eauj@monoceros>
References: <20260810121121.210040-1-vlad@zlab.su>
	<20260810113548.7fd24d56@kernel.org>
	<anq1ouUnKA02Eauj@monoceros>
MIME-Version: 1.0
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

T24gVHVlLCAxMSBBdWcgMjAyNiAwNzo0MzoxNiArMDIwMCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90
ZToKPiBPbiBNb24sIEF1ZyAxMCwgMjAyNiBhdCAxMTozNTo0OEFNIC0wNzAwLCBKYWt1YiBLaWNp
bnNraSB3cm90ZToKPiA+IE9uIE1vbiwgMTAgQXVnIDIwMjYgMTU6MTA6NTEgKzAzMDAgVmxhZGlz
bGF2IExlb25vdiB3cm90ZTogIAo+ID4gPiBCYXNpYyBzdXBwb3J0IGZvciB0aGUgUm9ja2NoaXAg
UlYxMTA2L1JWMTEwMyBTb0NzIGN1cnJlbnRseSB1bmRlciByZXZpZXcuCj4gPiA+IFRoaXMgc2Vy
aWVzIGJ1aWxkcyBvbiB0b3Agb2YgdGhhdCBhbmQgZW5hYmxlcyB0aGUgcGVyaXBoZXJhbHMgbmVl
ZGVkIHRvCj4gPiA+IGJyaW5nIHVwIGEgYm9hcmQgYmV5b25kIGEgc2VyaWFsIGNvbnNvbGU6ICAK
PiA+IAo+ID4gRG9uJ3QgZXhwZWN0IG1haW50YWluZXJzIHRvIGRpZyBvdXQgcGF0Y2hlcyBmb3Ig
dGhlaXIgc3Vic3lzdGVtcwo+ID4gZnJvbSBhIGJpZyBzZXJpZXMuIFRoaXMgaXMgbm90IGhvdyB1
cHN0cmVhbSBkZXZlbG9wbWVudCB3b3Jrcy4gIAo+IAo+IEkgc2VlIHRoaXMgZnJvbSB0aW1lIHRv
IHRpbWUgYW5kIEkgcGVyc29uYWxseSB0aGluayBpdCdzIGZpbmUgdG8gaGF2ZQo+IHRoZXNlIHBh
dGNoZXMgdG9nZXRoZXIuIEFsc28gdGhlIG9ubHkgdGhlIHBhdGNoIHRoYXQgYWZmZWN0cyBteQo+
IHN1YnN5c3RlbSB3YXMgQ2M6ZCB0byBtZSB3aGljaCBpcyBob3cgSSBsaWtlIGl0IChidXQgSSB0
aGluayBvcGluaW9ucwo+IGRpZmZlciBvbiB0aGF0IG9uZSwgdG9vKS4KPiAKPiBgYjQgYW0gLVAg
X2AgaXMgZ3JlYXQhCgpXZSBoYXZlIGF1dG9tYXRpb24gYW5kIENJIHN5c3RlbXMgd2hpY2ggaWdu
b3JlIGFueXRoaW5nIHRoYXQgaXNuJ3QKc2NvcGVkIHRvIG5ldHdvcmtpbmcgdG8gc2F2ZSBjb3N0
LiBOb3Qgc3VyZSBpZiB0aGVyZSdzIGEgcG9saXRlIHdheSAKdG8gc2F5IHRoaXMgYnV0IHRoZSBz
bWFsbGVyIHRoZSBzdWJzeXN0ZW0gdGhlIG1vcmUgZmxleGliaWxpdHkgY2FuIApiZSBhZmZvcmRl
ZD8gTGV0J3Mgc3RpY2sgdG8gdGhlIGV4aXN0aW5nIHByb2Nlc3MsIHBsZWFzZS4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
