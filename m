Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A9A1CCF2EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jan 2026 12:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DQdSHPMcf+t9OqJ/ZR6tTbpsA6EP0JmKKaX2CtmrWs4=; b=x84ok7lHrbeuP4
	kP3SPazWKLTP0G3X+mXqXus7nCmq+l4dv3p15M/U39Kd1E7BUUWoUJkj7SdEUMU7Z8ZvVqPtQ6plz
	UiEh8E/XIjjIguWeCxSTBYWhWh+87fokezD+CSPacNWYXMT1Larz/SYzWqaMXFuM6Xi+ujZX1zDeU
	dElRC4j7z6Ev5NiGGePF5cV+H89gmJFW4wyuLBnSabfQuUnWGDWhh7MyUgjziSXNfCPFcavZqcKDA
	HkGjcDK468npZhnivC/7w5isPbXfzC/mKijKWNmYeBMqW0VCZlZNudvnkfhV92i5TLNzF6gTiu+Om
	dU/oR600l2SFnjPJShOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhnxt-00000001wMv-3t8A;
	Mon, 19 Jan 2026 12:02:37 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhnxj-00000001wMS-0bDs;
	Mon, 19 Jan 2026 12:02:32 +0000
Received: from pendragon.ideasonboard.com (81-175-209-152.bb.dnainternet.fi [81.175.209.152])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 144992D9;
	Mon, 19 Jan 2026 13:01:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1768824111;
	bh=rDWLbsxDX6g5bOU5oPzY9EefxAeD2i3+I8GJn8jVGaE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CvsnKgGOy94zAGGGaXQv125gqcw6WHrWMi+sJ+IFJ11GxXHGQ/NG5RxyGbEec/Xl4
	 TE4Mure2ZNHiscRA41CYTkCQnKfgQRvulxggdLyx01K5XDMNVY0vC/mosWAmOWHd7D
	 fyjBaxiNXWpmmYWzBEjA9+H0kuJ0G0ewC+WgKItE=
Date: Mon, 19 Jan 2026 14:01:59 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Michael Riesch <michael.riesch@collabora.com>
Cc: Frank Li <Frank.li@nxp.com>, Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Mehdi Djait <mehdi.djait@linux.intel.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Hans Verkuil <hverkuil@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Collabora Kernel Team <kernel@collabora.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/3] media: synopsys: add driver for the designware
 mipi csi-2 receiver
Message-ID: <20260119120159.GA26642@pendragon.ideasonboard.com>
References: <20251114-rockchip-mipi-receiver-v5-0-45aa117f190a@collabora.com>
 <20251114-rockchip-mipi-receiver-v5-2-45aa117f190a@collabora.com>
 <aWpil6jI1Ad0DcEI@lizhi-Precision-Tower-5810>
 <db2f0c20-ca7e-41c9-be08-67fd1f92c2af@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <db2f0c20-ca7e-41c9-be08-67fd1f92c2af@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_040227_358970_B543E8C3 
X-CRM114-Status: GOOD (  37.04  )
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

