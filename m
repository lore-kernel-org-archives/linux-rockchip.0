Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 851EBC001DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 16:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tySpvsSLpEA54r+YhEfFJYbBsTANZ35wV5+I3Ee2Z+E=; b=Tl3e6NAhBkK9dN
	POXt2DpnmX44lSBhT2Og4EfCYj3/IHKk3/g9U36WEy/kLjNRAk9pBu0/WIna9c2jzdzmnoEHKqm1I
	OZapGSwcCVkr1DJC9nJKi697EnxQCdapjqpuBQVfiQAo97mJ2CYlc3fM3hWoNCX+p0p1CP/9sMPcx
	1HUAycbbqdhiZEC33w5dxh4rUWtOc20cls5pUV/H/f9QvFSaJGkI/UpfQt19l/BlMzEqa0KFWabFX
	IHZZNbcTJ9W0tfOnY88rr+GSIvj5wZst+cLrje/iM/vBVFtZuJdgBVD63CNEFpYP4kPoo9+Z9i0B0
	czLqMXeHNl4izkPmoyzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQWDQ-00Ghyj-1e;
	Mon, 31 Jul 2023 16:57:52 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQWD4-00GhEg-1W;
	Mon, 31 Jul 2023 16:57:34 +0000
Received: from jupiter.universe (dyndsl-091-248-210-008.ewe-ip-backbone.de [91.248.210.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 32C7A660711A;
	Mon, 31 Jul 2023 17:57:27 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1690822647;
	bh=npeFno7/4xXEliCLqiK0LPZUBtteZmocE1lXLzTmkRY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BhM0NQxBoHNCpFxRTlBMTy47J0nMxULpp7yTETbkLrKPBq/zHBN241Bg5fkW3mIac
	 u+t5bGt3gcwzqJzsZF6oBBaED5OBYGsjS6NVWAkThJL3J1f18sG/jDuVKH6pE9iGgc
	 TSrdouiUpNuH2wZBKtSF/sCZD5vSp7rerdYkIOzkrBiNEGV3AnN5+8WrXeU7tsCkRB
	 Xs5FpMI8WQZG/dmas5PmIwfQ39nnMfs/JFiY5fvpdLT50qynVJKioAZ8KBBDKPiRVL
	 MrCLIkVhiUJyIEDdA9hjB8QB3B+8tzamJkVkbQPd1+bk+95dZ9rSTsiS2U9xKbONlH
	 oQ3YLwRbEiB9g==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 2AAAC4800A5; Mon, 31 Jul 2023 18:57:25 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Serge Semin <fancer.lancer@gmail.com>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v4 2/5] dt-bindings: PCI: dwc: rockchip: Fix interrupt-names issue
Date: Mon, 31 Jul 2023 18:57:20 +0200
Message-Id: <20230731165723.53069-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230731165723.53069-1-sebastian.reichel@collabora.com>
References: <20230731165723.53069-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_095730_798077_148F66E1 
X-CRM114-Status: GOOD (  15.41  )
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

The RK356x (and RK3588) have 5 ganged interrupts. For example the
"legacy" interrupt combines "inta/intb/intc/intd" with a register
providing the details, which specific interrupt triggered. The
interrupts from the second level are part of the Synopsys DW PCIe
System Information Interface (SII). Some of them are listed in the
Interrupt Signals section, the others are mostly common SII output
signals. The grouping and the ganged interrupt controllers are
specific to the Rockchip implementation.

Currently the binding is not specifying these interrupts resulting
in a bunch of errors for all rk356x/rk3588 boards using PCIe.

Fix this by specifying the interrupts and add them to the example
to prevent regressions.

This changes the reference from snps,dw-pcie.yaml to
snps,dw-pcie-common.yaml, since the interrupts are vendor
specific and should not be listed in the generic file. The
only other bit from the generic binding are the reg-names,
which are overwritten by this binding.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/pci/rockchip-dw-pcie.yaml        | 43 ++++++++++++++++++-
 1 file changed, 42 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index a4f61ced5e88..7836b9a5547c 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -17,7 +17,8 @@ description: |+
   snps,dw-pcie.yaml.
 
 allOf:
-  - $ref: /schemas/pci/snps,dw-pcie.yaml#
+  - $ref: /schemas/pci/pci-bus.yaml#
+  - $ref: /schemas/pci/snps,dw-pcie-common.yaml#
 
 properties:
   compatible:
@@ -60,6 +61,39 @@ properties:
       - const: aux
       - const: pipe
 
+  interrupts:
+    items:
+      - description:
+          Combined system interrupt, which is used to signal the following
+          interrupts - phy_link_up, dll_link_up, link_req_rst_not, hp_pme,
+          hp, hp_msi, link_auto_bw, link_auto_bw_msi, bw_mgt, bw_mgt_msi,
+          edma_wr, edma_rd, dpa_sub_upd, rbar_update, link_eq_req, ep_elbi_app
+      - description:
+          Combined PM interrupt, which is used to signal the following
+          interrupts - linkst_in_l1sub, linkst_in_l1, linkst_in_l2,
+          linkst_in_l0s, linkst_out_l1sub, linkst_out_l1, linkst_out_l2,
+          linkst_out_l0s, pm_dstate_update
+      - description:
+          Combined message interrupt, which is used to signal the following
+          interrupts - ven_msg, unlock_msg, ltr_msg, cfg_pme, cfg_pme_msi,
+          pm_pme, pm_to_ack, pm_turnoff, obff_idle, obff_obff, obff_cpu_active
+      - description:
+          Combined legacy interrupt, which is used to signal the following
+          interrupts - inta, intb, intc, intd
+      - description:
+          Combined error interrupt, which is used to signal the following
+          interrupts - aer_rc_err, aer_rc_err_msi, rx_cpl_timeout,
+          tx_cpl_timeout, cor_err_sent, nf_err_sent, f_err_sent, cor_err_rx,
+          nf_err_rx, f_err_rx, radm_qoverflow
+
+  interrupt-names:
+    items:
+      - const: sys
+      - const: pmc
+      - const: msg
+      - const: legacy
+      - const: err
+
   msi-map: true
 
   num-lanes: true
@@ -108,6 +142,7 @@ unevaluatedProperties: false
 
 examples:
   - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
 
     bus {
         #address-cells = <2>;
@@ -127,6 +162,12 @@ examples:
                           "aclk_dbi", "pclk",
                           "aux";
             device_type = "pci";
+            interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 159 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 158 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 157 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH>;
+            interrupt-names = "sys", "pmc", "msg", "legacy", "err";
             linux,pci-domain = <2>;
             max-link-speed = <2>;
             msi-map = <0x2000 &its 0x2000 0x1000>;
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
