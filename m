Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53E90C4321E
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Dec 2022 10:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rHhyg1lbO/ua2cTIcSWAz5lL1ro+LpYMYvpa/srxNTs=; b=nlncKsyZBsX5sn
	b5YBghXdA7OGqXwsyStBF1ySm6kyzeLzIIoBlsDiUR52zmfDJ19PGY8/rRFtYj7Y2LTIhR8rtM7KP
	sVOQ69Wr2S8Fdn4dbIPIip8GztH1JZvPaXWS5iYkDOja18wK9DGSUJuA15WTxE1KqTWeYp9uldpjK
	mW/rP9vB0oZ/60C4FEj0+bY4Sm2R6lwTt/jsY3oXHKphppwobHCtTQHL9+k3G++COtTx6CH17/Ipu
	Z3vm6uupAgOnhBEWfX8CAc78Dy3Ma3k0KGG0mc4fBtVl980u2/XT9T6xxI0G0KMv2cwgYYZtZSbBj
	hWu4ccviidGLjCD0LRfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0h1T-006noO-4I; Thu, 01 Dec 2022 10:42:31 +0000
Received: from mail.ozlabs.org ([2404:9400:2221:ea00::3] helo=gandalf.ozlabs.org)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0h1L-006nk8-2g; Thu, 01 Dec 2022 10:42:28 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4NNCLc4QCXz4xFy;
	Thu,  1 Dec 2022 21:42:00 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ellerman.id.au;
	s=201909; t=1669891334;
	bh=4hif7EODqPU9RIQoNSM7f4kViT96m8PqRMy1FOSRqmw=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=XMDViV6CFDY+O8nTTE8IlEWWvY7H8YPqwD0Tn3KS84kUAblouGGNC2+Nia8sW2MYv
	 qiQITUGJnoNf2rF8FqcIgIFTtKJlyIpcKBWiNrEakO5NLQ+ickTPEjtr01+GlyanLx
	 mzZ9YX/t1jp5UON6rpZmvdKzHLeuceJXW2c99G//FjEB6EQyCPN8TlRw5ClPGntYn1
	 1lstUDxUIwXt5rogz0qwgKe9XH3/+5CPLNT6DZ3ksaq4/yXNeIe6xOWsdnc3/9h44G
	 yfuCxdwdv4chZHzuDDmEcJxiTEJT36pr3DPrHlRrFjnXSjff4fqmP4a9zPs8OfNA43
	 pIMyXosyZ93DA==
From: Michael Ellerman <mpe@ellerman.id.au>
To: =?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>, Andrew Lunn
 <andrew@lunn.ch>
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>, soc@kernel.org, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Gregory Clement
 <gregory.clement@bootlin.com>, Sebastian Hesselbarth
 <sebastian.hesselbarth@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Claudiu Beznea
 <claudiu.beznea@microchip.com>, Ray Jui <rjui@broadcom.com>, Scott Branden
 <sbranden@broadcom.com>, Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Florian Fainelli
 <f.fainelli@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>, =?utf-8?Q?Rafa?=
 =?utf-8?Q?=C5=82_Mi=C5=82ecki?=
 <zajec5@gmail.com>, Hans Ulli Kroll <ulli.kroll@googlemail.com>, Linus
 Walleij <linus.walleij@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux
 Team <linux-imx@nxp.com>, Matthias Brugger <matthias.bgg@gmail.com>, Andy
 Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad
 Dybcio <konrad.dybcio@somainline.org>, Geert Uytterhoeven
 <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Maxime
 Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 Stefan Agner <stefan@agner.ch>, Heiko Stuebner <heiko@sntech.de>, Thomas
 Bogendoerfer <tsbogend@alpha.franken.de>, Sergio Paracuellos
 <sergio.paracuellos@gmail.com>, Nicholas Piggin <npiggin@gmail.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>, Tim Harvey
 <tharvey@gateworks.com>, Peng Fan <peng.fan@nxp.com>, Rasmus Villemoes
 <rasmus.villemoes@prevas.dk>, Frank Wunderlich <frank-w@public-files.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, Oleksij Rempel
 <linux@rempel-privat.de>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev,
 linux-rockchip@lists.infradead.org, linux-mips@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH 0/5] remove label = "cpu" from DSA dt-binding
In-Reply-To: <32638470-b074-3b14-bfb2-10b49307b9e3@arinc9.com>
References: <20221130141040.32447-1-arinc.unal@arinc9.com>
 <Y4d9B7VSHvqJn0iS@lunn.ch>
 <32638470-b074-3b14-bfb2-10b49307b9e3@arinc9.com>
Date: Thu, 01 Dec 2022 21:42:00 +1100
Message-ID: <877czbs8w7.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_024223_568800_F2E020FC 
X-CRM114-Status: GOOD (  16.09  )
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

