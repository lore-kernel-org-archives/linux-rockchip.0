Return-Path: <SRS0=VuRY=NW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 794E1C432BE
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 12:53:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EA2C660FC0
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 12:53:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EA2C660FC0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=uniontech.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kMUmuBgIXg+jyOT/2o4+38tNe7TYeUZNysY69JFK3K8=; b=KQw7O1/z9sN3uG
	end2fEqvuEWTCcEoyMIY8fIBGDObez8gRkS91xnntql2e/OcDOrJyVpBs0vAo2UCRfzapaPl8feS4
	LJEUCZaV1sS9l+2R72sm+9KvV/MB1Nhq13XVVaXEQnnS+Tv2mtjogqKC6pmRzDvrXe5oOxNzDmes+
	ipQ8K2tN2ADF7cSNaeWFR4OzJjvSoGy2fqr3ttVk6ocURBuUdfgOL0UNLzyPv+PXsibHoCqCgylLn
	pcZUaH+5iXa5ewNfJQRoGqJTUEqDx5XaqPYtjUaCGKKgfyktFCVXtNGfnoiDEL7HY2aseJVTDe3gH
	StxrIM6wTa+bDud8mTHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mL3GX-002Fkc-I0; Tue, 31 Aug 2021 12:53:25 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mL3GW-002FkN-4Q
 for linux-rockchip@bombadil.infradead.org; Tue, 31 Aug 2021 12:53:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=lymbnPxapK96FhgZFxiZUndiyvPWq8gcGKxhI35Btxw=; b=kz/S7h/DIhADx9kmm2KMinzZ7m
 aoLNBh3WqJsyuqFwmZgD0f3RR3xAImxmQaJAK0MO3LYFP8f5y3itf3mOteTwJQXxN30vzu9B+95lK
 SgOZVbJvguwRif65I+OQA+UbDnIwVHP8CfYj81blui/NkBDOFiSvwiTWRkJxrnY/kuu+wPhywrr0m
 wi5/cKLCxZmDn1b0cRcGpXTZZz9phc/u+QVb9QTP9xSnyY+Thl6zaOUp2SAddXG4iXrkjwPNeq7ZR
 6rqANiBdy/VAvt0tq3/JXVZZoU2bowP2po1eDQVvMttk7Wy5u2HJFxrS3ByS8D4uDZSLJ//ZRftHv
 pj7j+P/w==;
Received: from smtpbg704.qq.com ([203.205.195.105] helo=smtpproxy21.qq.com)
 by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mL3Fp-001Coc-Db
 for linux-rockchip@lists.infradead.org; Tue, 31 Aug 2021 12:52:56 +0000
X-QQ-mid: bizesmtp50t1630414322to4ez3a3
Received: from localhost.localdomain (unknown [124.126.19.250])
 by esmtp6.qq.com (ESMTP) with 
 id ; Tue, 31 Aug 2021 20:52:01 +0800 (CST)
X-QQ-SSF: 0140000000200070D000B00C0000000
X-QQ-FEAT: W55xVYr4DdamfzGdMYazV9cLbeqQm5kZFgM1v+xUwuvNJIcAJAqwN2SZTHB0z
 xPN/S7M4t7S1MVxUzXmAvUNlRLroyu+JYocJPPxBUGEPbiTOCNApH6dPQC+MxwAIf/0XTbT
 Q0atRhIjciBk5i7ME/5YbcP+3JHfo9+3MS8NRvGqHaGTD7B9aXSA/BOFJIICxKiMrZWiqfR
 D9/HpavpP0WBeh5wyF/zHLqP2SRYwXp9UvKlO5tLnYtN1GXDffV2HvtlmxTWXKS5e6EppwS
 o8G942HpQ8xGCVZMSNAJAzvIMMxmAG7c38uRU34cc62+rvQJFLz4uHnn1WAth6Og8EKB8rN
 XQm0/96p4qeLWsh/tjQ2HhauCTbtE9gJFgNE0gr3M+AyO60yao=
X-QQ-GoodBg: 2
From: zhaoxiao <zhaoxiao@uniontech.com>
To: thierry.reding@gmail.com,
	lee.jones@linaro.org,
	heiko@sntech.de
Cc: u.kleine-koenig@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 zhaoxiao <zhaoxiao@uniontech.com>
Subject: [PATCH] pwm: rockchip: Simplify using devm_pwmchip_add()
Date: Tue, 31 Aug 2021 20:51:59 +0800
Message-Id: <20210831125159.29282-1-zhaoxiao@uniontech.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybgforeign:qybgforeign5
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210831_135252_753497_530C805A 
X-CRM114-Status: GOOD (  12.86  )
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

With devm_pwmchip_add() we can drop pwmchip_remove() from the device
remove callback. The latter can then go away, too and as this is the
only user of platform_get_drvdata(), the respective call to
platform_set_drvdata() can go, too.

Signed-off-by: zhaoxiao <zhaoxiao@uniontech.com>
---
 drivers/pwm/pwm-rockchip.c | 29 +----------------------------
 1 file changed, 1 insertion(+), 28 deletions(-)

diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
index cbe900877724..c22856916e63 100644
--- a/drivers/pwm/pwm-rockchip.c
+++ b/drivers/pwm/pwm-rockchip.c
@@ -347,8 +347,6 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 		goto err_clk;
 	}
 
-	platform_set_drvdata(pdev, pc);
-
 	pc->data = id->data;
 	pc->chip.dev = &pdev->dev;
 	pc->chip.ops = &rockchip_pwm_ops;
@@ -358,7 +356,7 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 	ctrl = readl_relaxed(pc->base + pc->data->regs.ctrl);
 	enabled = (ctrl & enable_conf) == enable_conf;
 
-	ret = pwmchip_add(&pc->chip);
+	ret = devm_pwmchip_add(&pdev->dev, &pc->chip);
 	if (ret < 0) {
 		dev_err(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
 		goto err_pclk;
@@ -380,37 +378,12 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 	return ret;
 }
 
-static int rockchip_pwm_remove(struct platform_device *pdev)
-{
-	struct rockchip_pwm_chip *pc = platform_get_drvdata(pdev);
-
-	/*
-	 * Disable the PWM clk before unpreparing it if the PWM device is still
-	 * running. This should only happen when the last PWM user left it
-	 * enabled, or when nobody requested a PWM that was previously enabled
-	 * by the bootloader.
-	 *
-	 * FIXME: Maybe the core should disable all PWM devices in
-	 * pwmchip_remove(). In this case we'd only have to call
-	 * clk_unprepare() after pwmchip_remove().
-	 *
-	 */
-	if (pwm_is_enabled(pc->chip.pwms))
-		clk_disable(pc->clk);
-
-	clk_unprepare(pc->pclk);
-	clk_unprepare(pc->clk);
-
-	return pwmchip_remove(&pc->chip);
-}
-
 static struct platform_driver rockchip_pwm_driver = {
 	.driver = {
 		.name = "rockchip-pwm",
 		.of_match_table = rockchip_pwm_dt_ids,
 	},
 	.probe = rockchip_pwm_probe,
-	.remove = rockchip_pwm_remove,
 };
 module_platform_driver(rockchip_pwm_driver);
 
-- 
2.20.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
