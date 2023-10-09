Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3249CD612F
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 20:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1JF58VxQwIGIbUVtaLNHlDlrTj5EKbm3Yv0JmAIMqK0=; b=Lp4iP4owZJJEIW
	9fzl5ah29achgJUHZbXa651ik4U6u8UAxKti6XVmvMzs4FEmu1iGJVj6oZXJW0f//VqhcPI/hIyWo
	E+jlDRgX5MEIEi47XDHl8EjeK+4FuB2d/OcjP5mjOosGfkEQ9tlGfyY/cUXRxMUxYTCvJCj7pw46j
	mNIXOT8ES6ImYWSFOTTvJBzZo2CYJ7e0f0P6+8sem7Qjpee92fgF6maCVmPDslQvrwJ3cN880nMkW
	5CVJ+dXQEYVi3//MRpf7dofAefgMLwChy2Fl2VmSGqFCl9pIFmykBHrxr53hNSk87lGsC8pHL1/2b
	vbwqI1SWRjUDkZklrasA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpwd1-00BYYD-0c;
	Mon, 09 Oct 2023 20:13:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpwcx-00BYX3-2d;
	Mon, 09 Oct 2023 20:13:21 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qpwcs-0004w0-5H; Mon, 09 Oct 2023 22:13:14 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] phy: Use device_get_match_data()
Date: Mon, 09 Oct 2023 22:13:13 +0200
Message-ID: <7578192.EvYhyI6sBW@phil>
In-Reply-To: <20231009172923.2457844-15-robh@kernel.org>
References: <20231009172923.2457844-15-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_131319_879809_8436DA5F 
X-CRM114-Status: GOOD (  17.34  )
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

Am Montag, 9. Oktober 2023, 19:29:10 CEST schrieb Rob Herring:
> Use preferred device_get_match_data() instead of of_match_device() to
> get the driver match data. With this, adjust the includes to explicitly
> include the correct headers.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

>  drivers/phy/rockchip/phy-rockchip-pcie.c | 11 ++++-------
>  drivers/phy/rockchip/phy-rockchip-usb.c  | 10 +++-------

For the Rockchip part:
Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
> index 8234b83fdd88..1bbd6be2a584 100644
> --- a/drivers/phy/rockchip/phy-rockchip-pcie.c
> +++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
> @@ -12,10 +12,9 @@
>  #include <linux/mfd/syscon.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> -#include <linux/of_address.h>
> -#include <linux/of_platform.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
> +#include <linux/property.h>
>  #include <linux/regmap.h>
>  #include <linux/reset.h>
>  
> @@ -63,7 +62,7 @@ struct rockchip_pcie_data {
>  };
>  
>  struct rockchip_pcie_phy {
> -	struct rockchip_pcie_data *phy_data;
> +	const struct rockchip_pcie_data *phy_data;
>  	struct regmap *reg_base;
>  	struct phy_pcie_instance {
>  		struct phy *phy;
> @@ -350,7 +349,6 @@ static int rockchip_pcie_phy_probe(struct platform_device *pdev)
>  	struct rockchip_pcie_phy *rk_phy;
>  	struct phy_provider *phy_provider;
>  	struct regmap *grf;
> -	const struct of_device_id *of_id;
>  	int i;
>  	u32 phy_num;
>  
> @@ -364,11 +362,10 @@ static int rockchip_pcie_phy_probe(struct platform_device *pdev)
>  	if (!rk_phy)
>  		return -ENOMEM;
>  
> -	of_id = of_match_device(rockchip_pcie_phy_dt_ids, &pdev->dev);
> -	if (!of_id)
> +	rk_phy->phy_data = device_get_match_data(&pdev->dev);
> +	if (!rk_phy->phy_data)
>  		return -EINVAL;
>  
> -	rk_phy->phy_data = (struct rockchip_pcie_data *)of_id->data;
>  	rk_phy->reg_base = grf;
>  
>  	mutex_init(&rk_phy->pcie_mutex);
> diff --git a/drivers/phy/rockchip/phy-rockchip-usb.c b/drivers/phy/rockchip/phy-rockchip-usb.c
> index 8454285977eb..666a896c8f0a 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usb.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usb.c
> @@ -13,10 +13,9 @@
>  #include <linux/module.h>
>  #include <linux/mutex.h>
>  #include <linux/of.h>
> -#include <linux/of_address.h>
> -#include <linux/of_platform.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
> +#include <linux/property.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/reset.h>
>  #include <linux/regmap.h>
> @@ -458,7 +457,6 @@ static int rockchip_usb_phy_probe(struct platform_device *pdev)
>  	struct device *dev = &pdev->dev;
>  	struct rockchip_usb_phy_base *phy_base;
>  	struct phy_provider *phy_provider;
> -	const struct of_device_id *match;
>  	struct device_node *child;
>  	int err;
>  
> @@ -466,14 +464,12 @@ static int rockchip_usb_phy_probe(struct platform_device *pdev)
>  	if (!phy_base)
>  		return -ENOMEM;
>  
> -	match = of_match_device(dev->driver->of_match_table, dev);
> -	if (!match || !match->data) {
> +	phy_base->pdata = device_get_match_data(dev);
> +	if (!phy_base->pdata) {
>  		dev_err(dev, "missing phy data\n");
>  		return -EINVAL;
>  	}
>  
> -	phy_base->pdata = match->data;
> -
>  	phy_base->dev = dev;
>  	phy_base->reg_base = ERR_PTR(-ENODEV);
>  	if (dev->parent && dev->parent->of_node)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
