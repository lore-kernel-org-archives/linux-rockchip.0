Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 443A5C43327
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jun 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JavRAXBCvLqaer9x27lnjDeXNZH/yAVL/ppvJL3NezQ=; b=Xl0LiFeI3ITsv7
	+s9UzCvMU0Rw5Dvg0Q7AxMGLeGV/fKpIs9WdrbsGfDAzVe+L2FdVBU4IwpSY1MWiDle+2ce/Jx+Pd
	NCNoTwrPAMcDj0/Fm9aJXoLlG5531RN0Y4woWJEEPK/fxpHfH5UtqbtMgxfvzTXsEDZ5M5RzpHZIY
	ygBRQCGRKDT1KPNhg+UWs+kCnJpDoSShlfSqaYWJizf/vAQNfvqktvTCVW82j7+1ZAiXF6yhZMJYd
	dqAgBKANFM/W2oSiauFdT1/3jkt1dWDfj+orZ4uVuV/Usq/MHVCcqs3cCvxLUldTnuxdoIySB5y37
	yVjju4OBCjG+uLe+AreA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weC1L-0000000EkEX-0Upw;
	Mon, 29 Jun 2026 13:27:31 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weC1J-0000000EkCi-3Z2r;
	Mon, 29 Jun 2026 13:27:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9737A41A3A;
	Mon, 29 Jun 2026 13:27:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1AC31F000E9;
	Mon, 29 Jun 2026 13:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782739649;
	bh=eOck3k2GHZO/S3AlTEUqocjsRNiDXqKCWowdRT7XkWQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=FK3JXy8U0qoXEQw7Ia7A2VdPMA6etYZxLO5R1hO0eG2bDFs9j3KWyic/u9Tbb30/T
	 0i4fbanW/FC5tBTOgKJSvN1vOquOpY2w/EZ4GNYNP/mk9OSCxR0jP9MBWkCjojecAM
	 QYf4OTn1oTrUX5tBhX91NPhYsWVc784JDB962NXCnay9DMWPkS4ab9jv6tRfUcz040
	 umhw+xmYJT3fQVGynYhdDfPo+x9vMpMWCnnSbr41bSHpwTdm0N8kL72KM0yqxHw5g3
	 rOigYSqSChhHf+P+lMgYawL7s91VVuZ6V+JINIHcElahI3LOVWmhse0Bb5sE7lMy+C
	 ewwreLb4k13Dg==
From: Arnd Bergmann <arnd@kernel.org>
To: linux-gpio@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Frank Li <Frank.Li@nxp.com>,
	Robert Jarzmik <robert.jarzmik@free.fr>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Greg Ungerer <gerg@linux-m68k.org>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
	Linus Walleij <linusw@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Dominik Brodowski <linux@dominikbrodowski.net>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	patches@opensource.cirrus.com,
	linux-m68k@lists.linux-m68k.org,
	linux-mips@vger.kernel.org,
	linux-sh@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-media@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-sound@vger.kernel.org
Subject: [PATCH 06/13] [net-next] net: replace linux/gpio.h inclusions
Date: Mon, 29 Jun 2026 15:26:26 +0200
Message-Id: <20260629132633.1300009-7-arnd@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260629132633.1300009-1-arnd@kernel.org>
References: <20260629132633.1300009-1-arnd@kernel.org>
MIME-Version: 1.0
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

From: Arnd Bergmann <arnd@arndb.de>

linux/gpio.h should no longer be used, change these in drivers/net to
linux/gpio/consumer.h where possible, with b53 being the only one still
using linux/gpio/legacy.h.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/dsa/b53/b53_priv.h                       | 3 ++-
 drivers/net/dsa/microchip/ksz8.c                     | 2 +-
 drivers/net/ethernet/allwinner/sun4i-emac.c          | 2 +-
 drivers/net/ethernet/apm/xgene/xgene_enet_main.c     | 2 +-
 drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c | 2 +-
 drivers/net/phy/mdio_device.c                        | 2 +-
 6 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/net/dsa/b53/b53_priv.h b/drivers/net/dsa/b53/b53_priv.h
index cd27a7344e89..29cca7945df7 100644
--- a/drivers/net/dsa/b53/b53_priv.h
+++ b/drivers/net/dsa/b53/b53_priv.h
@@ -23,6 +23,7 @@
 #include <linux/mutex.h>
 #include <linux/phylink.h>
 #include <linux/etherdevice.h>
+#include <linux/gpio/consumer.h>
 #include <net/dsa.h>
 
 #include "b53_regs.h"
@@ -467,7 +468,7 @@ static inline void b53_arl_search_read(struct b53_device *dev, u8 idx,
 #ifdef CONFIG_BCM47XX
 
 #include <linux/bcm47xx_nvram.h>
-#include <linux/gpio.h>
+#include <linux/gpio/legacy.h>
 #include <bcm47xx_board.h>
 static inline struct gpio_desc *b53_switch_get_reset_gpio(struct b53_device *dev)
 {
diff --git a/drivers/net/dsa/microchip/ksz8.c b/drivers/net/dsa/microchip/ksz8.c
index 138f2ab0774e..586916570a84 100644
--- a/drivers/net/dsa/microchip/ksz8.c
+++ b/drivers/net/dsa/microchip/ksz8.c
@@ -18,7 +18,7 @@
 #include <linux/delay.h>
 #include <linux/dsa/ksz_common.h>
 #include <linux/export.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/if_vlan.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
diff --git a/drivers/net/ethernet/allwinner/sun4i-emac.c b/drivers/net/ethernet/allwinner/sun4i-emac.c
index fc7341a5cbb7..42174249ef61 100644
--- a/drivers/net/ethernet/allwinner/sun4i-emac.c
+++ b/drivers/net/ethernet/allwinner/sun4i-emac.c
@@ -15,7 +15,7 @@
 #include <linux/clk.h>
 #include <linux/etherdevice.h>
 #include <linux/ethtool.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/interrupt.h>
 #include <linux/irq.h>
 #include <linux/mii.h>
diff --git a/drivers/net/ethernet/apm/xgene/xgene_enet_main.c b/drivers/net/ethernet/apm/xgene/xgene_enet_main.c
index 3b2951030a38..507db46daf2b 100644
--- a/drivers/net/ethernet/apm/xgene/xgene_enet_main.c
+++ b/drivers/net/ethernet/apm/xgene/xgene_enet_main.c
@@ -7,7 +7,7 @@
  *	    Keyur Chudgar <kchudgar@apm.com>
  */
 
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include "xgene_enet_main.h"
 #include "xgene_enet_hw.h"
 #include "xgene_enet_sgmac.h"
diff --git a/drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c b/drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c
index 48b94ce77490..88c5c52e0e38 100644
--- a/drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c
+++ b/drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c
@@ -16,7 +16,7 @@
 #include <linux/net_tstamp.h>
 #include <linux/ptp_classify.h>
 #include <linux/ptp_pch.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 
 #define PCH_GBE_MAR_ENTRIES		16
 #define PCH_GBE_SHORT_PKT		64
diff --git a/drivers/net/phy/mdio_device.c b/drivers/net/phy/mdio_device.c
index 56080d3d2d25..a18263d5bb02 100644
--- a/drivers/net/phy/mdio_device.c
+++ b/drivers/net/phy/mdio_device.c
@@ -8,7 +8,7 @@
 
 #include <linux/delay.h>
 #include <linux/errno.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/gpio/consumer.h>
 #include <linux/init.h>
 #include <linux/interrupt.h>
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
