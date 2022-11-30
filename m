Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8576CC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Nov 2022 15:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O0wyv9DBiYym9c15PbXmRBzJftdb6bVuZrB8LT0k8xA=; b=zOeZ2n6Ck+1yet
	Dg9l51BgA1iRhLSZZYOGdy03P/Uw20YSp5uFreZH+zVOtJFeNBykgTkj8O7Dh5Cky1mrAf4LX3nTB
	XXcJsgaE6460DcJPxPDghHE3Mg3jh7LBpcdFQBSHBrrZp8IFV2S3NUWqso9qkAD/0hAAbKi3eTpcF
	DmHxWlj839pi1HV5F/W/24T8Szy+JVhBN2s+iVBtl5pSrN0RlfqQdUiHq2A/rASYG8z7bQeKVB3Rw
	auOLURgSlNPxWUUsAHhiB3WsPjpbYBQAav2OBWtU1dMGNLoBnBoowscUWYZgStW6SFLmoc2p7H0z3
	YFKcCxRLvpuQk3uLKg/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0PUc-000DqX-If; Wed, 30 Nov 2022 15:59:26 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0PUX-000DhK-Q7; Wed, 30 Nov 2022 15:59:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=HFssHLJMcOmruKkunXBVz4Mvi5+OSTccuRyBV5QXx+g=; b=OQ
	q2644ZjJ5z5DGVT84EDRKZ9M4Xp1yJ2Hw8pTxDEir29xcZ0b6fIa56wxAPRNzNjx432snbUYOhhk/
	tfN9lBv0QjZBrGnR45AjZS0cuf1IFCADbWupRUdyHiNYFfa8xUrYmoh0H5OpVg0zvZnvbj5oplX40
	X2+wHKmTsXtK5XM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1p0PR9-003yFA-Is; Wed, 30 Nov 2022 16:55:51 +0100
Date: Wed, 30 Nov 2022 16:55:51 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: =?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	soc@kernel.org, "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@microchip.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
	Hans Ulli Kroll <ulli.kroll@googlemail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Stefan Agner <stefan@agner.ch>, Heiko Stuebner <heiko@sntech.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nicholas Piggin <npiggin@gmail.com>,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Tim Harvey <tharvey@gateworks.com>, Peng Fan <peng.fan@nxp.com>,
	Rasmus Villemoes <rasmus.villemoes@prevas.dk>,
	Frank Wunderlich <frank-w@public-files.de>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Oleksij Rempel <linux@rempel-privat.de>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org,
	linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH 0/5] remove label = "cpu" from DSA dt-binding
Message-ID: <Y4d9B7VSHvqJn0iS@lunn.ch>
References: <20221130141040.32447-1-arinc.unal@arinc9.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221130141040.32447-1-arinc.unal@arinc9.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221130_075921_896687_E21C59D5 
X-CRM114-Status: GOOD (  14.02  )
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

T24gV2VkLCBOb3YgMzAsIDIwMjIgYXQgMDU6MTA6MzVQTSArMDMwMCwgQXLEsW7DpyDDnE5BTCB3
cm90ZToKPiBIZWxsbyBmb2xrcywKPiAKPiBXaXRoIHRoaXMgcGF0Y2ggc2VyaWVzLCB3ZSdyZSBj
b21wbGV0ZWx5IGdldHRpbmcgcmlkIG9mICdsYWJlbCA9ICJjcHUiOycKPiB3aGljaCBpcyBub3Qg
dXNlZCBieSB0aGUgRFNBIGR0LWJpbmRpbmcgYXQgYWxsLgo+IAo+IEluZm9ybWF0aW9uIGZvciB0
YWtpbmcgdGhlIHBhdGNoZXMgZm9yIG1haW50YWluZXJzOgo+IFBhdGNoIDE6IG5ldGRldiBtYWlu
dGFpbmVycyAoYmFzZWQgb2ZmIG5ldGRldi9uZXQtbmV4dC5naXQgbWFpbikKPiBQYXRjaCAyLTM6
IFNvQyBtYWludGFpbmVycyAoYmFzZWQgb2ZmIHNvYy9zb2MuZ2l0IHNvYy9kdCkKPiBQYXRjaCA0
OiBNSVBTIG1haW50YWluZXJzIChiYXNlZCBvZmYgbWlwcy9saW51eC5naXQgbWlwcy1uZXh0KQo+
IFBhdGNoIDU6IFBvd2VyUEMgbWFpbnRhaW5lcnMgKGJhc2VkIG9mZiBwb3dlcnBjL2xpbnV4Lmdp
dCBuZXh0LXRlc3QpCgpIaSBBcsSxbsOnCgpTbyB5b3VyIHBsYW4gaXMgdGhhdCBlYWNoIGFyY2hp
dGVjdHVyZSBtYWludGFpbmVyIG1lcmdlcyBvbmUgcGF0Y2g/CgpUaGF0IGlzIGZpbmUsIGJ1dCBp
dCBpcyBnb29kIHRvIGJlIGV4cGxpY2l0LCBvdGhlcndpc2UgcGF0Y2hlcyB3aWxsCmZhbGwgdGhy
b3VnaCB0aGUgY3JhY2tzIGJlY2F1c2Ugbm9ib2R5IHBpY2tzIHRoZW0gdXAuIEkgZ2VuZXJhbGx5
IHVzZQpUbzogdG8gaW5kaWNhdGUgd2hvIGkgZXhwZWN0IHRvIG1lcmdlIGEgcGF0Y2gsIGFuZCBl
dmVyeWJvZHkgZWxzZSBpbgp0aGUgQ2M6CgpSZXZpZXdlZC1ieTogQW5kcmV3IEx1bm4gPGFuZHJl
d0BsdW5uLmNoPgoKICAgIEFuZHJldwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
