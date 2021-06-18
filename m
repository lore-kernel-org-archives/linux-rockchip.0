Return-Path: <SRS0=89Gv=LM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE18FC49EA5
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 13:03:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7823861205
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 13:03:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7823861205
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nUkg25zfYXonO7Y1Ylvn+O4JeQ3LUlbkZmXCd2HrpZw=; b=zZts6FuYtcq7cW
	rCMTlbjlRpkCC+HJl/rDubjMnzB4KWlyZ4ehyO7N59CBja2tE1UoWL2nFoL5dk+9VB+Hwm+6MfGQz
	LodxOirNQrkBIWNOnd/H6QH1+jRmHXOZzcpFFKTf1PQrOt7Y3+TXOIDTGZq7Z98BhRZiljr8NS5JN
	tD3hgfxL1yk2oXXs9Y+AF/X+RFpk8L5ziL3DTPV/OSXkf+2ghnpcVr+CS1x9oBSzt/va9st00G603
	nCnVmkuoTQ0T9iy5LOVq047Ci62GiTpX5eYwkyJgZVR3pf37cLK1DUzdBF1pRYzh9ijwOtqtH3VRf
	O9ysT05Ej59YH91VUccQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luE9B-00E6gz-DI; Fri, 18 Jun 2021 13:02:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luE90-00E6Wj-0o
 for linux-rockchip@lists.infradead.org; Fri, 18 Jun 2021 13:02:47 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1luE8y-0001y0-46; Fri, 18 Jun 2021 15:02:44 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl
Cc: ezequiel@collabora.com, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, Laurent.pinchart@ideasonboard.com,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 heiko@sntech.de, robh+dt@kernel.org, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: [PATCH v6 09/10] dt-bindings: media: rkisp1: document px30 isp
 compatible
Date: Fri, 18 Jun 2021 15:02:37 +0200
Message-Id: <20210618130238.4171196-10-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210618130238.4171196-1-heiko@sntech.de>
References: <20210618130238.4171196-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_060246_146182_B4DF1FB9 
X-CRM114-Status: GOOD (  10.50  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Add the compatible for the px30-variant of the rkisp

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 .../bindings/media/rockchip-isp1.yaml         | 67 ++++++++++++++++++-
 1 file changed, 66 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
index 14ac5730b377..d1489b177331 100644
--- a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
@@ -15,7 +15,9 @@ description: |
 
 properties:
   compatible:
-    const: rockchip,rk3399-cif-isp
+    enum:
+      - rockchip,px30-cif-isp
+      - rockchip,rk3399-cif-isp
 
   reg:
     maxItems: 1
@@ -200,3 +202,66 @@ examples:
             };
         };
     };
+
+  - |
+
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/px30-power.h>
+
+    parent1: parent {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        isp: isp@ff4a0000 {
+            compatible = "rockchip,px30-cif-isp";
+            reg = <0x0 0xff4a0000 0x0 0x8000>;
+            interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
+            interrupt-names = "isp", "mi", "mipi";
+            clocks = <&cru SCLK_ISP0>,
+                     <&cru ACLK_ISP0_WRAPPER>,
+                     <&cru HCLK_ISP0_WRAPPER>,
+                     <&cru PCLK_ISP1_WRAPPER>;
+            clock-names = "isp", "aclk", "hclk", "pclk";
+            iommus = <&isp_mmu>;
+            phys = <&csi_dphy>;
+            phy-names = "dphy";
+            power-domains = <&power PX30_PD_VI>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    #address-cells = <1>;
+                    #size-cells = <0>;
+
+                    mipi_in_ucam1: endpoint@0 {
+                        reg = <0>;
+                        remote-endpoint = <&ucam1_out>;
+                        data-lanes = <1 2>;
+                    };
+                };
+            };
+        };
+
+        i2c2: i2c {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            ov5695: camera@36 {
+                compatible = "ovti,ov5647";
+                reg = <0x36>;
+                clocks = <&cru SCLK_CIF_OUT>;
+
+                port {
+                    ucam1_out: endpoint {
+                        remote-endpoint = <&mipi_in_ucam1>;
+                        data-lanes = <1 2>;
+                    };
+                };
+            };
+        };
+    };
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
