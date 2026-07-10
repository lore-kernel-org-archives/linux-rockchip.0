Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6823EC44507
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jul 2026 16:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YomZYkLeM6XljXilXsy2CyvcOBe5bFpres4AzLjuFgI=; b=k0jtCz8HuE0VwQ
	Gso5KMjEomRWOw0ze9+7H6n9zYiqVReUZa0U4c0L9lbnHs1XbqHvHn1BYTLyT7UUiQdoWI+oZl52C
	xbbIcvb6CmqHxjIExmhGN9Wv/VIHxOHP8ZJ4iB9wDMkEefrOg4F5V/QCSVzzu9xIMT7CdFc1dCaRN
	bsxmcWV4HgvJZtVtLy7SWxRoeVDf5JdoLXePHRx5WB/jjNQX3s5Fo7z+WJJEaiFBeOtk7l72CwYJi
	KNWFUBMX2TGoxbPoFlCgEtGtK0jZJIWfKhCjIZW7A/LXl1ZGa6oxV0HfLB3l6gm9keC2uNq7WGa7A
	j6WInBLjS3XBgZWHe3Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiENb-00000005KNJ-1zoQ;
	Fri, 10 Jul 2026 16:47:11 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiEMs-00000005J9e-1QTB;
	Fri, 10 Jul 2026 16:46:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783701978;
	bh=Cc0K4Dr4eJL0SNbtq8hAs+EI1LLSLgYhEuv3ZarCDYw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=oK+SRs1yQCrn9hfwNMctNaPDc1kYgjZTEpE20rnlEFuNH2xXzIKQ1xeaS8gEnyzjb
	 zQNqV95MJNTT+mYE1KBYu/79hqvZCqjhbp4Ou8CAlBQfxGY+bi4rlFl6P6EXrKqCOQ
	 gek1Q6B87B4J7unlKSaRx5qVRG/yWF6vLVp8zoLKbtqW+Xt4Lwns5FHqYHSGm20hmD
	 elgz8dpSPQVtPNcIbDGqLcF16LwqKNUeYYHmQlMRi9nGsi8IxQNgBKdLaKIUPSKIPJ
	 PlyD62jqfT85HpDZY/koAYgzkFqY36wyrawM3sfPAgWzx53wmkoSjSPBz6G9Pe9sfg
	 g09edkt/dKzGw==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8646B17E0F8B;
	Fri, 10 Jul 2026 18:46:18 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id E775C48003A; Fri, 10 Jul 2026 18:46:17 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 10 Jul 2026 18:44:46 +0200
Subject: [PATCH v12 08/36] phy: rockchip: usbdp: Amend SSC modulation
 deviation
MIME-Version: 1.0
Message-Id: <20260710-rockchip-usbdp-cleanup-v12-8-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@flipper.net>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1765;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=lqHOLnlRChaCaNvIuz6SialOxFJNoEYQ3ZMsuUuJrVw=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpRIdiBQckgq8cbgmfaE6UBpcY52PsNbZXys
 SrkgsiG4VvkxIkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqUSHYAAoJENju1/PI
 O/qa338P/3ae7Zg2pqD5qgdYjuVXQsrspVZV4wOCaUO/iy4JNnkTL/6t4CRR/4IvHQa57GdFz5z
 4eXcgrDrILT3k7Y16WB2OZ491IxZYdiYWq4VeaT3bmjFAnqp/v2zy0ee8TNWcj7VbBKMI8KQj6e
 geZLSWeL0za0Nl9QKFvCw197JwUlNhmmGDcF8Bw+fcYkcAVFKp+YgusQk2Ck0HsvLdWu6JA+2Qh
 IKblTdK+tZ+7RnWjLHzRvHNgHMTeNCM8zFqfgzx1TleI4/iKnx4d37RLI5KaO7lpIeIFzcnJcPu
 0hNqQCn3lCjQyPliveGik709JVEuQcHCRADLMc/NmEpqT2KCHmVa7OnouwSjzfsunRQQwUL+Doh
 DIoBRuoJyHnnXcWe2Zi7tMdsMr/Gbn4dKnqdsG8l7iqT4MpqCP30fZW3wHT7IU0vYlFJBVwRsnG
 U9k01WBLqM7YiceKGRnOWw+yY0Q2uiU12Xq3ZwidRujfuu9ffoHln31+OUL1mMg64ksCzvrX0G5
 9w8DzkBnYUnhO1azs1QMfqJASidlXtLJScycOnnegjbHvPeII/OLrpfvBVD2qISGZqx88ym7ei0
 80kuWszdb5nkwp1zWyWBXrFtDk5uwws56HAFVBwpgMOUsTPpK6x8/EJqVA2lupTmSXFBBu9UwoG
 SfiSopR2ns4Tlx5MiARwxxA==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_094626_546804_62B0D728 
X-CRM114-Status: GOOD (  10.57  )
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

From: Frank Wang <frank.wang@rock-chips.com>

Move SSC modulation deviation into private config of clock

 - 24M: 0x00d4[5:0] = 0x30
 - 26M: 0x00d4[5:0] = 0x33

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
[Taken over from rockchip's kernel tree; register 0x00d4 is not
described in the TRM]
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index e3f5a26c876a..cb6acadfbccf 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -350,7 +350,8 @@ static const struct reg_sequence rk_udphy_24m_refclk_cfg[] = {
 	{0x0a64, 0xa8}, {0x1a3c, 0xd0},
 	{0x1a44, 0xd0}, {0x1a48, 0x01},
 	{0x1a4c, 0x0d}, {0x1a54, 0xe0},
-	{0x1a5c, 0xe0}, {0x1a64, 0xa8}
+	{0x1a5c, 0xe0}, {0x1a64, 0xa8},
+	{0x00d4, 0x30}
 };
 
 static const struct reg_sequence rk_udphy_26m_refclk_cfg[] = {
@@ -377,7 +378,7 @@ static const struct reg_sequence rk_udphy_26m_refclk_cfg[] = {
 	{0x0c30, 0x0e}, {0x0c48, 0x06},
 	{0x1c30, 0x0e}, {0x1c48, 0x06},
 	{0x028c, 0x18}, {0x0af0, 0x00},
-	{0x1af0, 0x00}
+	{0x1af0, 0x00}, {0x00d4, 0x33}
 };
 
 static const struct reg_sequence rk_udphy_init_sequence[] = {
@@ -412,8 +413,7 @@ static const struct reg_sequence rk_udphy_init_sequence[] = {
 	{0x0070, 0x7d}, {0x0074, 0x68},
 	{0x0af4, 0x1a}, {0x1af4, 0x1a},
 	{0x0440, 0x3f}, {0x10d4, 0x08},
-	{0x20d4, 0x08}, {0x00d4, 0x30},
-	{0x0024, 0x6e},
+	{0x20d4, 0x08}, {0x0024, 0x6e}
 };
 
 static inline int rk_udphy_grfreg_write(struct regmap *base,

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
