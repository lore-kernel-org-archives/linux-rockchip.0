Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18C40C43219
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Nov 2022 09:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ONbQpdyFHLxY2jP2UZbO151k8Bj4DJsVR7aZT7xjStI=; b=tdzAM7VinXztd4
	lGSARvn8oqWyXn8hM8WVoVpeFQ9X3osQZuBPXy7oiTnHqwzFKC3rTNcPtaYYmfOe6RBskxUukDRCa
	0kEdQgCKkqoWUCkK+povLAFrlHMEoqBczv5coW6peP9/Vuh4OwxrlSFlUY0aQfG8vg7rApXJxFazS
	uzztkzjup2LuodKYDCVyndWxfsEX0znYU3/TZxiqoilugvIcreb031Yt9C9Ms0SZil6bjjJU2jDuG
	eVWKch+yBp5/EHgCZ2a/XucrBRMI6p7nE8VvZH7QT7s3QwaKkoN3igPC36gWOQIlBRpUyM884ZOMx
	LUr+1M0OD8IenlIcLWbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovxrY-0039GB-Ut; Fri, 18 Nov 2022 09:40:44 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovxqg-0038it-VV; Fri, 18 Nov 2022 09:39:52 +0000
Received: from pyrite.tail37cf.ts.net (h175-177-042-159.catv02.itscom.jp [175.177.42.159])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 61A83AF4;
	Fri, 18 Nov 2022 10:39:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1668764389;
	bh=hmyLpab8VmHMSS3/2OG4UYDiDFK/Q8oMtYRnn8VQ7fg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OFH1LLo5i4J0HJ5cCTgvvqJeLnrXlevbdDgc3REixGzWWxLVBivl7Z/P5j869ghiO
	 Wvnm97wdehUTHk1oH7sOfSUtszYHMWSh6ZXByrD6LKdgh8U/WXTYAhk3fCNTWu1RUJ
	 PxRCZjAamHACoqCr3R0kABiAeEvaivPfphp+T5xk=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 02/14] dt-bindings: media: rkisp1: Add i.MX8MP ISP example
Date: Fri, 18 Nov 2022 18:39:19 +0900
Message-Id: <20221118093931.1284465-3-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
References: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_013951_190309_5A24B624 
X-CRM114-Status: GOOD (  11.14  )
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

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Add an example to the rockchip-isp1 DT binding that showcases usage of
the parallel input of the ISP, connected to the CSI-2 receiver internal
to the i.MX8MP.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../bindings/media/rockchip-isp1.yaml         | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
index 95cf945f7ac5..88d9bc378f79 100644
--- a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
@@ -285,3 +285,75 @@ examples:
             };
         };
     };
+
+  - |
+    #include <dt-bindings/clock/imx8mp-clock.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/media/video-interfaces.h>
+    #include <dt-bindings/power/imx8mp-power.h>
+
+    parent2: parent {
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        isp@32e10000 {
+            compatible = "fsl,imx8mp-isp";
+            reg = <0x32e10000 0x10000>;
+            interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
+            clocks = <&clk IMX8MP_CLK_MEDIA_ISP_ROOT>,
+                     <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>,
+                     <&clk IMX8MP_CLK_MEDIA_APB_ROOT>;
+            clock-names = "isp", "hclk", "aclk";
+            assigned-clocks = <&clk IMX8MP_CLK_MEDIA_ISP>;
+            assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
+            assigned-clock-rates = <500000000>;
+            power-domains = <&media_blk_ctrl IMX8MP_MEDIABLK_PD_ISP>;
+            fsl,blk-ctrl = <&media_blk_ctrl 0>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@1 {
+                    reg = <1>;
+                    isp0_in: endpoint {
+                        bus-type = <MEDIA_BUS_TYPE_PARALLEL>;
+                        remote-endpoint = <&mipi_csi_0_out>;
+                    };
+                };
+            };
+        };
+
+        csi@32e40000 {
+            compatible = "fsl,imx8mp-mipi-csi2", "fsl,imx8mm-mipi-csi2";
+            reg = <0x32e40000 0x10000>;
+            interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
+            clock-frequency = <500000000>;
+            clocks = <&clk IMX8MP_CLK_MEDIA_APB_ROOT>,
+                     <&clk IMX8MP_CLK_MEDIA_CAM1_PIX_ROOT>,
+                     <&clk IMX8MP_CLK_MEDIA_MIPI_PHY1_REF_ROOT>,
+                     <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>;
+            clock-names = "pclk", "wrap", "phy", "axi";
+            assigned-clocks = <&clk IMX8MP_CLK_MEDIA_CAM1_PIX>;
+            assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_1000M>;
+            assigned-clock-rates = <500000000>;
+            power-domains = <&media_blk_ctrl IMX8MP_MEDIABLK_PD_MIPI_CSI2_1>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                };
+
+                port@1 {
+                    reg = <1>;
+                    mipi_csi_0_out: endpoint {
+                        remote-endpoint = <&isp0_in>;
+                    };
+                };
+            };
+        };
+    };
+...
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
