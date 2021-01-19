Return-Path: <SRS0=wbav=GW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1923C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 16:13:01 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 704582245C
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 16:13:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 704582245C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=simonsouth.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=197zBoL9VlvTGlIHNh4GxFhRQmzEHFTWwN7mX+BsRCA=; b=FaXunmTYRjQE/QiECPj/NjlL2
	rd8/FnLJpLiHEIGGpEoDB8k6KEfWN7tac+oYLLRTYDgltveriSsf2kgJjqaMFIiuxZ+rj8GCJOlF2
	LfZHpEx+jlaTU7u/+OLQ3htvQzwqu+DCdoZaq2V5RWSu/SmsYU/3NRphyG3/JsYiTcMnbnNTi/sP0
	fZ6GXS21gv5tBGo8+2blE8ZhP5JfKNRYf9hh6EvaeJEqZ9cjkrpJ7zPsIb6pyxC2apzN4MlC0xRJP
	JBY/HhdusovRMnSrhGsGecnxPEuGT+Hn/rDj4k1fwgDYtvWFG/5eM6aLZbgZbatR5vwC2Uh/9Xopj
	p5YGILTnw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1tco-0000pV-AP; Tue, 19 Jan 2021 16:12:58 +0000
Received: from mailout.easymail.ca ([64.68.200.34])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1tck-0000o4-K0; Tue, 19 Jan 2021 16:12:55 +0000
Received: from localhost (localhost [127.0.0.1])
 by mailout.easymail.ca (Postfix) with ESMTP id 7EF8025084;
 Tue, 19 Jan 2021 16:12:54 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at emo06-pco.easydns.vpn
Received: from mailout.easymail.ca ([127.0.0.1])
 by localhost (emo06-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BN3w_MxS4KIj; Tue, 19 Jan 2021 16:12:54 +0000 (UTC)
Received: from localhost.localdomain (unknown [108.162.141.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailout.easymail.ca (Postfix) with ESMTPSA id 6029A2502E;
 Tue, 19 Jan 2021 16:12:36 +0000 (UTC)
From: Simon South <simon@simonsouth.net>
To: tpiepho@gmail.com, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, robin.murphy@arm.com, lee.jones@linaro.org,
 heiko@sntech.de, bbrezillon@kernel.org, david.wu@rock-chips.com,
 steven.liu@rock-chips.com, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v4 1/5] pwm: rockchip: Enable APB clock during register access
 while probing
Date: Tue, 19 Jan 2021 11:12:05 -0500
Message-Id: <b16d8d5794235c469934c65a810ee00121be2acf.1610976129.git.simon@simonsouth.net>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <cover.1610976129.git.simon@simonsouth.net>
References: <cover.1610976129.git.simon@simonsouth.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210119_111254_693588_EAD2A579 
X-CRM114-Status: GOOD (  16.79  )
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

Commit 457f74abbed0 ("pwm: rockchip: Keep enabled PWMs running while
probing") modified rockchip_pwm_probe() to access a PWM device's registers
directly to check whether or not the device is enabled, but did not also
change the function so it first enables the device's APB clock to be
certain the device can respond. This risks hanging the kernel on systems
with PWM devices that use more than a single clock.

Avoid this by enabling the device's APB clock before accessing its
registers (and disabling the clock when register access is complete).

Fixes: 457f74abbed0 ("pwm: rockchip: Keep enabled PWMs running while probing")
Reported-by: Thierry Reding <thierry.reding@gmail.com>
Suggested-by: Trent Piepho <tpiepho@gmail.com>
Signed-off-by: Simon South <simon@simonsouth.net>
---
 drivers/pwm/pwm-rockchip.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
index 389a5e140412..e6929bc73968 100644
--- a/drivers/pwm/pwm-rockchip.c
+++ b/drivers/pwm/pwm-rockchip.c
@@ -330,9 +330,9 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	ret = clk_prepare(pc->pclk);
+	ret = clk_prepare_enable(pc->pclk);
 	if (ret) {
-		dev_err(&pdev->dev, "Can't prepare APB clk: %d\n", ret);
+		dev_err(&pdev->dev, "Can't prepare enable APB clk: %d\n", ret);
 		goto err_clk;
 	}
 
@@ -362,10 +362,12 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 	if ((ctrl & enable_conf) != enable_conf)
 		clk_disable(pc->clk);
 
+	clk_disable(pc->pclk);
+
 	return 0;
 
 err_pclk:
-	clk_unprepare(pc->pclk);
+	clk_disable_unprepare(pc->pclk);
 err_clk:
 	clk_disable_unprepare(pc->clk);
 
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
