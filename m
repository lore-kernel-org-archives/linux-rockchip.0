Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02231C76195
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Mar 2023 21:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AxyScekg0vuq+vEXh9EVFH4srBFr31rUpJ4KALL3IAc=; b=mZpIU3iqRlAiHM
	oWugC1X+bK1tfjFegVSojm+cpB4AxgXZSf/1onmhIwvmxo5xRomGVXwSxO6dNzdlg+FaV3ZdusIaF
	LPQTqPC+w+8qVlWPlZ4I6msBFxrBif5xxlqlhRBd+m70qoksYnb6gQLu3AqZwXlX+zH6zk9lmYXO2
	flU4PGXf6eVEBYR2+roBGivlFsiVwhruyzOeSS3eHZSsY691xLu2i3o3V1cMk6AQFLjqs4GxFBXSa
	h1TEMC/dH+OwKdnk8SjU9AWyK09z3QkHcIDodPv+E9DvtPZ0LseG3UBp3/9yYNQkUFYpNQ4opxRgl
	cCZNRGNQNbKOt0W4pmzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgum3-00CT4h-0R;
	Mon, 27 Mar 2023 21:53:07 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgulp-00CSzc-0L
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Mar 2023 21:52:55 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id p15so12618788ybl.9
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Mar 2023 14:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679953969;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nLI5m06f2WlStlUywkxHpgfVuIZ5JS/MDTFzEPNuSfU=;
        b=pOSHTN0gxWzMWkqyiNymvzEciJmMzDynaEbRFezy7nLLDqD1LINJt9Abz9IIuoPrea
         w6BYlguZiNT/hPuPXgbYFH+nK5VQNYOCmkfeTEJcefvBQi9za56UC8iqta+AKeLauOTu
         BYL0/iVJoeimYgwvs/tGLDATSN9mnXGj/ZTsNmgMmjZWjqUGqwweml9p3K3ISlDJ3pRy
         FJb0uOBeoz+CDw0gVfgEvWnExyi8ZW1zUmJYIiBbYreayGe/FxZCi8XsTr1Ox7zjK0S5
         OocDVIB4YAfd2kuVypBdFKkODtS9bY96MYlXVs23YNcbgJMXbEQCjP9ECgACofB2FL3i
         aWQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679953969;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nLI5m06f2WlStlUywkxHpgfVuIZ5JS/MDTFzEPNuSfU=;
        b=h7ebG/kn6dbv37Fxa2O7w2N3okSDN7tdwcn5rnbR7iWKB2wJWVCnzAjyhEzh6XhIdw
         IUwQ34jEYlJz55eV2urhgYcyV289s9nsa2VKwFJ1/HFqK0OvWiyNM7SZZhAub66oAcUS
         gZJpvC+lIoGYDE7AUXGAFTKr3incmPx/mdcIoMKFG6WxtwcbCg2/9cyJPhpLyW5VMg1A
         fwvONl/A7ItAqP1IlNS9XLU9PKRR9Xn3OWLcEl9YW7PsU5ZuRJfqWIVeAMuES/H6gEA4
         DPHHNmljq7gBhysWzoCmKEZhq8LM+fg24Xya5mTBG6sN4YU/RkKbos4bZK7olcl+ukpE
         TflA==
X-Gm-Message-State: AAQBX9c+3lnGnWj/sxFgS8Ww3EAhKM3NhY/z0URy5147t5ujB0SsswLA
	jKY9i8wqOu4SsKpiq/JUM8QAgqsr1JCcPv7PaJUNZw==
X-Google-Smtp-Source: AKy350YXWieWPPn4qPNXsbtFZBIPGWFVrw4KqEcgFae4NZrCaiM4DhD+RmS9uESY7KP/zdWUYuSeFcGkhfdSERGtuKw=
X-Received: by 2002:a25:542:0:b0:a6b:bc64:a0af with SMTP id
 63-20020a250542000000b00a6bbc64a0afmr8149446ybf.4.1679953969020; Mon, 27 Mar
 2023 14:52:49 -0700 (PDT)
