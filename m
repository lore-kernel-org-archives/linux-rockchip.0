Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 770BACF2590
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 06:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2wsUNKOkHpaJnDZ5SSequ1i7V/35oY17f7Anv3B4huE=; b=wvoPqUO9uSab0a
	XKbZ6v/wPI78rEc3vGekdwcJTowrye3IGdTN7s54t9RgxwEnic7dmvcb9rF/gu3FJj8mDyC+7l2yX
	2++muZnZX3Qfgsxubth+h0bZvRCthLI0IeI9yr6p75yBRMAeTXr6TM0TlIr6a6DTlGymJd2i5ZkgD
	zcR2xTJjljLBtx1AUnm3dcw3rfAWtNWYwhW0gFmHnngxv4jKoQOYnsTsAE83+pj0EDdPKvB6bei47
	L8cwj153dsHAZDCIKADN3mHQNUcJA+zVS+iYvsi0EZFznMbsSW47DZSbf8xyth7PZ9lDQqSgPSP2P
	ITT/qt3/2OtU+Uibibow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Eyl-00000003xWz-1dVF;
	Mon, 14 Oct 2024 06:54:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Ev4-00000003x0b-1Z2u;
	Mon, 14 Oct 2024 06:51:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=bDIJc0lzPWFuK32g4GsXmjt7r9miciNd9/zrnLYf/jQ=; b=E8v1l2Vk8bPbWumsFcQAJiVwME
	rnrK+33WV59LVA3WiXWQHpnWVLMlOiLK5r3sLOJlDiJ1sWT/6cTtMijybEkBzPiqNijepaEbGRnoz
	klaB+0dKyA1E7oLoT0FlW18xetZ00+U/1KnsnledyT7x7SwnbJmwm3O1TnX/gz9nCLcNEEUKZbh8p
	V0xGc46QoHsArYKdf/EJx4fZ4tK/RmcDLd9hqhc9CMYveJA/GrOfBBBp8KRFq0HEs1lG0NyuaODAv
	4e5Bxmr44e3L/TAZl36plB+YQhpa0qBxsMyNBLCWlRBu9vELtoCALZgDQLRgMu0JAKpyd9ZhRltNY
	+FhJISbw==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t0Euz-0005Vq-2C; Mon, 14 Oct 2024 08:51:01 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, Frank Wang <frawang.cn@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, yubing.zhang@rock-chips.com,
 Frank Wang <frank.wang@rock-chips.com>
Subject: Re: [PATCH 2/2] phy: rockchip: usbdp: add rk3576 device match data
Date: Mon, 14 Oct 2024 08:50:59 +0200
Message-ID: <13616137.uLZWGnKmhe@diego>
In-Reply-To: <20241014020342.15974-2-frawang.cn@gmail.com>
References: <20241014020342.15974-1-frawang.cn@gmail.com>
 <20241014020342.15974-2-frawang.cn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241013_235106_611724_3B5215F3 
X-CRM114-Status: GOOD (  16.87  )
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

Am Montag, 14. Oktober 2024, 04:03:42 CEST schrieb Frank Wang:
> From: Frank Wang <frank.wang@rock-chips.com>
> 
> This adds RK3576 device match data support.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>

Nice, that the rk3576 support fits in so easily :-)

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/phy/rockchip/phy-rockchip-usbdp.c | 41 +++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> index 2c51e5c62d3e..5b1e8a3806ed 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1538,6 +1538,43 @@ static const char * const rk_udphy_rst_list[] = {
>  	"init", "cmn", "lane", "pcs_apb", "pma_apb"
>  };
>  
> +static const struct rk_udphy_cfg rk3576_udphy_cfgs = {
> +	.num_phys = 1,
> +	.phy_ids = { 0x2b010000 },
> +	.num_rsts = ARRAY_SIZE(rk_udphy_rst_list),
> +	.rst_list = rk_udphy_rst_list,
> +	.grfcfg	= {
> +		/* u2phy-grf */
> +		.bvalid_phy_con		= RK_UDPHY_GEN_GRF_REG(0x0010, 1, 0, 0x2, 0x3),
> +		.bvalid_grf_con		= RK_UDPHY_GEN_GRF_REG(0x0000, 15, 14, 0x1, 0x3),
> +
> +		/* usb-grf */
> +		.usb3otg0_cfg		= RK_UDPHY_GEN_GRF_REG(0x0030, 15, 0, 0x1100, 0x0188),
> +
> +		/* usbdpphy-grf */
> +		.low_pwrn		= RK_UDPHY_GEN_GRF_REG(0x0004, 13, 13, 0, 1),
> +		.rx_lfps		= RK_UDPHY_GEN_GRF_REG(0x0004, 14, 14, 0, 1),
> +	},
> +	.vogrfcfg = {
> +		{
> +			.hpd_trigger	= RK_UDPHY_GEN_GRF_REG(0x0000, 11, 10, 1, 3),
> +			.dp_lane_reg    = 0x0000,
> +		},
> +	},
> +	.dp_tx_ctrl_cfg = {
> +		rk3588_dp_tx_drv_ctrl_rbr_hbr_typec,
> +		rk3588_dp_tx_drv_ctrl_rbr_hbr_typec,
> +		rk3588_dp_tx_drv_ctrl_hbr2,
> +		rk3588_dp_tx_drv_ctrl_hbr3,
> +	},
> +	.dp_tx_ctrl_cfg_typec = {
> +		rk3588_dp_tx_drv_ctrl_rbr_hbr_typec,
> +		rk3588_dp_tx_drv_ctrl_rbr_hbr_typec,
> +		rk3588_dp_tx_drv_ctrl_hbr2,
> +		rk3588_dp_tx_drv_ctrl_hbr3,
> +	},
> +};
> +
>  static const struct rk_udphy_cfg rk3588_udphy_cfgs = {
>  	.num_phys = 2,
>  	.phy_ids = {
> @@ -1584,6 +1621,10 @@ static const struct rk_udphy_cfg rk3588_udphy_cfgs = {
>  };
>  
>  static const struct of_device_id rk_udphy_dt_match[] = {
> +	{
> +		.compatible = "rockchip,rk3576-usbdp-phy",
> +		.data = &rk3576_udphy_cfgs
> +	},
>  	{
>  		.compatible = "rockchip,rk3588-usbdp-phy",
>  		.data = &rk3588_udphy_cfgs
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
