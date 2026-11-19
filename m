Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBDD9606A320
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 10:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UEYa7Jz+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=JOyFNfON
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9GkI+V+S9kLXicpZiqGGC3+goqTwBmbqCxx7OR6I1KU=; b=UEYa7Jz+McbE7kWDH+2fGqmbAt
	LNOUgRiiQnVFNHI4k3+CXJL4EoShTzK0Rvbxi3MBc2hLzk2L/Jm3zs4elmq+PHTI+el0/gjxNbQnm
	CBAgDxYVywMDQQ1whLxsuC65yPaM862wvrg8+jew7OI9RIqt1NTgEGNJ0rQ/ARr2xIoY8eA417XwE
	h1Ze8LzEu7ZUuxrFoR4TzJx4VNSBYtpqOJgvQWC3poUkVPDA192B7PdiNBEg732bV9VBPYRfOm1SI
	XzVFNCQuHPRjYZWmHYHaU7MFk7OmgnZiFZzxpn/r72ZbDGgEkPiFqo6IKcD6OgOQwQxilXrAGGAHo
	2TJNin2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTzoF-0000000Bc5f-3LvG;
	Thu, 19 Nov 2026 10:56:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTzoB-0000000Bc5Q-3lp4
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Nov 2026 10:56:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4719561B0F;
	Thu, 19 Nov 2026 10:56:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EC891F000C4;
	Thu, 19 Nov 2026 10:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795085763;
	bh=2qfdFmm+EK5/WIoFfY93b0W31Qp4fWf6153+VQwIbng=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JOyFNfON7b+fk5l9HHgmru3/M36Sr/2EtmEjap8EMjIF2JjAx+nr+DMDM4sMUpomN
	 5oKz0P9pY4oLjzzrgFgq8jLTcl5nTvoo0MHnPY7cNdbgzjDDA+fNecr55d5KxASuSs
	 gvg8df7hALRjVfn65OajrZwfGFJfdjB5WhEbIRFFjpm068R2RAT+8LuhvwSZ+x86aJ
	 EUJtP/X++0x6HIEHNRO7obI3LZCdPggzqkdL1SoYp6uS4Oeufxm3RETAylqm18a8/P
	 MLocrT2m42FDqATg9uBiVuY7Y/9yIc27QjUWZiC5Aa8uBK5ndblMfbYTFkHrne9nAp
	 8ngAgv0ioBWow==
Date: Thu, 19 Nov 2026 11:55:59 +0100
From: Niklas Cassel <cassel@kernel.org>
To: James Le Cuirot <chewi@gentoo.org>
Cc: Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: PCI: dw-rockchip: Unable to boot Quartz64 Model B from NVMe
 since reset changes
Message-ID: <av7Vvw5CpQo0gt1d@ryzen>
References: <08cc96c5171fc969b074371692e6d95d46eba60b.camel@gentoo.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <08cc96c5171fc969b074371692e6d95d46eba60b.camel@gentoo.org>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Wed, Nov 18, 2026 at 04:03:11PM +0000, James Le Cuirot wrote:
> Hello Wilfred,
> 
> Unfortunately, since your commit "PCI: dw-rockchip: Implement
> .reset_root_port() and use for link down" (b376b3ff9cb0527), I have been
> basically unable to boot my Quartz64 Model B from NVMe. Sometimes if I wait
> long enough, it will eventually work, albeit very slowly. If I revert this
> (and 4e9f69d08253) against 7.3.5, then it boots normally. Here is the relevant
> output.
> 
> rockchip-dw-pcie 3c0000000.pcie: host bridge /pcie@fe260000 ranges:
> rockchip-dw-pcie 3c0000000.pcie:       IO 0x00f4100000..0x00f41fffff -> 0x00f4100000
> rockchip-dw-pcie 3c0000000.pcie:      MEM 0x00f4200000..0x00f5ffffff -> 0x00f4200000
> rockchip-dw-pcie 3c0000000.pcie:      MEM 0x0300000000..0x033fffffff -> 0x0300000000
> rockchip-dw-pcie 3c0000000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, limit 8G
> rockchip-dw-pcie 3c0000000.pcie: PCIe Gen.2 x1 link up

Here the link is reported as being up, at Gen2 speed.