On Mon, Jan 19, 2026 at 10:49:20AM +0100, Michael Riesch wrote:
> Hi Frank,
> 
> Thanks for your review.
> 
> On 1/16/26 17:08, Frank Li wrote:
> > On Fri, Jan 16, 2026 at 02:02:47PM +0100, Michael Riesch wrote:
> >> The Synopsys DesignWare MIPI CSI-2 Receiver is a CSI-2 bridge with
> >> one input port and one output port. It receives the data with the
> >> help of an external MIPI PHY (C-PHY or D-PHY) and passes it to e.g.,
> >> the Rockchip Video Capture (VICAP) block on recent Rockchip SoCs.
> >>
> >> Add a V4L2 subdevice driver for this unit.
> >>
> >> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> >> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> >> Reviewed-by: Mehdi Djait <mehdi.djait@linux.intel.com>
> >> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> >> ---
> > ...
> >> +
> >> +static inline struct dw_mipi_csi2_device *to_csi2(struct v4l2_subdev *sd)
> >> +{
> >> +	return container_of(sd, struct dw_mipi_csi2_device, sd);
> >> +}
> >> +
> >> +static inline __maybe_unused void
> > 
> > why need '__maybe_unused', needn't inline. compiler can auto decide and
> > report unused function if no 'inline'.
> 
> The __maybe_unused was helpful during development and is not really
> required now. It doesn't hurt either, so I left it in. I can remove it
> if you wish.
> 
> >> +dw_mipi_csi2_write(struct dw_mipi_csi2_device *csi2, unsigned int addr, u32 val)
> >> +{
> >> +	writel(val, csi2->base_addr + addr);
> >> +}
> >> +
> >> +static inline __maybe_unused u32
> >> +dw_mipi_csi2_read(struct dw_mipi_csi2_device *csi2, unsigned int addr)
> >> +{
> >> +	return readl(csi2->base_addr + addr);
> >> +}
> >> +
> >> +static const struct dw_mipi_csi2_format *
> >> +dw_mipi_csi2_find_format(struct dw_mipi_csi2_device *csi2, u32 mbus_code)
> >> +{
> >> +	WARN_ON(csi2->formats_num == 0);
> >> +
> >> +	for (unsigned int i = 0; i < csi2->formats_num; i++) {
> >> +		const struct dw_mipi_csi2_format *format = &csi2->formats[i];
> >> +
> >> +		if (format->code == mbus_code)
> >> +			return format;
> >> +	}
> >> +
> >> +	return NULL;
> >> +}
> >> +
> >> +static int dw_mipi_csi2_start(struct dw_mipi_csi2_device *csi2)
> >> +{
> >> +	struct media_pad *source_pad;
> >> +	union phy_configure_opts opts;
> >> +	s64 link_freq;
> >> +	u32 control = 0;
> >> +	u32 lanes = csi2->lanes_num;
> >> +	int ret;
> > 
> > try keep reverise christmas tree order.
> 
> Ack.
> 
> >> +
> >> +	if (lanes < 1 || lanes > 4)
> >> +		return -EINVAL;
> >> +
> > ...
> >> +
> >> +static int dw_mipi_csi2_register_notifier(struct dw_mipi_csi2_device *csi2)
> >> +{
> >> +	struct v4l2_async_connection *asd;
> >> +	struct v4l2_async_notifier *ntf = &csi2->notifier;
> >> +	struct v4l2_fwnode_endpoint vep;
> >> +	struct v4l2_subdev *sd = &csi2->sd;
> >> +	struct device *dev = csi2->dev;
> >> +	struct fwnode_handle *ep;
> >> +	int ret;
> >> +
> >> +	ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(dev), 0, 0, 0);
> > 
> > use  struct fwnode_handle *ep __free(fwnode_handle) can simplify err
> > handler.
> 
> Sorry, I don't see the benefit of that.
> 
> >> +	if (!ep)
> >> +		return dev_err_probe(dev, -ENODEV, "failed to get endpoint\n");
> >> +
> > ...
> >> +{
> >> +	struct media_pad *pads = csi2->pads;
> >> +	struct v4l2_subdev *sd = &csi2->sd;
> >> +	int ret;
> >> +
> >> +	ret = dw_mipi_csi2_register_notifier(csi2);
> >> +	if (ret)
> >> +		goto err;
> >> +
> >> +	v4l2_subdev_init(sd, &dw_mipi_csi2_ops);
> >> +	sd->dev = csi2->dev;
> >> +	sd->entity.ops = &dw_mipi_csi2_media_ops;
> >> +	sd->entity.function = MEDIA_ENT_F_VID_IF_BRIDGE;
> >> +	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE | V4L2_SUBDEV_FL_STREAMS;
> >> +	sd->internal_ops = &dw_mipi_csi2_internal_ops;
> >> +	sd->owner = THIS_MODULE;
> > 
> > I remeber needn't set owner, v4l2_async_register_subdev() do it for you.
> 
> Indeed, nice catch.
> 
> >> +	snprintf(sd->name, sizeof(sd->name), "dw-mipi-csi2 %s",
> >> +		 dev_name(csi2->dev));
> >> +
> > ...
> >> +
> >> +static int dw_mipi_csi2_probe(struct platform_device *pdev)
> >> +{
> >> +	struct device *dev = &pdev->dev;
> >> +	struct dw_mipi_csi2_device *csi2;
> >> +	int ret;
> >> +
> >> +	csi2 = devm_kzalloc(dev, sizeof(*csi2), GFP_KERNEL);
> >> +	if (!csi2)
> >> +		return -ENOMEM;
> >> +	csi2->dev = dev;
> >> +	dev_set_drvdata(dev, csi2);
> >> +
> >> +	csi2->base_addr = devm_platform_ioremap_resource(pdev, 0);
> >> +	if (IS_ERR(csi2->base_addr))
> >> +		return PTR_ERR(csi2->base_addr);
> >> +
> >> +	ret = devm_clk_bulk_get_all(dev, &csi2->clks);
> >> +	if (ret != DW_MIPI_CSI2_CLKS_MAX)
> >> +		return dev_err_probe(dev, -ENODEV, "failed to get clocks\n");
> >> +	csi2->clks_num = ret;
> >> +
> >> +	csi2->phy = devm_phy_get(dev, NULL);
> >> +	if (IS_ERR(csi2->phy))
> >> +		return dev_err_probe(dev, PTR_ERR(csi2->phy),
> >> +				     "failed to get MIPI CSI-2 PHY\n");
> >> +
> >> +	csi2->reset = devm_reset_control_get_exclusive(dev, NULL);
> >> +	if (IS_ERR(csi2->reset))
> >> +		return dev_err_probe(dev, PTR_ERR(csi2->reset),
> >> +				     "failed to get reset\n");
> >> +
> >> +	csi2->formats = formats;
> >> +	csi2->formats_num = ARRAY_SIZE(formats);
> >> +
> >> +	pm_runtime_enable(dev);
> > 
> > devm_pm_runtime_enable() will simple error handle.
> 
> Ack.
> 
> >> +
> >> +	ret = phy_init(csi2->phy);
> >> +	if (ret) {
> >> +		ret = dev_err_probe(dev, ret,
> >> +				    "failed to initialize MIPI CSI-2 PHY\n");
> >> +		goto err_pm_runtime_disable;
> >> +	}
> >> +
> > ...
> >> +
> >> +static int dw_mipi_csi2_runtime_resume(struct device *dev)
> >> +{
> >> +	struct dw_mipi_csi2_device *csi2 = dev_get_drvdata(dev);
> >> +	int ret;
> >> +
> >> +	reset_control_assert(csi2->reset);
> >> +	udelay(5);
> > 
> > Now prefer use fsleep(), which auto choose difference sleep function
> > according to delay number.
> 
> I'll keep that in mind, but here the first thing that fsleep does is to
> check whether the parameter is <= 10 and (since this is true) call
> udelay. So here I don't see the point really.

Using fsleep() by default, unless there's a specific need to use
udelay() or msleep(), is usually preferred. It "does the right thing"
(TM) automatically, freeing developers and reviewers from having to
think about it.

> >> +	reset_control_deassert(csi2->reset);
> >> +
> >> +	ret = clk_bulk_prepare_enable(csi2->clks_num, csi2->clks);
> >> +	if (ret) {
> >> +		dev_err(dev, "failed to enable clocks\n");
> >> +		return ret;
> >> +	}
> >> +
> >> +	return 0;
> >> +}
> >> +
> >> +static DEFINE_RUNTIME_DEV_PM_OPS(dw_mipi_csi2_pm_ops,
> >> +				 dw_mipi_csi2_runtime_suspend,
> >> +				 dw_mipi_csi2_runtime_resume, NULL);
> >> +
> >> +static struct platform_driver dw_mipi_csi2_drv = {
> >> +	.driver = {
> >> +		.name = "dw-mipi-csi2",
> >> +		.of_match_table = dw_mipi_csi2_of_match,
> >> +		.pm = &dw_mipi_csi2_pm_ops,
> > 
> > pm_ptr( &dw_mipi_csi2_pm_ops)
> 
> Shouldn't make a difference here since this driver depends on CONFIG_PM.
> 
> >> +	},
> >> +	.probe = dw_mipi_csi2_probe,
> >> +	.remove = dw_mipi_csi2_remove,
> >> +};
> >> +module_platform_driver(dw_mipi_csi2_drv);
> >> +
> >> +MODULE_DESCRIPTION("Synopsys DesignWare MIPI CSI-2 Receiver platform driver");
> >> +MODULE_LICENSE("GPL");

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
