Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB703C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 03:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q19sHJ+ogb7JSRyFG0tUvcja7GULLu7/jWZHvr5lI2E=; b=bkYoeW3ELNIBiz
	hcRBrkaWTSvoEOZgh3VCUtjgaVYT+mhfUBWKby8i7S0Kp8ImDyt0sMNqLurjqkg/l9lc1h/KuiGQP
	v4KIcOB7TB1QvXAG4CEkUThZKy8ytpoMJqz6SjRl4suedUGIxZCtWuLmVtMDNyEMobuc7ED55qn5O
	PkZxF3RvcsvEe8CZ2n7lLnI7BfpePibVZQE8Mr2uodpds62Cr8G3zqSM91WOJnzt2bDxtQypRa5b0
	Luh5y4wF9x5DDHNgXgyRpXGBp8eAe6FEL076b4QrbiUFW9fLaMCK+rqnU1BzREefXyNBKBwvohGjL
	N4USnNmNAlbKR74Ca0Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcHvB-00CAFW-26;
	Wed, 15 Mar 2023 03:35:25 +0000
Received: from woodpecker.gentoo.org ([140.211.166.183] helo=smtp.gentoo.org)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcHv5-00CADC-2b;
	Wed, 15 Mar 2023 03:35:21 +0000
From: Yixun Lan <dlan@gentoo.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Jagan Teki <jagan@amarulasolutions.com>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Yixun Lan <dlan@gentoo.org>,
	Nick Xie <nick@khadas.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Khadas Edge2 board
Date: Wed, 15 Mar 2023 11:34:40 +0800
Message-Id: <20230315033441.32719-2-dlan@gentoo.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230315033441.32719-1-dlan@gentoo.org>
References: <20230315033441.32719-1-dlan@gentoo.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_203520_029630_DC028A51 
X-CRM114-Status: UNSURE (   8.09  )
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

Edge2 is an ultraslim, credit-card sized ARM PC designed by Khadas.
It has quite a few rich peripherals.

Specification:
- Rockchip RK3588s
- 8/16GB LPDDR4
- 32/64GB eMMC 5.1
- AP6275P WiFi6 LAN
- HDMI2.1 Type-A
- MIPI-CSI x3
- MIPI-DSI x2
- usb3.1; usb2.0
- RTC clock
- PWM fan
- SPI Flash
- Pads expansion board (UART, USB)

Signed-off-by: Yixun Lan <dlan@gentoo.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 35f74eda30ae..ff663797291c 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -533,6 +533,11 @@ properties:
               - khadas,edge-v
           - const: rockchip,rk3399
 
+      - description: Khadas Edge2 series boards
+        items:
+          - const: khadas,edge2
+          - const: rockchip,rk3588s
+
       - description: Kobol Helios64
         items:
           - const: kobol,helios64
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
