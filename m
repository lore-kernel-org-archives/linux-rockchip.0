Return-Path: <SRS0=3L0h=CL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FE30C433E7
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 15:12:35 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DC5C220773
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 15:12:34 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="OQZOrWsZ";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="hy3og9qq"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DC5C220773
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/rZDmWluryqk100RaJPwrED+LTSCEthPN8BAcwUOURI=; b=OQZOrWsZI9gr3f4NQF0N9daXiA
	44dsyCHj2f1C8feDZj4t7KS4BrBupHJ7gFMl5JtlcZMxEGKApzJMZgK2arRDdk6RZKnhI9qvGKTkE
	dv3uac/tf5lAZsAJDKgdZbblZMyjpPniijfP+D/sHt0+6HHz6nmcKtrA2K+l0R/8kqjI4h2QiFnhh
	5ickxugeZPH8mnAudXJCusgpB3IXzF6WuJSXb8xn2daE3UlU7W8Kdi7M7yanBIQ/iJM6TVpcj+R43
	GUYAKWdFVByhMkGO+vnumTNFeLWvFDfoDlstEWD387yy3ShqSIeG5k0zCIKsTlnoYR9tf7GgR1ArP
	Av9YfhSw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDUR4-0008Gj-LK; Wed, 02 Sep 2020 15:12:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDUMK-0005hp-HE; Wed, 02 Sep 2020 15:07:37 +0000
Received: from kozik-lap.mshome.net (unknown [194.230.155.106])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 633F820C56;
 Wed,  2 Sep 2020 15:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599059255;
 bh=vbd2YXuxT3Yz0bN8TyD3EQNRyFzd8vDK7+rMFiJqG1Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hy3og9qqM244W8aAlhguKZcUJLSzQTrmUOeMNNERCciEGkkxdYFb839A0Amltm6Mj
 DToDym2tHVkCaux31y2sDdPOW/2c6RQWYH1y+jH302VejAxbuUtX8HxkUbknwIoRp0
 Dlmrfv7ILBMVC71RjA7CHlhkFzZbIyt3ffLBQc1I=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Michal Simek <michal.simek@xilinx.com>, Sekhar Nori <nsekhar@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Oleksij Rempel <linux@rempel-privat.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Peter Rosin <peda@axentia.se>,
 Wolfram Sang <wsa@kernel.org>, linux-i2c@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 8/9] i2c: mux: gpmux: Simplify with dev_err_probe()
Date: Wed,  2 Sep 2020 17:06:42 +0200
Message-Id: <20200902150643.14839-8-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200902150643.14839-1-krzk@kernel.org>
References: <20200902150643.14839-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200902_110736_658309_C99F6378 
X-CRM114-Status: GOOD (  14.78  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Common pattern of handling deferred probe can be simplified with
dev_err_probe().  Less code and the error value gets printed.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/i2c/muxes/i2c-mux-gpmux.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/i2c/muxes/i2c-mux-gpmux.c b/drivers/i2c/muxes/i2c-mux-gpmux.c
index f830535cff12..d3acd8d66c32 100644
--- a/drivers/i2c/muxes/i2c-mux-gpmux.c
+++ b/drivers/i2c/muxes/i2c-mux-gpmux.c
@@ -85,18 +85,14 @@ static int i2c_mux_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	mux->control = devm_mux_control_get(dev, NULL);
-	if (IS_ERR(mux->control)) {
-		if (PTR_ERR(mux->control) != -EPROBE_DEFER)
-			dev_err(dev, "failed to get control-mux\n");
-		return PTR_ERR(mux->control);
-	}
+	if (IS_ERR(mux->control))
+		return dev_err_probe(dev, PTR_ERR(mux->control),
+				     "failed to get control-mux\n");
 
 	parent = mux_parent_adapter(dev);
-	if (IS_ERR(parent)) {
-		if (PTR_ERR(parent) != -EPROBE_DEFER)
-			dev_err(dev, "failed to get i2c-parent adapter\n");
-		return PTR_ERR(parent);
-	}
+	if (IS_ERR(parent))
+		return dev_err_probe(dev, PTR_ERR(parent),
+				     "failed to get i2c-parent adapter\n");
 
 	children = of_get_child_count(np);
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
