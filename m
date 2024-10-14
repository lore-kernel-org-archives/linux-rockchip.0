Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67427CF2590
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 03:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M8XysnVBu5vIh1uVVYqCyHzN6R6uVRpIeclK/zvPCOU=; b=nLgf6VdZ5SASvNxb5L7WADg1qx
	Ic6xHEIji7g2J6qDHn3gD/YRMO2Q3cuRstn9KSZU2DtPrJ2/PDmAyjEYyM1lw7pBSAUndfwBBXAp9
	8cPVr+jWWoSzYcmC0E48leZNOy7c9sIpZnqN44DbA2vslQqKDenuXjt9KAhMJUbjJMdjE1zYledfs
	uRhfzY5gCVg8YRCbpiAIpdjAqdELUZ3D1FL2Cracr4VDfcvXBEVgJRgCEOqEkICV7D10hA5VcdGFQ
	L/vRvBFe06gSlDUyWzT3ITQqcWx1csR6MX8Yeqjlmb/YfdAmSUVKb1rUcRLtRvworyhYD26az2FuB
	W4HzgFYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0CDY-00000003ekX-1mqt;
	Mon, 14 Oct 2024 03:58:00 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0CBG-00000003eUf-0cap;
	Mon, 14 Oct 2024 03:55:39 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728878135;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ItMiZaVUJ0tYf4/40QYBAawzSkFPdziZo/qhFOBrpDo=;
	b=oVuhKd7xqOVNeJhH1Bo8XFhV3s8CO3nQZdTGL8ReHH6vPQn/dHnciebjLHtTjzCgBWgVWI
	wI0xPTd8Jti6jnaz8j4uPMdHndOB4ptvPqCs4Iie84E+G7y6TOC8o6LTuU2DuVUD0mepPZ
	q04IKUkfd7zALwYxT4ypRuNUV4F3aUStOUsroFAfv2Jt66oeDiIupOQCGL4Cw9Xb7pTL2g
	GCVA+NOxI4cjbTNE+5ecEmkf1NMxMIi4aPRXfU4ckX/bRQdKMNCroocu1ueR3KtYbGhyUS
	gRakWtvcRaGt320PFC4POraS2a/PvtgRLhrZlDaov8qtq3TH0zbjU+wCLqN2LQ==
Date: Mon, 14 Oct 2024 05:55:35 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Frank Wang <frawang.cn@gmail.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, yubing.zhang@rock-chips.com, Frank Wang
 <frank.wang@rock-chips.com>
Subject: Re: [PATCH 2/2] phy: rockchip: usbdp: add rk3576 device match data
In-Reply-To: <20241014020342.15974-2-frawang.cn@gmail.com>
References: <20241014020342.15974-1-frawang.cn@gmail.com>
 <20241014020342.15974-2-frawang.cn@gmail.com>
Message-ID: <127f7fb8d9608acb9541fc6c6dac2da9@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241013_205538_527036_50477F91 
X-CRM114-Status: GOOD (  11.94  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Frank,

On 2024-10-14 04:03, Frank Wang wrote:
> From: Frank Wang <frank.wang@rock-chips.com>
> 
> This adds RK3576 device match data support.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>

Looking good to me, thanks for the patch.  My focus was on
making sure there are no possible regressions.

Acked-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  drivers/phy/rockchip/phy-rockchip-usbdp.c | 41 +++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> index 2c51e5c62d3e..5b1e8a3806ed 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1538,6 +1538,43 @@ static const char * const rk_udphy_rst_list[] = 
> {
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
> +		.usb3otg0_cfg		= RK_UDPHY_GEN_GRF_REG(0x0030, 15, 0, 0x1100, 
> 0x0188),
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
> @@ -1584,6 +1621,10 @@ static const struct rk_udphy_cfg 
> rk3588_udphy_cfgs = {
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

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
