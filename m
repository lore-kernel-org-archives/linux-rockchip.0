Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75B66C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 17:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3xc2aoRONWbVovxF1KdMIMzPYkKtUcJl3BrTwN6ktTc=; b=N2F3v1Xn9eYj2a
	UK+gC/ngXI2o8lM63vjdAh+IpquJ2x8KB2FbL7M5sR4SBnVVH0kGIwKFkwZnpP1OuIink/dd5olyK
	jsuUSwWrh0YbIzUSre46o3erK5I6UszMj8MDFdRo7QJ3FWI3GXn4/Boisig7TWVZYxD4X2fKB49RL
	XtN0mYy9UPATIJNYzen8u49K4zswesWX+o4oqDKqOkFlcXPNWdRlV6JoDEAmumkT3JCxPSN1Jw1oh
	WGP0a5IDJHdit4ak33wZxs9crbZWqZ2jeaWbZxeyGUg/eE4E58MyneYqgrZnvU60ATlmjlT/Zb2a3
	nVStf/N9aOhZm5y+WqSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhwqY-001fMT-B1; Fri, 22 Apr 2022 17:13:30 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhwms-001dU5-5l; Fri, 22 Apr 2022 17:09:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 482381F468F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650647377;
 bh=Lzk2WxbwgXoGe6LfQ+DwZ4F1e/aMgGuJ31kR4qwkhZs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OWEva+EjadbXN0HpKtZw8n7qdqo2Ks3wZYFEL12wYZePzq6XNCDdtxqhftiRW7/O9
 Jpo7iTcZafNqHcKQjoVCLs4ROGcsxhotrgXuAlm3WWZQuBDQTVK4+YK7AGQvU7wIXc
 VUtt4z+V+IWMuJkJwquSa7QMm6TOe+gcgonqgVYkBa6pRIosPGgqzSVA1mbhJIZ5Lr
 OGubn7x1RS8UB0XxUKdUQkCVDPwuIc4qYbyywo+ozXiJvEPuI9JWrF0WEwUurMQFes
 PrLKDkbZpq2z05uD/AqXSHp+QcJywOmtfm95JYsxMlypmzdjjISvu8UsyFxKqpIbWq
 UOLHhpB0hNpEA==
Received: by jupiter.universe (Postfix, from userid 1000)
 id D48AA4807F9; Fri, 22 Apr 2022 19:09:32 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@lists.collabora.co.uk, Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCHv1 08/19] mmc: sdhci-of-dwcmshc: add reset call back for
 rockchip Socs
Date: Fri, 22 Apr 2022 19:09:09 +0200
Message-Id: <20220422170920.401914-9-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220422170920.401914-1-sebastian.reichel@collabora.com>
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_100942_376095_9AED94DC 
X-CRM114-Status: GOOD (  17.50  )
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

From: Yifeng Zhao <yifeng.zhao@rock-chips.com>

The reset function build in the SDHCI will not reset the logic
circuit related to the tuning function, which may cause data
reading errors. Resetting the complete SDHCI controller through
the reset controller fixes the issue.

Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
[rebase]
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/mmc/host/sdhci-of-dwcmshc.c | 28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
index bac874ab0b33..d95ae6ca1256 100644
--- a/drivers/mmc/host/sdhci-of-dwcmshc.c
+++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
@@ -15,6 +15,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/reset.h>
 #include <linux/sizes.h>
 
 #include "sdhci-pltfm.h"
@@ -63,6 +64,7 @@
 struct rk3568_priv {
 	/* Rockchip specified optional clocks */
 	struct clk_bulk_data rockchip_clks[RK3568_MAX_CLKS];
+	struct reset_control *reset;
 	u8 txclk_tapnum;
 };
 
@@ -255,6 +257,23 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
 	sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_STRBIN);
 }
 
+static void rk35xx_sdhci_reset(struct sdhci_host *host, u8 mask)
+{
+	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
+	struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
+	struct rk35xx_priv *priv = dwc_priv->priv;
+
+	if (mask & SDHCI_RESET_ALL) {
+		if (!IS_ERR_OR_NULL(priv->reset)) {
+			reset_control_assert(priv->reset);
+			udelay(1);
+			reset_control_deassert(priv->reset);
+		}
+	}
+
+	sdhci_reset(host, mask);
+}
+
 static const struct sdhci_ops sdhci_dwcmshc_ops = {
 	.set_clock		= sdhci_set_clock,
 	.set_bus_width		= sdhci_set_bus_width,
@@ -269,7 +288,7 @@ static const struct sdhci_ops sdhci_dwcmshc_rk3568_ops = {
 	.set_bus_width		= sdhci_set_bus_width,
 	.set_uhs_signaling	= dwcmshc_set_uhs_signaling,
 	.get_max_clock		= sdhci_pltfm_clk_get_max_clock,
-	.reset			= sdhci_reset,
+	.reset			= rk35xx_sdhci_reset,
 	.adma_write_desc	= dwcmshc_adma_write_desc,
 };
 
@@ -292,6 +311,13 @@ static int dwcmshc_rk3568_init(struct sdhci_host *host, struct dwcmshc_priv *dwc
 	int err;
 	struct rk3568_priv *priv = dwc_priv->priv;
 
+	priv->reset = devm_reset_control_array_get_exclusive(mmc_dev(host->mmc));
+	if (IS_ERR_OR_NULL(priv->reset)) {
+		err = PTR_ERR(priv->reset);
+		dev_err(mmc_dev(host->mmc), "failed to get reset control %d\n", err);
+		return err;
+	}
+
 	priv->rockchip_clks[0].id = "axi";
 	priv->rockchip_clks[1].id = "block";
 	priv->rockchip_clks[2].id = "timer";
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
