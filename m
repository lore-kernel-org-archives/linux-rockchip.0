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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7964AC433E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:14:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3DBCD2078D
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:14:34 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Cnc1RHTi";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YsW5qw9N"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3DBCD2078D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A1+zeOrz7ur3XHh/RA73H+WTmk1M4KQJTQMmU18j+gA=; b=Cnc1RHTi++RliC65xxDbnkA/nL
	XLomHDVZOnwqpmRvGbgcE79/bprGaxUzid5RaspC3nU2z9g4FNi90xAM2M38ox0tFCogpMgUD0O9V
	DIpqcDq/cTtaSowq7s9YwGBCxRorEN+TNBtG58LV3+sUzpboKoxdnmKI2NTRVEAsDTr5rcoLklvc2
	G2lT0KOV3CWXQazHQmZJn2JSAa6/2K8NoWhuCqVX3o2+xbWtyfnK7tfrVjzArkPnrNugD2hnVOwwo
	GLCuNoho9Fp8TR0z6cWO7zm+s1E7JI46OwblZ59qxTNS4HqKyGYHdgXTVLfmJiFwlpd2Ud+MbS3JQ
	JfkvbDBg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7aHh-00058p-Fn; Mon, 17 Aug 2020 08:14:25 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7aEb-0003BI-PR; Mon, 17 Aug 2020 08:11:14 +0000
Received: by mail-pj1-x1041.google.com with SMTP id l60so7436914pjb.3;
 Mon, 17 Aug 2020 01:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=70PFaXHmNSmd92XMUWhul5KjsiDucw6zRMXg1MiBgH8=;
 b=YsW5qw9NRQ980DmqR7I0AKAyBlH2mw3IDWiuDPiK5PcL9EeuX5xAwemDz4lY2v1H+P
 PHLtHkMDF/AgpV8+UThxQF2gm9LvzcooZzOrhwy7m7/cXDLWa7fAjMjJIT0aQTY1AsfO
 xzUZT6gI+uPaKAnyKPfueeZ6eMWqTqWJHtDTQOsluZCITK1RTA2F2ZvZ7wau4Ju0YVLS
 XBrkbMK4FSESTy616HPAaK1DxUqvvy/pNIMOqvuFftH9+V1h+EhuNNSdDVhY2vaG1Wxj
 Oikq55hNMBi3727bfh95NcVp5rIWsyWQ+wC8LWRXWIX9cPD/IESHUPUjsUGrC3isgP14
 clhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=70PFaXHmNSmd92XMUWhul5KjsiDucw6zRMXg1MiBgH8=;
 b=T7GVSAerFYOfaeLN95TQ5V2wb4Uex53m7uUP8+EOQGxn4WC4xW/c2+FwVeEvnFhiAA
 Hdj1QWGdcs9y9YL6Ep6nY8AUGGU4WXxnwjqOlfZhpPbQqnIGCDHPtSpinX18AIXlZJ69
 VrBYVkdHHUx0srVUntcUJ3mGRleP4U3zv1z6s1rAYwrfUyj4vlwWtjh/Wcx0enz3cYGa
 RF18kklEYlumbOMmxAzO/aAwMXCoIsXsbFAZP+0DUUSsDYMP/yYRq1GlFXxsvwJ61pwj
 g8194gJUUbf59kMARV3KogLLZuLigE37B+GbM412rlz8zvi2v1lz0XDXz5D3IKwhupIA
 LnbA==
X-Gm-Message-State: AOAM532xa1jMh91DFT7YdVfPP9qBHdhZifI61nx40BrvkOYXWYEok1DI
 BR9RaAqK3yqOaHyOYqB5XfA=
X-Google-Smtp-Source: ABdhPJxkJc7DyhK1mDYdyU2581enLqosMCxTakWV3V2k6PuHjYp2kxVpf+h+fHSOmD19Aql6dm5KyA==
X-Received: by 2002:a17:90a:24e6:: with SMTP id
 i93mr11415482pje.231.1597651871493; 
 Mon, 17 Aug 2020 01:11:11 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id 77sm18499751pfx.85.2020.08.17.01.11.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 01:11:11 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 ludovic.desroches@microchip.com, heiko@sntech.de, matthias.bgg@gmail.com
Subject: [PATCH 15/19] crypto: qce: convert tasklets to use new
 tasklet_setup() API
Date: Mon, 17 Aug 2020 13:39:37 +0530
Message-Id: <20200817080941.19227-16-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817080941.19227-1-allen.lkml@gmail.com>
References: <20200817080941.19227-1-allen.lkml@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_041113_879906_B3138132 
X-CRM114-Status: GOOD (  13.29  )
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
 drivers/crypto/qce/core.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/crypto/qce/core.c b/drivers/crypto/qce/core.c
index cb6d61eb7302..0b171ef9e3b7 100644
--- a/drivers/crypto/qce/core.c
+++ b/drivers/crypto/qce/core.c
@@ -116,9 +116,9 @@ static int qce_handle_queue(struct qce_device *qce,
 	return ret;
 }
 
-static void qce_tasklet_req_done(unsigned long data)
+static void qce_tasklet_req_done(struct tasklet_struct *t)
 {
-	struct qce_device *qce = (struct qce_device *)data;
+	struct qce_device *qce = from_tasklet(qce, t, done_tasklet);
 	struct crypto_async_request *req;
 	unsigned long flags;
 
@@ -221,8 +221,7 @@ static int qce_crypto_probe(struct platform_device *pdev)
 		goto err_clks;
 
 	spin_lock_init(&qce->lock);
-	tasklet_init(&qce->done_tasklet, qce_tasklet_req_done,
-		     (unsigned long)qce);
+	tasklet_setup(&qce->done_tasklet, qce_tasklet_req_done);
 	crypto_init_queue(&qce->queue, QCE_QUEUE_LENGTH);
 
 	qce->async_req_enqueue = qce_async_request_enqueue;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