MIME-Version: 1.0
References: <20230317233623.3968172-1-robh@kernel.org> <CACRpkdYq4jE7Qn1w8iPeGz7vxj_CeZ+H48B0TVYmeF4Tt=kHgA@mail.gmail.com>
 <CAL_JsqL+nF_WwZ-EDpUSD2yrxPLZWxaeb=WpTtPnnbpgcXT7qA@mail.gmail.com>
In-Reply-To: <CAL_JsqL+nF_WwZ-EDpUSD2yrxPLZWxaeb=WpTtPnnbpgcXT7qA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 Mar 2023 23:52:37 +0200
Message-ID: <CACRpkdbR_PFSkqeK4xAmxdfdhi332hyax8jAnEa7VXFVp=QEDA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: Drop unneeded quotes
To: Rob Herring <robh@kernel.org>
Cc: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Manivannan Sadhasivam <mani@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Andrew Jeffery <andrew@aj.id.au>, Joel Stanley <joel@jms.id.au>, 
	Damien Le Moal <damien.lemoal@wdc.com>, Charles Keepax <ckeepax@opensource.cirrus.com>, 
	Richard Fitzgerald <rf@opensource.cirrus.com>, Dong Aisheng <aisheng.dong@nxp.com>, 
	Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>, Jacky Bai <ping.bai@nxp.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>, 
	NXP Linux Team <linux-imx@nxp.com>, Sean Wang <sean.wang@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, 
	Tomasz Figa <tomasz.figa@gmail.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Emil Renner Berthing <kernel@esmil.dk>, 
	Jianlong Huang <jianlong.huang@starfivetech.com>, Dvorkin Dmitry <dvorkin@tibbo.com>, 
	Wells Lu <wellslutw@gmail.com>, Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>, 
	Michal Simek <michal.simek@xilinx.com>, linux-arm-kernel@lists.infradead.org, 
	linux-actions@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, asahi@lists.linux.dev, 
	linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org, 
	linux-riscv@lists.infradead.org, patches@opensource.cirrus.com, 
	alsa-devel@alsa-project.org, linux-mediatek@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_145253_144432_08DE91A2 
X-CRM114-Status: GOOD (  14.00  )
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

T24gRnJpLCBNYXIgMjQsIDIwMjMgYXQgMzozM+KAr1BNIFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+IHdyb3RlOgo+IE9uIFRodSwgTWFyIDIzLCAyMDIzIGF0IDM6NDDigK9BTSBMaW51cyBX
YWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+IHdyb3RlOgo+ID4gT24gU2F0LCBNYXIg
MTgsIDIwMjMgYXQgMTI6MzbigK9BTSBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPiB3cm90
ZToKPiA+Cj4gPiA+IENsZWFudXAgYmluZGluZ3MgZHJvcHBpbmcgdW5uZWVkZWQgcXVvdGVzLiBP
bmNlIGFsbCB0aGVzZSBhcmUgZml4ZWQsCj4gPiA+IGNoZWNraW5nIGZvciB0aGlzIGNhbiBiZSBl
bmFibGVkIGluIHlhbWxsaW50Lgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmlu
ZyA8cm9iaEBrZXJuZWwub3JnPgo+ID4KPiA+IFNob3VsZCBJIHF1ZXVlIHRoaXMgcGF0Y2ggYnkg
dGhlIHdheSwgb3IgZG8geW91IG5lZWQgaXQgdG8gZ28gaW50byBzb21lCj4gPiBEVC1yZWxhdGVk
IHRyZWU/Cj4KPiBTdGFuZHMgb24gaXRzIG93bi4gWW91IGNhbiB0YWtlIGl0LgoKVGhpcyBzYWRs
eSBjb25mbGljdHMgaGFyZCB3aXRoIG15ICJkZXZlbCIgYnJhbmNoOgpodHRwczovL2dpdC5rZXJu
ZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9saW51c3cvbGludXgtcGluY3RybC5naXQv
bG9nLz9oPWRldmVsCgpDYXVzZSBzZWVtcyB0byBiZSBtYWpvciByZWZhY3RvcmluZ3Mgb2YgTWVk
aWF0ZWsgYW5kIFJhbGluawpiaW5kaW5ncy4KCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
