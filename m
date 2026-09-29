Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40FD2CA5FA7
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 20:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CmNcX3BJ+BtZ3xrwcN2pagncoiPa3M6USSCR3P2t524=; b=26dj4B9g/uirmG
	Ar7KIAx7GeuDNTRqeCe5u5A+sXThoCslbp5ZjZo+bv07DJXXwoI50zRiwDyy0+WZ3kveextbE66R1
	aw0iF6Z6WPmRKVsgRxj3UUJ8a7k5dGwDRpcXI7lpO7lUjZkpkmorvoTkq0z9Aw9b3tNnM0PPwkVtk
	k58G6+8t0OayzQT96FqF9wxAf2bAL/KS1Xtvtl3UuIZOIILlKR9kKg4qnuzNDTSR4hHbPOCzsW1FT
	iKKhUzKafBCZKJmk3/ciCX3oCXrcZp8loxSOKUqs4dhCZugvHQ6vxwuve4tbHvGBZ3cRGgxrXYhZQ
	SnyRCqUzTUDCV+nWCIvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBeok-00000004XC4-3Ifv;
	Tue, 29 Sep 2026 20:52:50 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBeoi-00000004XBL-2t0o;
	Tue, 29 Sep 2026 20:52:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2AAC04178E;
	Tue, 29 Sep 2026 20:52:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE6301F000FF;
	Tue, 29 Sep 2026 20:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790715168;
	bh=WKRMoTp7+IN8XnrAVGFYFXo21Tjr4j0cVDkiRsvfBRM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=FnBRxJieEPyR9E4fHeRNqHy4r4AQL4VhSOq5V6NZrpIoyz3lM0JBuYnM2DeHhLIaA
	 0hKFQR69pNlHdul9AsMqNqAVmRxW/sjzHXkHz9RhFRXXmssO8xmmIvdfNWQTyQfRC6
	 kf6v8uBGf7FzZx2mf0ijCN99DBFiv1Ia0ynpIt9WHk/bUUt8WWGeWCbk9dGzpM092v
	 6RciCU3fvBlcUiaKyAlRZ4Fop0mYaQU7WnvCrN7wfef0ymhzeFJjTKHesLZ2wyKUi1
	 pgCyh/SyKuIOTU73WrQHTArLiaehugiozFNa1rnR4snZdPxkXzweZiUY7oRFTJff9C
	 t7F3ITFOt4yHw==
Date: Tue, 29 Sep 2026 15:52:46 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Robert Foss <rfoss@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
	Heiko Stuebner <heiko@sntech.de>, Alexandre Ghiti <alex@ghiti.fr>,
	dri-devel@lists.freedesktop.org,
	Dominique Belhachemi <db@domibel.de>, Vinod Koul <vkoul@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Graham Markall <hello@big-grey.co.uk>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>,
	Hal Feng <hal.feng@starfivetech.com>,
	linux-riscv@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	Maud Spierings <maud_spierings@murena.io>,
	Joshua Peisach <jpeisach@ubuntu.com>,
	Paul Walmsley <pjw@kernel.org>,
	Brian Masney <bmasney+clk@redhat.com>,
	Maxime Ripard <mripard@kernel.org>,
	Icenowy Zheng <zhengxingda@iscas.ac.cn>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-phy@lists.infradead.org,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Jerome Brunet <jbrunet+clk@baylibre.com>
Subject: Re: [PATCH v5 02/21] dt-bindings: phy: Add
 starfive,jh7110-inno-hdmi-phy
Message-ID: <179071516475.2696249.11006849650480539327.robh@kernel.org>
References: <20260929-jh7110-clean-send-v5-0-82b4d8e3c6c7@samsung.com>
 <CGME20260929103205eucas1p202b12d36f2ec9378ceb6dba29ee4ef32@eucas1p2.samsung.com>
 <20260929-jh7110-clean-send-v5-2-82b4d8e3c6c7@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260929-jh7110-clean-send-v5-2-82b4d8e3c6c7@samsung.com>
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


On Tue, 29 Sep 2026 12:30:59 +0200, Michal Wilczynski wrote:
> Add the dt-binding for the StarFive JH7110 Innosilicon HDMI PHY.
> 
> This device is a child of the starfive,jh7110-hdmi-subsystem node. It
> functions as both a PHY provider for the controller and as a clock
> provider for the variable pixel clock (hdmi_pclk), which it generates
> from its refoclk.
> 
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---
>  .../phy/starfive,jh7110-inno-hdmi-phy.yaml         | 49 ++++++++++++++++++++++
>  1 file changed, 49 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
