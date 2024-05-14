Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D4B6C04FFE
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 May 2024 07:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OdmdJKVzid3Tm1iXAMJ5JtNmQdzfjXUmr9FQhzbjeRY=; b=RLCbYpowvLarsk
	8IDqlSo5gjT4uH4Ka4zmpDhWsdnfeb85nAS5MjN+Q5W6VdSovhAG24sqmZNmgffvjICtbHim3Y1GS
	Q8QMrjhCkRrA4GYdACfQ6uUc5FZ0jGGRQ9G1iZCftavV3W6b8O6cRx/ZzRb1Fm/ac2/C4KBMUGxbi
	3cQa77U3nJOlY+kdFtNxDo/3d8JZMSM1U167D/2oACVua5P+LcCajnSnmg3dCNomCUSCl6pw+BbOU
	azXZPRCPH8I+qc3VKDwOEZg5A1p72wnvAd4F4qsh4Y2AEXdj01bbJEFFwYlcbR4dea+R2kyZGV+Sz
	dcIVb7E7DVwky//P7JTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6mf7-0000000FF97-03tS;
	Tue, 14 May 2024 07:33:25 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6mf2-0000000FF73-3H0m
	for linux-rockchip@lists.infradead.org;
	Tue, 14 May 2024 07:33:22 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-61be74097cbso56372607b3.1
        for <linux-rockchip@lists.infradead.org>; Tue, 14 May 2024 00:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715671995; x=1716276795; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C4wW5aa4W2kv01Iu3rTlOfBD8ed5XWvkaDVuJNLIYTA=;
        b=GSW1/rE7RFGgI/l6Wv3jUn15vo3llmqHqngEO/oa8PX6mG/ETK1u4n2IF6hmv34RSB
         XajQjSuW0P9TNAusPkePvZyK7pGixVXDSbHZBNs71FUDfrf5ImKM42ZTBJZijANVlUcJ
         yrFPrEe6W1G9eELvY+lYPzM/haaOzYo7DHO4SL6tzScpJPJsl+D4ojxR6a6PMBWq1e+w
         3nooUuuyGpKsDknUMIXy6nn8ocl2i0btIpyxU4flwvHPur1+CVd5kxh5vnBp/AM/ZDvN
         URB78GCVG6C9ABXJnhreLopywIkLz3/d3no7Hizx29mlTTJM4FKzFtQjvlt9A98wRhgW
         9LQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715671995; x=1716276795;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C4wW5aa4W2kv01Iu3rTlOfBD8ed5XWvkaDVuJNLIYTA=;
        b=FVJmK18+fzAyv9GirfME1anFysWk74KqSLN4M/BoaCDK8xZZRFa8e0qdhgp9Zxj38S
         OvTpdTuaqc/MiywV8lOPfxho7gm9PaNK5Cwcn8hvYXDlHSQQFiG0GBr3Lg7TR9hQuvkO
         Xk9ACXYK/FiWssOAoGjgyBHann/H+JwWPk5HlKfUvOMhqmIQ1pDXgXGiccOne21ts+44
         10/etBZ17qOxJfuIt9XgDD8iz5jQ1jeRLvkPn280D7yP0Y9ubKxC/eI/shNYB+STmjC5
         M0Lwsvw8lXhjBoguKrNBing9TVsblPopBFiGKx1D5XwuXojAXliS36/GKsndoQeC8unr
         addg==
X-Forwarded-Encrypted: i=1; AJvYcCWKxPK5SsFLmk7K3BdHp1RTNRsJLgaZ66KIwf1aGe7p92Bj+6yL6/lw0KL1tJS1ei2kzi8gFV52pi/b6KNtYkAcLqG6eKIntwmkhHzdxqH1Sked
X-Gm-Message-State: AOJu0Yy1B/u6QXnrvCs8F6rs3l6+4ibsf7J3RxcBp6PrAd3jn6MkK4T6
	FQ+CePamw22QedAWuBfhAR9WktRBvHLN5y2kSAAGWKvY+6OyGcHMi1bvsjb7tRErZBSEnjQUjun
	R8ymePHjoT6GLVt0LYTVLwnU7cjfGHHo9YKXgMg==
