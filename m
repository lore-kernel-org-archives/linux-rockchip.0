Return-Path: <SRS0=3L0h=CL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A875C433E2
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 15:12:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9775820773
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 15:12:04 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="y5dkJupH";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="ztUNWmM5"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9775820773
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UMTulccjjHpioKZnz3UYxmlvgAl7aYolMki8luRwOQY=; b=y5dkJupHBYNxWLYwjbwmpsBAyv
	P+kLSqVLT4o0FvKnBF+9Xmp9l876ZTVgEwcWV3GMKfepP22fRrjK0Y9JeNPXNpSwEhhYMzt5vYkia
	ZoK9+CISGAkah9EWA+JJz99LHAsXVQeQQY43aovOghmBUBxPaR3oFcbP5VqVxc38n287psqKX9chA
	lDed3C88PhwhDkmkQI8G9Bg2YJAv7uRZhmyLMbj1BVlxnBS1ne3XsOEnEQEu95qHOer76hAqatDs1
	dXq/6AKRkwioUUAW7gQ8lMFyFArjsKmsIeHv8baCrS0gYLwgzm4DpJND2+S9+tY+baBi5q38Qytsn
	86h0+86g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDUQS-0007uY-9I; Wed, 02 Sep 2020 15:11:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDUMG-0005ey-LI; Wed, 02 Sep 2020 15:07:34 +0000
Received: from kozik-lap.mshome.net (unknown [194.230.155.106])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 90A5020BED;
 Wed,  2 Sep 2020 15:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599059249;
 bh=1wDzsIvqEmh0pqxFo+9zk4zvz7882K5a4bGeyJ0UQmc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ztUNWmM5zICC9f48vfggjisSVZEJU8LsiriJlenxRJxUIv03Gx1Ao7kamxEZPq2nT
 nk3be9qdGJiQ+MmIe+BDLL2wH8ue3JtAA4ql3XMdeC9PIuDY3mFjLm2ptpjBfJ0HKu
 /E5F0xGZvKMdWO5K74z7Zy5BBQqFh0Hf/cOqpQak=
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
Subject: [PATCH 7/9] i2c: rk3x: Simplify with dev_err_probe()
Date: Wed,  2 Sep 2020 17:06:41 +0200
Message-Id: <20200902150643.14839-7-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200902150643.14839-1-krzk@kernel.org>
References: <20200902150643.14839-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200902_110732_844626_854B3413 
X-CRM114-Status: GOOD (  14.33  )
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
 drivers/i2c/busses/i2c-rk3x.c | 19 +++++++------------
 1 file changed, 7 insertions(+), 12 deletions(-)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index 8e3cc85d1921..819ab4ee517e 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -1312,18 +1312,13 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
 		i2c->pclk = devm_clk_get(&pdev->dev, "pclk");
 	}
 
-	if (IS_ERR(i2c->clk)) {
-		ret = PTR_ERR(i2c->clk);
-		if (ret != -EPROBE_DEFER)
-			dev_err(&pdev->dev, "Can't get bus clk: %d\n", ret);
-		return ret;
-	}
-	if (IS_ERR(i2c->pclk)) {
-		ret = PTR_ERR(i2c->pclk);
-		if (ret != -EPROBE_DEFER)
-			dev_err(&pdev->dev, "Can't get periph clk: %d\n", ret);
-		return ret;
-	}
+	if (IS_ERR(i2c->clk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(i2c->clk),
+				     "Can't get bus clk\n");
+
+	if (IS_ERR(i2c->pclk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(i2c->pclk),
+				     "Can't get periph clk\n");
 
 	ret = clk_prepare(i2c->clk);
 	if (ret < 0) {
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