QXLEsW7DpyDDnE5BTCA8YXJpbmMudW5hbEBhcmluYzkuY29tPiB3cml0ZXM6Cj4gT24gMzAuMTEu
MjAyMiAxODo1NSwgQW5kcmV3IEx1bm4gd3JvdGU6Cj4+IE9uIFdlZCwgTm92IDMwLCAyMDIyIGF0
IDA1OjEwOjM1UE0gKzAzMDAsIEFyxLFuw6cgw5xOQUwgd3JvdGU6Cj4+PiBIZWxsbyBmb2xrcywK
Pj4+Cj4+PiBXaXRoIHRoaXMgcGF0Y2ggc2VyaWVzLCB3ZSdyZSBjb21wbGV0ZWx5IGdldHRpbmcg
cmlkIG9mICdsYWJlbCA9ICJjcHUiOycKPj4+IHdoaWNoIGlzIG5vdCB1c2VkIGJ5IHRoZSBEU0Eg
ZHQtYmluZGluZyBhdCBhbGwuCj4+Pgo+Pj4gSW5mb3JtYXRpb24gZm9yIHRha2luZyB0aGUgcGF0
Y2hlcyBmb3IgbWFpbnRhaW5lcnM6Cj4+PiBQYXRjaCAxOiBuZXRkZXYgbWFpbnRhaW5lcnMgKGJh
c2VkIG9mZiBuZXRkZXYvbmV0LW5leHQuZ2l0IG1haW4pCj4+PiBQYXRjaCAyLTM6IFNvQyBtYWlu
dGFpbmVycyAoYmFzZWQgb2ZmIHNvYy9zb2MuZ2l0IHNvYy9kdCkKPj4+IFBhdGNoIDQ6IE1JUFMg
bWFpbnRhaW5lcnMgKGJhc2VkIG9mZiBtaXBzL2xpbnV4LmdpdCBtaXBzLW5leHQpCj4+PiBQYXRj
aCA1OiBQb3dlclBDIG1haW50YWluZXJzIChiYXNlZCBvZmYgcG93ZXJwYy9saW51eC5naXQgbmV4
dC10ZXN0KQo+PiAKPj4gSGkgQXLEsW7Dpwo+PiAKPj4gU28geW91ciBwbGFuIGlzIHRoYXQgZWFj
aCBhcmNoaXRlY3R1cmUgbWFpbnRhaW5lciBtZXJnZXMgb25lIHBhdGNoPwo+Cj4gSW5pdGlhbGx5
LCBJIHNlbnQgdGhpcyBzZXJpZXMgdG8gc29jQGtlcm5lbC5vcmcgdG8gdGFrZSBpdCBhbGwgYnV0
IFJvYiAKPiBzYWlkIGl0IG11c3QgYmUgdGhpcyB3YXkgaW5zdGVhZC4KPgo+PiAKPj4gVGhhdCBp
cyBmaW5lLCBidXQgaXQgaXMgZ29vZCB0byBiZSBleHBsaWNpdCwgb3RoZXJ3aXNlIHBhdGNoZXMg
d2lsbAo+PiBmYWxsIHRocm91Z2ggdGhlIGNyYWNrcyBiZWNhdXNlIG5vYm9keSBwaWNrcyB0aGVt
IHVwLiBJIGdlbmVyYWxseSB1c2UKPj4gVG86IHRvIGluZGljYXRlIHdobyBpIGV4cGVjdCB0byBt
ZXJnZSBhIHBhdGNoLCBhbmQgZXZlcnlib2R5IGVsc2UgaW4KPj4gdGhlIENjOgo+Cj4gVGhhbmtz
IGZvciB0aGlzLCBJJ2xsIGZvbGxvdyBzdWl0IGlmIEkgZG9uJ3Qgc2VlIGFueSBhY3Rpdml0eSBm
b3IgYSBmZXcgCj4gd2Vla3MuCgpJTUhPIHRoZSBiZXN0IHNvbHV0aW9uIGlmIHRoZSBwYXRjaGVz
IGFyZSB0cnVseSBpbmRlcGVuZGVudCBpcyB0byBzZW5kCnRoZW0gaW5kZXBlbmRhbnRseSB0byBl
YWNoIG1haW50YWluZXIuIFRoYXQgd2F5IHRoZXJlJ3Mgbm8gY29uZnVzaW9uCmFib3V0IHdoZXRo
ZXIgc29tZW9uZSBlbHNlIHdpbGwgdGFrZSB0aGUgc2VyaWVzLgoKSXQncyBhbHNvIHNpbXBsZXIg
Zm9yIG1haW50YWluZXJzIHRvIGFwcGx5IGEgc2luZ2xlIHN0YW5kYWxvbmUgcGF0Y2ggdnMKcGlj
ayBhIHNpbmdsZSBwYXRjaCBmcm9tIGEgbGFyZ2VyIHNlcmllcy4KCmNoZWVycwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
