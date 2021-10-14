Return-Path: <SRS0=Ggyc=PC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32B36C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Oct 2021 11:38:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F3C4760D07
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Oct 2021 11:37:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F3C4760D07
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NEZ9L1s523p2ue5UPflPcozywWvf8CcET7ZSMCgLQC4=; b=jxeOX8wu9wnR6c
	eFNAiPtATIRECFuCS0GQ9uptv8+FLPR9DSfRl4h+CZ/R7SAHkqjDx/0A1N1AJIe4DJEKNOKS/Qv85
	kLeK5itH5J/uBSu1XFrGj4RiZzLkyg7DhOTen5JKv8FssXzp4Z67MUsWhmYf0tByZLnoRGbFOi3gU
	YRHu2XyhuznvXaS8c26RsAxESmyLh8RQIyrDbQYi6NT6LUvrWQ9axNYj1H8xLweF3Ypshv//ntycD
	ItzjjhB9nJKl+LAk+qtb+iaui+le+g+CGiT/iAia9qB+Z1ITMpBmFRyiQDBDoAFldovg9EbCLTa/s
	8mV2gOSBH+gU8elF6oUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maz3a-002t29-Vj; Thu, 14 Oct 2021 11:37:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maz3Y-002t0c-BU
 for linux-rockchip@lists.infradead.org; Thu, 14 Oct 2021 11:37:53 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1maz3Q-0005y5-2b; Thu, 14 Oct 2021 13:37:44 +0200
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1maz3M-000463-0H; Thu, 14 Oct 2021 13:37:40 +0200
Message-ID: <fdea4ea765654a6c8dc820d75a6c2faad2284723.camel@pengutronix.de>
Subject: Re: [PATCH v2 2/3] phy/rockchip: add naneng combo phy for RK3568
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>, heiko@sntech.de, 
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, vkoul@kernel.org,
 michael.riesch@wolfvision.net,  linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kishon@ti.com
Date: Thu, 14 Oct 2021 13:37:39 +0200
In-Reply-To: <20211013101938.28061-3-yifeng.zhao@rock-chips.com>
References: <20211013101938.28061-1-yifeng.zhao@rock-chips.com>
 <20211013101938.28061-3-yifeng.zhao@rock-chips.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211014_043752_449920_C0764B2F 
X-CRM114-Status: GOOD (  19.17  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Yifeng,

On Wed, 2021-10-13 at 18:19 +0800, Yifeng Zhao wrote:
> This patch implements a combo phy driver for Rockchip SoCs
> with NaNeng IP block. This phy can be used as pcie-phy, usb3-phy,
> sata-phy or sgmii-phy.
> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> ---
> 
> Changes in v2:
> - Using api devm_platform_get_and_ioremap_resource.
> - Modify rockchip_combphy_set_Mode.
> - Add some PHY registers definition.
> 
>  drivers/phy/rockchip/Kconfig                  |   8 +
>  drivers/phy/rockchip/Makefile                 |   1 +
>  .../rockchip/phy-rockchip-naneng-combphy.c    | 650 ++++++++++++++++++
>  3 files changed, 659 insertions(+)
>  create mode 100644 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> 
[...]
> diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> new file mode 100644
> index 000000000000..fbfc5fbbd5b8
> --- /dev/null
> +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> @@ -0,0 +1,650 @@
[...]
> +static int rockchip_combphy_parse_dt(struct device *dev,
> +				     struct rockchip_combphy_priv *priv)
> +{
> +	const struct rockchip_combphy_cfg *phy_cfg = priv->cfg;
> +	int ret, mac_id;
> +
[...]
> +	priv->apb_rst = devm_reset_control_get_optional(dev, "combphy-apb");

Please use devm_reset_control_get_optional_exclusive().

Also, apb_rst is never used?

> +	if (IS_ERR(priv->apb_rst)) {
> +		ret = PTR_ERR(priv->apb_rst);
> +
> +		if (ret != -EPROBE_DEFER)
> +			dev_warn(dev, "failed to get apb reset\n");
> +
> +		return ret;

Any reason not to use dev_err_probe()?

> +	}
> +
> +	priv->phy_rst = devm_reset_control_get_optional(dev, "combphy");

Please use devm_reset_control_get_optional_exclusive().

> +	if (IS_ERR(priv->phy_rst)) {
> +		ret = PTR_ERR(priv->phy_rst);
> +
> +		if (ret != -EPROBE_DEFER)
> +			dev_warn(dev, "failed to get phy reset\n");
> +
> +		return ret;

Same as above.

> +	}
> +
> +	return reset_control_assert(priv->phy_rst);

It is unexpected that a function called rockchip_combphy_parse_dt()
already changes device state.

I'd move the reset_control_assert() out into rockchip_combphy_probe().

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
