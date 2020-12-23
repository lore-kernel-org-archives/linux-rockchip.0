Return-Path: <SRS0=LBB8=F3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03CF1C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Dec 2020 16:04:09 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AB7C9227BF
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Dec 2020 16:04:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AB7C9227BF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=simonsouth.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TKLGYXtgPfYPEjZ8bsHIik2hG6u62jucPRAs6c5pUNI=; b=H/m12R3WBqp6N8iElJgmoObFB
	pb8+O0XvnvpAsdZ/Jngy+o3YosXYOpXjbGuacUf3s6FuoG2paXDzzdiZIKajH+K0mmIQ8DAa/AhNr
	uJX9MHpbliGzaNYLWmUTwK3A7U00hK0ODz7gCzW6xN2bVQaZGU6JhXi/IjLVAtyMtFoDMFFRPyNrw
	6g7dJHITRPaXmF+iC5SYfo95zG73qrYpLidqnWQOwkCBuepjSmIQJueNonVPuhKBRHT4blcvpbFY3
	AMroAlb+ba7R0XQXbcwFm2ItUclZU+peUmTv0NqECqKkBH29i7OkeIuO9rEH4EVH9PZtO+5Ut5f27
	a3GOv0wZg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ks6cK-0003fo-7M; Wed, 23 Dec 2020 16:04:00 +0000
Received: from mailout.easymail.ca ([64.68.200.34])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ks6c6-0003ZH-CF; Wed, 23 Dec 2020 16:03:47 +0000
Received: from localhost (localhost [127.0.0.1])
 by mailout.easymail.ca (Postfix) with ESMTP id 07F5DC0CFF;
 Wed, 23 Dec 2020 16:03:46 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at emo04-pco.easydns.vpn
Received: from mailout.easymail.ca ([127.0.0.1])
 by localhost (emo04-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ry7oTjkAQf7Z; Wed, 23 Dec 2020 16:03:45 +0000 (UTC)
Received: from localhost.localdomain (unknown [108.162.141.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailout.easymail.ca (Postfix) with ESMTPSA id 4C34FC0CAA;
 Wed, 23 Dec 2020 16:03:23 +0000 (UTC)
From: Simon South <simon@simonsouth.net>
To: tpiepho@gmail.com, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, robin.murphy@arm.com, lee.jones@linaro.org,
 heiko@sntech.de, bbrezillon@kernel.org, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v3 6/7] pwm: rockchip: Enable PWM clock of probed device only
 if running
Date: Wed, 23 Dec 2020 11:01:08 -0500
Message-Id: <cb5a28d5fde04c09e9aace6ce619e445f895e0a8.1608735481.git.simon@simonsouth.net>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1608735481.git.simon@simonsouth.net>
References: <cover.1608735481.git.simon@simonsouth.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201223_110346_469109_AFFC82D1 
X-CRM114-Status: GOOD (  16.50  )
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
Cc: simon@simonsouth.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Currently rockchip_pwm_probe() enables the PWM clock of every device it
matches, then disables the clock unless the device itself appears to have
been enabled (by a bootloader, presumably) before the kernel started.

Simplify this by enabling (rather, keeping enabled) the PWM clock of only
devices that are already running, as enabling the clock for any other
device during probing is unnecessary.

Signed-off-by: Simon South <simon@simonsouth.net>
---
 drivers/pwm/pwm-rockchip.c | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
index 80f5e69d9b8a..02da7370db70 100644
--- a/drivers/pwm/pwm-rockchip.c
+++ b/drivers/pwm/pwm-rockchip.c
@@ -327,12 +327,6 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	ret = clk_prepare_enable(pc->clk);
-	if (ret) {
-		dev_err(&pdev->dev, "Can't prepare enable PWM clk: %d\n", ret);
-		return ret;
-	}
-
 	ret = clk_prepare_enable(pc->pclk);
 	if (ret) {
 		dev_err(&pdev->dev, "Can't enable APB clk: %d\n", ret);
@@ -357,8 +351,19 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 	enable_conf = pc->data->enable_conf;
 	ctrl = readl_relaxed(pc->base + pc->data->regs.ctrl);
 	enabled = ((ctrl & enable_conf) == enable_conf);
-	if (!enabled)
-		clk_disable(pc->clk);
+	if (enabled) {
+		ret = clk_prepare_enable(pc->clk);
+		if (ret) {
+			dev_err(&pdev->dev, "Can't enable PWM clk: %d\n", ret);
+			return ret;
+		}
+	} else {
+		ret = clk_prepare(pc->clk);
+		if (ret) {
+			dev_err(&pdev->dev, "Can't prepare PWM clk: %d\n", ret);
+			return ret;
+		}
+	}
 
 	clk_disable(pc->pclk);
 
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
