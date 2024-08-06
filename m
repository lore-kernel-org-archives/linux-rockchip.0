Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A266EC52D70
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Aug 2024 07:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OBIuGBWW90FMIIuMwk4IVOgRzTWMHqgFSO38+mFGBK0=; b=ida/WRzJa98oQ0
	FplCr9HiHQksBRWcdLl2CkYv6W+einYh5T70ji1xQwPU0y9Zawu5o8nOBBARwqAQgzdAMkgOi9riP
	d7N2iVbLApXafvz2Sar4yY5cLfmWpJvZrCqUX/qyUdKJ57I+yQ6D9r+HMr93ckSqYUc8yuh6ypX5c
	NwOk9/PY7bR3I2ccEqa3jVPA8QMjUUrjrEcEYtiEvstTU2+oDeOBuVD6cNH4HNxFkr4v+wF2yFu1R
	uHk3TfIGGUV6TeQlHznM2eLOuTTIaYtfmMVfRd9vMxbsm1dTvlBJdn89sGppGxJVlNMjdU8rtkrzb
	fG0LmmXDR5tWL9pjdROA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbEX5-00000000mBQ-1e99;
	Tue, 06 Aug 2024 07:22:59 +0000
Received: from mail-m127164.xmail.ntesmail.com ([115.236.127.164])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbEUt-00000000ldd-04wV
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Aug 2024 07:20:45 +0000
DKIM-Signature: a=rsa-sha256;
	b=csuHE/b3StOi/ls1Sa2rMC6zBwf9yGJ+8oh4hx9GLHyKONb3p2jIQUQxXCkoEahXQ4LTycMkNtMhShTAZv3tpI8V8HcncE+roBDGSeMdtytyAdOHvdIbZ9uCUimKgvsiQJzGBYgK+QTBIEaneXVJlG1MQRyUZQSclixSHdTeTss=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=LMVMwH7LofqOvPfrqlYHp9W5j7CWVyj4pSOchCn8W2E=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 48F154604F8;
	Tue,  6 Aug 2024 15:20:19 +0800 (CST)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Rob Herring <robh+dt@kernel.org>,
	"Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v1 2/3] dt-bindings: ufs: Document Rockchip UFS host controller
Date: Tue,  6 Aug 2024 15:19:59 +0800
Message-Id: <1722928800-137042-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1722928800-137042-1-git-send-email-shawn.lin@rock-chips.com>
References: <1722928800-137042-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUlNGVZLSUwdHRhDSB0eGkNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a91268f6eaa03aekunm48f154604f8
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6N0k6Fyo4ODI*ExI4Cj8OSk0I
	HTwwCShVSlVKTElJQklDQ0lLTkJPVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU9JSE03Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_002043_409099_6147A819 
X-CRM114-Status: GOOD (  11.12  )
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

 .../devicetree/bindings/ufs/rockchip,ufs.yaml      | 78 ++++++++++++++++++++++
 1 file changed, 78 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/ufs/rockchip,ufs.yaml

diff --git a/Documentation/devicetree/bindings/ufs/rockchip,ufs.yaml b/Documentation/devicetree/bindings/ufs/rockchip,ufs.yaml
new file mode 100644
index 0000000..e2e492c
--- /dev/null
+++ b/Documentation/devicetree/bindings/ufs/rockchip,ufs.yaml
@@ -0,0 +1,78 @@
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
+     - const: hci
+     - const: mphy
+     - const: hci_grf
+     - const: mphy_grf
+     - const: hci_apb
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
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - power-domains
+  - resets
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rockchip,rk3576-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/rk3576-power.h>
+
+    ufs: ufs@2a2d0000 {
+            compatible = "rockchip,rk3576-ufs";
+            reg = <0x0 0x2a2d0000 0 0x10000>,
+	          <0x0 0x2b040000 0 0x10000>,
+		  <0x0 0x2601f000 0 0x1000>,
+		  <0x0 0x2603c000 0 0x1000>,
+		  <0x0 0x2a2e0000 0 0x10000>;
+            reg-names = "hci", "mphy", "hci_grf", "mphy_grf", "hci_apb";
+            clocks = <&cru ACLK_UFS_SYS>, <&cru PCLK_USB_ROOT>, <&cru PCLK_MPHY>,
+                     <&cru CLK_REF_UFS_CLKOUT>;
+            clock-names = "core", "pclk", "pclk_mphy", "ref_out";
+            interrupts = <GIC_SPI 361 IRQ_TYPE_LEVEL_HIGH>;
+            power-domains = <&power RK3576_PD_USB>;
+            resets = <&cru SRST_A_UFS_BIU>, <&cru SRST_A_UFS_SYS>, <&cru SRST_A_UFS>,
+	             <&cru SRST_P_UFS_GRF>;
+            reset-names = "biu", "sys", "ufs", "grf";
+    };
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
