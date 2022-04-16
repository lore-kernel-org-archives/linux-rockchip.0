Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A08CC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Apr 2022 23:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=FO4arXZ9YpTVn4IeY8FQRhWkM6GF9AZ9JTP9+xuka30=; b=AJt22HMXWr67vj
	Df9bbWU18KnMS3qw05bq2guUwYg5H0sKHtv+qb0DR7QbEtU6sF2CsU/EoNJCBU6YcYAz6Zirc8x8K
	BgHIIVsID2fbkpcV1qgAR6PueuOV3g8AzdpU90DXw1CWsfanfVxPvxFzneBn1uHKXqwWcQdxtOCse
	oCT4xreaKOBZmsGyNSWG2bxLpwQRyc934bDtl2MUNDs8x5MtGho/O8PCQg9GEJurtBy2XRZ6+BaI/
	D0oosWtzpQkmR3uKgdKB1KxjPsGgGfVLALdGD/XbvKzsQRZndjaxazCA9x21ApSoDX69SUyMy/08g
	VJRfei06qTxmGb0wE4+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfrsh-00Df6y-6v; Sat, 16 Apr 2022 23:31:08 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfrsU-00Df4K-VR; Sat, 16 Apr 2022 23:30:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 75DB1B80122;
 Sat, 16 Apr 2022 23:30:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E860DC385A3;
 Sat, 16 Apr 2022 23:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650151849;
 bh=nd58mF27wY5dwLAgcNLOqzjElU7YpZR3Sqgx6KMTHsQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=CxkZ57ZY0YSf0tqM3LLSzmXfOTlRCIFafAFh8ewm7kECNWlAsOQD0hn8/YaEa8D4/
 AkZ/SBqlDh/2qX0SyhIKeKoPhP+u06oXkDlw+w57iVvLuG0o8JcwQxqr56MtjN7s2D
 IgFYIjIrJmvRY7bWhgVfaXR8KWnPWhMheaW8ePLY1tbfBcEokJrVf9lZ4DhFvdihXV
 9BFdl8PU4cWHxHRFiit2boF1OrYIEUFhWXF53ey1CcV3B+LYW2EbAsx68TkMTvO3f3
 6osWFM2d7qpf4Z4laoiC86U+Wsm194awp7BmnnCYBtVPaiKVzgrtjDs/FWrBW2Ipe6
 /Iu4b2l2XBuEg==
Date: Sat, 16 Apr 2022 18:30:47 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Frank Wunderlich <linux@fw-web.de>, Rob Herring <robh+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
 Frank Wunderlich <frank-w@public-files.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
Subject: Re: [RFC/RFT 4/6] PCI: rockchip-dwc: add pcie bifurcation
Message-ID: <20220416233047.GA938296@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220416135458.104048-5-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220416_163055_340076_828D7721 
X-CRM114-Status: GOOD (  21.44  )
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

On Sat, Apr 16, 2022 at 03:54:56PM +0200, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> PCIe Lanes can be split to 2 slots with bifurcation.
> Add support for this in existing pcie driver.

Please s/pcie/PCIe/ in subject and above to be consistent.  You also
have kind of a random usage in other patches.

Mention the DT property used for this in the commit log.

Is the "rockchip,bifurcation" DT property something that should be
generalized so it's not rockchip-specific?  Other controllers are
likely to support similar functionality.

> Co-developed-by: Peter Geis <pgwipeout@gmail.com>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index 863374604fb1..1b0c2115b32e 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -20,6 +20,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/regmap.h>
>  #include <linux/reset.h>
> +#include <linux/phy/pcie.h>
>  
>  #include "pcie-designware.h"
>  
> @@ -59,6 +60,7 @@ struct rockchip_pcie {
>  	struct regulator                *vpcie3v3;
>  	struct irq_domain		*irq_domain;
>  	raw_spinlock_t			irq_lock;
> +	bool				bifurcation;
>  };
>  
>  static int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip,
> @@ -273,6 +275,12 @@ static int rockchip_pcie_phy_init(struct rockchip_pcie *rockchip)
>  		return dev_err_probe(dev, PTR_ERR(rockchip->phy),
>  				     "missing PHY\n");
>  
> +	if (rockchip->bifurcation) {
> +		ret = phy_set_mode_ext(rockchip->phy, PHY_MODE_PCIE, PHY_MODE_PCIE_BIFURCATION);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	ret = phy_init(rockchip->phy);
>  	if (ret < 0)
>  		return ret;
> @@ -345,6 +353,9 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>  		}
>  	}
>  
> +	if (device_property_read_bool(dev, "rockchip,bifurcation"))
> +		rockchip->bifurcation = true;
> +
>  	ret = rockchip_pcie_phy_init(rockchip);
>  	if (ret)
>  		goto disable_regulator;
> -- 
> 2.25.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
