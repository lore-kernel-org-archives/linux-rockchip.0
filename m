Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62CF4C47088
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Dec 2022 10:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rHIAplJn9wNaTL1y21XDTTZRjN9CPdumIcVAx4dWXyA=; b=mUccN1JDUolxfg
	eAfWWqUWjH8PiX3ORzQS3lTGowp3bm/Nz5qR0ISqHJtqk2vO4JawgfFdzkYd52mBE9OVV2r6brNeP
	40rvZrQB511DT0bT2k8IXAZqeSGhwheg9Rwfm5sajTAalhfApHiwk9dYUph5p/WTVHQAQj4eLizTU
	OxJ18u/O2gcbOFGVYg5uFAizz0iUSoDijejOv4fA5bdZ8f3PNXDj/JWgiKP0SNQjiqT65dtjVt1e3
	eFwFNPtxG5JGpM5fA1454CJliC69y4VEpDHmUAzXNv47rb5N3HSgwtUcoMbCY7fni+O8Ry6TpfNEW
	u2UmBtPblHfx8qDvk2/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0hH2-006tCJ-1l; Thu, 01 Dec 2022 10:58:36 +0000
Received: from elvis.franken.de ([193.175.24.41])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0hGt-006t7I-J4; Thu, 01 Dec 2022 10:58:29 +0000
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1p0hGS-0007Uq-03; Thu, 01 Dec 2022 11:58:00 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 045ACC1EF5; Thu,  1 Dec 2022 11:53:20 +0100 (CET)
Date: Thu, 1 Dec 2022 11:53:20 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
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
Subject: Re: [PATCH 4/5] mips: dts: remove label = "cpu" from DSA dt-binding
Message-ID: <20221201105320.GD6569@alpha.franken.de>
References: <20221130141040.32447-1-arinc.unal@arinc9.com>
 <20221130141040.32447-5-arinc.unal@arinc9.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221130141040.32447-5-arinc.unal@arinc9.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_025828_015959_700022E7 
X-CRM114-Status: GOOD (  18.66  )
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
PSA8JmV0aDE+Owo+ICAKPiAgCQkJCQkJCXBoeS1tb2RlID0gImdtaWkiOwo+IGRpZmYgLS1naXQg
YS9hcmNoL21pcHMvYm9vdC9kdHMvcmFsaW5rL210NzYyMS5kdHNpIGIvYXJjaC9taXBzL2Jvb3Qv
ZHRzL3JhbGluay9tdDc2MjEuZHRzaQo+IGluZGV4IGYzZjRjMWYyNmUwMS4uNDQ1ODE3Y2JmMzc2
IDEwMDY0NAo+IC0tLSBhL2FyY2gvbWlwcy9ib290L2R0cy9yYWxpbmsvbXQ3NjIxLmR0c2kKPiAr
KysgYi9hcmNoL21pcHMvYm9vdC9kdHMvcmFsaW5rL210NzYyMS5kdHNpCj4gQEAgLTM4Niw3ICsz
ODYsNiBAQCBwb3J0QDQgewo+ICAKPiAgCQkJCQlwb3J0QDYgewo+ICAJCQkJCQlyZWcgPSA8Nj47
Cj4gLQkJCQkJCWxhYmVsID0gImNwdSI7Cj4gIAkJCQkJCWV0aGVybmV0ID0gPCZnbWFjMD47Cj4g
IAkJCQkJCXBoeS1tb2RlID0gInRyZ21paSI7Cj4gIAo+IC0tIAo+IDIuMzQuMQoKYXBwbGllZCB0
byBtaXBzLW5leHQuCgpUaG9tYXMuCgotLSAKQ3JhcCBjYW4gd29yay4gR2l2ZW4gZW5vdWdoIHRo
cnVzdCBwaWdzIHdpbGwgZmx5LCBidXQgaXQncyBub3QgbmVjZXNzYXJpbHkgYQpnb29kIGlkZWEu
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgWyBSRkMxOTI1
LCAyLjMgXQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
