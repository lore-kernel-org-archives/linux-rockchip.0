Return-Path: <SRS0=Brux=FE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D833C3E8C5
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 00:45:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C021B20757
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 00:45:43 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="XqF9nBmH"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C021B20757
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=simonsouth.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qc+JYGq6c+ys0Dr3puxiowU6irL4BcAd264S1zA0HWo=; b=XqF9nBmHOsZjIYO0/ocn88z8q
	oyarP357CHR+zFnHBuK+JhIkF+STdZtXqCoERpY3PB+o2xE2lVd26B6Pmk3qUAmRDSnoEMvkZ+psE
	QiZK0sm0o8l+lPMOknVyxdCcn/wrN7P0D3sfUAhevZudAF9gtqQdHNygbtLicZKvOyoyXVrlZFVDr
	T2o58KTr4s+HzOvkk8L4AtWkG0BoHJKZe6n1Lwi1Is6GasuGyjFI1L7LCM2eorgW25DooMwnMP6Ph
	W/tkqQjyAlpS2OOQq4JdtAr/977pbfuv8EHSufdd7HEE+3zfDaUxaDjNqrMgMyFnUdsIurTnvYs6B
	i74fi2vNA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjXJy-0007Om-FP; Mon, 30 Nov 2020 00:45:38 +0000
Received: from mailout.easymail.ca ([64.68.200.34])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjXJu-0007O5-JH; Mon, 30 Nov 2020 00:45:35 +0000
Received: from localhost (localhost [127.0.0.1])
 by mailout.easymail.ca (Postfix) with ESMTP id 2A72FC0059;
 Mon, 30 Nov 2020 00:45:34 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at emo04-pco.easydns.vpn
Received: from mailout.easymail.ca ([127.0.0.1])
 by localhost (emo04-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ktvZwHXTIvKO; Mon, 30 Nov 2020 00:45:33 +0000 (UTC)
Received: from localhost.localdomain (unknown [108.162.141.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailout.easymail.ca (Postfix) with ESMTPSA id 0F502BFEAB;
 Mon, 30 Nov 2020 00:45:20 +0000 (UTC)
From: Simon South <simon@simonsouth.net>
To: tpiepho@gmail.com, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, lee.jones@linaro.org, heiko@sntech.de,
 bbrezillon@kernel.org
Subject: [PATCH] pwm: rockchip: Eliminate potential race condition when probing
Date: Sun, 29 Nov 2020 19:44:19 -0500
Message-Id: <20201130004419.1714-1-simon@simonsouth.net>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <875z5nof46.fsf@simonsouth.net>
References: <875z5nof46.fsf@simonsouth.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201129_194534_786003_30F6C92E 
X-CRM114-Status: GOOD (  19.41  )
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
Cc: linux-pwm@vger.kernel.org, Simon South <simon@simonsouth.net>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Commit 48cf973cae33 ("pwm: rockchip: Avoid glitches on already running
PWMs") introduced a potential race condition in rockchip_pwm_probe() by
having it disable the clock of a PWM already registered through a call to
pwmchip_add().

Eliminate this possibility by calling clk_enable() for a probed PWM's clock
only when it appears the PWM itself has already been enabled (by a
bootloader, presumably), instead of always enabling the clock and then
disabling it after registration for non-enabled PWMs.

Fixes: 48cf973cae33 ("pwm: rockchip: Avoid glitches on already running PWMs")
Fixes: 457f74abbed0 ("pwm: rockchip: Keep enabled PWMs running while probing")
Reported-by: Trent Piepho <tpiepho@gmail.com>
Signed-off-by: Simon South <simon@simonsouth.net>
---
 drivers/pwm/pwm-rockchip.c | 45 ++++++++++++++++++++++++++------------
 1 file changed, 31 insertions(+), 14 deletions(-)

diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
index 77c23a2c6d71..7efba1d0adb4 100644
--- a/drivers/pwm/pwm-rockchip.c
+++ b/drivers/pwm/pwm-rockchip.c
@@ -289,6 +289,7 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 	struct rockchip_pwm_chip *pc;
 	struct resource *r;
 	u32 enable_conf, ctrl;
+	bool enabled;
 	int ret, count;
 
 	id = of_match_device(rockchip_pwm_dt_ids, &pdev->dev);
@@ -299,6 +300,8 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 	if (!pc)
 		return -ENOMEM;
 
+	pc->data = id->data;
+
 	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	pc->base = devm_ioremap_resource(&pdev->dev, r);
 	if (IS_ERR(pc->base))
@@ -326,21 +329,38 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	ret = clk_prepare_enable(pc->clk);
+	ret = clk_prepare(pc->clk);
 	if (ret) {
-		dev_err(&pdev->dev, "Can't prepare enable bus clk: %d\n", ret);
+		dev_err(&pdev->dev, "Can't prepare bus clk: %d\n", ret);
 		return ret;
 	}
 
+	/*
+	 * If it appears the PWM has already been enabled, perhaps by a
+	 * bootloader, re-enable its clock to increment the clock's enable
+	 * counter and ensure it is kept running (particularly in the case
+	 * where there is no separate APB clock).
+	 */
+	enable_conf = pc->data->enable_conf;
+	ctrl = readl_relaxed(pc->base + pc->data->regs.ctrl);
+	enabled = (ctrl & enable_conf) == enable_conf;
+	if (enabled) {
+		ret = clk_enable(pc->clk);
+		if (ret) {
+			dev_err(&pdev->dev, "Can't re-enable bus clk: %d\n",
+				ret);
+			goto err_clk_prepared;
+		}
+	}
+
 	ret = clk_prepare(pc->pclk);
 	if (ret) {
 		dev_err(&pdev->dev, "Can't prepare APB clk: %d\n", ret);
-		goto err_clk;
+		goto err_clk_enabled;
 	}
 
 	platform_set_drvdata(pdev, pc);
 
-	pc->data = id->data;
 	pc->chip.dev = &pdev->dev;
 	pc->chip.ops = &rockchip_pwm_ops;
 	pc->chip.base = -1;
@@ -355,21 +375,18 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 	if (ret < 0) {
 		clk_unprepare(pc->clk);
 		dev_err(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
-		goto err_pclk;
+		goto err_pclk_prepared;
 	}
 
-	/* Keep the PWM clk enabled if the PWM appears to be up and running. */
-	enable_conf = pc->data->enable_conf;
-	ctrl = readl_relaxed(pc->base + pc->data->regs.ctrl);
-	if ((ctrl & enable_conf) != enable_conf)
-		clk_disable(pc->clk);
-
 	return 0;
 
-err_pclk:
+err_pclk_prepared:
 	clk_unprepare(pc->pclk);
-err_clk:
-	clk_disable_unprepare(pc->clk);
+err_clk_enabled:
+	if (enabled)
+		clk_disable(pc->clk);
+err_clk_prepared:
+	clk_unprepare(pc->clk);
 
 	return ret;
 }
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
