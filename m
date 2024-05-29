Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B22D6C25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 08:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8OLeupKGnYobBFV+wN4w3V6gcWeu19SQS32zZBZZ0Q=; b=xClYuxFhn7SKnk
	xyk2B+q7wGNzbSs+hFPOg5DR4oJCTJgm2DSwz8QKjN1G7eyH9Juq5Iu+qa68mpFZ0v+PgmEhrWIB4
	QL1E13VkSoOfiEwBMlsmQOrv0U4/iVVVXDApxRrDDs4G7/lvl7lZGs1xFXbxy9JNZi/VmprS7DHDS
	cHpSCH3LZZGJOdmorg8HprewS7nkSqx7nbAb240qEeKAslzaQqExgyfD0z353lYwzWmRc2TkERAqk
	7wxmR4/FilPAf+X+2D8RvIzCpXffPc2VF+9h8HC+EO3wzzoZqC9NJRxb9hYQjf7BgjxLSzWvuo3iy
	pkLUWOO40i5qbiPl5XkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEgm-00000003Oaw-0XMO;
	Wed, 29 May 2024 08:29:40 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEgf-00000003OTQ-0lGw
	for linux-rockchip@lists.infradead.org;
	Wed, 29 May 2024 08:29:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4D0D9CE16E6;
	Wed, 29 May 2024 08:29:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C413EC32781;
	Wed, 29 May 2024 08:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716971370;
	bh=zeWgZMBKWqV0mTmt0pu9yQOlBSadlLh4PY9sjzXyna0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Z1r+/NM8fEk1Qw10UHFCz8HHCJL9dMbX9LU9Dn2xm40ZEFZBOdDgaIOz/XCqkDF8V
	 o09+Ka8lGbybr9oaNxHyYNLNUHi51XEq6vpchM8LHqJfiLPTMXPKZYst1H39ijSblD
	 mv+SnRIyRdbzWZRQktyI5TERlZSMz+q4sUDM3GWnoZ4nTUKe8JVKLFD6qVsLPuU84T
	 l1ZQuBmJ96WN3vi4elvKuwfhxKY8dUQ0pYOgE3vomlprR4JzgGJQCSBpPOrTH0IIn1
	 gockfp3bngnQ43WXXw3swPBzI8v3gen5UrTgBilQDpA9Hs2cAQsQZUiXAkrdQ7nOYv
	 GqvkXP/HEJXjA==
From: Niklas Cassel <cassel@kernel.org>
Date: Wed, 29 May 2024 10:28:58 +0200
Subject: [PATCH v4 04/13] dt-bindings: PCI: rockchip-dw-pcie: Prepare for
 Endpoint mode support
MIME-Version: 1.0
Message-Id: <20240529-rockchip-pcie-ep-v1-v4-4-3dc00fe21a78@kernel.org>
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
In-Reply-To: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=8069; i=cassel@kernel.org;
 h=from:subject:message-id; bh=zeWgZMBKWqV0mTmt0pu9yQOlBSadlLh4PY9sjzXyna0=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNLCnocuvWf/Pd121XTflr83Hvyr4IpwsVJ9+fq2UobA+
 uccl/pmdZSyMIhxMciKKbL4/nDZX9ztPuW44h0bmDmsTCBDGLg4BWAiU44y/DMs5jg4uzuJ4fB7
 prUM+Wpanl6H3I3XzhDn+X/iuvkOwTsMv1lDW2SWMh4qWNRwm2V14p73PAtezVSrU4w8YKR7SDi
 +mgEA
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_012933_762354_4C1044A8 
X-CRM114-Status: GOOD (  15.69  )
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
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
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
2.45.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
