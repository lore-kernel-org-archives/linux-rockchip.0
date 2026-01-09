Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D77A6C4450D
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7YjXLCgJ8vVauVf+9piJ1JjJ9+m7UxPMhzN4hN/6mvQ=; b=IAs5yZ+EEtxrnU
	66GwoV0D7P2i/NgYbu+YHjL56AqIFssZXGM6oBfZiJF9dsttnqyqVjNhptXjwNt1ZVNSK+quMtH7s
	HreHLsbcc1fiu4lMeuzVJpcasCvTDCjgmwLXhCOOt2msQnPa1N/igVpmq+iXUE2B4D1Hx5KlV5gKN
	TaJSg2vXbxtIBNnI2zVpFhsN7z2wMEwFhPIr6+LrirhxxPLqswowTJ6pZ8Pj3OFY6aTDAMkzDhMI4
	eOD4eiuJeTbLrhghw266xI+WcLHIWPdvcZZH7TWe2PRPqOZkoCE/Z81pZiXheY5mQHhbgr6xHqRT5
	ZO3v7L0LOLu3K9KxkYag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkQk-00000001Uj3-39Nd;
	Thu, 09 Jul 2026 08:48:26 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veJgE-000000031p2-1k0A
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Jan 2026 21:06:00 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-2a0d6f647e2so48340935ad.1
        for <linux-rockchip@lists.infradead.org>; Fri, 09 Jan 2026 13:05:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1767992757; x=1768597557; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f+kn0nlzGkQ0BViOYfFFGO8lkUm/rT4hSAopw8yn9RE=;
        b=WNPyTDpoOI2UrSREGyjOmX4zSDUaUHOtoqDyVDjcj0veI7dX0cCSpwYHB1Yo0t/UdX
         cYlkXad8u2Rd6Ia0bZGecVLvQyS9zspaGE2/9SH+hRpRIr//l8ADgQxP2m1mI7mzonlh
         xt36gKNU73WAqOamiB0FQs43bYO+hRfy+F/y5VWCmnrLe/puf7eZdFY1fmrmesMJY6w+
         Wtbzx6x5fLUEf/8SL412aAbPOzxJwWkrSH9x6qKAE/Ge0OWqc6c/ELc+dU1j9FnLbZAA
         tXJFjYSTUqvXkFrrnrVKC7OGl7zUFKegGdUmenbxc6parPRGMbsV3Ki8P1Ee0K/tRtst
         AksQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767992757; x=1768597557;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=f+kn0nlzGkQ0BViOYfFFGO8lkUm/rT4hSAopw8yn9RE=;
        b=wzI0adso32N7I0vcpBx6ztbCLi4RWSgjOdjofwrd8lMgZS8jC8NGdLlJCl/fD3M+yv
         GelhVaN7x7Qc/0owACzhcW7eCu5KmZmmumETS6p2NgmBdb0qINSM6aSYmkedNLMUNwWK
         cXo/CTfXOhVvu8SLCNA9jx+jouuPJaggUsMqHtk+vhG3MNrHOpc1z2/bCJxXtY1nCzF7
         9wvKvMj9WE/Ny4BVWPh6+FxsPvjZX3qD5DeMCU/6QFkPRfiPKisbsCuNgNqgkSrjxiqw
         sxaa5ATBrwAaZTGrLgL2nKOJ7+wZNW+oLYx4Y9DfXNY+StqSfrxbLg8ip8qo0/4Qm73q
         Hohw==
X-Forwarded-Encrypted: i=1; AJvYcCW67ibr7EwxKT3/AfYcz8c0uVQDcp7R8Tj7Rm7RAl4PbCuAoqUxzbBSmFfKnCf5Yf6+AQUCu+SquSTJD+1Puw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzEilVXhXJcj5HLVuTrSkcBZoj0+voaMpXvzy/Z8qxrBHks809X
	WxpTIjgtVzUCW/y7B4i3Gi0P1rKBKY5JGWg7aJKUGGDnFyxEqgyQ/BywI05K2GcRyAE5lxlemBN
	tZrK3I1y8/G2E894CUZURm5wGcd47hUw=
X-Gm-Gg: AY/fxX7ANORskfXkdOhJb2QD8XWLpp8yF84fJpgk8x5FBq/hNP0bDwqA+20te904xiL
	6WDH62v8gKxoIu/NyFrBwg4PsXlSJAw1FNmxTJZtyy4vjjrX11x7e+IR+4ejquNz64FZU7fXYKy
	NBxi8ZHHdLuRwaMFnl9YCEaCccOuBSLMH5hvomcUpOr3h7xuiaofLLcs/Gtjm4K1kQG506/Chbv
	KBOdk8dpT3KJSVsTIeNtT5p/yTFmgBrOU7H+jvbmytLTMS96uRe/SPzb8qo15W/DNT0jPhDrxmH
	CAyUeUdVyrxqqPD/NCqpnoGUYizQAnET5ldEoIw=
