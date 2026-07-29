Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65845C53219
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 06:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3J10IQ/oZEWimkvk20TAQVSg6n0MS4IFbCKtJg2p2GM=; b=FSQa//6ash6R8Q
	kYHJs/WfbgCkFBP/zhG8tsCKKALYviMcxKwk+wtyuk494XglB8faEL51NBM06ZTBBDXAtjCEp8UG4
	0JEohggYG/t1Zyq8l/+3pwrijjdFQ6dCgWV9Y5cZ5knIuRnaVzbBw7TIKniTOwYiD49siwDPrDXDQ
	hdmCnLguwSPVIfufZZCHLr2LdHqfGjtMsfzch5zDBGFWy1XbgW9QfyFyDwyt66W2H8PG+l6Ouv8Wv
	bju/otV8DgYxTqAWcKW/6ceJYxtNs4q1i/raY/YXB+6icUv6ODwM/hSPczN2W9SLtkx8Ge35a+TIX
	kOAyhKsB6WPMz5I3aJ3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woxSC-00000006zEG-0Vw2;
	Wed, 29 Jul 2026 06:07:44 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woxS7-00000006zBJ-2d94
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 06:07:41 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-848743155bcso230271b3a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Jul 2026 23:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785305259; x=1785910059; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Au3B6tmLC3tMUt51a77RTkKN+/zhxdhlLpZElLCtiTw=;
        b=eIGwkbuszwmN4JFR+OWzBB95hyzG7omxwDIUSmNtCUZ6K6aabcoWV+w1sIYydgKSgv
         Y9hczIJZyj/DPS3U/FUKHkC0DJz/8xgX9wrtXF6f94wcGBKYBeeIQdieolxIjFMQn7O4
         uMCMBt7rBO4PUV33KPJ0w3oLp9xXJOcQgzy9SpRlcMkoxS+J2PisnJXFOOUgnYQ6zOYc
         KsK3OwvN6yluLhlcVfwYzUJ1MJCwfM64QrYNVwYbBbKh1Cb687+rc7PGFqK/1VVgpNDU
         FW5NGilzelqHC5ysD0Jak4JY4nj7Jy2OM9M5UOXPgsRgR0sGMOzWBeMmIByW28UxMEIR
         lvqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785305259; x=1785910059;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Au3B6tmLC3tMUt51a77RTkKN+/zhxdhlLpZElLCtiTw=;
        b=mJx9l/V6xyOZxRMdFJdDmULCmXRzx1pKquNOcHqw/TR21cUcZ0ldBsjd2+DJGF5nw0
         TS8coD1t4dygsMlJakd4HEuHnCKhzT353X269sc6yBOYMFZKR6QowRAlkx+yrizXXzRe
         XZlVN0Pp/fqfP14Ed0ZLRCDUDcR8LUenuCMmoe1V0fqemEUvRSsnPF/Cva0E9+0QZat/
         qOFk0rb7C6WvFKcoEcz2XzXqjq/zjDr9miu9UoEZM3FMf2giWuSDMfYDnxx24/XVaslT
         KaWswu7lIUnb6YbQ3nwNx3+AJO5UORHm1fvbavByMGA0qvVXOf5337t51zLMivAFIYU1
         Jcbg==
X-Forwarded-Encrypted: i=1; AHgh+RpXmScEra/Zc9n5x3Cr0ozulv9E2ETv832er93Gh2Ks+SGjKsrFYU5WCAt8kSQhk2uHRMz0+rUTT29aQrUnfQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxJxwXv2VTfGZZVguFa3bi5wSo6HkNuVc72o1LqaxolxS5Fa7PI
	hSvsYBddZ8SszLHMFiw1MYNWDubD+aBCRYFi5ZQUFiBzmnp9BZzS1GpF
