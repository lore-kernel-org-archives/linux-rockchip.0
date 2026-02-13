Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF37FEDF172
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Feb 2026 14:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4kwjZLlNzVGCY4eFCRypYQm7w32OJwXtBoKQMfWHj0I=; b=FvU9dQ3SYpJk69
	/i0l9SvS+Kaiq/34wnRwBmhRKTypPhOtv0D62EG8upjkinmFELjCYInuXvnBq8e0CbBOP2bR6d23j
	Fco8nq8M6mTWc9G7/xmw39P+TDN5xoWovfW392jhlfDg1eiLFjZdzIb8/vHUS2Sm3wDKhgNT8DPCW
	wM/Rx7S9/XfxDhBBbMT4zAa98ZGyrwgBzeSV/bfHh1pQq6ClpuUPqvVVPhY3L+UT3pMhLj4tcwLoK
	guAVZGQG0nP8l/oOtTcNUHHUnHSK7itzndcZw3phmuIc2JfhTCHz6H2kRTm9AjisZx6BxnCr9nlz+
	mGomCpPyjiVbUi+91pZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vquKx-00000003Ys9-1pPa;
	Fri, 13 Feb 2026 14:40:03 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vquKZ-00000003YOA-0Ego;
	Fri, 13 Feb 2026 14:39:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1770993571;
	bh=wJZwMH5VNSE/o5UNMK6zuMUZDJCLHOUN4lmKhidacts=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=d4P/UOrn67uHWFvw6Br0qmMLgCfchrD2APunCATJT+8atNfOYuVMUGKo/20J1KKuv
	 Z7Xm+bOW8/+bXWLjR4O0T0gP1snz6GYaXLmTOq6xmmvotwzrx5HCAVv3OZe6mfpECH
	 xCPuLa5NajwoQRHV1e9vAWimxsSmF1H1ycvSFuvFhEoO2q0vymq8KPfEmdU1N+qb6R
	 vDunMW7/asrj0UENr75+vw+F0UsuwOzdOJyWX029odLVbTKaePSj3vzmHMuUWO1r8N
	 awcYoDD9x9TORYL4n6CmCTwNg1emtR1zVMhwYMQDwiPhWqadf70SI6JxLPTcBZb0gZ
	 1nbUPjZnLkceg==
Received: from jupiter.universe (dyndsl-091-248-188-214.ewe-ip-backbone.de [91.248.188.214])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6798217E35DC;
	Fri, 13 Feb 2026 15:39:31 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id AAD4248002D; Fri, 13 Feb 2026 15:39:30 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 13 Feb 2026 15:39:31 +0100
Subject: [PATCH v2 8/9] phy: rockchip: usbdp: Use FIELD_PREP_WM16_CONST
MIME-Version: 1.0
Message-Id: <20260213-rockchip-usbdp-cleanup-v2-8-b67ec225f96e@collabora.com>
References: <20260213-rockchip-usbdp-cleanup-v2-0-b67ec225f96e@collabora.com>
In-Reply-To: <20260213-rockchip-usbdp-cleanup-v2-0-b67ec225f96e@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>
Cc: Andy Yan <andy.yan@rock-chips.com>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1489;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=wJZwMH5VNSE/o5UNMK6zuMUZDJCLHOUN4lmKhidacts=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGmPN6J8qWsmaF7tuteYMKNHtx/ukhITmdoaz
 WoVEoFmj/ZxeIkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJpjzeiAAoJENju1/PI
 O/qamqoP/jN9NNvXsp9yErGx8UmQJ3nzfrd7W6VJBYhTU8cY1tQrQShqfe1ApTVF1D3HjoX9SOj
 ex4sNRP4WzxIv7vgMELmcHQbv7jPwbPECn2wA0IWTX9GZ5YdbageUreaqAgL64qEDjyqWPj0hE7
 qvjPqPpQ0+yYvEOzHJod1/S0heE6Lz14eX8zMHXVDmWTfGA3PtYTKhXgQGJ3FW7H/4iecZNaQ5W
 qXO3A8hcWpeMpkOmzAEwCggG7bWvI0GbOuvOAhnTJpQ4uK1a8az7ANwfY8arJ+GsUtVzGVd9Fm+
 daP1CLTHWISFg0TDZRNrWEqwU3ExwutfWbpWxQdV9iusa/9Dzt2sdh/rn8K2VnuDvejbl8WwmVp
 46X+vEr1dQq6lUG3pTt384qHSpYjO7DGfTKLIsO/EYt/ZPp+EvS2uVISYbFZc8rDjT1vOTT2NpL
 fqqmtEZDNdaMru1Rf41y67qC/3RXbPvUUeVoCZfYiRlbQPUS5zHuaGw4TQ8P9IAYwf4A+xlmrOX
 vBW7RC2AR5dQMgVHrpHSwjo3KHT7dxoiu/EH3uIZG8IkRKbP43pSMoiWl5mZkQE3KbpDsl+pFT7
 Ia6xJxRbWegkJ6vEVH2jOkeMs9PRlhsIeP5Hb2AxXFED2riAoNbRDiOmTb6WreDwKz2pJO5X/u9
 cnownPMKHItNBL+ijYwUzcQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_063939_294526_118C91B1 
X-CRM114-Status: GOOD (  11.33  )
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

Cleanup code by replacing open-coded version of FIELD_PREP_WM16_CONST
with the existing helper macro.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 6d7ca11b308e..1bfc365e2b2c 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -12,6 +12,7 @@
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/gpio.h>
+#include <linux/hw_bitfield.h>
 #include <linux/mfd/syscon.h>
 #include <linux/mod_devicetable.h>
 #include <linux/module.h>
@@ -75,7 +76,6 @@
 #define TRSV_LN2_MON_RX_CDR_DONE_OFFSET		0x1b84	/* trsv_reg06E1 */
 #define TRSV_LN2_MON_RX_CDR_LOCK_DONE		BIT(0)
 
-#define BIT_WRITEABLE_SHIFT			16
 #define PHY_AUX_DP_DATA_POL_NORMAL		0
 #define PHY_AUX_DP_DATA_POL_INVERT		1
 #define PHY_LANE_MUX_USB			0
@@ -104,8 +104,8 @@ struct rk_udphy_grf_reg {
 #define _RK_UDPHY_GEN_GRF_REG(offset, mask, disable, enable) \
 {\
 	offset, \
-	FIELD_PREP_CONST(mask, disable) | (mask << BIT_WRITEABLE_SHIFT), \
-	FIELD_PREP_CONST(mask, enable) | (mask << BIT_WRITEABLE_SHIFT), \
+	FIELD_PREP_WM16_CONST(mask, disable), \
+	FIELD_PREP_WM16_CONST(mask, enable), \
 }
 
 #define RK_UDPHY_GEN_GRF_REG(offset, bitend, bitstart, disable, enable) \

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
