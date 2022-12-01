Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A00BCC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Dec 2022 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9rtUF/oDxFItJgNKXxHkBMiBOvbCPIvZF2If1xzwl/c=; b=I6wrGt4Bfvs2Ni
	qT2Uxlaef9qSBEjQdcJmMshqrRiYLYkDaijCcyJkkZQ5lSgqW4fgm6ixtcTO4z+GHU97d4SWgUF5U
	wuRtE4kUvMJO3haQ4gYlq8mHdFS+0ojQ8+Ap4BeuTBu3izB7kid3nbKNb+Ak5yxdm8Z/fEN1kkNzL
	LPpHO4qcs2bSdwgwqbFZyhQlKq9FSTIlwTExXvPO726N8Zvh0n/BbPCTyPt9cHZWx0QwDPg0omRmf
	u6eGbMMJ6G3ZemC7jqesHc1bjBKXHmYkTUDIVSkwLA3oq/gfsIjc8ojsZUUlOZIC9fWa0+pSr08Cc
	94NqoEX9HFm4sA8UjKGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0tKo-00Brpt-MV; Thu, 01 Dec 2022 23:51:18 +0000
Received: from mail-ot1-f48.google.com ([209.85.210.48])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0tGC-00BpXA-Bb; Thu, 01 Dec 2022 23:46:34 +0000
Received: by mail-ot1-f48.google.com with SMTP id a13-20020a9d6e8d000000b00668d65fc44fso1978419otr.9;
        Thu, 01 Dec 2022 15:46:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kku18D3Y88MWUX/tUqbmMS28F2KQx7nmZY37oV7FZwE=;
        b=Ka92hniqmOZB5GKCLVArQKDD82/u8o4yjfX/Gg3S4OTWmyxSF7e+RnlFTCF8l45X6J
         cAulZnpJZCcnCuxVkAqkZtPShQywdvVEcnwkn2fDDB/1aUqzcPpoyvDP3Tm1Mdk6xUkL
         ZNLxwPrmj2+ufOdrJEomb/4jMk2EQjraIBtAUZrJR1+2q5/tBzNnembcg0ThAwv5j1dL
         4nr1iYl+pigyuzTR3ayZDeR+QcQSFHjnTs2zr3f+z8W4Tw7PJxdzdHKWHRRlYXJH79zM
         UFW5O7lcH8ECNSH7yA/0p35+Z6XDP0ygdm0nkvKgX0k7Fe4bYEkb6Xq6Ry5B2uh8BWUv
         HNtQ==
X-Gm-Message-State: ANoB5plgDnn4ESuqC+67qae7kupqU+yKjgwf+v0oCecWyJ2BvKoBAvBi
	mhhOX2CsDs88fysz4EkJaA==
X-Google-Smtp-Source: AA0mqf5ZGQasomoBdeMHUbWi+cUm7mHzdtQUSRq09o1u9VxkbZV92Lxt3/8ZuyZgJD7FgCKGDpaDTA==
X-Received: by 2002:a05:6830:1e63:b0:661:9030:6480 with SMTP id m3-20020a0568301e6300b0066190306480mr24758975otr.147.1669938390899;
        Thu, 01 Dec 2022 15:46:30 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id y2-20020a4ae702000000b0049427725e62sm2292185oou.19.2022.12.01.15.46.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 15:46:30 -0800 (PST)
Received: (nullmailer pid 1704103 invoked by uid 1000);
	Thu, 01 Dec 2022 23:46:28 -0000
Date: Thu, 1 Dec 2022 17:46:28 -0600
From: Rob Herring <robh@kernel.org>
To: =?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, Konrad Dybcio <konrad.dybcio@somainline.org>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	linuxppc-dev@lists.ozlabs.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Tim Harvey <tharvey@gateworks.com>, Michael Ellerman <mpe@ellerman.id.au>, Ray Jui <rjui@broadcom.com>, 
	Nicholas Piggin <npiggin@gmail.com>, Michael Riesch <michael.riesch@wolfvision.net>, 
	linux-mediatek@lists.infradead.org, Russell King <linux@armlinux.org.uk>, 
	linux-sunxi@lists.linux.dev, Hans Ulli Kroll <ulli.kroll@googlemail.com>, soc@kernel.org, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Fabio Estevam <festevam@gmail.com>, 
	"David S. Miller" <davem@davemloft.net>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	netdev@vger.kernel.org, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	Gregory Clement <gregory.clement@bootlin.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Bjorn Andersson <andersson@kernel.org>, Eric Dumazet <edumazet@google.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Frank Wunderlich <frank-w@public-files.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Hauke Mehrtens <hauke@hauke-m.de>, 
	Jakub Kicinski <kuba@kernel.org>, Samuel Holland <samuel@sholland.org>, 
	Oleksij Rempel <linux@rempel-privat.de>, ", Andrew Lunn" <andrew@lunn.ch>, linux-arm-msm@vger.kernel.org, 
	linux-mips@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	Sergio Paracuellos <sergio.paracuellos@gmail.com>, Magnus Damm <magnus.damm@gmail.com>, 
	=?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
	Scott Branden <sbranden@broadcom.com>, Linus Walleij <linus.walleij@linaro.org>, 
	NXP Linux Team <linux-imx@nxp.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Paolo Abeni <pabeni@redhat.com>, Christophe Leroy <christophe.leroy@csgroup.eu>, 
	Heiko Stuebner <heiko@sntech.de>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Vladimir Oltean <vladimir.oltean@nxp.com>, Peng Fan <peng.fan@nxp.com>, linux-kernel@vger.kernel.org, 
	Stefan Agner <stefan@agner.ch>, Florian Fainelli <f.fainelli@gmail.com>, Andy Gross <agross@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
	Rasmus Villemoes <rasmus.villemoes@prevas.dk>, Claudiu Beznea <claudiu.beznea@microchip.com>, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/5] dt-bindings: net: qca,ar71xx: remove label = "cpu"
 from examples
Message-ID: <166993831623.1702506.4546645219900752750.robh@kernel.org>
References: <20221130141040.32447-1-arinc.unal@arinc9.com>
 <20221130141040.32447-2-arinc.unal@arinc9.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221130141040.32447-2-arinc.unal@arinc9.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_154632_472006_08642D64 
X-CRM114-Status: GOOD (  13.88  )
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

Ck9uIFdlZCwgMzAgTm92IDIwMjIgMTc6MTA6MzYgKzAzMDAsIEFyxLFuw6cgw5xOQUwgd3JvdGU6
Cj4gVGhpcyBpcyBub3QgdXNlZCBieSB0aGUgRFNBIGR0LWJpbmRpbmcsIHNvIHJlbW92ZSBpdCBm
cm9tIHRoZSBleGFtcGxlcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBcsSxbsOnIMOcTkFMIDxhcmlu
Yy51bmFsQGFyaW5jOS5jb20+Cj4gLS0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9uZXQvcWNhLGFyNzF4eC55YW1sIHwgMSAtCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0
aW9uKC0pCj4gCgpBY2tlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
