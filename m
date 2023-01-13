Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42847C54EBD
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jan 2023 17:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DOlp+3htv3npKcXc/PtPj/rWazPuNTDQgk8yx1OUG0Q=; b=MSwu1yvrPK685I
	FdpztmOTb62oI1Nuurjxqzp5p/P+bfenG4UGxBijASkgO1Zhkx+VieMbP877rNZwIc3azqZdFzVGj
	uIrBKMC3+5kjFBrvx7k4kD+MnDHmYh/zr84ZDMQUN139PXcDsBzpdkqvpjMCNXZet/Q5im/5O1tn9
	kncxUnifXyTkRlKc0fAxMcu/TJqX5HDju+QhstWaFfb7Cu1Zwu0p2miFVKSDqHD5SfMt5PO0NGuSa
	r0oT6mMF+Hb4jEp7JlkZE9foTejaQ6LBdEOW/Re1kSL4Bpkat+/J1+D6RAg6/lV3jL37sZzhlESZG
	XP3UyK9/wlmx8Zzo4K1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGOJy-003v8F-53; Fri, 13 Jan 2023 17:58:30 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGOJn-003v4D-Cj; Fri, 13 Jan 2023 17:58:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 09DDBB821AA;
	Fri, 13 Jan 2023 17:58:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BFFFC433F0;
	Fri, 13 Jan 2023 17:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673632696;
	bh=JuFDRpf2cgQra4Jmh7Rp/roiRRmIQ+8USu0y4bvm8KA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RkzR17B3MqmFD3UDolrzkWFgVQxhTgJ+4mIBUVVNY+/xkKk5diJ1opON8eqkEMhs8
	 56NpBBuZXT0z1eov1BtFLHwQbVq7pZQDfLDmHe9msV4+HlUoBra7C35UT54dmiJ/gK
	 I1PeMTqmdr8gQ4978vdbOXvc7PZ0whaLOhhHuMROJiFm/4AZiws4TVlDUiUf86aDGk
	 x4fdw0aL6q3xuuyxREb6gubPmU5zMZzolXC/K6ft33MfIN971TxVhZMBbkY7ON5C82
	 El2Tp/2Lhy6ANr8J4O8V6cctEBXUyKemnbT2XRdS7k4SEw6v+NDC9c+dmUfmCZslMQ
	 o87sG7uo5PfJQ==
Date: Fri, 13 Jan 2023 23:28:12 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Michael Trimarchi <michael@amarulasolutions.com>
Cc: Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-amarula@amarulasolutions.com
Subject: Re: [RFC PATCH 2/4] phy: rockchip: Add inno_is_valid_phy_mode
Message-ID: <Y8GbtA7+xHtBEpRs@matsya>
References: <20221002064540.2500257-1-michael@amarulasolutions.com>
 <20221002064540.2500257-3-michael@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221002064540.2500257-3-michael@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_095819_595680_466A45DB 
X-CRM114-Status: GOOD (  19.85  )
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

On 02-10-22, 08:45, Michael Trimarchi wrote:
> The function is used to avoid to enable clock on the hardware
> if the mode requested is invalid
> 
> Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
> ---
>  .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
> index 630e01b5c19b..644cf73cfd53 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
> @@ -217,6 +217,20 @@ static void phy_update_bits(struct inno_dsidphy *inno,
>  	writel(tmp, inno->phy_base + reg);
>  }
>  
> +static int inno_is_valid_phy_mode(struct inno_dsidphy *inno)
> +{
> +	switch (inno->mode) {
> +	case PHY_MODE_MIPI_DPHY:
> +		break;
> +	case PHY_MODE_LVDS:
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +};
> +
>  static unsigned long inno_dsidphy_pll_calc_rate(struct inno_dsidphy *inno,
>  						unsigned long rate)
>  {
> @@ -495,6 +509,11 @@ static void inno_dsidphy_lvds_mode_enable(struct inno_dsidphy *inno)
>  static int inno_dsidphy_power_on(struct phy *phy)
>  {
>  	struct inno_dsidphy *inno = phy_get_drvdata(phy);
> +	int ret = 0;

this initialization is superfluous

> +
> +	ret = inno_is_valid_phy_mode(inno);
> +	if (ret)
> +		return ret;
>  
>  	clk_prepare_enable(inno->pclk_phy);
>  	clk_prepare_enable(inno->ref_clk);
> -- 
> 2.34.1

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
