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
	by smtp.lore.kernel.org (Postfix) with ESMTP id E974CC433DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:12:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B5E442080D
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:12:15 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="W9zBiWDn";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QH+SZkjS"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B5E442080D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lh6/4WrQ80ua7fukn9dxxAn1nqWccGujUNqZeT3iAY0=; b=W9zBiWDnDChd/L0qweiaoKdZUN
	9kIRkwkl5fCm4Fap4SSyjK7HDCna2qgPNsXLxj6/cCTabj2TWGJCWeeQ5E7yIk2+7csXa4fojs1fV
	NROh9uk6bYD36Rz0cSi3fX0DyXr1m2MevHleAypWtJLoV0LOxUtwOa8ci2c0vYIUerUXkgrlw4g5W
	5c7fKB96dNxsAQKF7vuRX15fuJQdeB0jvGJ1SiLG+/5CGI0VMR8M+rhQ/hPUnUEmJcdHl7DoD4Slk
	xunIKz7u+MRLP/JaQtgdwFoACe3i1prB+6ISi1UGaztvpfNVL3ftuBlYozDlQV/Ij/w4UeC+enahC
	rNthLl8g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7aFX-0003ie-8L; Mon, 17 Aug 2020 08:12:11 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7aEC-0002xj-K2; Mon, 17 Aug 2020 08:10:49 +0000
Received: by mail-pf1-x444.google.com with SMTP id m71so7862415pfd.1;
 Mon, 17 Aug 2020 01:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+CczU85S+/uH24ewiNmvI8CVQIP/5ll4+ExQ6Q4RriA=;
 b=QH+SZkjSRXli6dhDl/PYa92MYnDglHyX/Y+c8a919EtHMLwSk11mD0xwVEGvrYzsjG
 6YHStcWlbvDg7m1nCbTu0mzv4oZuD8ixW7hNibRqKw8PcLmHtLG2/QciwIzw+8fj1QzI
 +k9V6tnsiKr6cex+82bCgVz3pI+EM+ZXMvggkx35zkVe2ztbSG6mN58KHAX1R4vLDETd
 T64cUILKyX0ps+0NxtbWr0jr8yJZnlso4tfOXh/ZuhkzOwn0HkHiRPshvFvtOdAALHD7
 z8CPKf0Ux+LhIy1Jnsz2SiSfL+T0uJNzDkf32MhphrNkOu8oFKovfslNCi32tB0Ln7tf
 1aAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+CczU85S+/uH24ewiNmvI8CVQIP/5ll4+ExQ6Q4RriA=;
 b=T0sLVbrfectytHqZFxlEJXbpLhBtp9iQhcYx656caTaXX1vUjy4p8xwv203ZQ3WsRQ
 hLmt6UytC+CXbuh+3UjW5tjcIHN/5k+rLMdCVZCTGkTXWU+qwjl3NfAzDWRcitzanQT7
 Q7NoYrqc/S940Ex7VMPQMtJHEbrT/5SbruZJZOxv5iGiLZ7MNURWRETzFxIVCKsrBSQ7
 hW847c6IamuO2UkZxc58DmF8gXFoMgKjBWj8VZen4C+UAnDwRKRSsHpslW9WxF6HUNN6
 UZW6A4F7swj+lpOeM6zr0vWKu7/O6Z9X/WbuGw+KPi0fo7OUTbiqvnBPBtGor/mhJJzK
 OLbA==
X-Gm-Message-State: AOAM5318lbU9ZxyFBGTml68/RZjHR6Zmr4UzYnSKvzF72kJ98AOFrs34
 Ng9GXUwlccMfzo2NCxBQLLs2ptv8sR33bw==
X-Google-Smtp-Source: ABdhPJxmetqO1n9H4Ju5wN5dejc+GQRTEjJ2B9RVF6qMxczI2kKGGoFf4wVOw48rAOu09tHL2QUQtA==
X-Received: by 2002:a62:1745:: with SMTP id 66mr10016518pfx.273.1597651846354; 
 Mon, 17 Aug 2020 01:10:46 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id 77sm18499751pfx.85.2020.08.17.01.10.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 01:10:45 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 ludovic.desroches@microchip.com, heiko@sntech.de, matthias.bgg@gmail.com
Subject: [PATCH 09/19] crypto: img-hash: convert tasklets to use new
 tasklet_setup() API
Date: Mon, 17 Aug 2020 13:39:31 +0530
Message-Id: <20200817080941.19227-10-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817080941.19227-1-allen.lkml@gmail.com>
References: <20200817080941.19227-1-allen.lkml@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_041048_733580_6E65C62B 
X-CRM114-Status: GOOD (  14.44  )
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
 drivers/crypto/img-hash.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/crypto/img-hash.c b/drivers/crypto/img-hash.c
index 87226b7c2795..0e1a32bdbaf4 100644
--- a/drivers/crypto/img-hash.c
+++ b/drivers/crypto/img-hash.c
@@ -353,9 +353,9 @@ static int img_hash_dma_init(struct img_hash_dev *hdev)
 	return 0;
 }
 
-static void img_hash_dma_task(unsigned long d)
+static void img_hash_dma_task(struct tasklet_struct *t)
 {
-	struct img_hash_dev *hdev = (struct img_hash_dev *)d;
+	struct img_hash_dev *hdev = from_tasklet(hdev, t, dma_task);
 	struct img_hash_request_ctx *ctx = ahash_request_ctx(hdev->req);
 	u8 *addr;
 	size_t nbytes, bleft, wsend, len, tbc;
@@ -885,9 +885,9 @@ static int img_unregister_algs(struct img_hash_dev *hdev)
 	return 0;
 }
 
-static void img_hash_done_task(unsigned long data)
+static void img_hash_done_task(struct tasklet_struct *t)
 {
-	struct img_hash_dev *hdev = (struct img_hash_dev *)data;
+	struct img_hash_dev *hdev = from_tasklet(hdev, t, done_task);
 	int err = 0;
 
 	if (hdev->err == -EINVAL) {
@@ -952,8 +952,8 @@ static int img_hash_probe(struct platform_device *pdev)
 
 	INIT_LIST_HEAD(&hdev->list);
 
-	tasklet_init(&hdev->done_task, img_hash_done_task, (unsigned long)hdev);
-	tasklet_init(&hdev->dma_task, img_hash_dma_task, (unsigned long)hdev);
+	tasklet_setup(&hdev->done_task, img_hash_done_task);
+	tasklet_setup(&hdev->dma_task, img_hash_dma_task);
 
 	crypto_init_queue(&hdev->queue, IMG_HASH_QUEUE_LENGTH);
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
