Return-Path: <SRS0=J3GV=B3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6749FC433E4
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:14:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2B96C207FB
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:14:50 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="IbNZJFC1";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XBOxEYVL"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2B96C207FB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TFgEh3H+wrbAGtBbXP/aphQj+tZeVeBtQjLz7bJUAjE=; b=IbNZJFC1Sz9m2pNT/T9Me2iU1C
	SuwEQdBd5dfvUOkCJywEhQELHNLvL4umPT/BBePiq9WERMnZoUbm3S1ue/r5+wWV/A3gfIcj+TSuE
	O1rMia6f0jBvsSnMDbk7zFq1h8GLXdZiT/zaZji5pNrDgespBUnJog5+4LAHyQBRxs0yrkiDv5zVJ
	9y4O4VqsU0jIFUJkKUDauK8CEY+KmK0IsDIt5MiqtveVmWS4O/BFRktiNqO9jflDhghpfB1yrfCM1
	fJgMc/Mt2zWljU5HjNWovxHO6nDG2EFis8JDGh/ob2Cvj+U9ncxumXW9OW8neCPQZlj/FsQBQGMZ5
	4MAiVSOQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7aHt-0005Gf-1t; Mon, 17 Aug 2020 08:14:37 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7aEg-0003DW-Ez; Mon, 17 Aug 2020 08:11:20 +0000
Received: by mail-pl1-x642.google.com with SMTP id y6so7128959plt.3;
 Mon, 17 Aug 2020 01:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0I0WPdb+Lnw0T9UwVRKshyQRyAmBHfkv+OIhMK0TwCo=;
 b=XBOxEYVLtO2d2M09e9vTXjaL+F4HowWz6DhEtXsFNUd951C+5m4MzRyoZxFJWYzrnO
 mwikjKG2qiC1NFIgVCjXOgYdEh4rIRn2IF1R+D0Y2MOrmlsJGUFTYGGu5biSm5l4w55/
 4O0k0A77BOI+DcVDGguCfMX+9fARyOmTI7IeL7Ecg5dpxptZdvGN6wbD5zMQJnpAe+Z9
 BdUlPY0isvAhdgwTfc7p/ItKyKbU6aJNjROrPBeECqASpe15Nd3BED/akhjyaRaaL9V6
 wBjZ4MrFjHybqqJljXD89sOEqWkbOUGk09/Ov6gtyBSPb5MJaObTvCMDihr0WuYVhDQW
 1r5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0I0WPdb+Lnw0T9UwVRKshyQRyAmBHfkv+OIhMK0TwCo=;
 b=beFEdg/Bf628H5pAQzLRGRqj8Meo0TVfSAtDOoEtO8585qIR7iVNxh73OWO+4q9d2+
 gcF2wzx3xSD4oGCE5ujH1enML0foeJBfTZYAm4ejMrSuiuQhRD2G6H5Esc+EoCWnb5nZ
 Ej5x2JXKstDWk5SG6yS47yAjdbWt5wkTF/M5awDzxlHj8m9Y7xEgi+3bF/HUf9dO+8H3
 UjfcEBIPLJzQtCm/3IggTMN+G4GlR9En6BYIvhA5m4qVRVndeDhHokDfXb2eBb/ExqCQ
 jUuEzJ4CyzKoSX8Sw9bbUY0G3nEjn8fCSuMuECjwJCaLUGU0PHDWb1EdhF26p4oKaryU
 e34Q==
X-Gm-Message-State: AOAM532/oA9HMvM3hp/wmiX5mjhUA5xIWgUa+0Yct5aOHJtipqUGMYsN
 J83Hin0geYkOvrV3w3lo+44=
X-Google-Smtp-Source: ABdhPJz2yRlSGkjkyLzNCiZu5WWMgo5Ib2xo7ul7gKuWuKj/0odSFXT4lG38fkzXMXkYK2N9DxmmjA==
X-Received: by 2002:a17:902:bb90:: with SMTP id
 m16mr4634935pls.144.1597651875281; 
 Mon, 17 Aug 2020 01:11:15 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id 77sm18499751pfx.85.2020.08.17.01.11.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 01:11:14 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 ludovic.desroches@microchip.com, heiko@sntech.de, matthias.bgg@gmail.com
Subject: [PATCH 16/19] crypto: rockchip: convert tasklets to use new
 tasklet_setup() API
Date: Mon, 17 Aug 2020 13:39:38 +0530
Message-Id: <20200817080941.19227-17-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817080941.19227-1-allen.lkml@gmail.com>
References: <20200817080941.19227-1-allen.lkml@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_041118_644204_6EA086C1 
X-CRM114-Status: GOOD (  14.53  )
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
Cc: Romain Perier <romain.perier@gmail.com>, keescook@chromium.org,
 Allen Pais <allen.lkml@gmail.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, inux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

In preparation for unconditionally passing the
struct tasklet_struct pointer to all tasklet
callbacks, switch to using the new tasklet_setup()
and from_tasklet() to pass the tasklet pointer explicitly.

Signed-off-by: Romain Perier <romain.perier@gmail.com>
Signed-off-by: Allen Pais <allen.lkml@gmail.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index f385587f99af..23a695f31d1d 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -200,9 +200,9 @@ static int rk_crypto_enqueue(struct rk_crypto_info *dev,
 	return ret;
 }
 
-static void rk_crypto_queue_task_cb(unsigned long data)
+static void rk_crypto_queue_task_cb(struct tasklet_struct *T)
 {
-	struct rk_crypto_info *dev = (struct rk_crypto_info *)data;
+	struct rk_crypto_info *dev = from_tasklet(dev, t, queue_task);
 	struct crypto_async_request *async_req, *backlog;
 	unsigned long flags;
 	int err = 0;
@@ -230,9 +230,9 @@ static void rk_crypto_queue_task_cb(unsigned long data)
 		dev->complete(dev->async_req, err);
 }
 
-static void rk_crypto_done_task_cb(unsigned long data)
+static void rk_crypto_done_task_cb(struct tasklet_struct *t)
 {
-	struct rk_crypto_info *dev = (struct rk_crypto_info *)data;
+	struct rk_crypto_info *dev = from_tasklet(dev, t, done_task);
 
 	if (dev->err) {
 		dev->complete(dev->async_req, dev->err);
@@ -388,10 +388,8 @@ static int rk_crypto_probe(struct platform_device *pdev)
 	crypto_info->dev = &pdev->dev;
 	platform_set_drvdata(pdev, crypto_info);
 
-	tasklet_init(&crypto_info->queue_task,
-		     rk_crypto_queue_task_cb, (unsigned long)crypto_info);
-	tasklet_init(&crypto_info->done_task,
-		     rk_crypto_done_task_cb, (unsigned long)crypto_info);
+	tasklet_setup(&crypto_info->queue_task, rk_crypto_queue_task_cb);
+	tasklet_setup(&crypto_info->done_task, rk_crypto_done_task_cb);
 	crypto_init_queue(&crypto_info->queue, 50);
 
 	crypto_info->enable_clk = rk_crypto_enable_clk;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
