Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41A08C71136
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 22:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=cUSzfhg1dQexAwF92uOUAXXBVUX+UD+MvPA4CFgt0fQ=; b=f8ZaaaC4NBtbSH
	FYdA/po2bVGUdNnJMmUwXkouuOW+bvhg88CW/qGVsd9QiocHW2hSed3YSu+bEfnh+QQvSaetaaPj5
	E0A3FX26rqs4k9CjligfUF41dOq18WnaVabHOWr2HTkiBDC6LHStXrlkZHXpDypD3JZ4FC3I0M7Br
	c0f0CNH7QIi3kZYcmc6h9ctsCHyUtrsIN470lT6Ty/98fkoVNMDRtXRIyC2YYLsRmctxvJtBdfOFT
	SY8cikVPma3wX8phhtLrY3FlHdAEGTS0utwfjbnoeRmTTGu6v+NMcjJ+jKCH14CKpV2lLbatJll4A
	Q+M+ONfqekg8GEfMno3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPU3R-0000000BUXW-0TtE;
	Wed, 11 Jun 2025 22:36:21 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPSmh-0000000BGCK-29Xm;
	Wed, 11 Jun 2025 21:15:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D15455C6327;
	Wed, 11 Jun 2025 21:12:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1EF3C4CEE3;
	Wed, 11 Jun 2025 21:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749676498;
	bh=rzGnHBq3q590xLCbFEMjq52KGw0cqgfhq4h1W1pnXmo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=cLuJmhWiSA+SUB9IKwBOBYkKtWD2pUR8aNEnIyJ/vV00KzrMsSYxVbGxuffGL9ivF
	 EQdHhIaV3Oa9gxz4qr17bku5aKLPEegq5EjBrBQ4/AvkyHYZHGH+iLtPxNG871pbQU
	 gULKcV0XgAEO32DRJosLowzK8zMQ/8Qk0Vl2xltfb1BAd1BrNXNkzqjjeMaIVGfiOg
	 MTrmH/ri8nbkxtdQHmrN1uKIUqQeMPrg+Urg3o8nSRchpv0wVdTSszB2Pt5JPMFomi
	 4I+FwxLJNelb/8BDzfn0gmXKKhv4kV51sUd7ywnnsqJBZWp8EAhX3CCjUShKOX61R3
	 7lmgLdZ4FYXxQ==
Date: Wed, 11 Jun 2025 16:14:56 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Laszlo Fiat <laszlo.fiat@proton.me>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/4] PCI: dw-rockchip: Do not enumerate bus before
 endpoint devices are ready
Message-ID: <20250611211456.GA869983@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250611105140.1639031-7-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_141459_638993_F810B7B6 
X-CRM114-Status: GOOD (  24.15  )
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

On Wed, Jun 11, 2025 at 12:51:42PM +0200, Niklas Cassel wrote:
> Commit ec9fd499b9c6 ("PCI: dw-rockchip: Don't wait for link since we can
> detect Link Up") changed so that we no longer call dw_pcie_wait_for_link(),
> and instead enumerate the bus directly after receiving the Link Up IRQ.
> 
> This means that there is no longer any delay between link up and the bus
> getting enumerated.

Minor quibble about "no longer any delay": dw_pcie_wait_for_link()
doesn't contain any explicit delay *after* we notice the link is up,
so we didn't guarantee sufficient delay even before ec9fd499b9c6.

If the link came up before the first check, dw_pcie_wait_for_link()
didn't delay at all.  Otherwise, it delayed 90ms * N, and we have no
idea when in the 90ms period the link came up, so the post link-up
delay was effectively some random amount between 0 and 90ms.

I would propose something like:

  PCI: dw-rockchip: Wait PCIE_T_RRS_READY_MS after link-up IRQ

  Per PCIe r6.0, sec 6.6.1, software must generally wait a minimum of
  100ms (PCIE_T_RRS_READY_MS) after Link training completes before
  sending a Configuration Request.

  Prior to ec9fd499b9c6 ("PCI: dw-rockchip: Don't wait for link since
  we can detect Link Up"), dw-rockchip used dw_pcie_wait_for_link(),
  which waited between 0 and 90ms after the link came up before we
  enumerate the bus, and this was apparently enough for most devices.

  After ec9fd499b9c6, rockchip_pcie_rc_sys_irq_thread() started
  enumeration immediately when handling the link-up IRQ, and devices
  (e.g., Laszlo Fiat's PLEXTOR PX-256M8PeGN NVMe SSD) may not be ready
  to handle config requests yet.

  Delay PCIE_T_RRS_READY_MS after the link-up IRQ before starting
  enumeration.

> As per PCIe r6.0, sec 6.6.1, a Downstream Port that supports Link speeds
> greater than 5.0 GT/s, software must wait a minimum of 100 ms after Link
> training completes before sending a Configuration Request.
> 
> Add this delay in the threaded link up IRQ handler in order to satisfy
> the requirements of the PCIe spec.
> 
> Laszlo Fiat reported (off-list) that his PLEXTOR PX-256M8PeGN NVMe SSD is
> no longer functional, and simply reverting commit ec9fd499b9c6 ("PCI:
> dw-rockchip: Don't wait for link since we can detect Link Up") makes his
> SSD functional again. Adding the 100 ms delay as required by the spec also
> makes the SSD functional again.
> 
> Cc: Laszlo Fiat <laszlo.fiat@proton.me>
> Fixes: ec9fd499b9c6 ("PCI: dw-rockchip: Don't wait for link since we can detect Link Up")

I would argue that 0e898eb8df4e ("PCI: rockchip-dwc: Add Rockchip
RK356X host controller driver") is the right Fixes: commit here
because dw_pcie_wait_for_link() *never* waited the required time, and
it's quite possible that other devices don't work correctly.  The
delay was about 90ms - <time required for link training>, so could be
significantly less than 100ms.

> Signed-off-by: Niklas Cassel <cassel@kernel.org>
> ---
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index 93171a392879..a941a239cbfc 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -459,6 +459,13 @@ static irqreturn_t rockchip_pcie_rc_sys_irq_thread(int irq, void *arg)
>  	if (reg & PCIE_RDLH_LINK_UP_CHGED) {
>  		if (rockchip_pcie_link_up(pci)) {
>  			dev_dbg(dev, "Received Link up event. Starting enumeration!\n");
> +			/*
> +			 * As per PCIe r6.0, sec 6.6.1, a Downstream Port that
> +			 * supports Link speeds greater than 5.0 GT/s, software
> +			 * must wait a minimum of 100 ms after Link training
> +			 * completes before sending a Configuration Request.
> +			 */

I think the comment at the PCIE_T_RRS_READY_MS definition should be
enough (although it might need to be updated to mention link-up).
This delay is going to be a standard piece of every driver, so it
won't require special notice.

> +			msleep(PCIE_T_RRS_READY_MS);
>  			/* Rescan the bus to enumerate endpoint devices */
>  			pci_lock_rescan_remove();
>  			pci_rescan_bus(pp->bridge->bus);
> -- 
> 2.49.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
