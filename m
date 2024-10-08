Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C4A8CED26F
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 06:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nsuy83GOR4kMyHtSOx/EsJ7M97gKopmpIAwUKReQmcs=; b=bSwG0AZNfEXcUw
	pCQIMi4XhRdLQu5V4zfl7l0ydnvtTdFeSw9MKQBsMotcA2dIkxeZYHDBp8f8RUjsVPMEiyxGfkbIF
	9Q3i4M/dH+Bjcd91Fi4LkchFrOOy8ZboEEWU3UlhzFY11d1xD6ekZNydMngO8v61TSFu+0YsurtsE
	UAgrevF6cGCmcmNBX8gUwN+hD8eerIXZ6F1GegWBHTxso7Z2+7AjlmEAeuqaKSA3pellkG9Zs0QR8
	/WglJMmMDlsLT+NW5QdNECQ1RcBamhbHMBBmBS/fuh1RmEHmu47yLx1odQpGPJ4cekexnNIASegAa
	MK6mmhib67Opz7r/grQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy3We-00000004chi-2Bv0;
	Tue, 08 Oct 2024 06:16:52 +0000
Received: from mail-m127223.xmail.ntesmail.com ([115.236.127.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy3Wa-00000004cgI-0qlB
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Oct 2024 06:16:49 +0000
DKIM-Signature: a=rsa-sha256;
	b=fh1AmXna3dWoxzFU4RxBgDi5rzS2EakRqgGDDynXI9227yQ9eIBR27lHCmLwl2iPcgFqFjkZcF3jcl0TJoJb9gZs7+kfajA9nK6l0j2X1IGrLyFmPm0k/itRXLu7fdRhkexETurGHQzYA/IN1fzXsrhiYNU3dodcL3UoVgUc1/I=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=AXK3YnjXax5rcpF78zMigMzTMhZlDrdMm0wDQmoO/X8=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 0B25B52057A;
	Tue,  8 Oct 2024 14:16:23 +0800 (CST)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 2/5] dt-bindings: ufs: Document Rockchip UFS host controller
Date: Tue,  8 Oct 2024 14:15:27 +0800
Message-Id: <1728368130-37213-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1728368130-37213-1-git-send-email-shawn.lin@rock-chips.com>
References: <1728368130-37213-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0IfT1ZKSEIdSxhKH0lKGk5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a926ac58ea403afkunm0b25b52057a
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ND46Ejo5EzItLhY8GSwYNyg9
	SgEwCylVSlVKTElDSE1DSkNOTEpPVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU5DS0g3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_231648_464614_A5F06A45 
X-CRM114-Status: GOOD (  14.80  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Document Rockchip UFS host controller for RK3576 SoC.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

---

Changes in v3:
- rename the file to rockchip,rk3576-ufshc.yaml
- add description for reset-gpios
- use rockchip,rk3576-ufshc as compatible

Changes in v2:
- rename the file
- add reset-gpios

 .../bindings/ufs/rockchip,rk3576-ufshc.yaml        | 103 +++++++++++++++++++++
 1 file changed, 103 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml

diff --git a/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml b/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml
new file mode 100644
index 0000000..1c78ea5
--- /dev/null
+++ b/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml
@@ -0,0 +1,103 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ufs/rockchip,rk3576-ufshc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip UFS Host Controller
+
+maintainers:
+  - Shawn Lin <shawn.lin@rock-chips.com>
+
+allOf:
+  - $ref: ufs-common.yaml
+
+properties:
+  compatible:
+    const: rockchip,rk3576-ufshc
+
+  reg:
+    maxItems: 5
+
+  reg-names:
+    items:
+      - const: hci
+      - const: mphy
+      - const: hci_grf
+      - const: mphy_grf
+      - const: hci_apb
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    items:
+      - const: core
+      - const: pclk
+      - const: pclk_mphy
+      - const: ref_out
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    maxItems: 4
+
+  reset-names:
+    items:
+      - const: biu
+      - const: sys
+      - const: ufs
+      - const: grf
+
+  reset-gpios:
+    maxItems: 1
+    description: |
+      GPIO specifiers for host to reset the device.
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - interrupts
+  - power-domains
+  - resets
+  - reset-names
+  - reset-gpios
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rockchip,rk3576-cru.h>
+    #include <dt-bindings/reset/rockchip,rk3576-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/rockchip,rk3576-power.h>
+    #include <dt-bindings/pinctrl/rockchip.h>
+    #include <dt-bindings/gpio/gpio.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        ufs: ufs@2a2d0000 {
+              compatible = "rockchip,rk3576-ufshc";
+              reg = <0x0 0x2a2d0000 0x0 0x10000>,
+                    <0x0 0x2b040000 0x0 0x10000>,
+                    <0x0 0x2601f000 0x0 0x1000>,
+                    <0x0 0x2603c000 0x0 0x1000>,
+                    <0x0 0x2a2e0000 0x0 0x10000>;
+              reg-names = "hci", "mphy", "hci_grf", "mphy_grf", "hci_apb";
+              clocks = <&cru ACLK_UFS_SYS>, <&cru PCLK_USB_ROOT>, <&cru PCLK_MPHY>,
+                      <&cru CLK_REF_UFS_CLKOUT>;
+              clock-names = "core", "pclk", "pclk_mphy", "ref_out";
+              interrupts = <GIC_SPI 361 IRQ_TYPE_LEVEL_HIGH>;
+              power-domains = <&power RK3576_PD_USB>;
+              resets = <&cru SRST_A_UFS_BIU>, <&cru SRST_A_UFS_SYS>, <&cru SRST_A_UFS>,
+                        <&cru SRST_P_UFS_GRF>;
+              reset-names = "biu", "sys", "ufs", "grf";
+              reset-gpios = <&gpio4 RK_PD0 GPIO_ACTIVE_LOW>;
+        };
+    };
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
