Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECF3BC47088
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Dec 2022 06:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2HlmWJ9OVOf4Ikfd9thkIOvV1ogqDUEEqYweAXDE6bE=; b=Lf/nVX715h36z+
	l9EJLlhFxcRhUwUzY/w+KtfX8ToLC9hyTLxE4Q4qfUEIAe3gV+iDnC+4epXeBvu30pihvKMksFGEQ
	eNAgPgI2lCEi6ccG1hvBpZOI5KL3QcNW6mprv/DmKcejOKYUJNDu80EXv1KDXClnr3IcbrfQ59yvO
	hkNqnBJE/s1P2Rv+evmOgy34OlrgH4n9uT7whLNFjChPZ+8M+NJ8vXYFFnosxu3kI7mHZL0Mn/x1n
	+KwTd2+kGAfknt0HWlMzC8CnA4mBPc84bUUtRbBpdNUjkwfKcztKwGLhn3zE/I5Tw7ak7pMI2aZeS
	Flp/xdrndBSJyRN6IeyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0cqM-0059Bf-3d; Thu, 01 Dec 2022 06:14:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0cqI-00598b-Vq
	for linux-rockchip@lists.infradead.org; Thu, 01 Dec 2022 06:14:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1p0cpU-0005yr-J8; Thu, 01 Dec 2022 07:13:52 +0100
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1p0cpS-0002De-7V; Thu, 01 Dec 2022 07:13:50 +0100
Date: Thu, 1 Dec 2022 07:13:50 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: =?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	soc@kernel.org, "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andrew Lunn <andrew@lunn.ch>,
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
	Oleksij Rempel <linux@rempel-privat.de>, devicetree@vger.kernel.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-sunxi@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 4/5] mips: dts: remove label = "cpu" from DSA dt-binding
Message-ID: <20221201061350.GE19642@pengutronix.de>
References: <20221130141040.32447-1-arinc.unal@arinc9.com>
 <20221130141040.32447-5-arinc.unal@arinc9.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221130141040.32447-5-arinc.unal@arinc9.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221130_221443_056780_DE92A061 
X-CRM114-Status: GOOD (  21.41  )
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

T24gV2VkLCBOb3YgMzAsIDIwMjIgYXQgMDU6MTA6MzlQTSArMDMwMCwgQXLEsW7DpyDDnE5BTCB3
cm90ZToKPiBUaGlzIGlzIG5vdCB1c2VkIGJ5IHRoZSBEU0EgZHQtYmluZGluZywgc28gcmVtb3Zl
IGl0IGZyb20gYWxsIGRldmljZXRyZWVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFyxLFuw6cgw5xO
QUwgPGFyaW5jLnVuYWxAYXJpbmM5LmNvbT4KPiAtLS0KPiAgYXJjaC9taXBzL2Jvb3QvZHRzL3Fj
YS9hcjkzMzEuZHRzaSAgICB8IDEgLQo+ICBhcmNoL21pcHMvYm9vdC9kdHMvcmFsaW5rL210NzYy
MS5kdHNpIHwgMSAtCj4gIDIgZmlsZXMgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvYXJjaC9taXBzL2Jvb3QvZHRzL3FjYS9hcjkzMzEuZHRzaSBiL2FyY2gvbWlwcy9i
b290L2R0cy9xY2EvYXI5MzMxLmR0c2kKPiBpbmRleCBjNDEwMmIyODBiNDcuLjc2OGFjMGY4Njli
MSAxMDA2NDQKPiAtLS0gYS9hcmNoL21pcHMvYm9vdC9kdHMvcWNhL2FyOTMzMS5kdHNpCj4gKysr
IGIvYXJjaC9taXBzL2Jvb3QvZHRzL3FjYS9hcjkzMzEuZHRzaQo+IEBAIC0xNzYsNyArMTc2LDYg
QEAgcG9ydHMgewo+ICAKPiAgCQkJCQkJc3dpdGNoX3BvcnQwOiBwb3J0QDAgewo+ICAJCQkJCQkJ
cmVnID0gPDB4MD47Cj4gLQkJCQkJCQlsYWJlbCA9ICJjcHUiOwo+ICAJCQkJCQkJZXRoZXJuZXQg
PSA8JmV0aDE+Owo+ICAKPiAgCQkJCQkJCXBoeS1tb2RlID0gImdtaWkiOwoKUmV2aWV3ZWQtYnk6
IE9sZWtzaWogUmVtcGVsIDxvLnJlbXBlbEBwZW5ndXRyb25peC5kZT4KClRoeCEgCgotLSAKUGVu
Z3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAgICAg
IHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwgR2VybWFu
eSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dl
cmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIw
NjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
