Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26240D37E32
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 13:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJv0qBGyrVc788OyejL6uIrdP+YZrOVb3/8lnckOe2Y=; b=WQ8M/oxvzANgZH
	8bKRRiYVQALOWRFRqZK3AQt+hy/vTYhAz+3qL0y/tXK3LwWmNl1sZFkR65zrt5e9lqbDKsXXstRE0
	6L3LCJ/xTZWFZsQiO2ZsgHHqc7MRwZ1alQxi/Z/xfZ6JdJBkGhvORivLMV3yCemBgA8DhbU/kkqzI
	8lAtZwF7DEV9n6IKL5D4EofnaMZbL45ExmpORhKmOFngvgGPdKoPgzc3LBu83UVl5Fp/jVEi1d5Q1
	JL+8n3qCccJxDgoAsWgBfBpqVtC3N07w3Zs8vCWLKC7CxgtUpNIFyuzdSNNidrnKoFNCsUs97i6eF
	kjB0K0hcJOYZeIA5PyNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg0wh-00000009Ks5-1P25;
	Wed, 14 Jan 2026 13:29:59 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg0we-00000009KrG-3HZr;
	Wed, 14 Jan 2026 13:29:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EBE0243957;
	Wed, 14 Jan 2026 13:29:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57EB9C4CEF7;
	Wed, 14 Jan 2026 13:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768397395;
	bh=194PmoqrLmqXrWfN2Bl3lw4B4bZEIfsiGBpd7H0rceU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t6TvRHPqe1DXhY8NuwX/BYV4BSwuch7Szg2R3i8GKMiPfH9BP4BiSx1R043J+IdwD
	 oWVn7sc1RbFJvYVt0lKgIq/vN7ODplE2pGMDPlWl8buY3vhBSG2KYETg+wA0p4AZ52
	 aA4mhUkQz8yjmWZ7/yOC8BB9btAsvklD+FCSX57ObXagHOmo6TVdoMUrEg/TxkrJ1L
	 gO1RZfRo2uKN4gnvC2oaMfl5JMqYyzWc//2aWzb/Rlh9i6yJZN72Zv9+MSgov0SXny
	 7bUXAma4A/RdtRhPmGYWhQxapn3vMKBSm8Pm5OLrZkKLe2IhH4POoXqgsNhHM0CCry
	 tdAb/v5igV1gQ==
Date: Wed, 14 Jan 2026 18:59:52 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH 3/5] phy: rockchip-snps-pcie3: Increase sram init timeout
Message-ID: <aWeaUG45FWtdgscG@vaman>
References: <1766560210-100883-1-git-send-email-shawn.lin@rock-chips.com>
 <1766560210-100883-4-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1766560210-100883-4-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_052956_847378_B2B2A4C1 
X-CRM114-Status: GOOD (  14.73  )
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

On 24-12-25, 15:10, Shawn Lin wrote:
> Per massive test, 500us is not enough for all chips, increase it
> to 20000us for worse case recommended.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>  drivers/phy/rockchip/phy-rockchip-snps-pcie3.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
> index 9933cda..f5a5d0af 100644
> --- a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
> +++ b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
> @@ -19,6 +19,9 @@
>  #include <linux/regmap.h>
>  #include <linux/reset.h>
>  
> +/* Common definition */
> +#define RK_SRAM_INIT_TIMEOUT_US			20000
> +
>  /* Register for RK3568 */
>  #define GRF_PCIE30PHY_CON1			0x4
>  #define GRF_PCIE30PHY_CON6			0x18
> @@ -28,6 +31,7 @@
>  #define GRF_PCIE30PHY_WR_EN			(0xf << 16)
>  #define SRAM_INIT_DONE(reg)			(reg & BIT(14))
>  
> +

why this empty line here?

>  #define RK3568_BIFURCATION_LANE_0_1		BIT(0)
>  
>  /* Register for RK3588 */
> @@ -134,7 +138,7 @@ static int rockchip_p3phy_rk3568_calibrate(struct rockchip_p3phy_priv *priv)
>  	ret = regmap_read_poll_timeout(priv->phy_grf,
>  				       GRF_PCIE30PHY_STATUS0,
>  				       reg, SRAM_INIT_DONE(reg),
> -				       0, 500);
> +				       0, RK_SRAM_INIT_TIMEOUT_US);
>  	if (ret)
>  		dev_err(&priv->phy->dev, "lock failed 0x%x, check input refclk and power supply\n",
>  			reg);
> @@ -203,11 +207,11 @@ static int rockchip_p3phy_rk3588_calibrate(struct rockchip_p3phy_priv *priv)
>  	ret = regmap_read_poll_timeout(priv->phy_grf,
>  				       RK3588_PCIE3PHY_GRF_PHY0_STATUS1,
>  				       reg, RK3588_SRAM_INIT_DONE(reg),
> -				       0, 500);
> +				       0, RK_SRAM_INIT_TIMEOUT_US);
>  	ret |= regmap_read_poll_timeout(priv->phy_grf,
>  					RK3588_PCIE3PHY_GRF_PHY1_STATUS1,
>  					reg, RK3588_SRAM_INIT_DONE(reg),
> -					0, 500);
> +					0, RK_SRAM_INIT_TIMEOUT_US);
>  	if (ret)
>  		dev_err(&priv->phy->dev, "lock failed 0x%x, check input refclk and power supply\n",
>  			reg);
> -- 
> 2.7.4

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
