Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1557EC4345F
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Apr 2024 15:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=QTPpqKw/YYiTH7uyk8m80UKNUUshEpEvQjBtAWoLRSs=; b=wdNeOkYMXk4uUN
	yt8heNQIgFCJHqOB9qit6rmDG9oVDSTRDZ48XPjmS5T0w4RuoYEN57cTqjVMLUj7T2C3iDbDEtYlD
	qEz0z2NDj6DGKRO2qd7Q4mblX865CPso3/Nnad4Jf2q60KxnAuOF5nLEre9qjHiB90Lw8bsd4MFdY
	fFwqWwPH7JLA7YYEaxRN3OoygoaLRFYAKPgq2A50zmNfGF3yQBWwIjht5s8CXbNVdmgs0NEnyBH6f
	d6fE0f4scJjm6advTi8V/zJnKO6Wt2C8mpqkv74jXpg4s389jf3WfWwZBS0IOOHgiOKccNhzcTd8m
	T9awh11JGLlfil1moahA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx75E-0000000GYdU-2IrZ;
	Wed, 17 Apr 2024 15:20:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx75A-0000000GYb6-25Cl;
	Wed, 17 Apr 2024 15:20:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E7F8E61509;
	Wed, 17 Apr 2024 15:20:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C669C072AA;
	Wed, 17 Apr 2024 15:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713367219;
	bh=bjG0OvVci60DYDmOstQK1av/d1jsvMQvEpItMyw5WyA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=oKNyUK2YWHX8izA/mUulk3F0nlFtMEadilpVR2vygtEwK0vfii3BK7XbujV5Lbozd
	 XSVXsrp79Ixbx/KQ17UpMtNKQDneMeCzlrh7itYCXyXqfIFtN75zTX9Gg5Ncd+lDju
	 BgaqIuEWgp7SPxmvmuyMun17Am84fsKkKDIQjxfZtcU+uCWxrMy3cM06DvHYwIptb7
	 cSw8QKj8TKldn0hNb9VetsJJ+96WCK4fum3C2ndFKKtJE63pJAgSF5dHhL8KqWRmCH
	 wd9WGvW1957MkjPjp4dcbmIr6bE7m26xwIcsXzUXdgSYud0y60mvZiNjMZIrc9r9kd
	 qOlxNve/9WPjw==
Date: Wed, 17 Apr 2024 10:20:17 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, Simon Xue <xxm@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	stable@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Fix GPIO initialization flag
Message-ID: <20240417152017.GA202515@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240416121522.269972-1-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_082020_885636_04E70862 
X-CRM114-Status: GOOD (  24.34  )
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

On Tue, Apr 16, 2024 at 02:15:22PM +0200, Niklas Cassel wrote:
> PERST is active low according to the PCIe specification.

Maybe update the subject to mention that this is about PERST# and
avoiding an unnecessary toggle.

Also maybe worth using "PERST#" here in the commit log to match the
spec and connect with the explicit GPIO levels.

> However, the existing pcie-dw-rockchip.c driver does:
> gpiod_set_value(..., 0); msleep(100); gpiod_set_value(..., 1);
> When asserting + deasserting PERST.
> 
> This is of course wrong, but because all the device trees for this
> compatible string have also incorrectly marked this GPIO as ACTIVE_HIGH:
> $ git grep -B 10 reset-gpios arch/arm64/boot/dts/rockchip/rk3568*
> $ git grep -B 10 reset-gpios arch/arm64/boot/dts/rockchip/rk3588*
> 
> The actual toggling of PERST is correct.
> (And we cannot change it anyway, since that would break device tree
> compatibility.)
> 
> However, this driver does request the GPIO to be initialized as
> GPIOD_OUT_HIGH, which does cause a silly sequence where PERST gets
> toggled back and forth for no good reason.
> 
> Fix this by requesting the GPIO to be initialized as GPIOD_OUT_LOW
> (which for this driver means PERST asserted).
> 
> This will avoid an unnecessary signal change where PERST gets deasserted
> (by devm_gpiod_get_optional()) and then gets asserted
> (by rockchip_pcie_start_link()) just a few instructions later.
> 
> Before patch, debug prints on EP side, when booting RC:
> [  845.606810] pci: PERST asserted by host!
> [  852.483985] pci: PERST de-asserted by host!
> [  852.503041] pci: PERST asserted by host!
> [  852.610318] pci: PERST de-asserted by host!
> 
> After patch, debug prints on EP side, when booting RC:
> [  125.107921] pci: PERST asserted by host!
> [  132.111429] pci: PERST de-asserted by host!
> 
> This extra, very short, PERST assertion + deassertion has been reported
> to cause issues with certain WLAN controllers, e.g. RTL8822CE.
> 
> Fixes: 0e898eb8df4e ("PCI: rockchip-dwc: Add Rockchip RK356X host controller driver")
> Tested-by: Jianfeng Liu <liujianfeng1994@gmail.com>
> Signed-off-by: Niklas Cassel <cassel@kernel.org>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: stable@vger.kernel.org	# 5.15+
> ---
> Changes since V1:
> -Picked up tags.
> -CC stable.
> -Clarified commit message.
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