X-Gm-Gg: AR+sD13GSDlMlkxRxqwJGmhoMINV3MCB617SyQ5YaKFDBPJ9wYQMX/jIU71nSNq2Zom
	ZRO9Eajzt1ofZgEOLOOxjd+qJ4DTA3WbxEfqT1Lmh0IVc9i6jEA98WCPHYo8DE7E9ziLGNsUOQp
	YHF4efyaA39opp/PfVc8f0F9Rxx9V8G/cDPKOquErbbb69Z3RpK72Uye+0+9Ue66w86k5aJ2+Zc
	vhRa+QLPStLJR7cduLsJGmpmXV583vTdqOBVKL7eXLkFJn6lqpFT49dGybnwAC7QCunNNrh7jhF
	rBcaWyukDfvcAElzE6uN3FUKczUZZlY+dm45k0BiMIUC3C46aYvGQHKEaW4UsNMKAXAJxnvzLpS
	p3/j57i9E6kcBMYwYWDFrKbgI6HB/BVghceDvMZBgA7mZdNbrmnUD2un4Hbc/g7SpD1sfr0t5OR
	fJJBdDpPxeHOC2LmSw7Sc21HFjzKWpQ4eqqtf2fhdgEkOZyEJEcZazsE4Va0kvAszsY4coP8Pf/
	f9alFm1Z0tjAXGM5snBdkdQHFW+hKGQm9j9iaAGB6h7znbxlLs=
X-Received: by 2002:a05:6a00:399a:b0:848:2f74:1d5b with SMTP id d2e1a72fcca58-84e932ca215mr5555635b3a.65.1785305258751;
        Tue, 28 Jul 2026 23:07:38 -0700 (PDT)
Received: from debian-rockchip-rock5b-rk3588.. ([2405:9800:b670:b64b:1c6e:95da:41c0:e7b6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84ea02f8473sm805504b3a.31.2026.07.28.23.07.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2026 23:07:38 -0700 (PDT)
From: Tharit Tangkijwanichakul <tharitt97@gmail.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Hans Verkuil <hverkuil@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel-mentees@lists.linux.dev,
	skhan@linuxfoundation.org,
	me@brighamcampbell.com,
	jkoolstra@xs4all.nl,
	Frank.li@oss.nxp.com,
	Tharit Tangkijwanichakul <tharitt97@gmail.com>
Subject: [PATCH v5 2/2] media: hantro: use DEFINE_RUNTIME_DEV_PM_OPS
Date: Wed, 29 Jul 2026 06:04:40 +0000
Message-ID: <20260729060440.2092-3-tharitt97@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260729060440.2092-1-tharitt97@gmail.com>
References: <20260729060440.2092-1-tharitt97@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_230740_414179_BAFCD962 
X-CRM114-Status: GOOD (  14.02  )
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

The runtime suspend and resume callbacks are currently guarded by
CONFIG_PM. Removing the guard directly would leave the callbacks unused
when CONFIG_PM is disabled.

Define the PM operations with DEFINE_RUNTIME_DEV_PM_OPS() and use
pm_ptr() when assigning them to the platform driver. This keeps the PM
callbacks available when needed while avoiding unused-function warnings
for CONFIG_PM=n builds.

Signed-off-by: Tharit Tangkijwanichakul <tharitt97@gmail.com>
---
 drivers/media/platform/verisilicon/hantro_drv.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index d6fcd4f7f9da..35302cf9f233 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -1284,7 +1284,6 @@ static void hantro_remove(struct platform_device *pdev)
 	pm_runtime_disable(vpu->dev);
 }
 
-#ifdef CONFIG_PM
 static int hantro_runtime_resume(struct device *dev)
 {
 	struct hantro_dev *vpu = dev_get_drvdata(dev);
@@ -1314,13 +1313,9 @@ static int hantro_runtime_suspend(struct device *dev)
 	clk_bulk_disable(vpu->variant->num_clocks, vpu->clocks);
 	return 0;
 }
-#endif
 
-static const struct dev_pm_ops hantro_pm_ops = {
-	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
-				pm_runtime_force_resume)
-	SET_RUNTIME_PM_OPS(hantro_runtime_suspend, hantro_runtime_resume, NULL)
-};
+static DEFINE_RUNTIME_DEV_PM_OPS(hantro_pm_ops, hantro_runtime_suspend,
+				hantro_runtime_resume, NULL);
 
 static struct platform_driver hantro_driver = {
 	.probe = hantro_probe,
@@ -1328,7 +1323,7 @@ static struct platform_driver hantro_driver = {
 	.driver = {
 		   .name = DRIVER_NAME,
 		   .of_match_table = of_hantro_match,
-		   .pm = &hantro_pm_ops,
+		   .pm = pm_ptr(&hantro_pm_ops),
 	},
 };
 module_platform_driver(hantro_driver);
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