X-Google-Smtp-Source: AGHT+IGzEqZSKhDh+mfZnkqq/TwV9IRDJvdndDZXOgFLWIDXGIN31XCilSikaluLQUb1REl5xfFtQyCdyy3ZvPXVWkE=
X-Received: by 2002:a17:903:1acc:b0:295:592f:94a3 with SMTP id
 d9443c01a7336-2a3ee49b5camr115632895ad.48.1767992757127; Fri, 09 Jan 2026
 13:05:57 -0800 (PST)
MIME-Version: 1.0
References: <20260108203004.3538449-1-andriy.shevchenko@linux.intel.com> <20260108203004.3538449-3-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20260108203004.3538449-3-andriy.shevchenko@linux.intel.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 9 Jan 2026 22:05:46 +0100
X-Gm-Features: AZwV_QgnJP_ucVFfV4UzfxU71gNnGoxRPDRc5QYDA0rdtBqGfiMffeomtdZlKmw
Message-ID: <CAFBinCDzAOC9Sc_LZEbLhtajvPC4zjRiaoq6k9at2iJQnJxwjw@mail.gmail.com>
Subject: Re: [PATCH v1 2/4] spi: Drop duplicate of_node assignment
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Mark Brown <broonie@kernel.org>, Varshini Rajendran <varshini.rajendran@microchip.com>, Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sunny Luo <sunny.luo@amlogic.com>, Janne Grunau <j@jannau.net>, Chin-Ting Kuo <chin-ting_kuo@aspeedtech.com>, CL Wang <cl634@andestech.com>, Manikandan Muralidharan <manikandan.m@microchip.com>, David Lechner <dlechner@baylibre.com>, Florian Fainelli <florian.fainelli@broadcom.com>, Jonas Gorski <jonas.gorski@gmail.com>, Hang Zhou <929513338@qq.com>, Jun Guo <jun.guo@cixtech.com>, Philipp Stanner <phasta@kernel.org>, Charles Keepax <ckeepax@opensource.cirrus.com>, Bartosz Golaszewski <brgl@kernel.org>, =?UTF-8?Q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>, Shiji Yang <yangshiji66@outlook.com>, James Clark <james.clark@linaro.org>, Jonathan Marek <jonathan@marek.ca>, Carlos Song <carlos.song@nxp.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Huacai Chen <chenhuacai@kernel.org>, Xianwei Zhao <xianwei.zhao@amlogic.com>, Prajna Rajendra Kumar <prajna.rajendrakumar@microchip.com>, Sergio Perez Gonzalez <sperezglz@gmail.com>, Miquel Raynal <miquel.raynal@bootlin.com>, Qianfeng Rong <rongqianfeng@vivo.com>, Haibo Chen <haibo.chen@nxp.com>, Gabor Juhos <j4g8y7@gmail.com>, Md Sadre Alam <quic_mdalam@quicinc.com>, Rosen Penev <rosenp@gmail.com>, Luis de Arquer <luis.dearquer@inertim.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, Krzysztof Kozlowski <krzk@kernel.org>, Longbin Li <looong.bin@gmail.com>, Patrice Chotard <patrice.chotard@foss.st.com>, =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>, Alessandro Grassi <alessandro.grassi@mailbox.org>, Chen-Yu Tsai <wens@kernel.org>, Darshan R <rathod.darshan.0896@gmail.com>, Aaron Kling <webgeek1234@gmail.com>, Vishwaroop A <va@nvidia.com>, Haixu Cui <quic_haixcui@quicinc.com>, Darshan Rathod <darshanrathod475@gmail.com>, linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, asahi@lists.linux.dev, linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org, linux-rpi-kernel@lists.infradead.org, linux-sound@vger.kernel.org, patches@opensource.cirrus.com, imx@lists.linux.dev, linux-arm-msm@vger.kernel.org, linux-riscv@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-renesas-soc@vger.kernel.org, linux-samsung-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org, virtualization@lists.linux.dev, Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, Lorenzo Bianconi <lorenzo@kernel.org>, Ray Liu <ray.liu@airoha.com>, Sven Peter <sven@kernel.org>, Neal Gompa <neal@gompa.dev>, =?UTF-8?Q?C=C3=A9dric_Le_Goater?= <clg@kaod.org>, Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, Ryan Wanner <ryan.wanner@microchip.com>, Michael Hennerich <michael.hennerich@analog.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, Kamal Dasu <kamal.dasu@broadcom.com>, Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, William Zhang <william.zhang@broadcom.com>, Kursad Oney <kursad.oney@broadcom.com>, Anand Gore <anand.gore@broadcom.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, David Rhodes <david.rhodes@cirrus.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, Vladimir Oltean <olteanv@gmail.com>, Frank Li <Frank.Li@nxp.com>, Jean-Marie Verdun <verdun@hpe.com>, Nick Hawkins <nick.hawkins@hpe.com>, Yang Shen <shenyang39@huawei.com>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Lixu Zhang <lixu.zhang@intel.com>, Yinbo Zhu <zhuyinbo@loongson.cn>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, Conor Dooley <conor.dooley@microchip.com>, Daire McNamara <daire.mcnamara@microchip.com>, Matthias Brugger <matthias.bgg@gmail.com>, Avi Fishman <avifishman70@gmail.com>, Tomer Maimon <tmaimon77@gmail.com>, Tali Perry <tali.perry1@gmail.com>, Patrick Venture <venture@google.com>, Nancy Yuen <yuenn@google.com>, Benjamin Fair <benjaminfair@google.com>, Han Xu <han.xu@nxp.com>, Yogesh Gaur <yogeshgaur.83@gmail.com>, Linus Walleij <linusw@kernel.org>, Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>, Robert Jarzmik <robert.jarzmik@free.fr>, Chris Packham <chris.packham@alliedtelesis.co.nz>, Heiko Stuebner <heiko@sntech.de>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Andi Shyti <andi.shyti@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, Paul Walmsley <pjw@kernel.org>, Samuel Holland <samuel.holland@sifive.com>, Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, Alain Volmat <alain.volmat@foss.st.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, Li-hao Kuo <lhjeff911@gmail.com>, Masahisa Kojima <masahisa.kojima@linaro.org>, Jassi Brar <jaswinder.singh@linaro.org>, Laxman Dewangan <ldewangan@nvidia.com>, Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, Sowjanya Komatineni <skomatineni@nvidia.com>, Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Masami Hiramatsu <mhiramat@kernel.org>, =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>, Michal Simek <michal.simek@amd.com>, Max Filippov <jcmvbkbc@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_130558_477516_F32014BA 
X-CRM114-Status: GOOD (  12.61  )
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:23 -0700
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

