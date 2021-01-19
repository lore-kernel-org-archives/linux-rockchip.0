Return-Path: <SRS0=wbav=GW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB35C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 16:13:40 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 792932245C
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 16:13:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 792932245C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=simonsouth.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IgJMfTU/rln5svPFaH1K+8SAnEdc8e9N569LwM0ZEC4=; b=cLyxJ2plmk2F9EExm0f8Avnn3
	wQxRN9MyJFdMteS/FOsf1nOd7o3hUF7N3ARdH84nKlvsFvKscSzQ7xoTx0RKMyyAWr7+bn1h0ojrt
	MPLUxOQBcy+HeMPW3hXwjI2ZtTWEuoL84v5UGf7yKlZZ7UnChbLxKut2300cIDW6hC6zb7uNewCE3
	CF2I/hlByZpnxcpkOrqacVfmAhhYI0M0WB4enOdN4HAcaFdNEUWj58f+O5Eyi85Ar8a4UrTTymCFl
	9BYem7SXOZZOvSnPiaKDhIUWnw8tB2LzyzmCDCzlcl2A5Bx/G2hKwDg9pMUrEGUwpT1BvZW3yGe65
	LoJow3j7A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1tdR-00016C-FH; Tue, 19 Jan 2021 16:13:37 +0000
Received: from mailout.easymail.ca ([64.68.200.34])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1tdL-00013W-3R; Tue, 19 Jan 2021 16:13:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by mailout.easymail.ca (Postfix) with ESMTP id EC4E52507D;
 Tue, 19 Jan 2021 16:13:30 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at emo06-pco.easydns.vpn
Received: from mailout.easymail.ca ([127.0.0.1])
 by localhost (emo06-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1rJEfYNot2xH; Tue, 19 Jan 2021 16:13:30 +0000 (UTC)
Received: from localhost.localdomain (unknown [108.162.141.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailout.easymail.ca (Postfix) with ESMTPSA id DD9AB2502E;
 Tue, 19 Jan 2021 16:13:12 +0000 (UTC)
From: Simon South <simon@simonsouth.net>
To: tpiepho@gmail.com, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, robin.murphy@arm.com, lee.jones@linaro.org,
 heiko@sntech.de, bbrezillon@kernel.org, david.wu@rock-chips.com,
 steven.liu@rock-chips.com, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v4 3/5] pwm: rockchip: Replace "bus clk" with "PWM clk"
Date: Tue, 19 Jan 2021 11:12:07 -0500
Message-Id: <546993443c425dbd4ca1131f4caecbcd25bafb36.1610976129.git.simon@simonsouth.net>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <cover.1610976129.git.simon@simonsouth.net>
References: <cover.1610976129.git.simon@simonsouth.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210119_111331_151420_AAF76DF7 
X-CRM114-Status: GOOD (  15.62  )
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

Clarify the Rockchip PWM driver's error messages by referring to the clock
that operates a PWM device as the "PWM" clock, matching its name in the
device tree, rather than the "bus" clock (which is especially misleading in
the case of devices that also use a separate clock for bus access).

Suggested-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Simon South <simon@simonsouth.net>
---
 drivers/pwm/pwm-rockchip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
index 90f969f9f5e2..b5bab427b5de 100644
--- a/drivers/pwm/pwm-rockchip.c
+++ b/drivers/pwm/pwm-rockchip.c
@@ -307,7 +307,7 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 		pc->clk = devm_clk_get(&pdev->dev, NULL);
 		if (IS_ERR(pc->clk))
 			return dev_err_probe(&pdev->dev, PTR_ERR(pc->clk),
-					     "Can't get bus clk\n");
+					     "Can't get PWM clk\n");
 	}
 
 	count = of_count_phandle_with_args(pdev->dev.of_node,
@@ -326,7 +326,7 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 
 	ret = clk_prepare_enable(pc->clk);
 	if (ret) {
-		dev_err(&pdev->dev, "Can't prepare enable bus clk: %d\n", ret);
+		dev_err(&pdev->dev, "Can't prepare enable PWM clk: %d\n", ret);
 		return ret;
 	}
 
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
