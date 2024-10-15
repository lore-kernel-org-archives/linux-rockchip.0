Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60D04CFC26E
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 06:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VaPQoVL3c3wP4f3QRSAvW5lkhzXFzGGkcdNmh+oOZgw=; b=ewNddCz/5m7yqT
	InxYI4alotbhJdauRbJ7WeM2VOcJH7PE9yQwawI/o/AkHHZno3BnU0b1d6Fuyy4CLoW4OmFy5yCLC
	jO3vipuQ0J2KJkv8qmg10jm0S14EEJwxauoo1dxfCOvj0Ez8S393rdXvqSunjwmtIqG8/whucESoD
	m8TD2ZXk67QgRWNltrmWUNXEXHgOS+zpsYEumfne+HdNhtndEdbqe45oaRvVv+eXxWbI79z28Zxf2
	lCx8DXPvVtfWiGB3oLrQ5z6yqDE0+f/OUs30/trduXGfwarfiWD9LvvMzGV5HvZe1s2bFtno+qyV0
	WPJqQIS5fP5SNcw2PUsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0azR-00000007Cpe-3bJX;
	Tue, 15 Oct 2024 06:25:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0axz-00000007CYQ-3DRi;
	Tue, 15 Oct 2024 06:23:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=pTX8cgQACBxgc49Oupv0SSq/D0NCAmBrD6sW6XvUKiU=; b=ryhrnfty+qB3MVHiSOdCAg0tg7
	T5kuQ/81JCCsfwas//hWj4IrKWRS+2IRIgNQzpmllRjspD2GLpK9/KqWwGKp793vcgBuQlbsnooJe
	Xr+aYhjxaS7mAlUMlrykCTD2BYIPIQ0fFtJBvXiqNII8URvDMZd2MdNO5QSXp8xo79UnnQ1JkQCdk
	IBCwXLbj7o47t7nDLMxPPjia9ilUscden6rziMBI393LDpeXzigd0t+3wk+ct84en6gVD02ZIhcKb
	dBKxtEYTwn3k4jGvESTngkhcR4p6ljHRRvy95SREnq8jtiyOYUQZdFdVyScqjMP4JiA6t34OBSZkd
	JCkb35GA==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t0axv-00076o-AQ; Tue, 15 Oct 2024 08:23:31 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, Frank Wang <frawang.cn@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, Frank Wang <frank.wang@rock-chips.com>
Subject: Re: [PATCH v5 3/3] phy: rockchip: inno-usb2: Add usb2 phys support for rk3576
Date: Tue, 15 Oct 2024 08:23:30 +0200
Message-ID: <5985447.MhkbZ0Pkbq@diego>
In-Reply-To: <20241011065140.19999-3-frawang.cn@gmail.com>
References: <20241011065140.19999-1-frawang.cn@gmail.com>
 <20241011065140.19999-3-frawang.cn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_232335_855620_D90F386D 
X-CRM114-Status: GOOD (  25.25  )
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

Hi Frank,

Am Freitag, 11. Oktober 2024, 08:51:40 CEST schrieb Frank Wang:
> From: William Wu <william.wu@rock-chips.com>
> 
> The RK3576 SoC has two independent USB2.0 PHYs, and each PHY has
> one port. This adds device specific data for it.
> 
> Signed-off-by: William Wu <william.wu@rock-chips.com>
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>

