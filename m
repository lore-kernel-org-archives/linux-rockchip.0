Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9D16C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 12:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HYb3nsQmhGBSVrDfkONd1Dsfkzr/wWAF0YGZ39fnCg4=; b=miClILOh9SBnYO
	bM5WAVysAaHUeNHCLGxUl+1OUZejpoeBzg2pjcAMT+JAWL0VsGNnWELTfzKdIRlnRDyUazJQ6LrI/
	BaDZ+y6SEl0qYR77Ob7J3NKoyL02Kr5ErEbsapcmgZEGbmd8/trD7bgB6Esu9JBuxMj/nXS0rGDfs
	v4+UqVB2nSoCBoBtrtHU42KUVMFPf8yUhbVdy838sJZWb+DF2XzyIXIg0o2st3YE6pz6jqjDqdV8s
	OymdfMeyiuACbWivH9if/cYpybPd3eaInq2id+LimJMazPAY96OTMTyyA0P8bo9RnJXVv9KLjBbso
	S8AE9ov9vGjznxCDFQ9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mBp-00000006GnL-2SIg;
	Tue, 30 Apr 2024 12:02:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mBj-00000006Gi0-16tp
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Apr 2024 12:02:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9E18A61423;
	Tue, 30 Apr 2024 12:02:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A80D6C4AF51;
	Tue, 30 Apr 2024 12:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714478542;
	bh=lzYyTB2OvdhD5k4zG4pbiEVMIEt2tbp4NUdYxqaO9x8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Ec2nS7ABva/cSfofJiBnJSh0tLqY6xNang2HofW9orU8v9x//svVgR2kN7lPY/f5s
	 zcLkdCR37VaVk3Jz1uR771McTUui7beQdRQ4zmxPKfNq5+xfClYngKAvmVec9RwgHx
	 nV5sPWE9JSurmAE32vBpdvZP26/v2e+xxH27f6hIKtyIWjbL05GfYUsUcIMN1xn7vV
	 lRO4uqTynYLRQW5bQrzxsqUy+LMKsUiQXM/FjYIL8jlnpPaH1vuG2c3/dhOnoSLJA7
	 YgVfNggpEIUXB1vWY6TbUie70SrUPdph8UKPWGZIAMneXBiFNY2xCQHne9LbQesHvT
	 DT6dTQD2DVuDQ==
From: Niklas Cassel <cassel@kernel.org>
Date: Tue, 30 Apr 2024 14:01:03 +0200
Subject: [PATCH v2 06/14] dt-bindings: rockchip: Add DesignWare based PCIe
 Endpoint controller
MIME-Version: 1.0
Message-Id: <20240430-rockchip-pcie-ep-v1-v2-6-a0f5ee2a77b6@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5484; i=cassel@kernel.org;
 h=from:subject:message-id; bh=lzYyTB2OvdhD5k4zG4pbiEVMIEt2tbp4NUdYxqaO9x8=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNIM7m4IbJ+tf/LKHblq80Mct4o0Zs1uy1TdvvmDUWBAw
 P6t1upMHaUsDGJcDLJiiiy+P1z2F3e7TzmueMcGZg4rE8gQBi5OAZjI8XaG//WXWhdLROk8nr1l
 g/vu2+/2Zh60OODUaVcsmNxn8rt8YhzD/1zXqhIlweTUxNvzfJzm2s6VEz596s1sHj0NQYU7Pmn
 1vAA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_050223_494871_073B5EE5 
X-CRM114-Status: GOOD (  11.87  )
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

Document DT bindings for PCIe Endpoint controller found in Rockchip SoCs.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 .../bindings/pci/rockchip-dw-pcie-common.yaml      | 14 ++++
 .../bindings/pci/rockchip-dw-pcie-ep.yaml          | 95 ++++++++++++++++++++++
 2 files changed, 109 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie-common.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie-common.yaml
index ec5e6a3d048e..cc9adfc7611c 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie-common.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie-common.yaml
@@ -39,6 +39,7 @@ properties:
       - const: ref
 
   interrupts:
