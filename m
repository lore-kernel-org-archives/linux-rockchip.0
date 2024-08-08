Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 766C5C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 03:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ngaqHkz/KS/RJxZUkuWztGscD5JqhOCvEw8PJgIBoiE=; b=WtUo8INDFBSv+U
	49F8JKz5OF6Kg0BIdKDRIZCghxs510Zp9nsCypASnasuu4wemQcPnDOZfUT4sKF9m2fQdACmh3dp+
	1cN5Ifq8dfSra6wyRZ+DgsJIuvU6D8IfnLHmpkmkfgutvfsTJNenYXxRfnmDa3fHLuxkfFOT9TNXI
	NOlqPRilXN2CjEaSHRL2stEVhYLn8kreR9BH2jcStYWZaeGQJatda8WUsHz2++E2BN2auWn2EnRhC
	ecoUE1noxqv+EILaPsNoi7/KGNSLsPLL4v0fkRYw3Z71cWgNZN3IrBEddQ1of3J16hH/kvMz2X72g
	gnwkcMMcLH2g8ZZK/Waw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbuDg-00000006xqe-3jRc;
	Thu, 08 Aug 2024 03:53:44 +0000
Received: from mail-m1973198.qiye.163.com ([220.197.31.98])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbuDc-00000006xoA-2eSa
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Aug 2024 03:53:44 +0000
DKIM-Signature: a=rsa-sha256;
	b=kFaVLnmxJ0WqyG9uyAzc2wSGNjmA7umrS3fRsCE8PPp0trWDtDyqmW40bngSnC3QOTGZiKQ1ttOi7uaY+ZO/f/K5C3fCtKCdbROWqE9sK0o5Hqw6Fg9HOpvx6dYXgyfgzfGgQVGyeRyPRn97ml7xra20CPQ6EfRAw/nkX7Xek3g=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Q2TCGiFQuP7Aex+0R9cXIqy0nyZPoAyhqD5py5ZHqSI=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id EE56F4603EB;
	Thu,  8 Aug 2024 11:53:12 +0800 (CST)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 2/3] dt-bindings: ufs: Document Rockchip UFS host controller
Date: Thu,  8 Aug 2024 11:52:42 +0800
Message-Id: <1723089163-28983-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1723089163-28983-1-git-send-email-shawn.lin@rock-chips.com>
References: <1723089163-28983-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkkdS1YaSk9JSkpDTB8YS0tWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a91301e8bce03aekunmee56f4603eb
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OAw6GRw4DTIyOQsrPws0KD4e
	H0swCQ1VSlVKTElIS0NCSkJPT09OVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU5ISUs3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_205341_159372_C36E14F0 
X-CRM114-Status: GOOD (  12.52  )
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

Changes in v2:
- renmae file name
- fix all errors and pass the dt_binding_check:
  make dt_binding_check DT_SCHEMA_FILES=rockchip,rk3576-ufs.yaml

 .../bindings/ufs/rockchip,rk3576-ufs.yaml          | 96 ++++++++++++++++++++++
 1 file changed, 96 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufs.yaml

diff --git a/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufs.yaml b/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufs.yaml
new file mode 100644
index 0000000..1844fe3
--- /dev/null
+++ b/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufs.yaml
@@ -0,0 +1,96 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ufs/rockchip,ufs.yaml#
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
+    const: rockchip,rk3576-ufs
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
+    #include <dt-bindings/power/rk3576-power.h>
+    #include <dt-bindings/pinctrl/rockchip.h>
+    #include <dt-bindings/gpio/gpio.h>
+
+    ufs: ufs@2a2d0000 {
+          compatible = "rockchip,rk3576-ufs";
+          reg = <0x2a2d0000 0x10000>,
+                <0x2b040000 0x10000>,
+                <0x2601f000 0x1000>,
+                <0x2603c000 0x1000>,
+                <0x2a2e0000 0x10000>;
+          reg-names = "hci", "mphy", "hci_grf", "mphy_grf", "hci_apb";
+          clocks = <&cru ACLK_UFS_SYS>, <&cru PCLK_USB_ROOT>, <&cru PCLK_MPHY>,
+                  <&cru CLK_REF_UFS_CLKOUT>;
+          clock-names = "core", "pclk", "pclk_mphy", "ref_out";
+          interrupts = <GIC_SPI 361 IRQ_TYPE_LEVEL_HIGH>;
+          power-domains = <&power RK3576_PD_USB>;
+          resets = <&cru SRST_A_UFS_BIU>, <&cru SRST_A_UFS_SYS>, <&cru SRST_A_UFS>,
+                    <&cru SRST_P_UFS_GRF>;
+          reset-names = "biu", "sys", "ufs", "grf";
+          reset-gpios = <&gpio4 RK_PD0 GPIO_ACTIVE_HIGH>;
+    };
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
