Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 586BAD111B3
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Nov 2024 07:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PpwnJDHagjiI+9KC2RAJRFChuwAduR6B97es+rFNoNw=; b=Xvfvv+6j+e5Op6
	jsbcDyFSz4vykbpxlzrIvZTa5VDw7/3puLM1sv1tUUnDJ1DA89UlI4+/g+DezfHGRCR8xOOBnbrLX
	wv+tC4AnrFh66K5CFg5VnScOC+ytG7e+QHh+B7SzLcEoZhhgid6ZYkpCqTwi1STLE4f1p5qMZ0TJK
	aITzCbPYCi2K0qnHP2CnUWzm4p2F+04RhNtZxF4RAGW2K6F9iidzKE3hCA0XEYdA2IlDIDWtj3OUV
	w8McbJ4fLpStwSTtFQZsrWmYbvyAsaPg/O4istM+SABPAl191KuiScOOIamyVtj2ng0AIzqzXOFeH
	ZMkINeG7ju8UOXQ4Allw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7ra7-0000000CrCf-1emv;
	Mon, 04 Nov 2024 07:32:59 +0000
Received: from mail-m10141.netease.com ([154.81.10.141])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7ra3-0000000CrBx-3w2Q
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Nov 2024 07:32:57 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1b5d89cc;
	Mon, 4 Nov 2024 15:32:51 +0800 (GMT+08:00)
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
Subject: [PATCH v4 2/7] dt-bindings: ufs: Document Rockchip UFS host controller
Date: Mon,  4 Nov 2024 15:31:56 +0800
Message-Id: <1730705521-23081-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1730705521-23081-1-git-send-email-shawn.lin@rock-chips.com>
References: <1730705521-23081-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx4eTVYfQx9KS0wdH0JISk1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a92f6173f3409cckunm1b5d89cc
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PlE6SQw6ITIvLDo#HisyDzwo
	LBoaCTpVSlVKTEhLTEtOTkxISE5MVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhDT0k3Bg++
DKIM-Signature: a=rsa-sha256;
	b=KSVxPdwFDVoqngFirPI2IBr5cWLLVww7StkydZ2wpTw83ZGY3oEa99cAmj5mSGL1XBwGH9X0ezVtGilNUQklv6RkyaY/a4sW6Tddz9wl6w0WIkD+Otjsm+MSJyXDTFXmp6n0klQcJYgMBgYrutFJDl6DvLR8GXKBYXkBNanq0mE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=t0jfq2PeStTsZaJFc2X5b22FPiijLc9hnERUdwLupVk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241103_233256_234369_70B579A1 
X-CRM114-Status: GOOD (  15.83  )
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

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
index 0000000..bc4c3de
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
