Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5176CAC5AC
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Sep 2025 07:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gbZzanQi11pPfxFGJ7Y6W39xUqT31Kno4+rCxaWM540=; b=ksqywc/jylRQ2Y
	20COZs3oT0LTlwhzbiOq0duV3hVrwJxAVg7tzggKDOcNqzd+2rsypjfMqoS3QVNeG05eYanDe4g/z
	Z6fDe4IcA1Ok1G8ya2IDB6aaYxPENttcEMkXXvXAcWCw2OD0T86lm1awjh86V84Ulo2X8LzGJmC9K
	jv3+NC2FJ+YW4iQeh1bYCwKWGIC1KuW0XDi3cXadhNzxxhUTIPcXJlNCFyJcV+Ax0rntjh9rr2OH4
	9AvyM8QiapcJFgH5fMyYGNr9kmJDS2zYlB9lsiy1y/brlKmKR325HbWHyMVDy8Ll7lTyNX4oY7nQR
	jfq1nFhgaiYrGs9gImnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0amH-00000009B0S-1sbx;
	Mon, 22 Sep 2025 07:16:01 +0000
Received: from mail-m15590.qiye.163.com ([101.71.155.90])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0amC-00000009ApD-3Fc2;
	Mon, 22 Sep 2025 07:15:58 +0000
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 239b62aa5;
	Mon, 22 Sep 2025 15:15:47 +0800 (GMT+08:00)
From: Elaine Zhang <zhangqing@rock-chips.com>
To: zhangqing@rock-chips.com,
	mkl@pengutronix.de,
	kernel@pengutronix.de,
	mailhol.vincent@wanadoo.fr,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	cl@rock-chips.com,
	kever.yang@rock-chips.com
Cc: linux-can@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v7 1/4] dt-bindings: can: rockchip_canfd: add rk3576 CAN-FD controller
Date: Mon, 22 Sep 2025 15:15:40 +0800
Message-Id: <20250922071543.73923-2-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250922071543.73923-1-zhangqing@rock-chips.com>
References: <20250922071543.73923-1-zhangqing@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a997047556f03a3kunm864fae2f2315ff
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh1MTFZCTx5PSUJDHUpPTRhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ewCs27otX8URC1SDS3RTg7l/ZHere0KXrM6WD9oDEfChlLnGgVLPFXUPELIHbcn0p62ZEK/tYr5AoQEqt1P44edR6HYnNMRDpVt2/+enHLsEbshS1fQn5+7RajI3HEEfzZ5cHPZCZ/QAfsbofLZ9I1zXMDK9ygPJMIimX0COx9A=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=i75mDsCkq/jbT8+fOGxrW7Oxw4N8ldNFYTgOUYb4dDk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_001557_017859_066E5362 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
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

Add documentation for the rockchip rk3576 CAN-FD controller.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 .../net/can/rockchip,rk3568v2-canfd.yaml      | 47 +++++++++++++++++--
 1 file changed, 44 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-canfd.yaml b/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-canfd.yaml
index a077c0330013..74b1a502f0b7 100644
--- a/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-canfd.yaml
+++ b/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-canfd.yaml
@@ -10,13 +10,11 @@ title:
 maintainers:
   - Marc Kleine-Budde <mkl@pengutronix.de>
 
-allOf:
-  - $ref: can-controller.yaml#
-
 properties:
   compatible:
     oneOf:
       - const: rockchip,rk3568v2-canfd
+      - const: rockchip,rk3576-canfd
       - items:
           - const: rockchip,rk3568v3-canfd
           - const: rockchip,rk3568v2-canfd
@@ -43,6 +41,31 @@ properties:
       - const: core
       - const: apb
 
+  dmas:
+    maxItems: 1
+
+  dma-names:
+    items:
+      - const: rx
+
+allOf:
+  - $ref: can-controller.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3576-canfd
+      required:
+        - compatible
+    then:
+      required:
+        - dmas
+        - dma-names
+    else:
+      properties:
+        dmas: false
+        dma-names: false
+
 required:
   - compatible
   - reg
@@ -72,3 +95,21 @@ examples:
             reset-names = "core", "apb";
         };
     };
+
+  - |
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        can@2ac00000 {
+            compatible = "rockchip,rk3576-canfd";
+            reg = <0x0 0x2ac00000 0x0 0x1000>;
+            interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
+            clocks = <&cru CLK_CAN0>, <&cru PCLK_CAN0>;
+            clock-names = "baud", "pclk";
+            resets = <&cru SRST_CAN0>, <&cru SRST_P_CAN0>;
+            reset-names = "core", "apb";
+            dmas = <&dmac0 20>;
+            dma-names = "rx";
+        };
+    };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
