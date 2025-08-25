Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1909BCA0FE1
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Aug 2025 11:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GhJkAUs49EP/x1TBcair/DvJjyLgTqOOSVeuFCUeBs4=; b=EV7ul+9zkqvTpj
	2cvYZ18MQa14E6nUPy6VC6SWGv52GXzXsnrA2ON2mmIV6RcBHHoAOrSlwsNra1p6bbhLCwBy6FU3P
	ecZCL0scdQZ5OwPg6XSFK67gxLnh+FNL1XZMOwxKYe1BVMAQOd9/L9fOwgYtNOxVy/ypJpdSSwuyz
	Nf+PpY+XNxpX3T6sMM8u7X9K0W6KTeRmXLittSgXS6xuIbg2DuZ7Nidmsv1cMqMF14Tb9KUT5wpNc
	E8ucWoXFC42WQR41CHothBYTbtmYdodKQyfv8qulznozIYpbfC5tKAkLK/+2QLRi0qOKbNHHvdfYA
	SVSnsVOjf0OWBOLVX2mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqVbI-00000007oop-1gos;
	Mon, 25 Aug 2025 11:43:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqUaP-00000007emC-2Ycs
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Aug 2025 10:38:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uqUZi-0001ab-FF; Mon, 25 Aug 2025 12:37:18 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uqUZe-0023HK-2d;
	Mon, 25 Aug 2025 12:37:14 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uqUZe-000M78-2I;
	Mon, 25 Aug 2025 12:37:14 +0200
Message-ID: <c5d8d527ca6194b606b5627e51abbb82ab6dd76c.camel@pengutronix.de>
Subject: Re: [PATCH v10 07/13] media: rockchip: add driver for mipi csi-2
 receiver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: michael.riesch@collabora.com, Mehdi Djait <mehdi.djait@linux.intel.com>,
  Maxime Chevallier <maxime.chevallier@bootlin.com>, =?ISO-8859-1?Q?Th=E9o?=
 Lebrun <theo.lebrun@bootlin.com>,  Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>, Gerald Loacker
 <gerald.loacker@wolfvision.net>, Bryan O'Donoghue
 <bryan.odonoghue@linaro.org>, Markus Elfring <Markus.Elfring@web.de>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>, Nicolas Dufresne
 <nicolas.dufresne@collabora.com>,  Sebastian Reichel
 <sebastian.reichel@collabora.com>, Collabora Kernel Team
 <kernel@collabora.com>, Paul Kocialkowski <paulk@sys-base.io>, Alexander
 Shiyan <eagle.alexander923@gmail.com>, Val Packett <val@packett.cool>, Rob
 Herring <robh@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Date: Mon, 25 Aug 2025 12:37:14 +0200
In-Reply-To: <20240220-rk3568-vicap-v10-7-62d8a7b209b4@collabora.com>
References: <20240220-rk3568-vicap-v10-0-62d8a7b209b4@collabora.com>
	 <20240220-rk3568-vicap-v10-7-62d8a7b209b4@collabora.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_033801_648612_7BD4BDE9 
X-CRM114-Status: GOOD (  17.09  )
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

On Di, 2025-08-19 at 01:25 +0200, Michael Riesch via B4 Relay wrote:
> From: Michael Riesch <michael.riesch@collabora.com>
> 
> The Rockchip RK3568 MIPI CSI-2 Receiver is a CSI-2 bridge with one
> input port and one output port. It receives the data with the help
> of an external MIPI PHY (C-PHY or D-PHY) and passes it to the
> Rockchip RK3568 Video Capture (VICAP) block.
> 
> Add a V4L2 subdevice driver for this unit.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> ---
>  MAINTAINERS                                    |   1 +
>  drivers/media/platform/rockchip/Kconfig        |   1 +
>  drivers/media/platform/rockchip/Makefile       |   1 +
>  drivers/media/platform/rockchip/rkcsi/Kconfig  |  16 +
>  drivers/media/platform/rockchip/rkcsi/Makefile |   3 +
>  drivers/media/platform/rockchip/rkcsi/rkcsi.c  | 741 +++++++++++++++++++++++++
>  6 files changed, 763 insertions(+)
> 
[...]
> diff --git a/drivers/media/platform/rockchip/rkcsi/rkcsi.c b/drivers/media/platform/rockchip/rkcsi/rkcsi.c
> new file mode 100644
> index 000000000000..5658ffb60769
> --- /dev/null
> +++ b/drivers/media/platform/rockchip/rkcsi/rkcsi.c
> @@ -0,0 +1,741 @@
[...]
> +static int rkcsi_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct rkcsi_device *csi_dev;
> +	int ret;
> +
> +	csi_dev = devm_kzalloc(dev, sizeof(*csi_dev), GFP_KERNEL);
> +	if (!csi_dev)
> +		return -ENOMEM;
> +	csi_dev->dev = dev;
> +	dev_set_drvdata(dev, csi_dev);
> +
> +	csi_dev->base_addr = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(csi_dev->base_addr))
> +		return PTR_ERR(csi_dev->base_addr);
> +
> +	ret = devm_clk_bulk_get_all(dev, &csi_dev->clks);
> +	if (ret != RKCSI_CLKS_MAX)
> +		return dev_err_probe(dev, -ENODEV, "failed to get clocks\n");
> +	csi_dev->clks_num = ret;
> +
> +	csi_dev->phy = devm_phy_get(dev, NULL);
> +	if (IS_ERR(csi_dev->phy))
> +		return dev_err_probe(dev, PTR_ERR(csi_dev->phy),
> +				     "failed to get MIPI CSI PHY\n");
> +
> +	csi_dev->reset = devm_reset_control_array_get_exclusive(dev);

Why array? rockchip,rk3568-mipi-csi bindings specify a single reset.

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
