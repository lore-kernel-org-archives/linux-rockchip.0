Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8B89C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Nov 2022 18:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRLL1ysavHgAkBwF9EqcQP2jrxMTkmeAlV7NHZW4gNM=; b=xZi/R3UM+ZrP80
	fYKgfdO+4EScbjkYgjBRut6n1bRMp9jPPWdkGN7L1I8QToQb20ChJ//iWniNfhrIwiqoS6t/ueRUU
	dI6G+fa9jhu25FCwMqZFuEI9EqmT3cfQhYvJ8It9yfdcKhsmrez3d6IXbWyr2hcKxqrWpSKKRqmQ+
	GY721nNhUG1ovlBN5BkcfyPpQSegwwGhu1u60hSHVyl5RuRzfLhDfDLn9pbIi9FqESIIlqyxcYbeO
	TZp3djXlWT/TBKzZG3j135osZ5LJl11T4BA6WHYYLHOh/7sJ8fwDbzf4JolZkbYQ2YXxVYA1Rljnb
	5eSd1/9jj00qMrV4IzsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0S0y-001h8C-ST; Wed, 30 Nov 2022 18:41:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0S0s-001h2w-CN; Wed, 30 Nov 2022 18:40:55 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1p0S0E-0003wh-HH; Wed, 30 Nov 2022 19:40:14 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Vladimir Oltean <vladimir.oltean@nxp.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, soc@kernel.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Russell King <linux@armlinux.org.uk>, Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@microchip.com>, Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Florian Fainelli <f.fainelli@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>, =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, Hans Ulli Kroll <ulli.kroll@googlemail.com>, Linus Walleij <linus.walleij@linaro.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Matthias Brugger <matthias.bgg@gmail.com>, Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, Stefan Agner <stefan@agner.ch>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, =?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>, Sergio Paracuellos <sergio.paracuellos@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, Christophe Leroy <christophe.leroy@csgroup.eu>, Tim Harvey <tharvey@gateworks.com>, Peng Fan <peng.fan@nxp.com>, Rasmus Villemoes <rasmus.villemoes@prevas.dk>, Frank Wunderlich <frank-w@public-files.de>, Michael Riesch <michael.riesch@wolfvision.net>, Oleksij Rempel <linux@rempel-privat.de>, =?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org, linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH 3/5] arm64: dts: remove label = "cpu" from DSA dt-binding
Date: Wed, 30 Nov 2022 19:40:12 +0100
Message-ID: <5443335.kQq0lBPeGt@diego>
In-Reply-To: <20221130141040.32447-4-arinc.unal@arinc9.com>
References: <20221130141040.32447-1-arinc.unal@arinc9.com> <20221130141040.32447-4-arinc.unal@arinc9.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221130_104054_474346_4C1CF72A 
X-CRM114-Status: GOOD (  15.08  )
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

QW0gTWl0dHdvY2gsIDMwLiBOb3ZlbWJlciAyMDIyLCAxNToxMDozOCBDRVQgc2NocmllYiBBcsSx
bsOnIMOcTkFMOgo+IFRoaXMgaXMgbm90IHVzZWQgYnkgdGhlIERTQSBkdC1iaW5kaW5nLCBzbyBy
ZW1vdmUgaXQgZnJvbSBhbGwgZGV2aWNldHJlZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogQXLEsW7D
pyDDnE5BTCA8YXJpbmMudW5hbEBhcmluYzkuY29tPgo+IC0tLQoKPiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtYnBpLXIyLXByby5kdHMgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1icGktcjItcHJvLmR0cwo+IGluZGV4IGMyODJm
NmU3OTk2MC4uYjcxMTYyZDY1ZDJlIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTY4LWJwaS1yMi1wcm8uZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1NjgtYnBpLXIyLXByby5kdHMKPiBAQCAtNTUyLDcgKzU1Miw2IEBAIHBv
cnRANCB7Cj4gIAo+ICAJCQlwb3J0QDUgewo+ICAJCQkJcmVnID0gPDU+Owo+IC0JCQkJbGFiZWwg
PSAiY3B1IjsKPiAgCQkJCWV0aGVybmV0ID0gPCZnbWFjMD47Cj4gIAkJCQlwaHktbW9kZSA9ICJy
Z21paSI7Cj4gIAo+IAoKUm9ja2NoaXAtcGFydDoKQWNrZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxo
ZWlrb0BzbnRlY2guZGU+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
