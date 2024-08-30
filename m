Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73F4DCA100C
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 19:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O3bIyyrIGVJbs2h/geuJMDH2d8pwpqeN07OEGGlY8yI=; b=v1SsK05uBh2Tyc
	jftHmHrerVV5TVxotWMqd+2sfD8Ep6LXTLLQSyqYdCUcd3x00RDVV1KqrRkWuC9L5uzyehBfrri7U
	wbySKKFogWDA+SzmD1udpiWnnOdIG/ixDvF5adxC15UMSK8th6c3GgYjZFK6W3mRFx14D7xXUnwHH
	FaB10psTKqWfZAh0SmoaSzNiL4qsHANRYM2ZO5DqB7iMYxtHtcfyi3ObRDLx5v897WtmkEUFf+OaQ
	PuY6TNH3epUc9+V6nATGI+MKCMEMmK5hsiJWKh0NY1V0Op1iDnwFz+QjrXxJTWtK5c32oI8coHaz5
	cl86CpiW4qdccYtQ5UEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk7Hn-00000007Ru6-0XEv;
	Fri, 30 Aug 2024 19:27:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk7Gn-00000007RLt-2rGY
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Aug 2024 19:26:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sk7Gj-000644-FH
	for linux-rockchip@lists.infradead.org; Fri, 30 Aug 2024 21:26:49 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sk7Gi-004Dbw-HD
	for linux-rockchip@lists.infradead.org; Fri, 30 Aug 2024 21:26:48 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 3939A32E12A
	for <linux-rockchip@lists.infradead.org>; Fri, 30 Aug 2024 19:26:48 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id E9ED232E0EE;
	Fri, 30 Aug 2024 19:26:45 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 06327bef;
	Fri, 30 Aug 2024 19:26:45 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Fri, 30 Aug 2024 21:25:58 +0200
Subject: [PATCH can-next v3 01/20] dt-bindings: can: rockchip_canfd: add
 rockchip CAN-FD controller
MIME-Version: 1.0
Message-Id: <20240830-rockchip-canfd-v3-1-d426266453fa@pengutronix.de>
References: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
In-Reply-To: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
To: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Elaine Zhang <zhangqing@rock-chips.com>, 
 David Jander <david.jander@protonic.nl>
Cc: Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org, 
 netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=openpgp-sha256; l=2962; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=ZqYWMtyrGWI+DE0ip880R/3MA9gTBkSpAwRLmioirEI=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBm0hzX6+Nn8nhElPP2Q042ZgQTmKKPk6r8mCLry
 x96UlbW6TyJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZtIc1wAKCRAoOKI+ei28
 b7GeB/wJNwTHxmEwZ8UOuRl0GaCTPzH+/C/ubbvie6+fmfM8EQzNGCINpnOG6hwhrnFKb202wNw
 39Q54Awy2+NTdVYlWMl2la1PZ28jSOpZuoGtZOFE65k1hDm8znxQrtiCa8Zl+rAH5oKcXHoeX0b
 1HcU7LNE5JAzTaQ6cyHS2YklF0egzGlvuAXldoOm50Yj4vuvKACHBykgSH1xyndGM0nTXyzP3VK
 /lk1AYLm1EmA8V5iR9b3WZ4C2T6YdnZooJ7Z2AswZXRshsAyi1yoSrySZbZPAI9lDmHYQVPRE2P
 DQ95cBHv05L+fiVvV+3rXL92pbejaHkXDspGbn72QtuSZVyS
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_122653_748642_687EF838 
X-CRM114-Status: GOOD (  13.46  )
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

Add documentation for the rockchip rk3568 CAN-FD controller.

Co-developed-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 .../bindings/net/can/rockchip,rk3568-canfd.yaml    | 74 ++++++++++++++++++++++
 MAINTAINERS                                        |  7 ++
 2 files changed, 81 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/can/rockchip,rk3568-canfd.yaml b/Documentation/devicetree/bindings/net/can/rockchip,rk3568-canfd.yaml
new file mode 100644
index 000000000000..022ae799b0cc
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/can/rockchip,rk3568-canfd.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/can/rockchip,canfd.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title:
+  Rockchip CAN-FD controller
+
+maintainers:
+  - Marc Kleine-Budde <mkl@pengutronix.de>
+
+allOf:
+  - $ref: can-controller.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - const: rockchip,rk3568v2-canfd
+      - items:
+          - const: rockchip,rk3568v3-canfd
+          - const: rockchip,rk3568v2-canfd
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: baud
+      - const: pclk
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: core
+      - const: apb
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3568-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        can@fe570000 {
+            compatible = "rockchip,rk3568v2-canfd";
+            reg = <0x0 0xfe570000 0x0 0x1000>;
+            interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
+            clocks = <&cru CLK_CAN0>, <&cru PCLK_CAN0>;
+            clock-names = "baud", "pclk";
+            resets = <&cru SRST_CAN0>, <&cru SRST_P_CAN0>;
+            reset-names = "core", "apb";
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index baf88e74c907..115307354f0b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19730,6 +19730,13 @@ F:	Documentation/ABI/*/sysfs-driver-hid-roccat*
 F:	drivers/hid/hid-roccat*
 F:	include/linux/hid-roccat*
 
+ROCKCHIP CAN-FD DRIVER
+M:	Marc Kleine-Budde <mkl@pengutronix.de>
+R:	kernel@pengutronix.de
+L:	linux-can@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/net/can/rockchip,rk3568-canfd.yaml
+
 ROCKCHIP CRYPTO DRIVERS
 M:	Corentin Labbe <clabbe@baylibre.com>
 L:	linux-crypto@vger.kernel.org

-- 
2.45.2



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