this matches nicely with how the other phy variants are done in the
driver. I am not a big fan of the numeric values, but at least the
comments explain what happens.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
> Changelog:
> v5:
>  - no changes.
> 
> v4:
>  - split the bulk clock management as a new patch, and this just leave
>    adding rk3576-specific data.
> 
> v3:
>  - amend the commit log adds clocks converting.
>  - retrieve the clock by "clks.id" in *_clk480m_register() function.
> 
> v2:
>  - no changes.
> 
> v1:
>  - https://patchwork.kernel.org/project/linux-phy/patch/20240923025326.10467-2-frank.wang@rock-chips.com/
> 
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 103 ++++++++++++++++++
>  1 file changed, 103 insertions(+)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index f71266c27091e..96f3d868a526f 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -1510,6 +1510,30 @@ static int rk3128_usb2phy_tuning(struct rockchip_usb2phy *rphy)
>  				BIT(2) << BIT_WRITEABLE_SHIFT | 0);
>  }
>  
> +static int rk3576_usb2phy_tuning(struct rockchip_usb2phy *rphy)
> +{
> +	int ret;
> +	u32 reg = rphy->phy_cfg->reg;
> +
> +	/* Deassert SIDDQ to power on analog block */
> +	ret = regmap_write(rphy->grf, reg + 0x0010, GENMASK(29, 29) | 0x0000);
> +	if (ret)
> +		return ret;
> +
> +	/* Do reset after exit IDDQ mode */
> +	ret = rockchip_usb2phy_reset(rphy);
> +	if (ret)
> +		return ret;
> +
> +	/* HS DC Voltage Level Adjustment 4'b1001 : +5.89% */
> +	ret |= regmap_write(rphy->grf, reg + 0x000c, GENMASK(27, 24) | 0x0900);
> +
> +	/* HS Transmitter Pre-Emphasis Current Control 2'b10 : 2x */
> +	ret |= regmap_write(rphy->grf, reg + 0x0010, GENMASK(20, 19) | 0x0010);
> +
> +	return ret;
> +}
> +
>  static int rk3588_usb2phy_tuning(struct rockchip_usb2phy *rphy)
>  {
>  	int ret;
> @@ -1938,6 +1962,84 @@ static const struct rockchip_usb2phy_cfg rk3568_phy_cfgs[] = {
>  	{ /* sentinel */ }
>  };
>  
> +static const struct rockchip_usb2phy_cfg rk3576_phy_cfgs[] = {
> +	{
> +		.reg = 0x0,
> +		.num_ports	= 1,
> +		.phy_tuning	= rk3576_usb2phy_tuning,
> +		.clkout_ctl	= { 0x0008, 0, 0, 1, 0 },
> +		.port_cfgs	= {
> +			[USB2PHY_PORT_OTG] = {
> +				.phy_sus	= { 0x0000, 8, 0, 0, 0x1d1 },
> +				.bvalid_det_en	= { 0x00c0, 1, 1, 0, 1 },
> +				.bvalid_det_st	= { 0x00c4, 1, 1, 0, 1 },
> +				.bvalid_det_clr = { 0x00c8, 1, 1, 0, 1 },
> +				.ls_det_en	= { 0x00c0, 0, 0, 0, 1 },
> +				.ls_det_st	= { 0x00c4, 0, 0, 0, 1 },
> +				.ls_det_clr	= { 0x00c8, 0, 0, 0, 1 },
> +				.disfall_en	= { 0x00c0, 6, 6, 0, 1 },
> +				.disfall_st	= { 0x00c4, 6, 6, 0, 1 },
> +				.disfall_clr	= { 0x00c8, 6, 6, 0, 1 },
> +				.disrise_en	= { 0x00c0, 5, 5, 0, 1 },
> +				.disrise_st	= { 0x00c4, 5, 5, 0, 1 },
> +				.disrise_clr	= { 0x00c8, 5, 5, 0, 1 },
> +				.utmi_avalid	= { 0x0080, 1, 1, 0, 1 },
> +				.utmi_bvalid	= { 0x0080, 0, 0, 0, 1 },
> +				.utmi_ls	= { 0x0080, 5, 4, 0, 1 },
> +			}
> +		},
> +		.chg_det = {
> +			.cp_det		= { 0x0080, 8, 8, 0, 1 },
> +			.dcp_det	= { 0x0080, 8, 8, 0, 1 },
> +			.dp_det		= { 0x0080, 9, 9, 1, 0 },
> +			.idm_sink_en	= { 0x0010, 5, 5, 1, 0 },
> +			.idp_sink_en	= { 0x0010, 5, 5, 0, 1 },
> +			.idp_src_en	= { 0x0010, 14, 14, 0, 1 },
> +			.rdm_pdwn_en	= { 0x0010, 14, 14, 0, 1 },
> +			.vdm_src_en	= { 0x0010, 7, 6, 0, 3 },
> +			.vdp_src_en	= { 0x0010, 7, 6, 0, 3 },
> +		},
> +	},
> +	{
> +		.reg = 0x2000,
> +		.num_ports	= 1,
> +		.phy_tuning	= rk3576_usb2phy_tuning,
> +		.clkout_ctl	= { 0x2008, 0, 0, 1, 0 },
> +		.port_cfgs	= {
> +			[USB2PHY_PORT_OTG] = {
> +				.phy_sus	= { 0x2000, 8, 0, 0, 0x1d1 },
> +				.bvalid_det_en	= { 0x20c0, 1, 1, 0, 1 },
> +				.bvalid_det_st	= { 0x20c4, 1, 1, 0, 1 },
> +				.bvalid_det_clr = { 0x20c8, 1, 1, 0, 1 },
> +				.ls_det_en	= { 0x20c0, 0, 0, 0, 1 },
> +				.ls_det_st	= { 0x20c4, 0, 0, 0, 1 },
> +				.ls_det_clr	= { 0x20c8, 0, 0, 0, 1 },
> +				.disfall_en	= { 0x20c0, 6, 6, 0, 1 },
> +				.disfall_st	= { 0x20c4, 6, 6, 0, 1 },
> +				.disfall_clr	= { 0x20c8, 6, 6, 0, 1 },
> +				.disrise_en	= { 0x20c0, 5, 5, 0, 1 },
> +				.disrise_st	= { 0x20c4, 5, 5, 0, 1 },
> +				.disrise_clr	= { 0x20c8, 5, 5, 0, 1 },
> +				.utmi_avalid	= { 0x2080, 1, 1, 0, 1 },
> +				.utmi_bvalid	= { 0x2080, 0, 0, 0, 1 },
> +				.utmi_ls	= { 0x2080, 5, 4, 0, 1 },
> +			}
> +		},
> +		.chg_det = {
> +			.cp_det		= { 0x2080, 8, 8, 0, 1 },
> +			.dcp_det	= { 0x2080, 8, 8, 0, 1 },
> +			.dp_det		= { 0x2080, 9, 9, 1, 0 },
> +			.idm_sink_en	= { 0x2010, 5, 5, 1, 0 },
> +			.idp_sink_en	= { 0x2010, 5, 5, 0, 1 },
> +			.idp_src_en	= { 0x2010, 14, 14, 0, 1 },
> +			.rdm_pdwn_en	= { 0x2010, 14, 14, 0, 1 },
> +			.vdm_src_en	= { 0x2010, 7, 6, 0, 3 },
> +			.vdp_src_en	= { 0x2010, 7, 6, 0, 3 },
> +		},
> +	},
> +	{ /* sentinel */ }
> +};
> +
>  static const struct rockchip_usb2phy_cfg rk3588_phy_cfgs[] = {
>  	{
>  		.reg = 0x0000,
> @@ -2109,6 +2211,7 @@ static const struct of_device_id rockchip_usb2phy_dt_match[] = {
>  	{ .compatible = "rockchip,rk3366-usb2phy", .data = &rk3366_phy_cfgs },
>  	{ .compatible = "rockchip,rk3399-usb2phy", .data = &rk3399_phy_cfgs },
>  	{ .compatible = "rockchip,rk3568-usb2phy", .data = &rk3568_phy_cfgs },
> +	{ .compatible = "rockchip,rk3576-usb2phy", .data = &rk3576_phy_cfgs },
>  	{ .compatible = "rockchip,rk3588-usb2phy", .data = &rk3588_phy_cfgs },
>  	{ .compatible = "rockchip,rv1108-usb2phy", .data = &rv1108_phy_cfgs },
>  	{}
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
