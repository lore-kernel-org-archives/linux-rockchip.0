Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 355B2CD37B6
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 08:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3fOf4nsCm2Em/SpGdztboW82d4OstsY1CP9BrbPoXM=; b=rvh2k6s61Wy9Tv
	Kb5Yr4Ct4qjj14CL8wacFvQilqyTGKsAC4w6hCxFrfrfbYfo45xLxW+9rLV5MIebUoRV63Zgs+6df
	kO5Lk5ITpSx/RxEE4AeH9Ty80tpgmLtuoF/VBT3vS/c3ozHayW9+ku2SxfaHy+HTLVHHF/g8Piy6D
	6bzBQG0YRUyanJubxHMpV1FKCanSNAm3aUWpUOofoGOF2PU9uk9Fx21rNmWWsQBwp3xaIEA0jPS+R
	Nli+FQ2vG5gYccAS9zdoDoaag5fKJc21CzI9lhmZgQ/4Yjt1x2AYKLeUweCFfcxwnF6RhQ5STBc6Q
	iq10gtyrilDzSq6cFnEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sllBj-00000003LWC-3PWx;
	Wed, 04 Sep 2024 08:16:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sll8o-00000003Kch-0lzp
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Sep 2024 08:13:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sll8n-0007P5-0b
	for linux-rockchip@lists.infradead.org; Wed, 04 Sep 2024 10:13:25 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sll8m-005Ojr-GU
	for linux-rockchip@lists.infradead.org; Wed, 04 Sep 2024 10:13:24 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 2D581331F8D
	for <linux-rockchip@lists.infradead.org>; Wed, 04 Sep 2024 08:13:24 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 9E53A331F4C;
	Wed, 04 Sep 2024 08:13:21 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 046ff06c;
	Wed, 4 Sep 2024 08:13:20 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 04 Sep 2024 10:12:45 +0200
Subject: [PATCH can-next v5 01/20] dt-bindings: can: rockchip_canfd: add
 rockchip CAN-FD controller
MIME-Version: 1.0
Message-Id: <20240904-rockchip-canfd-v5-1-8ae22bcb27cc@pengutronix.de>
References: <20240904-rockchip-canfd-v5-0-8ae22bcb27cc@pengutronix.de>
In-Reply-To: <20240904-rockchip-canfd-v5-0-8ae22bcb27cc@pengutronix.de>
To: kernel@pengutronix.de, Alibek Omarov <a1ba.omarov@gmail.com>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3079; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=s0YXGnAfSwy7XRbaPYyid75a4fJ39e96VqJwRj80reE=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBm2BaD0C0pRqLiSr8xdLD+vwXpNvilJJ64pkAa+
 AnavB9CwteJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZtgWgwAKCRAoOKI+ei28
 bx7fCACLAhmTm/gLgISxbT1tvDVsMJcxL0chp32/FupADka4lP7I4pTvSrzIKMzgnS51QrHsqdk
 H5Zv+r3u1LfML4m246tbJb2QD8x4eCw4mcv6rTnXC112XMB+6ZY/2vYC85csKru7Z6zwdKkxSmB
 jhQrVJtaicKdD47sltHrk/7e+VOvtUnLtCTTuxjdrP6GHIQamfJ6wiWkA3+w5zxFdHf2Lbmwig7
 WcijzAlbgfYygcm0VqB7ZLVvB2YOewiY3yPR7cc+h6+ZN4nTgAulBmcB3yRXoYfBgSpmLb5xp6a
 60FL4BetalmbH3Iezx1WeYQZM8d488ZPShzO6ndNdZWvGvCP
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_011326_265319_2A46531F 
X-CRM114-Status: GOOD (  13.83  )
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
Tested-by: Alibek Omarov <a1ba.omarov@gmail.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 .../bindings/net/can/rockchip,rk3568v2-canfd.yaml  | 74 ++++++++++++++++++++++
 MAINTAINERS                                        |  7 ++
 2 files changed, 81 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-canfd.yaml b/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-canfd.yaml
new file mode 100644
index 000000000000..a077c0330013
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-canfd.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/can/rockchip,rk3568v2-canfd.yaml#
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
index baf88e74c907..aa0e023955cf 100644
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
+F:	Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-canfd.yaml
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
