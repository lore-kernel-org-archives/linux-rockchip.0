Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3437BC25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 May 2024 21:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=wIiQbY/h0Mtb4qg2aZNjHSh8FNNH28mivXv942SkR7M=; b=XbtBZoVLhtc2Uh
	O9/H07n9UVY2pk+FoKoUKUdQDWQ+oBeiEZS0jgTg/018lcohhqWlMaJr5AXmuAgNP20jaku+7/MW9
	8kRcPoQgiB1lNlYeY4xSoWYvkCLk2z2ByWnsuXfacWAfQ0AkBkFUoRbXPwxpn+sS06iYKcyq/AWUy
	yWwh0Szx7tMYEgUsoE0fRRcMRzTUd4Le/4Rl8LoJI97n+GRCYouS5MHDMzEgo2B87adI1vCgPKSYt
	XcLlPg0bGPUKCzOToP+4VBrp+KWIO7TtKjniGCGFJ1pLFy6NeqVGGmYq3RnDL6BxZO/4bnveyq0kE
	vlGqqXTWSiiQYXkofPig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7M2z-00000002uAn-1Y4Y;
	Wed, 15 May 2024 21:20:25 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7M2v-00000002u9v-0p34;
	Wed, 15 May 2024 21:20:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 89D7660AD6;
	Wed, 15 May 2024 21:20:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F152EC116B1;
	Wed, 15 May 2024 21:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715808020;
	bh=+w6I/P+muVDYXfQbK+kBqVwASkHll/MFUWl8Em9lRxE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=k7BbqReVQQVt2+DmLKbfcvG4vOMV5iilxTf+u44yEfidk2q1agziHZ6BB8dhuCKZz
	 SnPqxKbKY0U5K85Kqg4MHKYDZ3VvmIf1e2j4Ga6clTVERATEuxN9IvvfFZi8bJAzqt
	 1wdCZle+NJMEmOHJTL6YXmuMw5hNLoUwxDvG3uIH9yrhIfig4b+exAFMpECJfmBMTq
	 9ichqUlY5KwA1tf68hq84i4X0DAfiTRnVn9WoioOKXIjmp13SUKOOayqxH/wkgKehG
	 Su+UIWUkpIWQrFscCcJhut84tQDXv1F7Y+agwEONPDBx5vibHgkXLnQwKataAGW4mg
	 piBVJAHKt61jA==
Date: Wed, 15 May 2024 16:20:18 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, Simon Xue <xxm@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	stable@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] PCI: dw-rockchip: Fix initial PERST# GPIO value
Message-ID: <20240515212018.GA2139324@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240417164227.398901-1-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_142021_430256_4D44EC49 
X-CRM114-Status: GOOD (  24.54  )
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

On Wed, Apr 17, 2024 at 06:42:26PM +0200, Niklas Cassel wrote:
> PERST# is active low according to the PCIe specification.
> 
> However, the existing pcie-dw-rockchip.c driver does:
> gpiod_set_value(..., 0); msleep(100); gpiod_set_value(..., 1);
> When asserting + deasserting PERST#.
> 
> This is of course wrong, but because all the device trees for this
> compatible string have also incorrectly marked this GPIO as ACTIVE_HIGH:
> $ git grep -B 10 reset-gpios arch/arm64/boot/dts/rockchip/rk3568*
> $ git grep -B 10 reset-gpios arch/arm64/boot/dts/rockchip/rk3588*
> 
> The actual toggling of PERST# is correct.
> (And we cannot change it anyway, since that would break device tree
> compatibility.)
> 
> However, this driver does request the GPIO to be initialized as
> GPIOD_OUT_HIGH, which does cause a silly sequence where PERST# gets
> toggled back and forth for no good reason.
> 
> Fix this by requesting the GPIO to be initialized as GPIOD_OUT_LOW
> (which for this driver means PERST# asserted).
> 
> This will avoid an unnecessary signal change where PERST# gets deasserted
> (by devm_gpiod_get_optional()) and then gets asserted
> (by rockchip_pcie_start_link()) just a few instructions later.
> 
> Before patch, debug prints on EP side, when booting RC:
> [  845.606810] pci: PERST# asserted by host!
> [  852.483985] pci: PERST# de-asserted by host!
> [  852.503041] pci: PERST# asserted by host!
> [  852.610318] pci: PERST# de-asserted by host!
> 
> After patch, debug prints on EP side, when booting RC:
> [  125.107921] pci: PERST# asserted by host!
> [  132.111429] pci: PERST# de-asserted by host!
> 
> This extra, very short, PERST# assertion + deassertion has been reported
> to cause issues with certain WLAN controllers, e.g. RTL8822CE.
> 
> Fixes: 0e898eb8df4e ("PCI: rockchip-dwc: Add Rockchip RK356X host controller driver")
> Tested-by: Jianfeng Liu <liujianfeng1994@gmail.com>
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Niklas Cassel <cassel@kernel.org>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: stable@vger.kernel.org	# 5.15+

Applied by Krzysztof to pci/controller/rockchip.  His outgoing mail
queue was stuck, but I'm trying to squeeze this into v6.10.

> ---
> Changes since v2:
> -Picked up tag from Heiko.
> -Change subject (Bjorn).
> -s/PERST/PERST#/ (Bjorn).
> 
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index d6842141d384..a909e42b4273 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -240,7 +240,7 @@ static int rockchip_pcie_resource_get(struct platform_device *pdev,
>  		return PTR_ERR(rockchip->apb_base);
>  
>  	rockchip->rst_gpio = devm_gpiod_get_optional(&pdev->dev, "reset",
> -						     GPIOD_OUT_HIGH);
> +						     GPIOD_OUT_LOW);
>  	if (IS_ERR(rockchip->rst_gpio))
>  		return PTR_ERR(rockchip->rst_gpio);
>  
> -- 
> 2.44.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
