Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65786C3065A
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jun 2024 10:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xOfMJhyUp8ycbfSbbww6NRko8jh8u6pfPsku0gUW9Rs=; b=xB0Tsc2d8QeXQR
	GBWpMQCxkuT2zv8F55YBhSvBMLbQEZmCHz8NYJvbiSfROKo2j+KG5dFOxeIOvBM3eZgtiRNjic7DN
	MI+cPOBHUFd43nXoapGeuAqF8Xfic5Y80F6Y5QevYzwzhhuDmmOE5PkAkyh5YOiMYdtzTpmuqIhCq
	WGH3eZ/BiwerZPKsfz6Lshd1ShbVhTD3E0Z0JR3c4QSYw3NS5h7gS7qNg75Y/7oQUEzFu/GypG/+O
	aNSa5mfRIfbePelBX40rNGCSoePAPfFSkoN0QpDoh6CGMHASp2rzwsOkI4A+d0cbbICL1qGUKtBqw
	WfZN6S4M//CK68D0FvHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMQ59-00000006Ng3-0InP;
	Wed, 26 Jun 2024 10:40:55 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMQ55-00000006Ndw-2oOX
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Jun 2024 10:40:53 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-e02c4983bfaso6508643276.2
        for <linux-rockchip@lists.infradead.org>; Wed, 26 Jun 2024 03:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719398451; x=1720003251; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KHbQKOiYe+Ibua4xAi15PJl+V4d0EJrIgF7ce4mlbFQ=;
        b=wATRUmnSALzCnyzXDRw78IYMtccWBCWvs3qe80V/PQFTkoQEch2xmgJIl4UPAFSIR1
         PGzTvl9QTC6FPoFWcFRjpTH0JuIyKNeb0LLPN4WyjJCkmL+TOBLQV1b9Pcfuq+GlisEv
         qZQTn1GzuN3pjsuBYavwjWm3gsBb0aThuAb6nlPpwuCmEa1VBgksFjtAnyNc0Byzw/RA
         85xkU9SxFUygo9yktHu/FMOBYrgHcqjL084xGDc4INc3Rx3XVQByH6mCbSZcFLheV2Wt
         jnbdZYg5WkwSZA28F70fGgFpIYp89KxwPfolo6KvW4cV0nGNyS8aXdUHp82N4wgpjinY
         MTzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719398451; x=1720003251;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KHbQKOiYe+Ibua4xAi15PJl+V4d0EJrIgF7ce4mlbFQ=;
        b=MDNGjvJflD1YYUO3klgCjP8J4X5AYvQ/oeQohfAk6KExF/klUrIPgXhnHTNmn98LMs
         OPxGNeWP/OIP1pxN8BXsPDFrujbOio9186vILgPg6w+LMEO+ETaEW6hKHF9DwKpKW1+i
         knBJqwt8QemAfye2G4i25qLXWspjFGReibyqGzpdHO5nfExTpKQY8xNqjgt6M1IKaftq
         Yow/mXdSkhimzI2+KlPKSD4AsQru4067UY8e1hj/sHXjLeZVa2v+EQPK8W5ZaStX0Ep5
         Xkn8y1bALxJGY1ywg+wsBW6hJVbWayo1mydLStmyKU3O9yA6ZDRWfkr2C1cbL5rjYO8U
         ss1A==
X-Forwarded-Encrypted: i=1; AJvYcCVUgGCxh4RMeogJk3naYhm3WGdD2MyeATaGkOkLvYyePtEzeop0soYpFRzVJz/bLqYQVfV05RXmhZHh3BhyFrjzwQu+c0SuAUoIwuA3/9WSf+4k
X-Gm-Message-State: AOJu0YzhnuLYU/JYL9350RhzYujQ8eQLISq3tVhh66gDZXDTH8omK92s
	T/rPy5TKvTVDtCb2Yzl3qSiFqH6846YD8zzLStRpdmEhjq705Q48qwAnIx8lY/TZSZ0zSHmNwZn
	i5htBV8WdyaqW3L4aXtpwfCgueRaxQ4M0EpKFwA==
