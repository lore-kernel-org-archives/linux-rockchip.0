Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88FEEC19F53
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 12:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7nICfAxnpTitUukPy/RfRlVhxqtfwECAWqUzGaJjFq0=; b=nqueJ3T5jGl7Hi
	ieX9fQiawGm7zSLCL1EevC3111//JMQfDhJeOnGS2JR8C42+QCijK6EI5Hw675SvWSK+PaLCv5ZOD
	xTrCfkkBp53w5njOxPw6jhESe5IKYI3yC7M1rtDg8gy1+/jc3w6Ia0jTalH4VCttCDfXdnKXlzViE
	oH5la6twgGtkceZwtcGlIRnU5gBirZVUNdqMINmHOGlpFeyhddQnHYXwiddfJkl6TemC+AKGBOGpj
	FT92EiEznbcn5gYWzHNCWbWyAihTVtpTSb/TwgGDEQrw2qKkqUySbJ74j2wYgVPu2nUt/T/ydDfyE
	iVN4V8dO5ontR6zShuTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mBg-00000006Ggh-16Px;
	Tue, 30 Apr 2024 12:02:20 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mBc-00000006Gcd-4B9R
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Apr 2024 12:02:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C8151CE1021;
	Tue, 30 Apr 2024 12:02:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3596CC4AF1A;
	Tue, 30 Apr 2024 12:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714478534;
	bh=FN05hy9jvB+E6GTH6BA3O2fKOPPC2nQRvjx6DsGtqeY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=pJWb5KQFQVbxuxIhHSuHiCd8i/KXkK06fvflLzA+2p1+o/7qpvTaoogdiazefxPpV
	 0AK4lMA3vNDC9Mt7cmW3Vq+gszJ0u4Sou+jRAVYeW7WMjz4le4L/s2iCzrxQ6oHphx
	 hFj+42lvSLYkAsOKajB2c8hLwiMfjef6eusdM7GZEfsJS+TbDNAJsfZDZuxJjI6IZp
	 uqKOLQKUgvHL+yBQgQTv/W1EFo0u+U312/IN/FoGsi44NXTRUe3It9d0XSGxg2Usia
	 JN3nudu8KkSEpnabqcNhObPYuYz2/8LZrUvlmJOyftHXcP85g8uRlfb2K3ng1kAR4L
	 Z+ImHV1aAqWhQ==
From: Niklas Cassel <cassel@kernel.org>
Date: Tue, 30 Apr 2024 14:01:01 +0200
Subject: [PATCH v2 04/14] dt-bindings: PCI: rockchip-dw-pcie: Prepare for
 Endpoint mode support
MIME-Version: 1.0
Message-Id: <20240430-rockchip-pcie-ep-v1-v2-4-a0f5ee2a77b6@kernel.org>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
In-Reply-To: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
To: Jingoo Han <jingoohan1@gmail.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Niklas Cassel <cassel@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Damien Le Moal <dlemoal@kernel.org>, Jon Lin <jon.lin@rock-chips.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=8019; i=cassel@kernel.org;
 h=from:subject:message-id; bh=FN05hy9jvB+E6GTH6BA3O2fKOPPC2nQRvjx6DsGtqeY=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNIM7m44vtpKIPD/esaFfBnTbjuF7Du9IvNRyLGYBeXGV
 b3TlnRc7ChlYRDjYpAVU2Tx/eGyv7jbfcpxxTs2MHNYmUCGMHBxCsBE7oUwMpxle2t6e7Wq3Z6w
 o/rNj7XSrhdJBX+dpOFV6RLvxpTDepGR4YXC9HMn4nRMzdJ7Unfw9tvOFvyiWzwrz//ryz1ZDZx
 hDAA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_050217_452053_23AC67C0 
X-CRM114-Status: GOOD (  15.70  )
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

Refactor the rockchip-dw-pcie binding to move generic properties to a new
rockchip-dw-pcie-common binding that can be shared by both RC and EP mode.

No functional change intended.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 .../bindings/pci/rockchip-dw-pcie-common.yaml      | 111 +++++++++++++++++++++
 .../devicetree/bindings/pci/rockchip-dw-pcie.yaml  |  93 +----------------
 2 files changed, 114 insertions(+), 90 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie-common.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie-common.yaml
