Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C120ED2F7DD
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Oct 2024 01:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=98cEfVIRcFYLokQ77WhPQ0Ow15CYuwdrkEuIBikcj1s=; b=x3H7/HVdXE8Ltf
	jg67YKsxFxMt6+/jLosBJbh0td0+JFsx8ecxyXTz1ekRBZuVit9Ys0Za8Cyw/WsPrcTSuIITML+v6
	+awZNWPIbyzEHqXBAljvaXQ+vu1VqPoc4h1FsFAbGYheEYGMiYnhY6H/KZEAOVIvTqWiQa8nAlgbu
	LVen1NBA1zYVVpl/2hEAyz5xftTFK6KBJ7AoBoJRRpysIO+HDOB80Rlxc+mU5dE5o8ky2L+KVi4Fc
	UVbGTSbY4tkLaJwHf5jfUInpSy60W1OatCtYbWc28X8frocf1yb+mMpxjaogM89ZX9uUYFF5r5YPF
	/Msy5KO9L/suCmkpZK6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1FnD-0000000DUsA-0sH0;
	Thu, 17 Oct 2024 01:59:11 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Fn7-0000000DUmU-1YyJ
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Oct 2024 01:59:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A3D5DA40DE5;
	Thu, 17 Oct 2024 01:58:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87D5EC4CECF;
	Thu, 17 Oct 2024 01:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729130344;
	bh=7C0hw6Xvm/YDpj0Qd/1mzkBWX8qAwGyMmQLAjgMUqK8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=pu+jOt9WMdPC+tc7WU7kCqCAKrA6RW0lOOIV4Ch8NL2+KQQb7SuVfxd3vHIBzWGVt
	 AIzk94e0gZcPc81Hk6kaCFWsPH9vDM6TLEdJ84sdPUkbxk+lCKL4zx/nnLf/J3K/+A
	 qJp743NUARFFhTIqSEJByEaJx2XrxyWMm5JG2njWBKmCqlwfBRlMuR53X0Nqfi9D5+
	 Fe4hSs4+yWObsq8ycMDGNjKE0BlVpnf5yrexHZRVkM4oIPNnooDhoIEPHIy4q91LIx
	 FLPXtKZsW8X0id9Oxa2N9d4caULUo5G5qKrz87N0ITbE4yrG9yrK8jnR+06XMXEntE
	 WHStCHIKncwtg==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v5 06/14] PCI: rockchip-ep: Fix MSI IRQ data mapping
Date: Thu, 17 Oct 2024 10:58:41 +0900
Message-ID: <20241017015849.190271-7-dlemoal@kernel.org>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241017015849.190271-1-dlemoal@kernel.org>
References: <20241017015849.190271-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_185905_625338_7AAC617D 
X-CRM114-Status: GOOD (  13.94  )
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

The call to rockchip_pcie_prog_ep_ob_atu() used to map the PCI address
of MSI data to the memory window allocated on probe for IRQs is done
in rockchip_pcie_ep_send_msi_irq() assuming a fixed alignment to a
256B boundary of the PCI address.  This is not correct as the alignment
constraint for the RK3399 PCI mapping depends on the number of bits of
address changing in the mapped region. This leads to an unstable system
which sometimes work and sometimes does not (crashing on paging faults
when memcpy_toio() or memcpy_fromio() are used).

Similar to regular data mapping, the MSI data mapping must thus be
handled according to the information provided by
rockchip_pcie_ep_align_addr(). Modify rockchip_pcie_ep_send_msi_irq()
to use rockchip_pcie_ep_align_addr() to correctly program entry 0 of
the ATU for sending MSI IRQs.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index f6959f9b94b7..dcd1b5415602 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -379,9 +379,10 @@ static int rockchip_pcie_ep_send_msi_irq(struct rockchip_pcie_ep *ep, u8 fn,
 {
 	struct rockchip_pcie *rockchip = &ep->rockchip;
 	u32 flags, mme, data, data_mask;
+	size_t irq_pci_size, offset;
+	u64 irq_pci_addr;
 	u8 msi_count;
 	u64 pci_addr;
-	u32 r;
 
 	/* Check MSI enable bit */
 	flags = rockchip_pcie_read(&ep->rockchip,
@@ -417,18 +418,21 @@ static int rockchip_pcie_ep_send_msi_irq(struct rockchip_pcie_ep *ep, u8 fn,
 				       PCI_MSI_ADDRESS_LO);
 
 	/* Set the outbound region if needed. */
-	if (unlikely(ep->irq_pci_addr != (pci_addr & PCIE_ADDR_MASK) ||
+	irq_pci_size = ~PCIE_ADDR_MASK + 1;
+	irq_pci_addr = rockchip_pcie_ep_align_addr(ep->epc,
+						   pci_addr & PCIE_ADDR_MASK,
+						   &irq_pci_size, &offset);
+	if (unlikely(ep->irq_pci_addr != irq_pci_addr ||
 		     ep->irq_pci_fn != fn)) {
-		r = rockchip_ob_region(ep->irq_phys_addr);
-		rockchip_pcie_prog_ep_ob_atu(rockchip, fn, r,
-					     ep->irq_phys_addr,
-					     pci_addr & PCIE_ADDR_MASK,
-					     ~PCIE_ADDR_MASK + 1);
-		ep->irq_pci_addr = (pci_addr & PCIE_ADDR_MASK);
+		rockchip_pcie_prog_ep_ob_atu(rockchip, fn,
+					rockchip_ob_region(ep->irq_phys_addr),
+					ep->irq_phys_addr,
+					irq_pci_addr, irq_pci_size);
+		ep->irq_pci_addr = irq_pci_addr;
 		ep->irq_pci_fn = fn;
 	}
 
-	writew(data, ep->irq_cpu_addr + (pci_addr & ~PCIE_ADDR_MASK));
+	writew(data, ep->irq_cpu_addr + offset + (pci_addr & ~PCIE_ADDR_MASK));
 	return 0;
 }
 
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
