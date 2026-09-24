Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DD17C98311
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 10:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zkbre7QK0AmSN/ERrtRcK9GxdGg/eEoQgc98EemF4jo=; b=PSNNUQ01NFgv78
	B12JqU+24T6EjWPvABE9B6lr8F3NC45nBrloqK9qFv6WEmOtd563GjfG1vPeJp/hMNImGoShvPKWA
	3eZtwmSqAcPiV22xUbl9kAb6/chu7zIlRD7FK94q9mHpnUt8bzypMOlsgkvzeqw/sRvrFpE+02V/V
	tTdAZAMoVI22Dx0mndejr9BxCR/Mzf8Mb9uK9gOO5RXGsGcfI4SQvb3EwjSTplVvplh9ZTtGmLlPY
	YRCRgPpAIABEM+OywV9WaMi2vpTB8WO8HT0u7xDhHU/UsnB5oziFQkKRpOZzMautGI4uIUsqdn0Qu
	87G4AVcuYgMTcqZP3KUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9gWq-0000000AgeB-3jIG;
	Thu, 24 Sep 2026 10:18:12 +0000
Received: from out-232.mta0.migadu.com ([2001:41d0:1004:224b::e8] helo=mta0.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9gWn-0000000Agd9-1QJq
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 10:18:11 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=JWr0NNjXQImzVIa+BZdcSYF6v2HZGC8+Dsd4ySZ+oq8=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1790245086; v=1; x=1790849886;
 b=hUMYvILhafahfaPkCnqVLqnZhFMZEyomL7AmnA4isFZcZsW+lplPAisbRGRHfD5wmjhx/tdk
 +z7B4EHXG4kOudpE5Mm5cq62eOL/bVUPhxVRvox516uH+V0feAsU89dm5VCHsu9LgyQg9OZjzAj
 O30uEVnSChASd5kOYRpNymvH7tXU1eHuczo1CfJ41WXFTIBWTOXii1tfwUcLDjHv5EoXWBfMO0o
 qX7RaJXtIJ0QXhhTWB/WartzTNOwKfxjVygkEJGb2k2R8NHJM3Nx+tCPmXLQcJA1oeYJehVrEPz
 XviU/a3BNVKzFUXPiSS/wM/8KI8cZv+Z21dfjbOnh9qKA==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 75bbed6db142c758;
	Thu, 24 Sep 2026 10:17:56 +0000
X-Mizu-Trace-ID: 75bbed6db142c758
X-Migadu-Flow: FLOW_OUT
Mime-Version: 1.0
Date: Thu, 24 Sep 2026 12:17:54 +0200
Message-Id: <DLNGWXNFBWAP.2Z0ELO7NROZTC@cknow-tech.com>
Cc: <linux-rockchip@lists.infradead.org>, <linux-pci@vger.kernel.org>,
 "Niklas Cassel" <cassel@kernel.org>, "Diederik de Haas"
 <diederik@cknow-tech.com>
Subject: Re: [PATCH v4] PCI: dw-rockchip: Move the INTx irq setup to probe
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Shawn Lin" <shawn.lin@rock-chips.com>, "Manivannan Sadhasivam"
 <mani@kernel.org>, "Bjorn Helgaas" <bhelgaas@google.com>
X-Mailer: aerc 0.22.0-24-g39041fd9f179
References: <1790222793-77182-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1790222793-77182-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_031809_795784_FDB0F6E0 
X-CRM114-Status: GOOD (  29.32  )
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

On Thu Sep 24, 2026 at 6:06 AM CEST, Shawn Lin wrote:
> Since commit b376b3ff9cb0 ("PCI: dw-rockchip: Implement .reset_root_port()
> and use for link down"), .reset_root_port() re-runs the host ops .init()
> callback to reprogram the Root Complex after a controller reset. That
> works for the register programming, but .init() is not re-entrant: it
> also creates the INTx irq domain and installs the chained INTx handler.
> Every root port reset therefore ends up with a second irq domain
> registered for the same fwnode: the previous one is leaked, as it is
> never removed, and worse, the INTx virqs of the downstream PCI devices
> were allocated in the previous irq domain and are never re-mapped, while
> the chained handler now looks up virqs in the new, empty domain. After a
> link down recovery, INTx interrupts are silently lost.
>
> Fix it by moving the of_irq_get_byname() lookup, the INTx irq domain
> creation and the chained handler installation out of .init() and into
> rockchip_pcie_configure_rc(), just before dw_pcie_host_init(). The
> lookup has to happen before the host is initialized, because
> dw_pcie_host_init() enumerates the bus and probes the downstream
> devices, and pci_assign_irq() maps their INTx interrupts at that point:
> if the domain does not exist yet, the mapping fails and the devices end
> up without a usable INTx. This also mirrors how the qcom driver requests
> its global IRQ, and leaves .init() with nothing but idempotent register
> programming, so both .reset_root_port() and dw_pcie_resume_noirq() can
> safely re-run it. Re-running of_irq_get_byname() on every resume is also
> gone.

While with only patch 1 of v3 I still got (5x) this warning:
  irq: no irq domain found for legacy-interrupt-controller !
but no more stack traces.

With v4 there are no stack traces and no more irq warnings.
My NVMe drive, Ethernet NIC (also PCIe based) and both MT7925 based Wi-Fi
and Bluetooth work fine, so feel free to include

Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # NanoPC-T6 Plus

Cheers,
  Diederik

> Fixes: b376b3ff9cb0 ("PCI: dw-rockchip: Implement .reset_root_port() and use for link down")
> Suggested-by: Niklas Cassel <cassel@kernel.org>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
>
> Changes in v4:
> - drop the code comment (Niklas)
> - create the INTx irq domain before dw_pcie_host_init() instead of
>   after it. dw_pcie_host_init() enumerates the bus and probes the
>   downstream devices, and their INTx interrupts get mapped at that
>   point, so registering the domain afterwards left every downstream
>   device without a usable INTx (flagged by the Sashiko review).
> - this also removes the failing steps behind dw_pcie_host_init(), so
>   there is no error path left that would return with the root bus
>   registered and the rockchip structure about to be freed (flagged by
>   the Sashiko review).
>
> Changes in v3:
> - split devm-managed part into a seperate patch
>
> Changes in v2:
> - Moved the of_irq_get_byname() lookup, the INTx irq domain creation
>   and the chained handler installation out of the host ops .init()
>   callback into rockchip_pcie_configure_rc(), right after
>   dw_pcie_host_init(), as suggested by Niklas Cassel. This supersedes
>   v1 patch 1/2, as .init() no longer creates the irq domain, and
>   removes the rockchip_pcie_host_hw_init() helper from v1.
> - Made the INTx irq domain devm-managed with
>   devm_irq_domain_instantiate() and uninstall the chained handler
>   through a devres action, addressing the probe failure leak and
>   use-after-free flagged by the Sashiko review.
>
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 27 +++++++++++++--------------
>  1 file changed, 13 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index 1497686..bd86e32c 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -422,23 +422,9 @@ static void rockchip_pcie_stop_link(struct dw_pcie *pci)
>  static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
>  {
>  	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> -	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
> -	struct device *dev = rockchip->pci.dev;
> -	int irq, ret;
> -
> -	irq = of_irq_get_byname(dev->of_node, "legacy");
> -	if (irq < 0)
> -		return irq;
>  
>  	pci->dbi_base2 = pci->dbi_base + PCIE_TYPE0_HDR_DBI2_OFFSET;
>  
> -	ret = rockchip_pcie_init_irq_domain(rockchip);
> -	if (ret < 0)
> -		dev_err(dev, "failed to init irq domain\n");
> -
> -	irq_set_chained_handler_and_data(irq, rockchip_pcie_intx_handler,
> -					 rockchip);
> -
>  	rockchip_pcie_configure_l1ss(pci);
>  	rockchip_pcie_enable_l0s(pci);
>  	pp->bridge->reset_root_port = rockchip_pcie_rc_reset_root_port;
> @@ -731,6 +717,19 @@ static int rockchip_pcie_configure_rc(struct platform_device *pdev,
>  				 PCIE_CLIENT_SET_MODE(PCIE_CLIENT_MODE_RC),
>  				 PCIE_CLIENT_GENERAL_CON);
>  
> +	irq = of_irq_get_byname(dev->of_node, "legacy");
> +	if (irq < 0)
> +		return irq;
> +
> +	ret = rockchip_pcie_init_irq_domain(rockchip);
> +	if (ret < 0) {
> +		dev_err(dev, "failed to init irq domain\n");
> +		return ret;
> +	}
> +
> +	irq_set_chained_handler_and_data(irq, rockchip_pcie_intx_handler,
> +					 rockchip);
> +
>  	pp = &rockchip->pci.pp;
>  	pp->ops = &rockchip_pcie_host_ops;
>  



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
