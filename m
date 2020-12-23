Return-Path: <SRS0=LBB8=F3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8212BC43331
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Dec 2020 16:03:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3B146233EE
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Dec 2020 16:03:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3B146233EE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=simonsouth.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QEhfvXRomGR5pEs3TcFZtgZzzqOCC+fFaG5y6zkez9k=; b=N0fadodCpu4MyneZTz4QYv0LH
	0Yo/eDXCLHkwxfGb3BfhLV2JfJmRVAeEun6pZVuMXuWwJIrxhMBDPQeHwZH13bNcNZDn3WFExtjIT
	5BZYgBSLB/n96GgboyBKk20nLUg7c2SR7SYEFPVGuE3f/rGSDO+hBbOE5mydtIMIF+Kr/4BfJsd6X
	YTEgaBuM7QFeXoFt9W4/q9oubddYOCz6zyDv7VPFnCbI3Z8DwkP0xI4DqbzboJKHPO+ilYHgTRzbK
	D+bx8sD4NIv31mqtOu3OhgFFRcAHH+pUEVjZQqpJUskial2OHvg4VKn+BDhBFpQpiq+BaKPHcKTCU
	eDOPXcSlw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ks6bs-0003SX-Pg; Wed, 23 Dec 2020 16:03:32 +0000
Received: from mailout.easymail.ca ([64.68.200.34])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ks6bk-0003Ou-DQ; Wed, 23 Dec 2020 16:03:25 +0000
Received: from localhost (localhost [127.0.0.1])
 by mailout.easymail.ca (Postfix) with ESMTP id 8DDE4C0CDA;
 Wed, 23 Dec 2020 16:03:23 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at emo04-pco.easydns.vpn
Received: from mailout.easymail.ca ([127.0.0.1])
 by localhost (emo04-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x5UeQ1o4yb_0; Wed, 23 Dec 2020 16:03:23 +0000 (UTC)
Received: from localhost.localdomain (unknown [108.162.141.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailout.easymail.ca (Postfix) with ESMTPSA id 01B6FC0CAA;
 Wed, 23 Dec 2020 16:03:00 +0000 (UTC)
From: Simon South <simon@simonsouth.net>
To: tpiepho@gmail.com, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, robin.murphy@arm.com, lee.jones@linaro.org,
 heiko@sntech.de, bbrezillon@kernel.org, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v3 5/7] pwm: rockchip: rockchip_pwm_probe(): Remove unneeded
 goto target
Date: Wed, 23 Dec 2020 11:01:07 -0500
Message-Id: <0637b8ebea49b30e5e675385225d59d028077421.1608735481.git.simon@simonsouth.net>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1608735481.git.simon@simonsouth.net>
References: <cover.1608735481.git.simon@simonsouth.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201223_110324_506071_082373DA 
X-CRM114-Status: GOOD (  14.49  )
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

Eliminate the remaining goto target in rockchip_pwm_probe() by moving the
code that follows it to the point where it is invoked.

The target no longer serves any purpose as the error-handling portions of
this function no longer share any recovery steps.

Signed-off-by: Simon South <simon@simonsouth.net>
---
 drivers/pwm/pwm-rockchip.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
index d904a5d24885..80f5e69d9b8a 100644
--- a/drivers/pwm/pwm-rockchip.c
+++ b/drivers/pwm/pwm-rockchip.c
@@ -336,7 +336,8 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 	ret = clk_prepare_enable(pc->pclk);
 	if (ret) {
 		dev_err(&pdev->dev, "Can't enable APB clk: %d\n", ret);
-		goto err_clk;
+		clk_disable_unprepare(pc->clk);
+		return ret;
 	}
 
 	platform_set_drvdata(pdev, pc);
@@ -372,11 +373,6 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 	}
 
 	return 0;
-
-err_clk:
-	clk_disable_unprepare(pc->clk);
-
-	return ret;
 }
 
 static int rockchip_pwm_remove(struct platform_device *pdev)
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
