Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 966FEC9831C
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 11:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eQywC2vOSb/nLdN+TDfMIrMsFT9VdQX+SaAC9/TX7es=; b=aQkQh0nvO6sD2D
	Xg38Oer5OqRIIqiprmtnJHrxHxoeWStTlfQGxVUWLiBNRMnUrOzSqppiJ7mVKUu6CDz832aIfJLuh
	bDA8etN7q330E0cGUXShWDmaV78Q3uZg7oj1W98MwbN19JsMunbtyqWJ/wSegPTYSXGyzdDZBXUwW
	5TXADmj4VD6Lbal3RL7DNf4eXX2gEq28weDjffFBKnw0K+amnkWwxliGH/+Xp2L6q0PR/4aE5h7+c
	s/UU0Z8M3DNJr0/5PDTokClUHA0oRSBEH3CChU3ZB41YNoye313YmI2wpDz/w4c5UM+l9zeg3V8r/
	BzBoaj/0edRIWeABMIIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9hYW-0000000Ar84-12mT;
	Thu, 24 Sep 2026 11:24:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9hYV-0000000Ar73-0ynp
	for linux-rockchip@bombadil.infradead.org;
	Thu, 24 Sep 2026 11:23:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=KXQnRB/nHO1IWYbvBq2662vmfOoejPsA25AzXQKF5g8=; b=UfOITGY1l3Yb1zO1Gt12PsCRxG
	xwXEdVxNAfT1orGF1dDw0DX61tHxmgdNhAWoYEcW5rf0QTYfDlaysAdr5BFVmbfUAM5cUqxOTlQXM
	3eeOvbRSl5USe6v+4BTbE+tfaxYhlhdYz/gzw1QdHtARXlRFMY0GGKMg7FOcKWYR2SXmZOjpuOdYV
	R6tLl10iTxy1PGknzb7wOScADS8ZJpyvZOKpdDl4TOlNp+GJ5QsW13DZsUXnNNnhmTTCnUoX5wBau
	cOP1bMOcoZaKI0DwfvIvEgasul02LLmRVQPF2BkOT153fxKwWwkKeAB+bTAyX3sBd22grOIlfby1N
	xaBAmtQg==;
Received: from mail-pj2-x0f.google.com ([2607:f8b0:4864:39::f])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x9hYS-0000000FtnD-1SVr
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 11:23:58 +0000
Received: by mail-pj2-x0f.google.com with SMTP id 98e67ed59e1d1-396ccdaea76so822172a91.0
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Sep 2026 04:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790249034; x=1790853834; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KXQnRB/nHO1IWYbvBq2662vmfOoejPsA25AzXQKF5g8=;
        b=P/9iphGlbONKBozAD3leq8G6q2Si0Yb9wlDlVmQ7fXqN1FVAiLoMkBrTjkriGEnQ/4
         6cftTtC3TY8OEWZg3+OV3m+kAvAKFdnZY1aFMeaoOeBl7cYM2It1cqODaI7Zpf6SGh5I
         ZMmkUzeRxphMmq0V9FOqVtSHGImvsSQAcEdLrVnZRSbb7SdDdl0Rv0lslHg40LRKjBrn
         B9bXs4b+cnXYIzLypodTiWAEYkdmdRoGgdAHS2a9J9BRk+54ltIVm9R0JAxazTQoKbG/
         Roqz7EeYMaTCoSU/wfJdnBF56pOTtM3Fv3WbrIXZriEQ5NyaGsi6e1kqhWwFll11yZdH
         LDXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790249034; x=1790853834;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=KXQnRB/nHO1IWYbvBq2662vmfOoejPsA25AzXQKF5g8=;
        b=L88q1XAm3TVj+M/FT3bmDW74PJvl095/n7zLge6w0WK/tbz+3nOHn9tpT2He6b0qqi
         PRCm9NJkYs1wPbeDmCBLyFWfz1Po1HdhySz1/WNQPxH/9SMlhj1Vq/HGpMrN607pYCZ1
         +Fsj8LpGDsTLNuAT1pqSnULIE8q5tefOACOXKoRCaBqs72JlJ4Xn15pYmBJMCRvzyOax
         b2dSdMnTOeIzm4pblyqtpiOJh4Oh5BquWFHBWjj9FHNbpEbexRFrAfllyY/eXMhbb0Cb
         XSaE28NLSg4AMERVCiYKbGll3hKCE8Ov38NYkQExJfaHaqfdakknC+LSeAR8pGDAx7Ul
         UkoQ==
