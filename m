Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83A1BC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 04:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BOXAA5KZzGZmtwf2UOs/LDH4XL1XGhoe4MF6H3ggCzg=; b=VwQz2oUamEVwRC
	OQ1DSCRQWM4KfUyjPskh/+aZLX24pL4RjzqrhW3tjnMAhAVcWob96kQQqrEmtzIclnUcd7c1TELNs
	NdRW8R6+t9zTpovIf126xHYOAfLq5Vl3Gee1/rpyj5AZ83fE+TCH/UPvTUQFTAK3Dm0GopdQvSol2
	ho0M98xNtQxyi9O0rIkdM9Vj+jeUXOVHkNRcg66HBUO9Otxf2QF++/3ddZbDtEjVh72vfIWc9M6E8
	vpaOaFpiah01bOi721kcSsmE1EQhAdpym6JtY4CBqpDfoJ4PydTMLO2Lt9hp/nMrel3i1Ta8O/G4o
	fq9t/846m+BDo1a6Ei0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbuka-000000071QU-1P2O;
	Thu, 08 Aug 2024 04:27:44 +0000
Received: from mail-m1030.netease.com ([154.81.10.30])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbukW-000000071Kc-0TwZ
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Aug 2024 04:27:42 +0000
DKIM-Signature: a=rsa-sha256;
	b=YF9fGd4rIGl5OkA3atjMC+2dfHT2JPYHLMiFvZddJo9D7ZuOvCBnoEK5gUH2DBp0wDhUVdY0RKzg+O18jk3jMn5wlOQXnb4SsM/GumU0v8CL5Jjq5XzhKD9fKt/CHdbxav1an3zVdd4vP/QTw2bzgGckAH3G5nv3xBVxprS4dbw=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=dQ73/rM8eDJWygK5o939zObKIeQ3hk5HLMMw1WM662Q=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id A3F054602E9;
	Thu,  8 Aug 2024 12:27:06 +0800 (CST)
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
Subject: [RESEND PATCH v2 2/3] dt-bindings: ufs: Document Rockchip UFS host controller
Date: Thu,  8 Aug 2024 12:27:00 +0800
Message-Id: <1723091220-29291-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1723089163-28983-1-git-send-email-shawn.lin@rock-chips.com>
References: <1723089163-28983-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR0YSlZKTUMZHhgeS0ofGBhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a91303d936e03aekunma3f054602e9
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MDI6Agw6DjIzOQsdFylNIzMC
	LRgaCQlVSlVKTElIS0JKSUlDS0lKVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU5IT0o3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_212740_729609_05B6D444 
X-CRM114-Status: GOOD (  12.40  )
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
+$id: http://devicetree.org/schemas/ufs/rockchip,rk3576-ufs.yaml#
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
