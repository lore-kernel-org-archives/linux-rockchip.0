Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ECA4C25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 18:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+X8WEoPU1QXlS6/FLdQQUwK8pbh3HOHZtv6b/Q/9AJE=; b=cKPLwDEzsqVXdo
	j7OgBxPjR6HS3UJEaGik5PBYkPh3VhDlMz8ElRaGlIAEcwnlGvawLIlus7BzN8sIel2GuoHiGhNai
	7llCo/mDVG6+rkGhT/DQOGvDDiIQVO7rdAo6ouvz/Xmds7r+KjtcWxa3agLLL7RGvEtkx1Eu5CWQ1
	esLF+J/iyL8XDKHQB+j9kY7iaq5Jb2yY366nV+Cu4LZvVRHpQVJ/sr7xuOJwwCF6xHqwrYvtyin3U
	U45R4BUuan9UZ+yXIIAxjApCn6tiOMBdw9EnvzYoUN3mtImDt+7u8GHsPctwSpeQvKQsRKDer+niD
	OpP07pCKVYoLUaj+4aKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEvpx-00000007EZT-3DEV;
	Wed, 05 Jun 2024 18:58:17 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEvpu-00000007EXq-1wNg
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Jun 2024 18:58:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A36F861917;
	Wed,  5 Jun 2024 18:58:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CA5BC32786;
	Wed,  5 Jun 2024 18:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717613893;
	bh=edwYIQhi5xJlid5p6CUQtIooEcXgYOFH67Ql7fSl3LU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o/WvTLK9S3cDugTGwh4kH5BuHLNJQ2sMV0RUiVIC5JBQOyX5Lzv/l7h7hgAbJ7OaU
	 VYL1myoqW9NVfTpjZ7GRGpsTRDcwNB01jZIE1sNwlwdhFvGxaMUDFYfB/d8iiEOZ0e
	 4bwkjLKdawwnXKK8tgiCfXtTrtX2RcFRMTYFboGo/RGGVIxCMl2AgD09slNXSm/9ew
	 gNFibCi7KS4DN7c5CTq7v5bS64/frimmJj8rGwGqFBt/qlDDEsOpjIRCmjiTQFM52a
	 200omJjc33t+0KfmNwHVHs61Y+6gFtAS3JuOSqT0zIF4odJEr0Xs2Mh23MYWMLJiFO
	 eoTcOHbrrbB0g==
Date: Wed, 5 Jun 2024 20:58:06 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 10/13] PCI: dw-rockchip: Add endpoint mode support
Message-ID: <ZmC1PihX_URtZkiA@ryzen.lan>
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
 <20240529-rockchip-pcie-ep-v1-v4-10-3dc00fe21a78@kernel.org>
 <20240605081753.GK5085@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240605081753.GK5085@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_115814_605615_EB8B6C35 
X-CRM114-Status: GOOD (  28.42  )
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

On Wed, Jun 05, 2024 at 01:47:53PM +0530, Manivannan Sadhasivam wrote:
> On Wed, May 29, 2024 at 10:29:04AM +0200, Niklas Cassel wrote:
> > The PCIe controller in rk3568 and rk3588 can operate in endpoint mode.
> > This endpoint mode support heavily leverages the existing code in
> > pcie-designware-ep.c.
> > 
> > Add support for endpoint mode to the existing pcie-dw-rockchip glue
> > driver.
> > 
> > Signed-off-by: Niklas Cassel <cassel@kernel.org>
> 
> Couple of comments below. With those addressed,
> 
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> > ---
> >  drivers/pci/controller/dwc/Kconfig            |  17 ++-
> >  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 210 ++++++++++++++++++++++++++
> >  2 files changed, 224 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
> > index 8afacc90c63b..9fae0d977271 100644
> > --- a/drivers/pci/controller/dwc/Kconfig
> > +++ b/drivers/pci/controller/dwc/Kconfig
> > @@ -311,16 +311,27 @@ config PCIE_RCAR_GEN4_EP
> >  	  SoCs. To compile this driver as a module, choose M here: the module
> >  	  will be called pcie-rcar-gen4.ko. This uses the DesignWare core.
> >  
> > +config PCIE_ROCKCHIP_DW
> > +	bool
> 
> Where is this symbol used?

It is supposed to be used by
drivers/pci/controller/dwc/Makefile

such that the driver is compiled if either _EP or _HOST is selected, just
like how it is done for other drivers that support both in the same driver.
Looks like I missed to update Makefile...
Good catch, thank you!


> > +static irqreturn_t rockchip_pcie_ep_sys_irq_thread(int irq, void *arg)
> > +{
> > +	struct rockchip_pcie *rockchip = arg;
> > +	struct dw_pcie *pci = &rockchip->pci;
> > +	struct device *dev = pci->dev;
> > +	u32 reg, val;
> > +
> > +	reg = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_INTR_STATUS_MISC);
> > +
> > +	dev_dbg(dev, "PCIE_CLIENT_INTR_STATUS_MISC: %#x\n", reg);
> > +	dev_dbg(dev, "LTSSM_STATUS: %#x\n", rockchip_pcie_get_ltssm(rockchip));
> > +
> > +	if (reg & PCIE_LINK_REQ_RST_NOT_INT) {
> > +		dev_dbg(dev, "hot reset or link-down reset\n");
> > +		dw_pcie_ep_linkdown(&pci->ep);
> > +	}
> > +
> > +	if (reg & PCIE_RDLH_LINK_UP_CHGED) {
> > +		val = rockchip_pcie_get_ltssm(rockchip);
> > +		if ((val & PCIE_LINKUP) == PCIE_LINKUP) {
> > +			dev_dbg(dev, "link up\n");
> > +			dw_pcie_ep_linkup(&pci->ep);
> > +		}
> > +	}
> > +
> > +	rockchip_pcie_writel_apb(rockchip, reg, PCIE_CLIENT_INTR_STATUS_MISC);
> 
> It is recommended to clear the IRQs at the start of the handler (after status
> read).

Can you quote a reference in the databook to back this recommendation?

Otherwise I would lean towards keeping it like it is, since this is how
it looks in the downstream driver (that *should* be well proven), and it
also matches how it's done in dra7xx.

(And since you ack only the events you read, you can not accidentally
clear another type of event.)


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
