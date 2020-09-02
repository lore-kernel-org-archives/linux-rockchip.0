Return-Path: <SRS0=3L0h=CL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE3CBC43461
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 15:09:19 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 97410207D3
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 15:09:19 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="DvV3f8rm";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVADfsR5"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 97410207D3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u6LmDd+K8VrSFLV92REgl/rG9OOY0s1cL7G3DJxf76E=; b=DvV3f8rmO+/WEj5+3APG1X/o4c
	VTv1TvFBMWubTd0UpgL/kGYHnhD55UGfZtOikdJ5Dy+3TNtsL36Vcp8+sY6oD+QdgeyNOmiwe798V
	QHwUAdBiyhOpzUNZ+qJT73/jn0UaOOHHfLFNF7VnXZc0c98VLNdTkfOxomatwld7e6E5ChDhRAzUo
	ORaAalacGgCYcX3x9IZ+jaLplumPKMRGahy034H1LBHV9iD/7NMAcOPfCKhFUYK2492rfNhcOzx/f
	htHaENIHPZouCXlXtASXnsmcFCkbuoyzqP19Bzrh/HdQoIhi20wZm+gDQY3iz/oHVs9XhtvtuIqdl
	MLdfFzqA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDUNw-0006X7-Gq; Wed, 02 Sep 2020 15:09:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDULm-0005N1-Iw; Wed, 02 Sep 2020 15:07:03 +0000
Received: from kozik-lap.mshome.net (unknown [194.230.155.106])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2C955208DB;
 Wed,  2 Sep 2020 15:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599059220;
 bh=Se8Hj3xMFBUvtAoO9cPl9ShWtjIVXy/13n81smdMVtg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hVADfsR5tXkrsBk53A3KfDJmQqkVIdATa/pr2kWGoWnRzkJrIjMD55cLWnv5i2gYr
 RjTcv1qNX+TanBOGq3gz89vP46v3KLwP1rQxWhjkw3C1Na1kk1d4runSM+Dks5Sxjh
 G+nqVwSTiueLiBfvo5+4RER6uxIGrmBmh87M6L8E=
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
Subject: [PATCH 2/9] i2c: xiic: Simplify with dev_err_probe()
Date: Wed,  2 Sep 2020 17:06:36 +0200
Message-Id: <20200902150643.14839-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200902150643.14839-1-krzk@kernel.org>
References: <20200902150643.14839-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200902_110702_735124_EC787E6B 
X-CRM114-Status: GOOD (  15.17  )
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
 drivers/i2c/busses/i2c-xiic.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/i2c/busses/i2c-xiic.c b/drivers/i2c/busses/i2c-xiic.c
index 90c1c362394d..a97438f35c5d 100644
--- a/drivers/i2c/busses/i2c-xiic.c
+++ b/drivers/i2c/busses/i2c-xiic.c
@@ -787,11 +787,10 @@ static int xiic_i2c_probe(struct platform_device *pdev)
 	init_waitqueue_head(&i2c->wait);
 
 	i2c->clk = devm_clk_get(&pdev->dev, NULL);
-	if (IS_ERR(i2c->clk)) {
-		if (PTR_ERR(i2c->clk) != -EPROBE_DEFER)
-			dev_err(&pdev->dev, "input clock not found.\n");
-		return PTR_ERR(i2c->clk);
-	}
+	if (IS_ERR(i2c->clk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(i2c->clk),
+				     "input clock not found.\n");
+
 	ret = clk_prepare_enable(i2c->clk);
 	if (ret) {
 		dev_err(&pdev->dev, "Unable to enable clock.\n");
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
