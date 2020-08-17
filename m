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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 103B5C433DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:13:12 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D29542078D
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:13:11 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="cRRwQs9I";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lCHZCy3p"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D29542078D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nW8jlGAFvMAU2wXTnfn6SPN2rxm6WmiJBToC+BcDsps=; b=cRRwQs9IybVsBBsgoTKEPPE//F
	95cihYG+TEh7jjUr7du1rk6+AasqqY2gyxJhXVgu+0o/qZOYqZXc8aREHU7X2y5y+zAwuITOLD5i0
	Uhl42KsAJJHikXWkvPkWyu49652gv7reXhwwjc1o4KSiuKHSRvOZ1BXeDIRaAGpmrAtKBLhlpuiRr
	uhuX9szdsQPAhffJu5KTj3xvQwu/h8Hn5PShwfC+wg/GkpI9GVmq93UgBMrfvozmA30B3mgltKSac
	6L0y70HfpLJrhWFAuPRgClOyQW7sa5L784+yugyGll9+sL1UF0wlwQZmS+SbICaZUcWO1HcOnKsHZ
	b7i47fPw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7aGJ-0004Gi-Os; Mon, 17 Aug 2020 08:12:59 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7aEQ-00035F-3I; Mon, 17 Aug 2020 08:11:03 +0000
Received: by mail-pj1-x1043.google.com with SMTP id 2so7429768pjx.5;
 Mon, 17 Aug 2020 01:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UiTTtY4um+8cmYBKgcrZZYgd8CdoEU+ARxIZdRX9Hl4=;
 b=lCHZCy3pNI0pZrwfcPNazSDtJnQIEjsNJln05t6INik82IzhLcow4WN5JuRRzBEhA8
 YGwXaK8fgpT/G5By171ao66YPo2MgKLkXIFSfl9+DDdLatYNmq9QUaBsSZDFiSFCnXBO
 h1PFiJwVPDIJqYeEmoE4IiHXKJ9F/Lc6mQ4o5hhJdjxM1YEDJoq8+UVgKvbCHh3XCf2M
 4UwWOdm1OH4+TcG6HaB9yOwqe1aNeUGzNBpmLgZNFRIxmOBqFUrKXw2hWL4MIxDXYJm7
 9UrmnGTGigzKdDSZRmSUB5ka9AutzOl2Yks+Z/DEtQVWrTyPsyn8Ygyr1rbjvyFrBIj/
 9QEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UiTTtY4um+8cmYBKgcrZZYgd8CdoEU+ARxIZdRX9Hl4=;
 b=g18ZQpmqGeMNX9dDVA9Vbfnz0/OcBcLMgsbRwioGhRLruQedZldsdgOh4ybTd6WF96
 CtQK0LAanWtGV8ZmM2W5Onsk3l6dv19AMGcAjm83xi+MHUXhQodG8DqTs+c7B8LfC7H5
 L8IXtAuF9Tu3fOceXFcJz5G1JstmA+/lHpVYINmpOChOw8b0Lu1hzdJYyfZUk6PvNhMY
 sGHR8JarKavaPb2hIzIbTF7ODzkv92gO5NvRLGgF1CWh73AhR92yAWqzcM4EybITdCEW
 /DgM9WVEaYWlYulVSX5JuN3cdzeJpu5XSKeavAymiZs4V9QcXJldM/4SqixMFC339gBK
 NDtg==
X-Gm-Message-State: AOAM533u8AiCDP4Z05CLuXesLQoppzo5LZGpYcCXI35HzMNGoQiTWvq9
 swH/aJ8gcQ9H8qjhiWGugJI=
X-Google-Smtp-Source: ABdhPJzIlpoIQTSdahVGMk8x5siqZ5Y3mjG1CPosG5SauNGyLp+frSB0ojX4DsaYxwOAzse/edpt+w==
X-Received: by 2002:a17:90b:684:: with SMTP id m4mr11607612pjz.4.1597651859925; 
 Mon, 17 Aug 2020 01:10:59 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id 77sm18499751pfx.85.2020.08.17.01.10.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 01:10:59 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 ludovic.desroches@microchip.com, heiko@sntech.de, matthias.bgg@gmail.com
Subject: [PATCH 12/19] crypto: omap: convert tasklets to use new
 tasklet_setup() API
