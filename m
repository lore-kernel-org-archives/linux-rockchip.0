Return-Path: <SRS0=J3GV=B3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80AFFC433E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:12:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4E3C3207FB
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:12:04 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="MRRnawFe";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JKaW/qhi"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4E3C3207FB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x52G1eBaq3kEV+Hsm36k9nyxULvwWOViIUCIY4c2xcQ=; b=MRRnawFeAToPMJ9EIuMxJNYGoH
	spe/9c0ARmj4N828OAeZQ+XjszjWWPP8Aw1+9ymCmnG2Y0iy379aR3WmWmz5AdKyO3rl/VGut++Lv
	ZC+Dk7Pw8eKGFGJ7C6A7bvXbbaJm/a+MrfyKzhxpnPoeoFWTXclkRM5U6+6jZvD8NKedhfhM8gb9B
	OkuFb7GqNx67H1rPlywEJMRY4/FeonJRYlWSpSggSOwJDRS0gt/flO0AFuTk6E/lt2lCbC4vs2mfy
	mr8/qB5YEye0v1+8u3n88xAq6T9pXdkRo9SEWJ4AWhGiDZrS9ZCKidgKGv9eXRd7RhMpX/2fLbBTq
	qPxBK95Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7aFL-0003aZ-7u; Mon, 17 Aug 2020 08:11:59 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7aE8-0002vu-NO; Mon, 17 Aug 2020 08:10:45 +0000
Received: by mail-pg1-x542.google.com with SMTP id i10so2212152pgk.1;
 Mon, 17 Aug 2020 01:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=c28nS7WM/lTYYOV8e8WUD4cNVy3Nzu7Y0qu9f3pUCU8=;
 b=JKaW/qhiuSNySCEDtskRMrkBRMcOYGrH0RWP8TPo+yYLl2eZCTVycD16UiJAsViA5k
 MkXG7XD47OeYn+hc+/Dq6+RAOz8cem+i9O4jDB6xuiGZjjfLcC+7P3iW2oejT+HjaBij
 Rqz2I8RZEKzf7kizbmX2KnnKxFL9O0u8zAdXxw9Uy/Sa/JRB4o0laqHAYtGuodcS52rI
 zME3rgin9Ca0nJRrNelux/wp7R8tf4X0J0txkY5T8d7JWZYxdj5kOiZxAi+y1Iq77wmA
 47klSV2lR00j9fuVBF2asw1sS/xrgTauYLJB2b5P6UbGbqlDupcwP5YdT23MYcReuUeu
 4YYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=c28nS7WM/lTYYOV8e8WUD4cNVy3Nzu7Y0qu9f3pUCU8=;
 b=Vw6bB9owLMGC/IyPvYKezHtztoQA7lx8YK46R5VCrq3i2RhF7zvr2gcubDWYApd0ZY
 txlgqmnXxQVq7oUVPkJYbi5oXSS5tNFoMC0E0GQehMnVXwK/hwoZhDHQSaB1/TtG34K3
 /iyUywkWcnqfnHJJyOLc6agXj5MnjatPM0JavHIGEjwTk5ZEWBR85YPbAG5Ct8A1xDv8
 mZ5o5LhXlrBd4r24ZdBjAyLt29MAJQtJrcT4ZGakoxl2eRddDof+m1MDMBRVJyB5Am3k
 d77TCJr0WEZwHNQhA/0ZqhZ1BkjzxHPT0pziDY6CUTZY8lrGMBC/qb5j0UX/4BpWq1di
 /9+w==
X-Gm-Message-State: AOAM531+r/8K/x/Vze9P27x/6n/xzZuP96IRHSs/zuCNt2bPHz/SPPEN
 3saamWPOSTDbo+uwyjKbb1dow2QzPQtkjw==
X-Google-Smtp-Source: ABdhPJy9BYzbwcPgD8HG385Grr9hWC6WWjeKSMjJrjMJT/p0siFf1MLryVEBt68UMnCJUAKmTrmeNg==
X-Received: by 2002:aa7:8f04:: with SMTP id x4mr10836392pfr.199.1597651842595; 
 Mon, 17 Aug 2020 01:10:42 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id 77sm18499751pfx.85.2020.08.17.01.10.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 01:10:42 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 ludovic.desroches@microchip.com, heiko@sntech.de, matthias.bgg@gmail.com
Subject: [PATCH 08/19] crypto: hifn_795x: convert tasklets to use new
 tasklet_setup() API
Date: Mon, 17 Aug 2020 13:39:30 +0530
Message-Id: <20200817080941.19227-9-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817080941.19227-1-allen.lkml@gmail.com>
References: <20200817080941.19227-1-allen.lkml@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_041044_818888_BA11C09B 
X-CRM114-Status: GOOD (  14.11  )
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
 drivers/crypto/hifn_795x.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/crypto/hifn_795x.c b/drivers/crypto/hifn_795x.c
index 354836468c5d..785d7c4f44e7 100644
--- a/drivers/crypto/hifn_795x.c
+++ b/drivers/crypto/hifn_795x.c
@@ -2443,9 +2443,9 @@ static int hifn_register_alg(struct hifn_device *dev)
 	return err;
 }
 
-static void hifn_tasklet_callback(unsigned long data)
+static void hifn_tasklet_callback(struct tasklet_struct *t)
 {
-	struct hifn_device *dev = (struct hifn_device *)data;
+	struct hifn_device *dev = from_tasklet(dev, t, tasklet);
 
 	/*
 	 * This is ok to call this without lock being held,
@@ -2530,7 +2530,7 @@ static int hifn_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 
 	pci_set_drvdata(pdev, dev);
 
-	tasklet_init(&dev->tasklet, hifn_tasklet_callback, (unsigned long)dev);
+	tasklet_setup(&dev->tasklet, hifn_tasklet_callback);
 
 	crypto_init_queue(&dev->queue, 1);
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
