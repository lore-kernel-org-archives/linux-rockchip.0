Return-Path: <SRS0=wbav=GW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990B1C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 16:14:00 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 429DC2245C
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 16:14:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 429DC2245C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=simonsouth.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mzv96HrO5px+EYbVrVWefhK3SZ9yc5NIqMwSOl9FvFE=; b=PA2z/+/3n1vp/p+2zSW03KSYJ
	YoKfJ+TJ3rVqsBHZYafPn08FTOJeu0JNaK3/hHuTXhk397OTQuwsqv+fFh6kWgQpyv3npFBrS2DgA
	/4oNVGlKfEfr1EA6ISGFLpmyLDfBoXHgCmk060/dypTyzRlVIzouiI1ycOhdQYNIbCs/JOp2N+pYy
	Kbxvp8ksVp3x27puqDEMLwXJqgvs0JAWWs3hYBFvnUiGmMOdZYLpT1Eo2QGcjw7cz+S2PMM7Fo9Y2
	p9qTX3mhfwYpjsBEkJANdozh0L3xl4BLoDfcoFZ05wVwX9hF2rGNoucYPuvAqnIN12gV+MtTlV2Bc
	gOKRHHKrg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1tdl-0001Go-GH; Tue, 19 Jan 2021 16:13:57 +0000
Received: from mailout.easymail.ca ([64.68.200.34])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1tdd-0001Cb-7e; Tue, 19 Jan 2021 16:13:50 +0000
Received: from localhost (localhost [127.0.0.1])
 by mailout.easymail.ca (Postfix) with ESMTP id 10D7F25084;
 Tue, 19 Jan 2021 16:13:49 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at emo06-pco.easydns.vpn
Received: from mailout.easymail.ca ([127.0.0.1])
 by localhost (emo06-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uu2rOVrj1JKe; Tue, 19 Jan 2021 16:13:48 +0000 (UTC)
Received: from localhost.localdomain (unknown [108.162.141.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailout.easymail.ca (Postfix) with ESMTPSA id 2C4A22502E;
 Tue, 19 Jan 2021 16:13:30 +0000 (UTC)
From: Simon South <simon@simonsouth.net>
To: tpiepho@gmail.com, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, robin.murphy@arm.com, lee.jones@linaro.org,
 heiko@sntech.de, bbrezillon@kernel.org, david.wu@rock-chips.com,
 steven.liu@rock-chips.com, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v4 4/5] pwm: rockchip: Eliminate potential race condition when
 probing
Date: Tue, 19 Jan 2021 11:12:08 -0500
Message-Id: <4bf623acf2cae5247f60a6e9765f0755132647e4.1610976129.git.simon@simonsouth.net>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <cover.1610976129.git.simon@simonsouth.net>
References: <cover.1610976129.git.simon@simonsouth.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210119_111349_354795_B5FEA2CA 
X-CRM114-Status: GOOD (  15.77  )
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

Commit 48cf973cae33 ("pwm: rockchip: Avoid glitches on already running
PWMs") introduced a potential race condition in rockchip_pwm_probe(): A
consumer could enable an inactive PWM, or disable a running one, between
rockchip_pwm_probe() registering the device via pwmchip_add() and checking
whether it is enabled (to determine whether it was started by a
bootloader). This could result in a device's PWM clock being either enabled
once more than necessary, potentially causing it to continue running when
no longer needed, or disabled once more than necessary, producing a warning
from the kernel.

Eliminate these possibilities by modifying rockchip_pwm_probe() so it
checks whether a device is enabled before registering it rather than after.

Fixes: 48cf973cae33 ("pwm: rockchip: Avoid glitches on already running PWMs")
Reported-by: Trent Piepho <tpiepho@gmail.com>
Signed-off-by: Simon South <simon@simonsouth.net>
---
 drivers/pwm/pwm-rockchip.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
index b5bab427b5de..228147e9bc6e 100644
--- a/drivers/pwm/pwm-rockchip.c
+++ b/drivers/pwm/pwm-rockchip.c
@@ -288,6 +288,7 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 	const struct of_device_id *id;
 	struct rockchip_pwm_chip *pc;
 	u32 enable_conf, ctrl;
+	bool enabled;
 	int ret, count;
 
 	id = of_match_device(rockchip_pwm_dt_ids, &pdev->dev);
@@ -349,6 +350,10 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 		pc->chip.of_pwm_n_cells = 3;
 	}
 
+	enable_conf = pc->data->enable_conf;
+	ctrl = readl_relaxed(pc->base + pc->data->regs.ctrl);
+	enabled = (ctrl & enable_conf) == enable_conf;
+
 	ret = pwmchip_add(&pc->chip);
 	if (ret < 0) {
 		dev_err(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
@@ -356,9 +361,7 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 	}
 
 	/* Keep the PWM clk enabled if the PWM appears to be up and running. */
-	enable_conf = pc->data->enable_conf;
-	ctrl = readl_relaxed(pc->base + pc->data->regs.ctrl);
-	if ((ctrl & enable_conf) != enable_conf)
+	if (!enabled)
 		clk_disable(pc->clk);
 
 	clk_disable(pc->pclk);
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