> rockchip-dw-pcie 3c0000000.pcie: PCI host bridge to bus 0000:00
> pci_bus 0000:00: root bus resource [bus 00-0f]
> pci_bus 0000:00: root bus resource [io  0x0000-0xfffff] (bus address [0xf4100000-0xf41fffff])
> pci_bus 0000:00: root bus resource [mem 0xf4200000-0xf5ffffff]
> pci_bus 0000:00: root bus resource [mem 0x300000000-0x33fffffff]
> pci 0000:00:00.0: [1d87:3566] type 01 class 0x060400 PCIe Root Port
> pci 0000:00:00.0: ROM [mem 0x00000000-0x0000ffff pref]
> pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> pci 0000:00:00.0:   bridge window [io  0x0000-0x0fff]
> pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff]
> pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff 64bit pref]
> pci 0000:00:00.0: supports D1 D2
> pci 0000:00:00.0: PME# supported from D0 D1 D3hot
> pci_bus 0000:01: busn_res: can not insert [bus 01-ff] under [bus 00-0f] (conflicts with (null) [bus 00-0f])
> pci 0000:01:00.0: [1e0f:0009] type 00 class 0x010802 PCIe Endpoint
> pci 0000:01:00.0: BAR 0 [mem 0x00000000-0x00003fff 64bit]
> pci 0000:01:00.0: 4.000 Gb/s available PCIe bandwidth, limited by 5.0 GT/s PCIe x1 link at 0000:00:00.0 (capable of 31.504 Gb/s with 8.0 GT/s PCIe x4 link)
> pci 0000:01:00.0: ASPM: default states L1
> pci 0000:00:00.0: bridge window [mem 0xf4200000-0xf42fffff]: assigned
> pci 0000:00:00.0: ROM [mem 0xf4300000-0xf430ffff pref]: assigned
> pci 0000:01:00.0: BAR 0 [mem 0xf4200000-0xf4203fff 64bit]: assigned
> pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> pci 0000:00:00.0:   bridge window [mem 0xf4200000-0xf42fffff]
> pci_bus 0000:00: resource 4 [io  0x0000-0xfffff]
> pci_bus 0000:00: resource 5 [mem 0xf4200000-0xf5ffffff]
> pci_bus 0000:00: resource 6 [mem 0x300000000-0x33fffffff]
> pci_bus 0000:01: resource 1 [mem 0xf4200000-0xf42fffff]
> pcieport 0000:00:00.0: PME: Signaling with IRQ 86
> pcieport 0000:00:00.0: AER: enabled with IRQ 95
> pcieport 0000:00:00.0: Recovering Root Port due to Link Down

Here you get a link down IRQ.

Why is the link going down?

You seem to have already trained in Gen2, and your board seems to only
support Gen2 (so even if it was related to speed change - normally a
speed should not trigger a link down - a speed change does not seem to
happen here).


Perhaps you can enable CONFIG_PCIE_DW_DEBUGFS and then look at
/sys/kernel/debug/dwc_pcie_<dev>/
to try to see if that gives any more information about why the link goes down.

Like Wilfred said, you could also try to disable ASPM.

Also make sure that your device is attached to the slot properly (and
hopefully you are not using any extender cables or similar).


I guess we could also try to clear the interrupt just before unmasking it,
to see if this is a spurious interrupt, something like:

--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -692,7 +692,7 @@ static int rockchip_pcie_configure_rc(struct platform_device *pdev,
        struct device *dev = &pdev->dev;
        struct dw_pcie_rp *pp;
        int irq, ret;
-       u32 val;
+       u32 reg, val;

        if (!IS_ENABLED(CONFIG_PCIE_ROCKCHIP_DW_HOST))
                return -ENODEV;
@@ -739,6 +739,9 @@ static int rockchip_pcie_configure_rc(struct platform_device *pdev,
                return ret;
        }

+       reg = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_INTR_STATUS_MISC);
+       rockchip_pcie_writel_apb(rockchip, reg, PCIE_CLIENT_INTR_STATUS_MISC);
+
        /* unmask hot reset/link-down reset */
        val = FIELD_PREP_WM16(PCIE_LINK_REQ_RST_NOT_INT, 0);
        rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_INTR_MASK_MISC);



Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
