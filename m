Return-Path: <SRS0=M6n8=HK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CE61C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Feb 2021 09:43:41 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8EF5864E82
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Feb 2021 09:43:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8EF5864E82
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JWalHDVxpsKrX8T1ZAzgyAuxf1xc61tTvVQZxqOmFHc=; b=yhbIiEL5SkTImpEP2M9SAFM4l
	G3YM7XVB4KcN6WiLoNttvsvNAAZHObgiH1AZd7EztTIDAktPlPaI/l782lK2PyLxvqB077FqLMqqn
	c7hLE+3qG/aCRzxsNtADK/PdWOW6P7EdzcIogAKd0axEryuXf5or4fdvHEiHFhFf5c6Th1JgPeijR
	45qtjN9mVzkoYUTgp7M8SdYep3Ul2J/1KLyCeZF/2aU88nAULMPMIEVGo3s9s9HntppWbZLHz3DXC
	TZTvwbFsnGD9Yc5jd7ost7fW/iKgPUgxX/ZV6see3AT+RhkPUpLjYdHpy8Gh3pZtlk+ipJ4Bc99sE
	ELU3OBL3A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l934y-0006Ld-Rt; Mon, 08 Feb 2021 09:43:36 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l934w-0006J5-Al; Mon, 08 Feb 2021 09:43:35 +0000
Received: by mail-pf1-x42a.google.com with SMTP id 189so337485pfy.6;
 Mon, 08 Feb 2021 01:43:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Pt3Ra9o7wlpdpNYx3JDjTYF1o1dX6A0SMQwis6c4Pyw=;
 b=QhEV9FMXBvym/ARUTAOQRFT+VSGwsl+HFKUhZjk6UM9PU4Um8MSAEq5+EDwRqucqEY
 KB+KMqB66L+SkZrbcgoBoYwk09huncASO+rSBdiVdLeJ+Kfc4jIyl6ziOkJ8+p9DIKQD
 XaURfC5FDoO/ulyUauhjQJz3XGVZ+yOCxp8c6N5JNiGx2jV1cSH3wAP1XDVfIrBRNhON
 VfufsnT2Zxl6P4kRkJnU84TY8vkRxWlsnVOYffiAarN243ukvf6p9GRD+jXEuiITdmQC
 fwYttSWNPBMPvKn4J4nqTVvhc2GjC/qa2tqWSz0bW0YDaWAzAvmwdPIaGOyqyX+9c1AL
 mZPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Pt3Ra9o7wlpdpNYx3JDjTYF1o1dX6A0SMQwis6c4Pyw=;
 b=tKhNcwJUQ75cnpxBOj+c456EXQmC0QIr4olTayafhseExVIBnjSezfVPpJWBmQBvse
 UcJYLWUBXkfw+fF+pGqkNqKCMsif9ZDqg0gMNil7ho9RGx4UcW729MIHWXhe8OGEZQpx
 JpEg+Hyo1qfOW0JVa4ymsRbzczQt//sN1553cXQnMySaKFjkvIrWjhAQlE3m4lktik8T
 LWgQ/9SnfVD7f9YtSU5ipryvd7L5TQsDqGu+TywbssXBITr+WwGVofyli0BPMqMX2ryt
 KLc29n5n8VEZ6UsXkVCeiIekud0z5dG+xCjqZIZa8s14qEt7snTlpMyyn14huF39RWGq
 mUsw==
X-Gm-Message-State: AOAM532Xz8ZGY6jqlRttv+avi2t5xr56mZvD/h21NpIfmaqMC009zPwO
 GHgcUgE0TCeEpT/GHMWxhwE=
X-Google-Smtp-Source: ABdhPJxFGWbnMXnrhMoIW3WHCggAdOTATl5cBsG/jL9ehDb2rVejdDgpbUztvsK8Q4PVA28zFFyc6g==
X-Received: by 2002:a63:505d:: with SMTP id q29mr16117823pgl.89.1612777410468; 
 Mon, 08 Feb 2021 01:43:30 -0800 (PST)
Received: from localhost.localdomain ([49.207.205.214])
 by smtp.gmail.com with ESMTPSA id k69sm12208958pfd.4.2021.02.08.01.43.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Feb 2021 01:43:29 -0800 (PST)
From: Allen Pais <allen.lkml@gmail.com>
To: herbert@gondor.apana.org.au
Subject: [PATCH v5 03/19] crypto: axis: convert tasklets to use new
 tasklet_setup() API
Date: Mon,  8 Feb 2021 15:12:22 +0530
Message-Id: <20210208094238.571015-4-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210208094238.571015-1-allen.lkml@gmail.com>
References: <20210208094238.571015-1-allen.lkml@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210208_044334_400482_200C9728 
X-CRM114-Status: GOOD (  11.97  )
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
Cc: giovanni.cabiddu@intel.com, alexandre.belloni@bootlin.com,
 aymen.sghaier@nxp.com, heiko@sntech.de, qat-linux@intel.com,
 jamie@jamieiles.com, jesper.nilsson@axis.com,
 linux-samsung-soc@vger.kernel.org, horia.geanta@nxp.com,
 k.konieczny@samsung.com, schalla@marvell.com, krzk@kernel.org,
 linux-rockchip@lists.infradead.org, ludovic.desroches@microchip.com,
 thomas.lendacky@amd.com, arno@natisbad.org, vz@mleia.com, gilad@benyossef.com,
 gcherian@marvell.com, linux-mediatek@lists.infradead.org,
 lars.persson@axis.com, matthias.bgg@gmail.com,
 Allen Pais <apais@linux.microsoft.com>, john.allen@amd.com,
 bbrezillon@kernel.org, nicolas.ferre@microchip.com,
 linux-crypto@vger.kernel.org, Romain Perier <romain.perier@gmail.com>,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Allen Pais <apais@linux.microsoft.com>

In preparation for unconditionally passing the
struct tasklet_struct pointer to all tasklet
callbacks, switch to using the new tasklet_setup()
and from_tasklet() to pass the tasklet pointer explicitly.

Signed-off-by: Romain Perier <romain.perier@gmail.com>
Signed-off-by: Allen Pais <apais@linux.microsoft.com>
---
 drivers/crypto/axis/artpec6_crypto.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/crypto/axis/artpec6_crypto.c b/drivers/crypto/axis/artpec6_crypto.c
index 9ad188cffd0d..52e0c7fdbfa8 100644
--- a/drivers/crypto/axis/artpec6_crypto.c
+++ b/drivers/crypto/axis/artpec6_crypto.c
@@ -2075,9 +2075,9 @@ static void artpec6_crypto_timeout(struct timer_list *t)
 	tasklet_schedule(&ac->task);
 }
 
-static void artpec6_crypto_task(unsigned long data)
+static void artpec6_crypto_task(struct tasklet_struct *t)
 {
-	struct artpec6_crypto *ac = (struct artpec6_crypto *)data;
+	struct artpec6_crypto *ac = from_tasklet(ac, t, task);
 	struct artpec6_crypto_req_common *req;
 	struct artpec6_crypto_req_common *n;
 	struct list_head complete_done;
@@ -2900,8 +2900,7 @@ static int artpec6_crypto_probe(struct platform_device *pdev)
 	artpec6_crypto_init_debugfs();
 #endif
 
-	tasklet_init(&ac->task, artpec6_crypto_task,
-		     (unsigned long)ac);
+	tasklet_setup(&ac->task, artpec6_crypto_task);
 
 	ac->pad_buffer = devm_kzalloc(&pdev->dev, 2 * ARTPEC_CACHE_LINE_MAX,
 				      GFP_KERNEL);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