Date: Mon, 17 Aug 2020 13:39:34 +0530
Message-Id: <20200817080941.19227-13-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817080941.19227-1-allen.lkml@gmail.com>
References: <20200817080941.19227-1-allen.lkml@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_041102_215038_7777B899 
X-CRM114-Status: GOOD (  14.97  )
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
 drivers/crypto/omap-aes.c  | 6 +++---
 drivers/crypto/omap-des.c  | 6 +++---
 drivers/crypto/omap-sham.c | 6 +++---
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/crypto/omap-aes.c b/drivers/crypto/omap-aes.c
index 4fd14d90cc40..4eae24167a5d 100644
--- a/drivers/crypto/omap-aes.c
+++ b/drivers/crypto/omap-aes.c
@@ -502,9 +502,9 @@ static void omap_aes_copy_ivout(struct omap_aes_dev *dd, u8 *ivbuf)
 		((u32 *)ivbuf)[i] = omap_aes_read(dd, AES_REG_IV(dd, i));
 }
 
-static void omap_aes_done_task(unsigned long data)
+static void omap_aes_done_task(struct tasklet_struct *t)
 {
-	struct omap_aes_dev *dd = (struct omap_aes_dev *)data;
+	struct omap_aes_dev *dd = from_tasklet(dd, t, done_task);
 
 	pr_debug("enter done_task\n");
 
@@ -1150,7 +1150,7 @@ static int omap_aes_probe(struct platform_device *pdev)
 		 (reg & dd->pdata->major_mask) >> dd->pdata->major_shift,
 		 (reg & dd->pdata->minor_mask) >> dd->pdata->minor_shift);
 
-	tasklet_init(&dd->done_task, omap_aes_done_task, (unsigned long)dd);
+	tasklet_setup(&dd->done_task, omap_aes_done_task);
 
 	err = omap_aes_dma_init(dd);
 	if (err == -EPROBE_DEFER) {
diff --git a/drivers/crypto/omap-des.c b/drivers/crypto/omap-des.c
index c9d38bcfd1c7..fddcfc3ba57b 100644
--- a/drivers/crypto/omap-des.c
+++ b/drivers/crypto/omap-des.c
@@ -594,9 +594,9 @@ static int omap_des_crypt_req(struct crypto_engine *engine,
 	return omap_des_crypt_dma_start(dd);
 }
 
-static void omap_des_done_task(unsigned long data)
+static void omap_des_done_task(struct tasklet_struct *t)
 {
-	struct omap_des_dev *dd = (struct omap_des_dev *)data;
+	struct omap_des_dev *dd = from_tasklet(dd, t, done_task);
 	int i;
 
 	pr_debug("enter done_task\n");
@@ -1011,7 +1011,7 @@ static int omap_des_probe(struct platform_device *pdev)
 		 (reg & dd->pdata->major_mask) >> dd->pdata->major_shift,
 		 (reg & dd->pdata->minor_mask) >> dd->pdata->minor_shift);
 
-	tasklet_init(&dd->done_task, omap_des_done_task, (unsigned long)dd);
+	tasklet_setup(&dd->done_task, omap_des_done_task);
 
 	err = omap_des_dma_init(dd);
 	if (err == -EPROBE_DEFER) {
diff --git a/drivers/crypto/omap-sham.c b/drivers/crypto/omap-sham.c
index 954d703f2981..3c03ee164039 100644
--- a/drivers/crypto/omap-sham.c
+++ b/drivers/crypto/omap-sham.c
@@ -1750,9 +1750,9 @@ static struct ahash_alg algs_sha384_sha512[] = {
 },
 };
 
-static void omap_sham_done_task(unsigned long data)
+static void omap_sham_done_task(struct tasklet_struct *t)
 {
-	struct omap_sham_dev *dd = (struct omap_sham_dev *)data;
+	struct omap_sham_dev *dd = from_tasklet(dd, t, done_task);
 	int err = 0;
 
 	dev_dbg(dd->dev, "%s: flags=%lx\n", __func__, dd->flags);
@@ -2126,7 +2126,7 @@ static int omap_sham_probe(struct platform_device *pdev)
 
 	INIT_LIST_HEAD(&dd->list);
 	spin_lock_init(&dd->lock);
-	tasklet_init(&dd->done_task, omap_sham_done_task, (unsigned long)dd);
+	tasklet_setup(&dd->done_task, omap_sham_done_task);
 	crypto_init_queue(&dd->queue, OMAP_SHAM_QUEUE_LENGTH);
 
 	err = (dev->of_node) ? omap_sham_get_res_of(dd, dev, &res) :
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
