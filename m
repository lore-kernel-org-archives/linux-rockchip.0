Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D7A4C02182
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jan 2025 03:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x9iCXbxid8LC+x4g73yHqWxVQlYVwdfAP029PHRV+1o=; b=OXbeQHtFLqqZnf
	uoevON5RcCBABQD9fTJrIC+OiHwu8TNFxSjRRJvaw2U+CR6IwwrUam8DuQiuC+CwK+FtByTSXlGC5
	GkdniRrj5r4eEygN1vKvT67r1k7Nn5vigWWF52ohO/e/YFjuHl1e2YebrTuk5yANdkv2rNQjzXgrm
	Pe6OVpCqBbzwx2owj+Gu0R13HYJBncuffHjh+D+kxbA9wzbQT79FeRulLA/0gEkg7Yc+nA9nZocau
	mRR4O4YPegryTl2chx8Up3WiO+ZyahPrPdAfm6iJ7bgHC20GJ+n9gfqGUcUci5dI7YQcx87GgfHmC
	Qgn7Qp1H8GfGssIJTzyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ta4Vm-00000006lbN-0pF3;
	Tue, 21 Jan 2025 03:01:06 +0000
Received: from mail-m49224.qiye.163.com ([45.254.49.224])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ta4Vj-00000006lZp-2Eib
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jan 2025 03:01:05 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 93fdce84;
	Tue, 21 Jan 2025 11:00:59 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v6 1/7] dt-bindings: ufs: Document Rockchip UFS host controller
Date: Tue, 21 Jan 2025 11:00:21 +0800
Message-Id: <1737428427-32393-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1737428427-32393-1-git-send-email-shawn.lin@rock-chips.com>
References: <1737428427-32393-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh0ZQlYaSx1DT00fShlNTkNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a9486ce609e09cckunm93fdce84
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PBQ6DSo*STIJAjU2QxUPOD4s
	OAMwFEtVSlVKTEhMT0lDT01KSUpDVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhCSkI3Bg++
DKIM-Signature: a=rsa-sha256;
	b=VMGNy3oKG900p/jcKjlmeCw1XK87mlif//6bcvSpjXpJrcDr9FtdvCpjuFjEWeqEZlxFvsKIUibi68DYyG4fNX0oZk9vvMi3rRznjoZNrybfwKru6u8GVrV0Upp+VHeiLStoZ+DRqgfEMHWvKDmu10zbPxkyiECk6HcGp0mjT1I=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=HC1ZnuWJ7xKLbVwFlpGf1csbsE5H+grZCknYutl9UPc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_190103_794396_4BCF456F 
X-CRM114-Status: GOOD (  16.01  )
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Changes in v6: None
Changes in v5:
- fix indentation to 4 spaces suggested by Krzysztof
- use ufshc for devicetree example suggested by Mani

Changes in v4:
- properly describe reset-gpios

Changes in v3:
- rename the file to rockchip,rk3576-ufshc.yaml
- add description for reset-gpios
- use rockchip,rk3576-ufshc as compatible

Changes in v2:
- rename the file
- add reset-gpios

 .../bindings/ufs/rockchip,rk3576-ufshc.yaml        | 105 +++++++++++++++++++++
 1 file changed, 105 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml

diff --git a/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml b/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml
new file mode 100644
index 0000000..2ddc073
--- /dev/null
+++ b/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml
@@ -0,0 +1,105 @@
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
+      GPIO specifiers for host to reset the whole UFS device including PHY and
+      memory. This gpio is active low and should choose the one whose high output
+      voltage is lower than 1.5V based on the UFS spec.
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
+        ufshc: ufshc@2a2d0000 {
+            compatible = "rockchip,rk3576-ufshc";
+            reg = <0x0 0x2a2d0000 0x0 0x10000>,
+                  <0x0 0x2b040000 0x0 0x10000>,
+		  <0x0 0x2601f000 0x0 0x1000>,
+		  <0x0 0x2603c000 0x0 0x1000>,
+		  <0x0 0x2a2e0000 0x0 0x10000>;
+            reg-names = "hci", "mphy", "hci_grf", "mphy_grf", "hci_apb";
+            clocks = <&cru ACLK_UFS_SYS>, <&cru PCLK_USB_ROOT>, <&cru PCLK_MPHY>,
+                     <&cru CLK_REF_UFS_CLKOUT>;
+            clock-names = "core", "pclk", "pclk_mphy", "ref_out";
+            interrupts = <GIC_SPI 361 IRQ_TYPE_LEVEL_HIGH>;
+            power-domains = <&power RK3576_PD_USB>;
+            resets = <&cru SRST_A_UFS_BIU>, <&cru SRST_A_UFS_SYS>, <&cru SRST_A_UFS>,
+                     <&cru SRST_P_UFS_GRF>;
+            reset-names = "biu", "sys", "ufs", "grf";
+            reset-gpios = <&gpio4 RK_PD0 GPIO_ACTIVE_LOW>;
+        };
+    };
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
