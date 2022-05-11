Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78E7EC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 13:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iPqOzC0LHZaKUNK2fgE5LCCJmcMHD4rT21iHaqn43N4=; b=1BdMOAjg8YZsJQ
	BtORxlMnuZbcFa4PrXB1jPQdxSPs431Mt5ZhO0eqnIoNQX/hA0TA2cJgwumegZc9POWLt+dninU6E
	7hNAWoIIj/RKYNDPbyjUjYAcJolb5YQLJ9oZEh39CKGWXEDihiwPDqk8knfRDkgvIq7tWxxTY5BHK
	ge6PLKA41D/F9Gm+g9zDFY0yQ0iXhbME+G66o6W3ubEKfJzcxfzJ0KHMHdWECIZ5C+3F76XqsT22l
	VkW5NVSCLRuOZ+Rxt2/kcRpHdGca3gPvN97IWfEbKVtNoLivL3zz3Yt4oFtDpmXOEhCShrUXKqmAY
	UueIUFiNp3B3bAl29Hhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nomjU-0073lm-My; Wed, 11 May 2022 13:50:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nomjG-0073h7-UV; Wed, 11 May 2022 13:50:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 931D7ED1;
 Wed, 11 May 2022 06:50:13 -0700 (PDT)
Received: from lpieralisi (unknown [10.57.1.148])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9FF783F66F;
 Wed, 11 May 2022 06:50:11 -0700 (PDT)
Date: Wed, 11 May 2022 14:50:07 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Peter Geis <pgwipeout@gmail.com>
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Marc Zyngier <maz@kernel.org>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Subject: Re: [PATCH v9 2/5] PCI: rockchip-dwc: Reset core at driver probe
Message-ID: <Ynu/D4hXTRVy9IBF@lpieralisi>
References: <20220429123832.2376381-1-pgwipeout@gmail.com>
 <20220429123832.2376381-3-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220429123832.2376381-3-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_065015_109465_F2289583 
X-CRM114-Status: GOOD (  21.84  )
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

On Fri, Apr 29, 2022 at 08:38:28AM -0400, Peter Geis wrote:
> The PCIe controller is in an unknown state at driver probe. This can
> lead to undesireable effects when the driver attempts to configure the
> controller.
> 
> Prevent issues in the future by resetting the core during probe.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> Tested-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 23 ++++++++-----------
>  1 file changed, 10 insertions(+), 13 deletions(-)

I fear that the controller reset behaviour is bootloader/firmware
dependent.

Are we sure we are not triggering any regressions by resetting the
controller in the middle of probe (aka is the driver implicitly
relying on existing behaviour on systems that are not the ones
you are testing on) ?

Just asking, the rockchip maintainers should be able to answer this
question.

Thanks,
Lorenzo

> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index c9b341e55cbb..faedbd6ebc20 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -152,6 +152,11 @@ static int rockchip_pcie_resource_get(struct platform_device *pdev,
>  	if (IS_ERR(rockchip->rst_gpio))
>  		return PTR_ERR(rockchip->rst_gpio);
>  
> +	rockchip->rst = devm_reset_control_array_get_exclusive(&pdev->dev);
> +	if (IS_ERR(rockchip->rst))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(rockchip->rst),
> +				     "failed to get reset lines\n");
> +
>  	return 0;
>  }
>  
> @@ -182,18 +187,6 @@ static void rockchip_pcie_phy_deinit(struct rockchip_pcie *rockchip)
>  	phy_power_off(rockchip->phy);
>  }
>  
> -static int rockchip_pcie_reset_control_release(struct rockchip_pcie *rockchip)
> -{
> -	struct device *dev = rockchip->pci.dev;
> -
> -	rockchip->rst = devm_reset_control_array_get_exclusive(dev);
> -	if (IS_ERR(rockchip->rst))
> -		return dev_err_probe(dev, PTR_ERR(rockchip->rst),
> -				     "failed to get reset lines\n");
> -
> -	return reset_control_deassert(rockchip->rst);
> -}
> -
>  static const struct dw_pcie_ops dw_pcie_ops = {
>  	.link_up = rockchip_pcie_link_up,
>  	.start_link = rockchip_pcie_start_link,
> @@ -222,6 +215,10 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
>  
> +	ret = reset_control_assert(rockchip->rst);
> +	if (ret)
> +		return ret;
> +
>  	/* DON'T MOVE ME: must be enable before PHY init */
>  	rockchip->vpcie3v3 = devm_regulator_get_optional(dev, "vpcie3v3");
>  	if (IS_ERR(rockchip->vpcie3v3)) {
> @@ -241,7 +238,7 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto disable_regulator;
>  
> -	ret = rockchip_pcie_reset_control_release(rockchip);
> +	ret = reset_control_deassert(rockchip->rst);
>  	if (ret)
>  		goto deinit_phy;
>  
> -- 
> 2.25.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