new file mode 100644
index 000000000000..60d190a77580
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie-common.yaml
@@ -0,0 +1,111 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/rockchip-dw-pcie-common.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: DesignWare based PCIe RC/EP controller on Rockchip SoCs
+
+maintainers:
+  - Shawn Lin <shawn.lin@rock-chips.com>
+  - Simon Xue <xxm@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |+
+  Generic properties for the DesignWare based PCIe RC/EP controller on Rockchip
+  SoCs.
+
+properties:
+  clocks:
+    minItems: 5
+    items:
+      - description: AHB clock for PCIe master
+      - description: AHB clock for PCIe slave
+      - description: AHB clock for PCIe dbi
+      - description: APB clock for PCIe
+      - description: Auxiliary clock for PCIe
+      - description: PIPE clock
+      - description: Reference clock for PCIe
+
+  clock-names:
+    minItems: 5
+    items:
+      - const: aclk_mst
+      - const: aclk_slv
+      - const: aclk_dbi
+      - const: pclk
+      - const: aux
+      - const: pipe
+      - const: ref
+
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
+  num-lanes: true
+
+  phys:
+    maxItems: 1
+
+  phy-names:
+    const: pcie-phy
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    minItems: 1
+    maxItems: 2
+
+  reset-names:
+    oneOf:
+      - const: pipe
+      - items:
+          - const: pwr
+          - const: pipe
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - num-lanes
+  - phys
+  - phy-names
+  - power-domains
+  - resets
+  - reset-names
+
+additionalProperties: true
+
+...
diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index 5f719218c472..550d8a684af3 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/pci/rockchip-dw-pcie.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: DesignWare based PCIe controller on Rockchip SoCs
+title: DesignWare based PCIe Root Complex controller on Rockchip SoCs
 
 maintainers:
   - Shawn Lin <shawn.lin@rock-chips.com>
@@ -12,12 +12,13 @@ maintainers:
   - Heiko Stuebner <heiko@sntech.de>
 
 description: |+
-  RK3568 SoC PCIe host controller is based on the Synopsys DesignWare
+  RK3568 SoC PCIe Root Complex controller is based on the Synopsys DesignWare
   PCIe IP and thus inherits all the common properties defined in
   snps,dw-pcie.yaml.
 
 allOf:
   - $ref: /schemas/pci/snps,dw-pcie.yaml#
+  - $ref: /schemas/pci/rockchip-dw-pcie-common.yaml#
 
 properties:
   compatible:
@@ -40,61 +41,6 @@ properties:
       - const: apb
       - const: config
 
-  clocks:
-    minItems: 5
-    items:
-      - description: AHB clock for PCIe master
-      - description: AHB clock for PCIe slave
-      - description: AHB clock for PCIe dbi
-      - description: APB clock for PCIe
-      - description: Auxiliary clock for PCIe
-      - description: PIPE clock
-      - description: Reference clock for PCIe
-
-  clock-names:
-    minItems: 5
-    items:
-      - const: aclk_mst
-      - const: aclk_slv
-      - const: aclk_dbi
-      - const: pclk
-      - const: aux
-      - const: pipe
-      - const: ref
-
-  interrupts:
-    items:
-      - description:
-          Combined system interrupt, which is used to signal the following
-          interrupts - phy_link_up, dll_link_up, link_req_rst_not, hp_pme,
-          hp, hp_msi, link_auto_bw, link_auto_bw_msi, bw_mgt, bw_mgt_msi,
-          edma_wr, edma_rd, dpa_sub_upd, rbar_update, link_eq_req, ep_elbi_app
-      - description:
-          Combined PM interrupt, which is used to signal the following
-          interrupts - linkst_in_l1sub, linkst_in_l1, linkst_in_l2,
-          linkst_in_l0s, linkst_out_l1sub, linkst_out_l1, linkst_out_l2,
-          linkst_out_l0s, pm_dstate_update
-      - description:
-          Combined message interrupt, which is used to signal the following
-          interrupts - ven_msg, unlock_msg, ltr_msg, cfg_pme, cfg_pme_msi,
-          pm_pme, pm_to_ack, pm_turnoff, obff_idle, obff_obff, obff_cpu_active
-      - description:
-          Combined legacy interrupt, which is used to signal the following
-          interrupts - inta, intb, intc, intd
-      - description:
-          Combined error interrupt, which is used to signal the following
-          interrupts - aer_rc_err, aer_rc_err_msi, rx_cpl_timeout,
-          tx_cpl_timeout, cor_err_sent, nf_err_sent, f_err_sent, cor_err_rx,
-          nf_err_rx, f_err_rx, radm_qoverflow
-
-  interrupt-names:
-    items:
-      - const: sys
-      - const: pmc
-      - const: msg
-      - const: legacy
-      - const: err
-
   legacy-interrupt-controller:
     description: Interrupt controller node for handling legacy PCI interrupts.
     type: object
@@ -119,47 +65,14 @@ properties:
 
   msi-map: true
 
-  num-lanes: true
-
-  phys:
-    maxItems: 1
-
-  phy-names:
-    const: pcie-phy
-
-  power-domains:
-    maxItems: 1
-
   ranges:
     minItems: 2
     maxItems: 3
 
-  resets:
-    minItems: 1
-    maxItems: 2
-
-  reset-names:
-    oneOf:
-      - const: pipe
-      - items:
-          - const: pwr
-          - const: pipe
-
   vpcie3v3-supply: true
 
 required:
-  - compatible
-  - reg
-  - reg-names
-  - clocks
-  - clock-names
   - msi-map
-  - num-lanes
-  - phys
-  - phy-names
-  - power-domains
-  - resets
-  - reset-names
 
 unevaluatedProperties: false
 

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