X-Forwarded-Encrypted: i=1; AKwUvByeWC+kVW72naWKrFVOX6o+VdZDvC+46tJ3IVyPz+4U1e2raQxq5RfJ2UWcib30wEXWonqf6P/ctiAzBOU6FQ==@lists.infradead.org
X-Gm-Message-State: AFuF++m5WCWXca0VrEJW057Cgbc6mdF7XOvngoWx/jF0wlYy2eQLqxuQ
	DNeUmDOShQ6y5x2S250JLdHNwt2w4RiuTlNvskdhzt9nO/OhKxWJe++C
X-Gm-Gg: AYBFou2gm9QDMIS0hE8DbqBEeSlKPgw4B1z/Azz67w3QdjBUAae5FN1LC5JKpxgb51S
	pdcmJ0nNa3vdV7Gn5rVKGVF8E59vhvo6n231WyG6wRy9KlNXRIvNYqzcqsedyDLNOiMPja4To4V
	3eq7r7LcFFGUlGiS4SH8nFaZck439Nqgec52UoyvpO2QiOEi8U+JiXn7lTvJUQkInlKYSdmg19f
	3HdW1h4GHmOjf1tyAANM45ODOQXIHDkvvd3GkSwpr+AXcF+44F6zab+uqGxnlpjzgl1O1utV8+Z
	tLx0GzvG0jmy+oZxwBlCoAgP1qhODDE3tY0MhoxvM5wZMzoT1Nz/Gt7kFytulTlwjbL3fhNIriN
	9/TJKKNQ0ti8G8l68QdBRKIGHvCz0o+XMGh7zC3ANm6D1gk5lZUbEUJI65Qu2JOrc7w5HJWcWQT
	uAhAHOXx4Zj0QfCy5EqlXmj+J2r5qryS+8sY7GzVYAniZjuHNcSkvPGA==
X-Received: by 2002:a17:90b:2e03:b0:39d:e1da:81e5 with SMTP id 98e67ed59e1d1-3a09864ac91mr1422278a91.11.1790249029396;
        Thu, 24 Sep 2026 04:23:49 -0700 (PDT)
Received: from lgs.. ([2001:250:5800:1002::de93])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a0813318c1sm3586800a91.4.2026.09.24.04.23.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2026 04:23:48 -0700 (PDT)
From: Guangshuo Li <lgs201920130244@gmail.com>
To: broonie@kernel.org,
	heiko@sntech.de,
	william.zhang@broadcom.com,
	kursad.oney@broadcom.com,
	jonas.gorski@gmail.com
Cc: linux-spi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linusw@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	jon.lin@rock-chips.com,
	bcm-kernel-feedback-list@broadcom.com,
	noltari@gmail.com,
	lgs201920130244@gmail.com
Subject: [PATCH 2/3] spi: rockchip-sfc: Clean up runtime PM on remove
Date: Thu, 24 Sep 2026 19:23:28 +0800
Message-ID: <20260924112329.1566051-3-lgs201920130244@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260924112329.1566051-1-lgs201920130244@gmail.com>
References: <20260924112329.1566051-1-lgs201920130244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_122356_640786_66F8FE1D 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

rockchip_sfc_probe() enables runtime PM and autosuspend before registering
the controller. After a successful probe, rockchip_sfc_remove() tears down
the controller and clocks without undoing that runtime PM setup.

The probe error path resumes the device, drops the temporary usage count,
disables runtime PM, marks the device suspended, and stops using
autosuspend before disabling the clocks. The remove path lacks this
matching cleanup.

Mirror the existing error-path sequence in rockchip_sfc_remove() before
disabling the clocks.

Fixes: 8011709906d0 ("spi: rockchip-sfc: Support pm ops")
Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
---
 drivers/spi/spi-rockchip-sfc.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/spi/spi-rockchip-sfc.c b/drivers/spi/spi-rockchip-sfc.c
index 662a994da60b..6e1c7d6318bb 100644
--- a/drivers/spi/spi-rockchip-sfc.c
+++ b/drivers/spi/spi-rockchip-sfc.c
@@ -747,6 +747,12 @@ static void rockchip_sfc_remove(struct platform_device *pdev)
 			 DMA_BIDIRECTIONAL);
 	free_pages((unsigned long)sfc->buffer, get_order(sfc->max_iosize));
 
+	pm_runtime_get_sync(&pdev->dev);
+	pm_runtime_put_noidle(&pdev->dev);
+	pm_runtime_disable(&pdev->dev);
+	pm_runtime_set_suspended(&pdev->dev);
+	pm_runtime_dont_use_autosuspend(&pdev->dev);
+
 	clk_disable_unprepare(sfc->clk);
 	clk_disable_unprepare(sfc->hclk);
 }
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
