Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D290EC44503
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 07:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8g5BNsY4X5yZGaUdBN1JrN2hQ5EdotHIf6PGuNKcdeI=; b=Z4oOQfL2DbZN+M
	0vmHhD1xqoV3WukL4soa/CuRv2B/sPFKCrQ6vTXut6636Yp5h5vFhb8Vo89FIsWS2Fhk5s/GRAVZ2
	/ayODT7WSumqF5kicWu4ISUK6Ne6FEDJLW35AG15A0GTs3DYZUjRnkMj8ymd5mugau9En6YM3ObD2
	fxEcGr390b4HnxAn24ZKBh2uavxajNQoRrV0I+sb2viCrgFZSysSYKFGFjAUGFTGidmf7geJMMTC2
	aeBha81JXvfiDcCctS7u/xlwcYZlReEIG3JN5+p00N/3zJ9+1jerEHOwDky5M/pmxvw51Q5zf0gEM
	YDlZh/2wFp8b/fN4BX5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whj7R-00000001Gsz-1jnS;
	Thu, 09 Jul 2026 07:24:25 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whj7N-00000001Gq9-0PM0
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Jul 2026 07:24:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=gMx8
	43/5S34JEAk8VaWDn/h5oOHvje0shPRIPDVNBUs=; b=NuwCZfDvc91ju+YTsx4n
	eZWwMQbPm+QI4f+FRcoOPL3cEQKcFifbAWJOWfe20PCky4AkARDVTO7jSTImK0ng
	KYaZgKYF5nnCwqAs4KsFUVF7HIlFDaBKbPhucbl1UAZlMoXIFD0+WwRPxFmexC6j
	QsXrtzYDtk9TUduI/3rlJBSGTwEpt3LfNbh5UZqHQWE4jYOdmr4/5fNvvwsBYRFJ
	Wpd9tnh7uHCLgkA4+zbfkLwLNiQZ6I6kO2HYGGya2nLPUYso+L5Kh/hv0inG7DpN
	XsLyWddSoLcbgvRTYh3Hvj0cMvMcMhwLJQEQLct9v1RTgUPKVR6ylOLxKRfuhrsY
	Rg==
Received: (qmail 1017861 invoked from network); 9 Jul 2026 09:24:05 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 9 Jul 2026 09:24:05 +0200
X-UD-Smtp-Session: l3s3148p1@XaNSgihWothQT+F6
Date: Thu, 9 Jul 2026 09:24:05 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Pan Chuang <panchuang@vivo.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Markus Mayer <mmayer@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	zhanghongchen <zhanghongchen@loongson.cn>,
	Yinbo Zhu <zhuyinbo@loongson.cn>, Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	John Madieu <john.madieu.xa@bp.renesas.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>,
	Peter Griffin <peter.griffin@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
	Laura Nao <laura.nao@collabora.com>,
	Mason Chang <mason-cw.chang@mediatek.com>,
	Fei Shao <fshao@chromium.org>,
	Frank Wunderlich <frank-w@public-files.de>,
	Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	"Jiri Slaby (SUSE)" <jirislaby@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	"open list:THERMAL" <linux-pm@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	"moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
	"open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <imx@lists.linux.dev>,
	"open list:QUALCOMM TSENS THERMAL DRIVER" <linux-arm-msm@vger.kernel.org>,
	"open list:RENESAS R-CAR THERMAL DRIVERS" <linux-renesas-soc@vger.kernel.org>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
	"open list:SAMSUNG THERMAL DRIVER" <linux-samsung-soc@vger.kernel.org>,
	"moderated list:ARM/STM32 ARCHITECTURE" <linux-stm32@st-md-mailman.stormreply.com>,
	"open list:TEGRA ARCHITECTURE SUPPORT" <linux-tegra@vger.kernel.org>,
	"moderated list:ARM/Mediatek SoC support:Keyword:mediatek" <linux-mediatek@lists.infradead.org>
Subject: Re: [PATCH 00/18] thermal/drivers: Remove redundant error messages
 on IRQ request failure
Message-ID: <ak9MldvSmaDyJn42@shikoro>
References: <20260709023048.599150-1-panchuang@vivo.com>
 <d31c4217-4733-4459-a9d7-265731d295fc@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d31c4217-4733-4459-a9d7-265731d295fc@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260709_002422_076607_C2D1F976 
X-CRM114-Status: UNSURE (   5.82  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


> all of these 18 are just one commit, no?

I think so, too.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
