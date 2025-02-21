Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 021D3C021B3
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Feb 2025 20:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yi7966yc3m4dmRjITmQvnjex84kNj2D0UHrVU8+NFWA=; b=BlCfpHWh6O5qh+
	8E7vYw76LRV9jY9VpwCoa5JwVLuo6RMNKW1dMWdn1M4CCaAyOXEmM2sIIszIK0Ltsvq56Bia+WJrm
	bHpk7bXNHrG8aQejd4ZduMJR3YXF03gsB2DFSTYnfGfvXXMtjQ1euJwvFoRclEwuP1YPHCSepS1mt
	iy2qsSRC4rKquunahOWX94hYsBkXXuiCqQiNmv84GEivLkBUW0wh4l6jxmYjX/nMFLd9HR5zEXjHD
	g3CQn4Z0orH53ufU/KhZCyFCsAfPbcRsnw++gwpdv2KOVcdl3lPLi9b9HzINih2dGkqBZ/TUrDDVx
	FCmt8s7E++7nU5K+v1lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlZhi-00000006nuE-1ZfC;
	Fri, 21 Feb 2025 20:32:58 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlZby-00000006mk9-3ksN;
	Fri, 21 Feb 2025 20:27:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9E2DC5C6D9F;
	Fri, 21 Feb 2025 20:26:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D844EC4CED6;
	Fri, 21 Feb 2025 20:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740169621;
	bh=omw9Xk2GUaGYZHJp+OWs2mQdBQfQtllVg5cCAlRAdds=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=M5hM/b07D9l80ndsPjYbtELZE2g50mcX+dAdsf/sfl3e0kFXuvm9uC613fwKV4iM/
	 BnCJrBS869sxmwm8jsClTDKTZPiV28auojHMmQY7LEgrd2v5z5JBbGSnbzgKvoOWEB
	 OepChQ01pzcRGEASdBlbh/Vt60oEwZqA6ZgGy9kOieIgzzl7jEO2BtNsfqTXvA/SFv
	 YgSoBNEy8L0lf2gzdvjY3HWM7cCnDURSDIAuWEGOlF9BcVYvdjfHw3ge4nKKqulS6w
	 vXAUN46JDUWzsKhPW6ldDS4GnUJ3bJ/KEdJJlwB5UNkZuYfilJazrStPKC78sefkfR
	 yEzRa2nWk021w==
From: Niklas Cassel <cassel@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 2/2] PCI: dw-rockchip: hide broken ATS capability
Date: Fri, 21 Feb 2025 21:26:48 +0100
Message-ID: <20250221202646.395252-4-cassel@kernel.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250221202646.395252-3-cassel@kernel.org>
References: <20250221202646.395252-3-cassel@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3476; i=cassel@kernel.org; h=from:subject; bh=omw9Xk2GUaGYZHJp+OWs2mQdBQfQtllVg5cCAlRAdds=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNJ3POyKVZ34w/sUT7mY3k2T0PXW5QGfb+XFipRJexolF 0ZFTjfrKGVhEONikBVTZPH94bK/uNt9ynHFOzYwc1iZQIYwcHEKwET6TzH84bgu1Ni7NPzq2/8z 1uzOEnpYo68jGuUkEBWedmVvQiPHd0aGb2ucr/3+Nc1/wc9nfVv3XnkQe3X39YdaVp3b5s/5Zb9 9HRcA
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_122703_039429_7C9953C0 
X-CRM114-Status: GOOD (  18.06  )
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

When running the rk3588 in endpoint mode, with an Intel host with IOMMU
enabled, the host side prints:
DMAR: VT-d detected Invalidation Time-out Error: SID 0

When running the rk3588 in endpoint mode, with an AMD host with IOMMU
enabled, the host side prints:
iommu ivhd0: AMD-Vi: Event logged [IOTLB_INV_TIMEOUT device=63:00.0 address=0x42b5b01a0]

Usually, to handle these issues, we add a quirk for the PCI vendor and
device ID in drivers/pci/quirks.c with quirk_no_ats(). That is because
we cannot usually modify the capabilities on the EP side.

In this case, we can modify the capabilties on the EP side. Thus, hide the
broken ATS capability on rk3588 when running in EP mode. That way,
we don't need any quirk on the host side, and we see no errors on the host
side, and we can run pci_endpoint_test successfully, with the IOMMU
enabled on the host side.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 836ea10eafbb..2be005c1a161 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -242,6 +242,51 @@ static const struct dw_pcie_host_ops rockchip_pcie_host_ops = {
 	.init = rockchip_pcie_host_init,
 };
 
+/*
+ * ATS does not work on rk3588 when running in EP mode.
+ * After a host has enabled ATS on the EP side, it will send an IOTLB
+ * invalidation request to the EP side. The rk3588 will never send a completion
+ * back and eventually the host will print an IOTLB_INV_TIMEOUT error, and the
+ * EP will not be operational. If we hide the ATS cap, things work as expected.
+ */
+static void rockchip_pcie_ep_hide_broken_ats_cap_rk3588(struct dw_pcie_ep *ep)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
+	struct device *dev = pci->dev;
+	unsigned int spcie_cap_offset, next_cap_offset;
+	u32 spcie_cap_header, next_cap_header;
+
+	/* only hide the ATS cap for rk3588 running in EP mode */
+	if (!of_device_is_compatible(dev->of_node, "rockchip,rk3588-pcie-ep"))
+		return;
+
+	spcie_cap_offset = dw_pcie_find_ext_capability(pci, PCI_EXT_CAP_ID_SECPCI);
+	if (!spcie_cap_offset)
+		return;
+
+	spcie_cap_header = dw_pcie_readl_dbi(pci, spcie_cap_offset);
+	next_cap_offset = PCI_EXT_CAP_NEXT(spcie_cap_header);
+
+	next_cap_header = dw_pcie_readl_dbi(pci, next_cap_offset);
+	if (PCI_EXT_CAP_ID(next_cap_header) != PCI_EXT_CAP_ID_ATS)
+		return;
+
+	/* clear next ptr */
+	spcie_cap_header &= ~GENMASK(31, 20);
+
+	/* set next ptr to next ptr of ATS_CAP */
+	spcie_cap_header |= next_cap_header & GENMASK(31, 20);
+
+	dw_pcie_dbi_ro_wr_en(pci);
+	dw_pcie_writel_dbi(pci, spcie_cap_offset, spcie_cap_header);
+	dw_pcie_dbi_ro_wr_dis(pci);
+}
+
+static void rockchip_pcie_ep_pre_init(struct dw_pcie_ep *ep)
+{
+	rockchip_pcie_ep_hide_broken_ats_cap_rk3588(ep);
+}
+
 static void rockchip_pcie_ep_init(struct dw_pcie_ep *ep)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
@@ -314,6 +359,7 @@ rockchip_pcie_get_features(struct dw_pcie_ep *ep)
 
 static const struct dw_pcie_ep_ops rockchip_pcie_ep_ops = {
 	.init = rockchip_pcie_ep_init,
+	.pre_init = rockchip_pcie_ep_pre_init,
 	.raise_irq = rockchip_pcie_raise_irq,
 	.get_features = rockchip_pcie_get_features,
 };
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