+    minItems: 5
     items:
       - description:
           Combined system interrupt, which is used to signal the following
@@ -63,14 +64,27 @@ properties:
           interrupts - aer_rc_err, aer_rc_err_msi, rx_cpl_timeout,
           tx_cpl_timeout, cor_err_sent, nf_err_sent, f_err_sent, cor_err_rx,
           nf_err_rx, f_err_rx, radm_qoverflow
+      - description:
+          eDMA write channel 0 interrupt
+      - description:
+          eDMA write channel 1 interrupt
+      - description:
+          eDMA read channel 0 interrupt
+      - description:
+          eDMA read channel 1 interrupt
 
   interrupt-names:
+    minItems: 5
     items:
       - const: sys
       - const: pmc
       - const: msg
       - const: legacy
       - const: err
+      - const: dma0
+      - const: dma1
+      - const: dma2
+      - const: dma3
 
   num-lanes: true
 
diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie-ep.yaml
new file mode 100644
index 000000000000..e0c8668afc01
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie-ep.yaml
@@ -0,0 +1,95 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/rockchip-dw-pcie-ep.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: DesignWare based PCIe Endpoint controller on Rockchip SoCs
+
+maintainers:
+  - Niklas Cassel <cassel@kernel.org>
+
+description: |+
+  RK3588 SoC PCIe Endpoint controller is based on the Synopsys DesignWare
+  PCIe IP and thus inherits all the common properties defined in
+  snps,dw-pcie-ep.yaml.
+
+allOf:
+  - $ref: /schemas/pci/snps,dw-pcie-ep.yaml#
+  - $ref: /schemas/pci/rockchip-dw-pcie-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3568-pcie-ep
+      - rockchip,rk3588-pcie-ep
+
+  reg:
+    items:
+      - description: Data Bus Interface (DBI) registers
+      - description: Data Bus Interface (DBI) shadow registers
+      - description: Rockchip designed configuration registers
+      - description: Memory region used to map remote RC address space
+      - description: Address Translation Unit (ATU) registers
+
+  reg-names:
+    items:
+      - const: dbi
+      - const: dbi2
+      - const: apb
+      - const: addr_space
+      - const: atu
+
+required:
+  - interrupts
+  - interrupt-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/power/rk3588-power.h>
+    #include <dt-bindings/reset/rockchip,rk3588-cru.h>
+
+    bus {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        pcie3x4_ep: pcie-ep@fe150000 {
+            compatible = "rockchip,rk3588-pcie-ep";
+            clocks = <&cru ACLK_PCIE_4L_MSTR>, <&cru ACLK_PCIE_4L_SLV>,
+                     <&cru ACLK_PCIE_4L_DBI>, <&cru PCLK_PCIE_4L>,
+                     <&cru CLK_PCIE_AUX0>, <&cru CLK_PCIE4L_PIPE>;
+            clock-names = "aclk_mst", "aclk_slv",
+                          "aclk_dbi", "pclk",
+                          "aux", "pipe";
+            interrupts = <GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 271 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 269 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 270 IRQ_TYPE_LEVEL_HIGH 0>;
+            interrupt-names = "sys", "pmc", "msg", "legacy", "err",
+                              "dma0", "dma1", "dma2", "dma3";
+            max-link-speed = <3>;
+            num-lanes = <4>;
+            phys = <&pcie30phy>;
+            phy-names = "pcie-phy";
+            power-domains = <&power RK3588_PD_PCIE>;
+            reg = <0xa 0x40000000 0x0 0x00100000>,
+                  <0xa 0x40100000 0x0 0x00100000>,
+                  <0x0 0xfe150000 0x0 0x00010000>,
+                  <0x9 0x00000000 0x0 0x40000000>,
+                  <0xa 0x40300000 0x0 0x00100000>;
+            reg-names = "dbi", "dbi2", "apb", "addr_space", "atu";
+            resets = <&cru SRST_PCIE0_POWER_UP>, <&cru SRST_P_PCIE0>;
+            reset-names = "pwr", "pipe";
+        };
+    };
+...

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
