Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31F02C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Apr 2024 19:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z2W+XV7Cyvt4iqH4eqb+P0cBiqNc90DgOLs6sdcVvyo=; b=JZHkr0Jjuthkg0
	tz1MaUXOTXtpp8DiGbBmmQFnQSCik01LDWXAFD3pcdIixOgle9WAtmdobplbWBBVg5xqAopPsjikw
	kdNWboFJwONl78d0H4dxToKG6FZ+ycs5Kk/av4CfZQoYRj2teVy1dd3ojhVKC5rQ1VSIRDM1J/7A3
	hfdvbQAiovKCovzaMkW0U9bduPdh9GJpLhr8g581Yp/HP8ohj3k5lwJx2l067pTSvaxy9LDq+hoDf
	LDDoEbgmhfQB6z7I08RKAtQjDJvOV1j/8owMyud53t+FoDnw2YLQMBxLfhdQYVNYTo+4SThTsH/HP
	2kJxPfOxNGHDJaRuTBbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruzif-0000000DoMa-0TtK;
	Thu, 11 Apr 2024 19:04:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruzia-0000000DoLX-0xSz;
	Thu, 11 Apr 2024 19:04:17 +0000
Received: from ip-185-104-138-67.ptr.icomera.net ([185.104.138.67] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruziS-0002HW-BR; Thu, 11 Apr 2024 21:04:08 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Algea Cao <algea.cao@rock-chips.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] phy: phy-rockchip-samsung-hdptx: Select CONFIG_RATIONAL
Date: Thu, 11 Apr 2024 21:03:44 +0200
Message-ID: <114516975.nniJfEyVGO@phil>
In-Reply-To: <20240408222926.32708-1-cristian.ciocaltea@collabora.com>
References: <20240408222926.32708-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_120416_302179_7F26F35B 
X-CRM114-Status: GOOD (  14.85  )
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

Am Dienstag, 9. April 2024, 00:29:25 CEST schrieb Cristian Ciocaltea:
> Ensure CONFIG_RATIONAL is selected in order to fix the following link
> error with some kernel configurations:
> 
> drivers/phy/rockchip/phy-rockchip-samsung-hdptx.o: in function `rk_hdptx_ropll_tmds_cmn_config':
> phy-rockchip-samsung-hdptx.c:(.text+0x950): undefined reference to `rational_best_approximation'
> 
> Fixes: 553be2830c5f ("phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202404090540.2l1TEkDF-lkp@intel.com/
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/phy/rockchip/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
> index a34f67bb7e61..b60a4b60451e 100644
> --- a/drivers/phy/rockchip/Kconfig
> +++ b/drivers/phy/rockchip/Kconfig
> @@ -87,6 +87,7 @@ config PHY_ROCKCHIP_SAMSUNG_HDPTX
>  	tristate "Rockchip Samsung HDMI/eDP Combo PHY driver"
>  	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
>  	select GENERIC_PHY
> +	select RATIONAL
>  	help
>  	  Enable this to support the Rockchip HDMI/eDP Combo PHY
>  	  with Samsung IP block.
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
