Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27025C44537
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4vUnJh90BZz2yxhz/tEk6E9ErhiOoPTK9d+lu3fclGI=; b=N1cwBK1Wu0hxPi
	o5OcwMZ2lVrgDIxm4qJJce07veyI1vftNQJg2n+7u7GV4rVAQv4coeEaovwWI6L2zAgpUhcP2QT15
	ILE7YXtTTgJjLQ9YEz65g42Y21nPgbudik9IQOxgJtLSIqk9DFgGNeGv7qRDl5+iwLmhzWi54fh83
	mj1TCQGELq2tR4XKvHHOTMSnPZ0almmgQqR1KNGfJEzQ1hWL9ZnXYpISohoEMH9/2K65RkaHcMW2p
	zbc3daRt9wb7BLo7dsRyHVw34RGKYVqi5OJ/FyK7FmLez815mxFKLU3ct+tpxpJTI+6S4X97RzAB2
	jFCnasjaGdsU81pMyNEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkQl-00000001UkP-1mPB;
	Thu, 09 Jul 2026 08:48:27 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIdy-00000005Upx-145Z;
	Mon, 12 Jan 2026 14:11:45 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 2742B1A27F0;
	Mon, 12 Jan 2026 14:11:37 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id DEFBC60732;
	Mon, 12 Jan 2026 14:11:36 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 736BF103C8C61;
	Mon, 12 Jan 2026 15:10:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1768227090; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=S8c2ARP9HcnV+reUeOF4Vcg2quHBkPmCAqYrhfyr6c0=;
	b=CakAumhFpasu+3ZI3BaB812kdRiuu+v1Tg/Sp3TTEi8pdVKDZEtVO84AoLEgEc1xrnFluT
	i+SAwVNTU/VK298rD4GgfOlbL1x1IRBq+LMtmjrslvr8iNw/wqHBq7SowNZ+1bxrqAdaPR
	ziVMPo032s+fSJqG9mpYJmDIazpKyi53yb/qGj1zj4VwwbAj77lJfzPnCy7GfnRvSCaoiG
	VLNhV0T9IC//MbbHQG1tnGAF03XNmqvN+K3xG6/Renyw+hJ5Ia+fO3n6d7mTvuZI7e4oUm
	CIup66ln9btW8iWglHRpKXcMS5I6EydGAat63GN0yLYYuyDF497mBLdXxOQ06g==
