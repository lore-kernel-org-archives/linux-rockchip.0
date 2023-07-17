Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0F08EB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jul 2023 17:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FUuCwTELX3EM+9xhAFkuN3yEzsdbll72DESYRaKioTg=; b=UEhsNKiQfhZGs5
	qEsR4y0qeHI+VHlH+QxCvRdWpbyLkOGkXTKD8z2EDzPLGzlXufrsczu7JKDagiAnv68JVL0ILlyAj
	3jk6rAOGyAcz854JIs0RnvTRD37IVJaR/6GfanhOLEnySgGNR/8GAqc9LrVsWpNDrL0lJUZLjdigD
	8kFt+swpatYL8Qa9wGn/O0J7GZGg+f8Q9DGPz9VVuMiOTldbdQYSNjThquhLrk2ydBozOfd6yz95z
	I0EcuoW2HukV26ywEmi2VOotthBGrAe/q/AHtZdyjuK7zcPMRFzM3uKFr4VM7v0dfNyJQqcKeQ4Bl
	AZhAgLXSzhzFPuzGxPYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLS0n-004fiM-2y;
	Mon, 17 Jul 2023 17:27:54 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLRzx-004fRu-2o;
	Mon, 17 Jul 2023 17:27:04 +0000
Received: from jupiter.universe (dyndsl-091-248-189-171.ewe-ip-backbone.de [91.248.189.171])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C41976602329;
	Mon, 17 Jul 2023 18:26:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689614815;
	bh=zCQp1ogz508z6XY8UW74TYNiCI6zGXJQ14juwMUHFuY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PjuqyPP6FNMstblmNNyUcLTbaBHu8rFZqdVtn5U8dGvx5BsT+hLIeL+5r2GZkz1pg
	 3XWVdVZU611A1ThtQ3RwODScRqgLH89lNbzO4woyKOJnHF6LdW872MhtQATPH0OGBz
	 U/hOlPCyXbjqRVdsY1uOi0UZvpMO2shCvAqNot1Qoa1oyXOYAyVRmpp5mo/ziUIB7A
	 h4oIBUXIxgvCuGe1oTpobQXW3F/z/+b8sUDI3Z2OD1Q6cPIdTO9WP7m+E55e3s/UJl
	 A+bfiinMWT6XMYuP9DE7cu1HE4GZ19xNYXxiuT89XZIdahMff2BtFxBQQ9t4A1CMm1
	 MBdB9ot1PoNuw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1BD67480C78; Mon, 17 Jul 2023 19:26:53 +0200 (CEST)
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
Subject: [PATCH v3 2/5] dt-bindings: PCI: dwc: rockchip: Fix interrupt-names issue
Date: Mon, 17 Jul 2023 19:26:48 +0200
Message-Id: <20230717172651.64324-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230717172651.64324-1-sebastian.reichel@collabora.com>
References: <20230717172651.64324-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230717_102702_190874_F4409BD7 
X-CRM114-Status: GOOD (  14.12  )
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
providing the details.

Currently the binding is not specifying these interrupts resulting
in a bunch of errors for all rk356x boards using PCIe.

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