T24gVGh1LCBKYW4gOCwgMjAyNiBhdCA5OjMw4oCvUE0gQW5keSBTaGV2Y2hlbmtvCjxhbmRyaXku
c2hldmNoZW5rb0BsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+Cj4gVGhlIFNQSSBjb3JlIHByb3Zp
ZGVzIHRoZSBkZWZhdWx0IG9mX25vZGUgZm9yIHRoZSBjb250cm9sbGVyLAo+IGluaGVyaXRlZCBm
cm9tIHRoZSBhY3R1YWwgKHBhcmVudCkgZGV2aWNlLiBObyBuZWVkIHRvIHJlcGVhdCBpdAo+IGlu
IHRoZSBkcml2ZXIuCj4KPiBTaWduZWQtb2ZmLWJ5OiBBbmR5IFNoZXZjaGVua28gPGFuZHJpeS5z
aGV2Y2hlbmtvQGxpbnV4LmludGVsLmNvbT4KWy4uLl0KPiAgZHJpdmVycy9zcGkvc3BpLWFtbG9n
aWMtc3BpZmMtYTEuYyAgIHwgMSAtCj4gIGRyaXZlcnMvc3BpL3NwaS1hbWxvZ2ljLXNwaXNnLmMg
ICAgICB8IDEgLQpbLi4uXQo+ICBkcml2ZXJzL3NwaS9zcGktbWVzb24tc3BpY2MuYyAgICAgICAg
fCAxIC0KPiAgZHJpdmVycy9zcGkvc3BpLW1lc29uLXNwaWZjLmMgICAgICAgIHwgMSAtCkZvciB0
aGUgQW1sb2dpYyBhbmQgQW1sb2dpYyBNZXNvbiBkcml2ZXJzOgpSZXZpZXdlZC1ieTogTWFydGlu
IEJsdW1lbnN0aW5nbCA8bWFydGluLmJsdW1lbnN0aW5nbEBnb29nbGVtYWlsLmNvbT4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