From: =?UTF-8?B?QmVub8OudA==?= Monin <benoit.monin@bootlin.com>
To: Mark Brown <broonie@kernel.org>,
 Varshini Rajendran <varshini.rajendran@microchip.com>,
 Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Sunny Luo <sunny.luo@amlogic.com>, Janne Grunau <j@jannau.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Chin-Ting Kuo <chin-ting_kuo@aspeedtech.com>, CL Wang <cl634@andestech.com>,
 Manikandan Muralidharan <manikandan.m@microchip.com>,
 David Lechner <dlechner@baylibre.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Jonas Gorski <jonas.gorski@gmail.com>, Hang Zhou <929513338@qq.com>,
 Jun Guo <jun.guo@cixtech.com>, Philipp Stanner <phasta@kernel.org>,
 Charles Keepax <ckeepax@opensource.cirrus.com>,
 Bartosz Golaszewski <brgl@kernel.org>, Shiji Yang <yangshiji66@outlook.com>,
 James Clark <james.clark@linaro.org>, Jonathan Marek <jonathan@marek.ca>,
 Carlos Song <carlos.song@nxp.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Huacai Chen <chenhuacai@kernel.org>, Xianwei Zhao <xianwei.zhao@amlogic.com>,
 Prajna Rajendra Kumar <prajna.rajendrakumar@microchip.com>,
 Sergio Perez Gonzalez <sperezglz@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Qianfeng Rong <rongqianfeng@vivo.com>, Haibo Chen <haibo.chen@nxp.com>,
 Gabor Juhos <j4g8y7@gmail.com>, Md Sadre Alam <quic_mdalam@quicinc.com>,
 Rosen Penev <rosenp@gmail.com>, Luis de Arquer <luis.dearquer@inertim.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Longbin Li <looong.bin@gmail.com>,
 Patrice Chotard <patrice.chotard@foss.st.com>,
 =?UTF-8?B?Q2zDqW1lbnQ=?= Le Goffic <clement.legoffic@foss.st.com>,
 Alessandro Grassi <alessandro.grassi@mailbox.org>,
 Chen-Yu Tsai <wens@kernel.org>, Darshan R <rathod.darshan.0896@gmail.com>,
 Aaron Kling <webgeek1234@gmail.com>, Vishwaroop A <va@nvidia.com>,
 Haixu Cui <quic_haixcui@quicinc.com>,
 Darshan Rathod <darshanrathod475@gmail.com>, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, asahi@lists.linux.dev,
 linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org,
 linux-rpi-kernel@lists.infradead.org, linux-sound@vger.kernel.org,
 patches@opensource.cirrus.com, imx@lists.linux.dev,
 linux-arm-msm@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev,
 linux-tegra@vger.kernel.org, virtualization@lists.linux.dev,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Ray Liu <ray.liu@airoha.com>,
 Sven Peter <sven@kernel.org>, Neal Gompa <neal@gompa.dev>,
 =?UTF-8?B?Q8OpZHJpYw==?= Le Goater <clg@kaod.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>,
 Ryan Wanner <ryan.wanner@microchip.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>,
 Kamal Dasu <kamal.dasu@broadcom.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 William Zhang <william.zhang@broadcom.com>,
 Kursad Oney <kursad.oney@broadcom.com>, Anand Gore <anand.gore@broadcom.com>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 David Rhodes <david.rhodes@cirrus.com>,
 Richard Fitzgerald <rf@opensource.cirrus.com>,
 Vladimir Oltean <olteanv@gmail.com>, Frank Li <Frank.Li@nxp.com>,
 Jean-Marie Verdun <verdun@hpe.com>, Nick Hawkins <nick.hawkins@hpe.com>,
 Yang Shen <shenyang39@huawei.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Lixu Zhang <lixu.zhang@intel.com>,
 Yinbo Zhu <zhuyinbo@loongson.cn>, Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Conor Dooley <conor.dooley@microchip.com>,
 Daire McNamara <daire.mcnamara@microchip.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Avi Fishman <avifishman70@gmail.com>, Tomer Maimon <tmaimon77@gmail.com>,
 Tali Perry <tali.perry1@gmail.com>, Patrick Venture <venture@google.com>,
 Nancy Yuen <yuenn@google.com>, Benjamin Fair <benjaminfair@google.com>,
 Han Xu <han.xu@nxp.com>, Yogesh Gaur <yogeshgaur.83@gmail.com>,
 Linus Walleij <linusw@kernel.org>, Daniel Mack <daniel@zonque.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Heiko Stuebner <heiko@sntech.de>,
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
 Andi Shyti <andi.shyti@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Paul Walmsley <pjw@kernel.org>, Samuel Holland <samuel.holland@sifive.com>,
 Orson Zhai <orsonzhai@gmail.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Alain Volmat <alain.volmat@foss.st.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Li-hao Kuo <lhjeff911@gmail.com>,
 Masahisa Kojima <masahisa.kojima@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Sowjanya Komatineni <skomatineni@nvidia.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Jonathan =?UTF-8?B?TmV1c2Now6RmZXI=?= <j.neuschaefer@gmx.net>,
 Michal Simek <michal.simek@amd.com>, Max Filippov <jcmvbkbc@gmail.com>
Subject: Re: [PATCH v1 4/4] spi: Drop duplicate device_set_node() call
Date: Mon, 12 Jan 2026 15:10:36 +0100
Message-ID: <2776743.vuYhMxLoTh@benoit.monin>
In-Reply-To: <20260108203004.3538449-5-andriy.shevchenko@linux.intel.com>
References: <20260108203004.3538449-1-andriy.shevchenko@linux.intel.com>
 <20260108203004.3538449-5-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_061142_426472_F5B84E56 
X-CRM114-Status: GOOD (  11.39  )
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:24 -0700
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

T24gVGh1cnNkYXksIDggSmFudWFyeSAyMDI2IGF0IDIxOjIzOjQxIENFVCwgQW5keSBTaGV2Y2hl
bmtvIHdyb3RlOgo+IFRoZSBTUEkgY29yZSBwcm92aWRlcyB0aGUgZGVmYXVsdCBmd25vZGUgZm9y
IHRoZSBjb250cm9sbGVyLAo+IGFzc2lnbmVkIGJ5IGRldmljZV9zZXRfbm9kZSgpLiBObyBuZWVk
IHRvIHJlcGVhdCBpdCBpbiB0aGUgZHJpdmVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuZHkgU2hl
dmNoZW5rbyA8YW5kcml5LnNoZXZjaGVua29AbGludXguaW50ZWwuY29tPgoKPiAgZHJpdmVycy9z
cGkvc3BpLWR3LWNvcmUuYyAgICAgICAgICAgfCAyIC0tCj4gCldvcmtzIGZpbmUgb24gTW9iaWxl
eWUgRXllUTZMcGx1cyBTb0MgaW4gYm90aCBob3N0IGFuZCB0YXJnZXQgbW9kZS4KClRlc3RlZC1i
eTogQmVub8OudCBNb25pbiA8YmVub2l0Lm1vbmluQGJvb3RsaW4uY29tPiAjIGR3IG1vYmlsZXll
CgpUaGFua3MsCi0tIApCZW5vw650IE1vbmluLCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFuZCBL
ZXJuZWwgZW5naW5lZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
