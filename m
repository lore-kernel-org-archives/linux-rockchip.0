Return-Path: <SRS0=0WH/=FX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCCAC4361B
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Dec 2020 20:45:25 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5FE4922D72
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Dec 2020 20:45:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5FE4922D72
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=simonsouth.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GxJsQeR4bmlYwY+Vi34Lomq/PllgWoMOwy9J1Tk0Z8I=; b=t1kZ70diE2PX5nqNZDCXJceaD
	99+UvQlJSrqDIKi4ri5oF9JV2FgOreZoMxc4axQ51y5U8u2jd37bMqjdRND+TNhqdQdYcCJhVmHf4
	g1kRVEy0Ut31UcUNHgLDe+jyvO8aFmURmwqJkH5EDab4Gd1II2F4GxIKXufyQjZnMIVeAXNt/RK4l
	cFv/0XLWgeo9H9eEHvBrwYivvE8Asi2mL2K892zxYBbyRHYEcO995jVzNF1C9qK8B3kyvbU0GGc66
	2t/J81jTZqnMJvIW3Uxn9N/8fb5piYm9DOfPN1mGjoC+Lk7O2I7LE8HOt5FlEvXaxzPJ8dvicoMnl
	NpT4TNZng==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kqj6O-0001Na-A9; Sat, 19 Dec 2020 20:45:20 +0000
Received: from mailout.easymail.ca ([64.68.200.34])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kqj6I-0001Ln-Fy; Sat, 19 Dec 2020 20:45:15 +0000
Received: from localhost (localhost [127.0.0.1])
 by mailout.easymail.ca (Postfix) with ESMTP id 45F2BBFD50;
 Sat, 19 Dec 2020 20:45:14 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at emo04-pco.easydns.vpn
Received: from mailout.easymail.ca ([127.0.0.1])
 by localhost (emo04-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wmJsXWBXQu9v; Sat, 19 Dec 2020 20:45:14 +0000 (UTC)
Received: from localhost.localdomain (unknown [108.162.141.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailout.easymail.ca (Postfix) with ESMTPSA id 55123BFBC9;
 Sat, 19 Dec 2020 20:44:59 +0000 (UTC)
From: Simon South <simon@simonsouth.net>
To: tpiepho@gmail.com, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, lee.jones@linaro.org, heiko@sntech.de,
 bbrezillon@kernel.org, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v2 3/3] pwm: rockchip: Do not start PWMs not already running
Date: Sat, 19 Dec 2020 15:44:10 -0500
Message-Id: <0acdf3a78f670a2678e03b0bbbb01aa58a11ce9a.1608407584.git.simon@simonsouth.net>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1608407584.git.simon@simonsouth.net>
References: <cover.1608407584.git.simon@simonsouth.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201219_154514_591600_D83A8B79 
X-CRM114-Status: GOOD (  17.10  )
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

Currently the Rockchip PWM driver enables the signal ("bus") clock for
every PWM device it finds during probing, then disables it for any device
that was not already enabled (such as by a bootloader) when the kernel
started.

Instead of starting PWMs unnecessarily, check first to see whether a device
has already been enabled and if not, do not enable its signal clock.

Signed-off-by: Simon South <simon@simonsouth.net>
---
 drivers/pwm/pwm-rockchip.c | 28 +++++++++++++---------------
 1 file changed, 13 insertions(+), 15 deletions(-)

diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
index f286a498b82c..b9faef3e9954 100644
--- a/drivers/pwm/pwm-rockchip.c
+++ b/drivers/pwm/pwm-rockchip.c
@@ -327,19 +327,6 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	ret = clk_prepare_enable(pc->clk);
-	if (ret) {
-		dev_err(&pdev->dev, "Can't prepare enable bus clk: %d\n", ret);
-		return ret;
-	}
-
-	ret = clk_prepare_enable(pc->pclk);
-	if (ret) {
-		dev_err(&pdev->dev, "Can't enable APB clk: %d\n", ret);
-		clk_disable_unprepare(pc->clk);
-		return ret;
-	}
-
 	platform_set_drvdata(pdev, pc);
 
 	pc->data = id->data;
@@ -353,12 +340,23 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 		pc->chip.of_pwm_n_cells = 3;
 	}
 
+	ret = clk_prepare_enable(pc->pclk);
+	if (ret) {
+		dev_err(&pdev->dev, "Can't enable APB clk: %d\n", ret);
+		return ret;
+	}
+
 	/* Keep the PWM clk enabled if the PWM appears to be up and running. */
 	enable_conf = pc->data->enable_conf;
 	ctrl = readl_relaxed(pc->base + pc->data->regs.ctrl);
 	enabled = ((ctrl & enable_conf) == enable_conf);
-	if (!enabled)
-		clk_disable(pc->clk);
+
+	ret = enabled ? clk_prepare_enable(pc->clk) : clk_prepare(pc->clk);
+	if (ret) {
+		dev_err(&pdev->dev, "Can't prepare bus clk: %d\n", ret);
+		clk_disable_unprepare(pc->pclk);
+		return ret;
+	}
 
 	clk_disable(pc->pclk);
 
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