X-Google-Smtp-Source: AGHT+IGAQdQECALwFQiRgkrKA/rZBEJOAnkCpPbedoTQq7/jt7W9vOb6wQcj2qKoWUKoPCAEcM15HUQq3HQFJjgWzyA=
X-Received: by 2002:a25:c553:0:b0:dfa:6e39:95b0 with SMTP id
 3f1490d57ef6-e030107f616mr10069878276.49.1719398450656; Wed, 26 Jun 2024
 03:40:50 -0700 (PDT)
MIME-Version: 1.0
References: <20240504-pinctrl-cleanup-v2-0-26c5f2dc1181@nxp.com>
 <20240504-pinctrl-cleanup-v2-20-26c5f2dc1181@nxp.com> <171939733731.25849.13373950874840419376.b4-ty@linaro.org>
In-Reply-To: <171939733731.25849.13373950874840419376.b4-ty@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 26 Jun 2024 12:40:36 +0200
Message-ID: <CACRpkdastCME_0BWjcaNc0Fw8qsLAGgoQUMi7g8sEP+xT=T_tQ@mail.gmail.com>
Subject: Re: (subset) [PATCH v2 20/20] pinctrl: samsung: Use scope based
 of_node_put() cleanups
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Dvorkin Dmitry <dvorkin@tibbo.com>, Wells Lu <wellslutw@gmail.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Emil Renner Berthing <kernel@esmil.dk>, Jianlong Huang <jianlong.huang@starfivetech.com>, 
	Hal Feng <hal.feng@starfivetech.com>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Viresh Kumar <vireshk@kernel.org>, Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org, 
	Krzysztof Kozlowski <krzk@kernel.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Patrice Chotard <patrice.chotard@foss.st.com>, Heiko Stuebner <heiko@sntech.de>, 
	Damien Le Moal <dlemoal@kernel.org>, Ludovic Desroches <ludovic.desroches@microchip.com>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <festevam@gmail.com>, 
	Shawn Guo <shawnguo@kernel.org>, Jacky Bai <ping.bai@nxp.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Chester Lin <chester62515@gmail.com>, 
	Matthias Brugger <mbrugger@suse.com>, Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>, 
	Sean Wang <sean.wang@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
	Joel Stanley <joel@jms.id.au>, Dan Carpenter <dan.carpenter@linaro.org>, 
	Tony Lindgren <tony@atomide.com>, Stephen Warren <swarren@wwwdotorg.org>, 
	"Peng Fan (OSS)" <peng.fan@oss.nxp.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-samsung-soc@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-riscv@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	imx@lists.linux.dev, linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org, 
	Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240626_034051_805742_836639AF 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
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

T24gV2VkLCBKdW4gMjYsIDIwMjQgYXQgMTI6MjLigK9QTSBLcnp5c3p0b2YgS296bG93c2tpCjxr
cnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+IE9uIFNhdCwgMDQgTWF5IDIw
MjQgMjE6MjA6MTggKzA4MDAsIFBlbmcgRmFuIChPU1MpIHdyb3RlOgo+ID4gVXNlIHNjb3BlIGJh
c2VkIG9mX25vZGVfcHV0KCkgY2xlYW51cCB0byBzaW1wbGlmeSBjb2RlLgo+ID4KPiA+Cj4KPiBB
cHBsaWVkLCB0aGFua3MhCj4KPiBbMjAvMjBdIHBpbmN0cmw6IHNhbXN1bmc6IFVzZSBzY29wZSBi
YXNlZCBvZl9ub2RlX3B1dCgpIGNsZWFudXBzCj4gICAgICAgICBodHRwczovL2dpdC5rZXJuZWwu
b3JnL3BpbmN0cmwvc2Ftc3VuZy9jLzcwNzgwN2Y0YzExMjhlMzk0NDI1MTllODQ5ZTRjZTBiN2My
OWIxMTAKCk9LIEkgZHJvcHBlZCBpdCBmcm9tIG15IHF1ZXVlIQoKWW91cnMsCkxpbnVzIFdhbGxl
aWoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
