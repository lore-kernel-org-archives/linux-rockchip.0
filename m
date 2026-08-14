Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C29B3C5CFC1
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Aug 2026 10:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+DzDnI/t4QugEwsS5vwrWELV/A9vuqIZ5NDkrwNZ9hE=; b=NVmcA53T6fN4l2
	SYJuD6+PRd3nVzA1P/Tw0lPoVf/KVfMTQO/y8FKtO4dA3SKoJdvPE0lYFJijZTYYa/0d3V0A0eP8N
	wp8YoUITbMPiWobtit0DXsRAbsSp0RXE6QFocCpWjMHhxX3gooQlBaLO23SS2Z7oG5ErcV3a/mild
	i6KQ+YfY2chQi0JrMDW/b3k9Tw82BNkjCOOlT+PSO74CHWBtL8waxviDs8cLNxCkpGInx2N0rA+af
	0hGENJy8BclxLH1nLdAF70mAnZTA32IKdQvjDC22JHKEBiFz30XoVJw8Ng2vOPyoN/6JyocjlzAzw
	x/mxjnofwEDCIXOqR/iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wup0E-00000002UyQ-1JbB;
	Fri, 14 Aug 2026 10:19:06 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wup0C-00000002Uxi-185X;
	Fri, 14 Aug 2026 10:19:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 91B34600C3;
	Fri, 14 Aug 2026 10:19:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B73A1F000E9;
	Fri, 14 Aug 2026 10:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786702742;
	bh=NXdGXpEaeSzo6LucHd30eYR/GtpdrDPatB4CgfYUQF4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=E/QXCTjI36E8mBXEr6GvChfoeqasCRqIBQhD+HHSxLkNy/ZkATKjNyVKWxSFnDy3R
	 o01xFHf7H63TWszeKcUx7lJTvk6qMIXPWPoBzJ0h+EbMzWr9dH+9Qd9GE1k7YFp2TH
	 1sPCvaVkqjB7uR5mqkCfGoaaqNsu7Ki3477kNdUXzrn8/OMane3Gl+7vb5UHmJAvyp
	 tFmN/agBMSAAgKSRAth53CIWXe/CE7KXsmUdELHOi4gIJnxwIpn0l1InPUPcP0IFW6
	 jVhFtxWsRp0/vyYrS8gXqIVkj88/r3e3OoAwlgujhMK+I00XX6qpxww0bQsGeAptdA
	 Of4GkzD49p0Dg==
Date: Fri, 14 Aug 2026 12:18:45 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: Jakub Kicinski <kuba@kernel.org>, Vladislav Leonov <vlad@zlab.su>, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	Simon Glass <sjg@chromium.org>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	Aurelien Jarno <aurelien@aurel32.net>, Brian Masney <bmasney@redhat.com>, 
	Conor Dooley <conor+dt@kernel.org>, Daniel Golle <daniel@makrotopia.org>, 
	"David S. Miller" <davem@davemloft.net>, David Wu <david.wu@rock-chips.com>, 
	Eric Dumazet <edumazet@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Heiko Stuebner <heiko@sntech.de>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Michael Turquette <mturquette@baylibre.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Olivia Mackall <olivia@selenic.com>, 
	Paolo Abeni <pabeni@redhat.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	linux-crypto@vger.kernel.org, linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-pwm@vger.kernel.org, linux-spi@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-usb@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH 00/25] ARM: rockchip: Add peripheral support for RV1106
Message-ID: <20260814-vivacious-nickel-copperhead-c746f6@quoll>
References: <20260810121121.210040-1-vlad@zlab.su>
 <20260810113548.7fd24d56@kernel.org>
 <anq1ouUnKA02Eauj@monoceros>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <anq1ouUnKA02Eauj@monoceros>
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