X-Google-Smtp-Source: AGHT+IEj9rSUWA94F6VFaCC7a26gta7P6jlgI2cpDV7q9j/kgYnlADA3j4AJ721URmKt02c8jgw6oM4ErSC0l+EyUGQ=
X-Received: by 2002:a0d:cbd1:0:b0:61b:3356:d28c with SMTP id
 00721157ae682-622aff92355mr116464607b3.2.1715671995199; Tue, 14 May 2024
 00:33:15 -0700 (PDT)
MIME-Version: 1.0
References: <20240504-pinctrl-cleanup-v2-0-26c5f2dc1181@nxp.com>
 <20240504-pinctrl-cleanup-v2-7-26c5f2dc1181@nxp.com> <CAMuHMdUD=1rpns_mLF2rMM-x5EnOK7TExaJxoJVkbXjVz1H8uQ@mail.gmail.com>
 <CACRpkdaUecnwvHFdtGkuM80SObvXpXZkWGYoUMgnNHcvObYF0g@mail.gmail.com> <CAMuHMdWCD+k8=iX8+tcK76DU_m9quR8BV+K68K73SygJzCz5VA@mail.gmail.com>
In-Reply-To: <CAMuHMdWCD+k8=iX8+tcK76DU_m9quR8BV+K68K73SygJzCz5VA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 14 May 2024 09:33:03 +0200
Message-ID: <CACRpkdYS8=cHT=7tGbzWZ73jbLhjqdpssbaHH-qREe=bcHYe2A@mail.gmail.com>
Subject: Re: [PATCH v2 07/20] pinctrl: renesas: Use scope based of_node_put() cleanups
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Dvorkin Dmitry <dvorkin@tibbo.com>, Wells Lu <wellslutw@gmail.com>, 
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
	Tony Lindgren <tony@atomide.com>, Stephen Warren <swarren@wwwdotorg.org>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-samsung-soc@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-riscv@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	imx@lists.linux.dev, linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org, 
	Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240514_003320_866250_A314B286 
X-CRM114-Status: GOOD (  12.76  )
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

T24gVHVlLCBNYXkgMTQsIDIwMjQgYXQgODozNuKAr0FNIEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2Vl
cnRAbGludXgtbTY4ay5vcmc+IHdyb3RlOgoKPiA+IERvZXMgdGhpcyBnbyBpbnRvIHRoZSBSZW5l
c2FzIHBhdGNoIHN0YWNrPwo+ID4KPiA+IEkgdGhpbmsgdGhlIHBhdGNoIHN0YW5kcyBmaW5lIHdp
dGhvdXQgdGhlIHJlc3Qgb2YgdGhlIHNlcmllcy4KPgo+IFN1cmUsIEkgY2FuIGRvIHRoYXQuCgpQ
bGVhc2UgYXBwbHkgaXQhCgo+IEZyb20geW91ciBwb3NpdGl2ZSByZXNwb25zZSB0byB2MSwgSSB0
aG91Z2h0IHRoYXQgcGVyaGFwcyB5b3UganVzdAo+IHdhbnRlZCB0byB0YWtlIHRoZSBmdWxsIHNl
cmllcyB5b3Vyc2VsZj8KClNvcnJ5LCBJIGFsd2F5cyBwcmVmZXIgc3VibWFpbnRhaW5lcnMgdG8g
cGljayB0aGVpciBzdHVmZiwgdGhleQprbm93IHdoYXQgdGhleSBhcmUgZG9pbmcgYW5kIHRoZXkg
Y2FuIHRlc3QgdGhlIGVudGlyZSBwYXRjaApzdGFjayBwcm9wZXJseS4KCllvdXJzLApMaW51cyBX
YWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
