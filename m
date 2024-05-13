Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDD48C25B10
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 May 2024 20:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+eNJ/4oTgorKWq3SfHa7yAcjpsrDA7wIjomheTb+b8=; b=SIVPBD1WdV1wD2
	tUXSC69IVVbJqcg6uxQTQz2hpl92C6Du1qxAOy8gWu9j7ir5GleALLPRuAJHMlloyBI6noo9fAy9w
	yYGUWYC5mxEhe6U0mXYNJA1uVKRnDqnngobpJwR3Jw5Xw1zIYOnS0cR/TOqR4XVKm2F0vVW4JjpXi
	SwKCzpSJNaZ6M9Mo+3ypOzX/+1bQ+Eq8N/k9XveMhh5SxD+pbTo/xA84RLuUHDEs+/DralOUtrQnP
	PhaadKbZPWh6HEATT2Ji4/UaoVjG3eUWpmvh71E9ZEm4wtAlHLMsMPaoEfi/g6bTMM+dy6hMlC/tf
	F8FS3lrMyGbib/WBp2gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6ce5-0000000EAYc-0304;
	Mon, 13 May 2024 20:51:41 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6cdz-0000000EAX0-2vQy
	for linux-rockchip@lists.infradead.org;
	Mon, 13 May 2024 20:51:38 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-62050e00cfdso42295437b3.3
        for <linux-rockchip@lists.infradead.org>; Mon, 13 May 2024 13:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715633494; x=1716238294; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rv7jmDTVVRFwx435oiB3ZXmxSleUrrvg/LBh8jNJlFU=;
        b=Z921T6Lj8KZ2EDZ5OhikOnUj4vlKVvMfos7OJH67XprY5kzCSO1ZU2IR7CRriKenxd
         CeM2thYErEDMbjewgonwVeiZ9Dj6a2l2GjxmQ+EBX8elwNdFcTt2kqf85/BPauIOceMH
         T+na7MhHzwjaN42kEjQKoKup9kxNGV2Q7+Y5XG1c5vxFjnJIl/c0S8nUn6YRLG3l007Y
         W2/VzoTlmPcGomLDfY7efGtb3LJmDnoa2Ty8X1FBjGXytAsdeZX5IPzVaqYd6OWviJf3
         hBqbPN+j1/N5MZT/FcL/kymRqn3NTJ+GEOsyYaErTBED1NDuwJbU0kFfVONKR9KQi6GN
         VFPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715633494; x=1716238294;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rv7jmDTVVRFwx435oiB3ZXmxSleUrrvg/LBh8jNJlFU=;
        b=MZnG+BVtTGAnI1iTg4bta0/QhkMupvCE1hgFdQj4v1nqbntafG2EScRbusiikC1HWI
         nK3IRlgCBZx4memE8Ao9z8EC9YC8lZa1pIFuABjK0ivOibTvVHFsSuY+HaDwcNOXoVqI
         DHksLG6/mXBeV0eo+RAebWhfakA8sx1BVdhCg1E4JDc7KPFhBnFMiOjsXZkWwLpXdeHO
         sjcaGvr07iol3aSj8BWADOpFLlbZ8AqbV6YXOXqTcK85PfGFwmFvoj6fF0YYDAOSqdgo
         eYv71MxKwb81mJOsvYJ1cFsyAUd+qibWAHzYdFSyvbDBkGlCEcb4xrPnvm9WsoK07XP9
         GW8g==
X-Forwarded-Encrypted: i=1; AJvYcCWtLxr3qzTRozL+tRJd1H00Bq6dizbPh5GXRdaZ17AKxPSyxnP7HNlJVOybhrpZ8o8/wkyAwcgwyFC+4/K99/NHKQXg98t2MLANyt0gkyQjad1K
X-Gm-Message-State: AOJu0YytPpMIy0Nhp3G6DkaRO3rRdEbqqGuewzXLy2RzZIva417NGDgQ
	xw2g1WbLoPF4R4tA/8JOEDFbtrnYSxgoMKth4xaAZsvtmbEt5+Mv4Mum6HGD1aRI9PfkAg7r7Ep
	rEy9BEfAG5x01o6iBMzG/YcM7Zzrt+v/88k4pzQ==
X-Google-Smtp-Source: AGHT+IHIMCINiS4Rm3W7vEHXnxoinnBVVMUXT21CaUFl/K9jprbEih1fz56tIA0O4ev2Ijok+dKJMkYRTsYw4QOpIww=
X-Received: by 2002:a05:690c:ed4:b0:61a:e9f6:2b1b with SMTP id
 00721157ae682-622aff774d9mr145019207b3.8.1715633492884; Mon, 13 May 2024
 13:51:32 -0700 (PDT)
MIME-Version: 1.0
References: <20240504-pinctrl-cleanup-v2-0-26c5f2dc1181@nxp.com>
 <20240504-pinctrl-cleanup-v2-7-26c5f2dc1181@nxp.com> <CAMuHMdUD=1rpns_mLF2rMM-x5EnOK7TExaJxoJVkbXjVz1H8uQ@mail.gmail.com>
In-Reply-To: <CAMuHMdUD=1rpns_mLF2rMM-x5EnOK7TExaJxoJVkbXjVz1H8uQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 May 2024 22:51:21 +0200
Message-ID: <CACRpkdaUecnwvHFdtGkuM80SObvXpXZkWGYoUMgnNHcvObYF0g@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20240513_135135_760618_F695AFFC 
X-CRM114-Status: GOOD (  12.65  )
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

T24gTW9uLCBNYXkgMTMsIDIwMjQgYXQgMTo1OeKAr1BNIEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2Vl
cnRAbGludXgtbTY4ay5vcmc+IHdyb3RlOgo+IE9uIFNhdCwgTWF5IDQsIDIwMjQgYXQgMzoxNOKA
r1BNIFBlbmcgRmFuIChPU1MpIDxwZW5nLmZhbkBvc3MubnhwLmNvbT4gd3JvdGU6Cj4gPiBGcm9t
OiBQZW5nIEZhbiA8cGVuZy5mYW5AbnhwLmNvbT4KPiA+Cj4gPiBVc2Ugc2NvcGUgYmFzZWQgb2Zf
bm9kZV9wdXQoKSBjbGVhbnVwIHRvIHNpbXBsaWZ5IGNvZGUuCj4gPgo+ID4gU2lnbmVkLW9mZi1i
eTogUGVuZyBGYW4gPHBlbmcuZmFuQG54cC5jb20+Cj4KPiBUaGFua3MgZm9yIHlvdXIgcGF0Y2gh
Cj4KPiBSZXZpZXdlZC1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRl
ci5iZT4KPiBBY2tlZC1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRl
ci5iZT4KCkRvZXMgdGhpcyBnbyBpbnRvIHRoZSBSZW5lc2FzIHBhdGNoIHN0YWNrPwoKSSB0aGlu
ayB0aGUgcGF0Y2ggc3RhbmRzIGZpbmUgd2l0aG91dCB0aGUgcmVzdCBvZiB0aGUgc2VyaWVzLgoK
WW91cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