T24gVHVlLCBBdWcgMTEsIDIwMjYgYXQgMDc6NDM6MTZBTSArMDIwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4gT24gTW9uLCBBdWcgMTAsIDIwMjYgYXQgMTE6MzU6NDhBTSAtMDcwMCwgSmFr
dWIgS2ljaW5za2kgd3JvdGU6Cj4gPiBPbiBNb24sIDEwIEF1ZyAyMDI2IDE1OjEwOjUxICswMzAw
IFZsYWRpc2xhdiBMZW9ub3Ygd3JvdGU6Cj4gPiA+IEJhc2ljIHN1cHBvcnQgZm9yIHRoZSBSb2Nr
Y2hpcCBSVjExMDYvUlYxMTAzIFNvQ3MgY3VycmVudGx5IHVuZGVyIHJldmlldy4KPiA+ID4gVGhp
cyBzZXJpZXMgYnVpbGRzIG9uIHRvcCBvZiB0aGF0IGFuZCBlbmFibGVzIHRoZSBwZXJpcGhlcmFs
cyBuZWVkZWQgdG8KPiA+ID4gYnJpbmcgdXAgYSBib2FyZCBiZXlvbmQgYSBzZXJpYWwgY29uc29s
ZToKPiA+IAo+ID4gRG9uJ3QgZXhwZWN0IG1haW50YWluZXJzIHRvIGRpZyBvdXQgcGF0Y2hlcyBm
b3IgdGhlaXIgc3Vic3lzdGVtcwo+ID4gZnJvbSBhIGJpZyBzZXJpZXMuIFRoaXMgaXMgbm90IGhv
dyB1cHN0cmVhbSBkZXZlbG9wbWVudCB3b3Jrcy4KPiAKPiBJIHNlZSB0aGlzIGZyb20gdGltZSB0
byB0aW1lIGFuZCBJIHBlcnNvbmFsbHkgdGhpbmsgaXQncyBmaW5lIHRvIGhhdmUKPiB0aGVzZSBw
YXRjaGVzIHRvZ2V0aGVyLiBBbHNvIHRoZSBvbmx5IHRoZSBwYXRjaCB0aGF0IGFmZmVjdHMgbXkK
PiBzdWJzeXN0ZW0gd2FzIENjOmQgdG8gbWUgd2hpY2ggaXMgaG93IEkgbGlrZSBpdCAoYnV0IEkg
dGhpbmsgb3BpbmlvbnMKPiBkaWZmZXIgb24gdGhhdCBvbmUsIHRvbykuCj4gCj4gYGI0IGFtIC1Q
IF9gIGlzIGdyZWF0IQoKWWVhaCwgYW5kIHdpdGggRFRTIGJlaW5nIHBhdGNoIDMsIHBhdGNoIDYs
IDEwIC4uLiAgYW5kIHNvIG9uLCBpdCBpcwpldmVyeSBlYXN5IHRvIHJldmlldyBhbmQgcGljayB1
cC4KCk5vLCB0aGVyZSBpcyBvbmx5IG9uZSBjYXNlIG9mIGNvbWJpbmluZyBtdWx0aXBsZSBzdWJz
eXN0ZW1zIHRvZ2V0aGVyIC0KdXBzdHJlYW1pbmcgbmV3IFNvQyB2ZW5kb3IuIEFsbCBvdGhlciBj
YXNlcyBhcmUgd3JvbmcgYW5kIHNwcmVhZGluZyBEVFMKYWxsIG92ZXIgaXMganVzdCBwcm9vZiB0
aGF0IHRoaXMgaXMgcG9vcmx5IHJlYWRhYmxlIGFuZCBwb29ybHkKcmV2aWV3YWJsZS4KCk5vdCBl
dmVuIG1lbnRpb25pbmcgdGhlIHJ1bGVzIG9mIGRlcGVuZGVuY3kgb24gRFRTIGV4cHJlc3NlZCBp
bgpzdWJtaXR0aW5nIHBhdGNoZXMuCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
