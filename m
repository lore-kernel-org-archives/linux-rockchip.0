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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E6EC433E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:15:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 61B5820829
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:15:14 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="U7PenHlW";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="r3GLZCJW"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 61B5820829
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UMeRMgSg4pZ+94/sVVLBqixp7AzXdNnKq86ebccIBO8=; b=U7PenHlWAt/jqpvTSHJcEBLMts
	4/26lL1gcu+zy/0Fj1k4Uwg1VAmJ1sx3OgMT3qbxP+nffQaOQPp1RN29YTBQRxm/hJhgXDBz3Ug7D
	/yWmE5EhgVGnugvcDJ0X8pc+x5wdxElVqdgAjrVaaHRN2Y1FySqLKnMyGFJqK4ZcPx/A0EUOxXIt3
	RzI52ikLvTpoQZoiQNdtPI3Pfhn8i+rSmD0yqKaWt04i9sb6i3lwhjOde6U9yH3FYYUCdnJfltU6w
	jjWVLByZIUu9VIEi36GCXGh1KcL0Y5D8hmXF3DCoI63vG8W+LAliCw8wKgWh3FLW0G7YQsLh3LiaP
	I8tFPy5w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7aIQ-0005Vf-0q; Mon, 17 Aug 2020 08:15:10 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7aEk-0003Fk-40; Mon, 17 Aug 2020 08:11:23 +0000
Received: by mail-pl1-x642.google.com with SMTP id bh1so7110377plb.12;
 Mon, 17 Aug 2020 01:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9P4UiaV8KPwel1Tt9KznXK/0ns/MMrwircAHJYOTu7A=;
 b=r3GLZCJWNlctZu3MPc3ZktHezCi9I2Lgci9quhal0K/lYWU2YxEI16zK2p3ooqfNit
 +fAkbSvrmIAk5pGEm8CaNi/rDu8w1HgrPE9X/kqPFvXxQadi1mwV51kDgu4kPZYbtxO5
 aCFOq8j+ttIjUl2GbfMIrJsCgY8lCgalLwAsLwOCtwB8puTqdICaZkG9bgt2XeVti5v4
 rfnLq70AzkzKewtTbXjYA67XjHP7HVT2EHHAF/P1PjBIVjF9eUatUBANtzFGb9G2O2Is
 51S64GucqinbZVux8cgh09OvCL6aJmEREOvh9+sIk0V1LU9My1LNvw/brCCcyn/z1NF5
 Q1mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9P4UiaV8KPwel1Tt9KznXK/0ns/MMrwircAHJYOTu7A=;
 b=kbxG8PbuUgRYW0FNJ7wX3wLmqWA1Y2ml3xxUPZ0o0WPkT6gejWoxYJs0LiEYuV+7V+
 yuzmBciZfu9H8l3XUgb/RmbsLT7sl3s/UNDGtpzC7ggl3TOR6DzR6XcWc4VNbyBk2P8k
 YLruf/UxDofjLNHvwEphcSgdPhjKBfPzCoIshnfhDdz86KzNxvJbdkQdrVEsdI/WFHu/
 e3nBaklFYCiJGtKl+MBV5N6HFw9YDUvURQW/p0n8z3yP9HvUwV4xEWyS/sPZsE5LPiI4
 wqb+sIHAWNQ9RfAmLWHgDpWTf9qlerVmzCXprBDDTGskexZS/qq+EqMTjrvKkw6zFPcN
 snug==
X-Gm-Message-State: AOAM530nSgbAUBYK/5/HrSQi//YcaTvjeX6eLEy4qGLZ2KFWDbQjU4iH
 hizL0cbeiOdrqrj19MDrSB4=
X-Google-Smtp-Source: ABdhPJxTMIDoLuD0wfD5gOa8F8cIxaCsYKHgtCExwrUW8xhgxL6VK0Q3dQ22P3FK+4kYogWSGoyK5A==
X-Received: by 2002:a17:90a:154e:: with SMTP id
 y14mr11992119pja.178.1597651879050; 
 Mon, 17 Aug 2020 01:11:19 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id 77sm18499751pfx.85.2020.08.17.01.11.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 01:11:18 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 ludovic.desroches@microchip.com, heiko@sntech.de, matthias.bgg@gmail.com
Subject: [PATCH 17/19] crypto: s5p: convert tasklets to use new
 tasklet_setup() API
Date: Mon, 17 Aug 2020 13:39:39 +0530
Message-Id: <20200817080941.19227-18-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817080941.19227-1-allen.lkml@gmail.com>
References: <20200817080941.19227-1-allen.lkml@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_041122_574055_FE17B352 
X-CRM114-Status: GOOD (  14.94  )
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
 drivers/crypto/s5p-sss.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/crypto/s5p-sss.c b/drivers/crypto/s5p-sss.c
index 341433fbcc4a..3647dffc307f 100644
--- a/drivers/crypto/s5p-sss.c
+++ b/drivers/crypto/s5p-sss.c
@@ -1443,9 +1443,9 @@ static int s5p_hash_handle_queue(struct s5p_aes_dev *dd,
  * s5p_hash_tasklet_cb() - hash tasklet
  * @data:	ptr to s5p_aes_dev
  */
-static void s5p_hash_tasklet_cb(unsigned long data)
+static void s5p_hash_tasklet_cb(struct tasklet_struct *t)
 {
-	struct s5p_aes_dev *dd = (struct s5p_aes_dev *)data;
+	struct s5p_aes_dev *dd = from_tasklet(dd, t, hash_tasklet);
 
 	if (!test_bit(HASH_FLAGS_BUSY, &dd->hash_flags)) {
 		s5p_hash_handle_queue(dd, NULL);
@@ -1973,9 +1973,9 @@ static void s5p_aes_crypt_start(struct s5p_aes_dev *dev, unsigned long mode)
 	s5p_aes_complete(req, err);
 }
 
-static void s5p_tasklet_cb(unsigned long data)
+static void s5p_tasklet_cb(struct tasklet_struct *t)
 {
-	struct s5p_aes_dev *dev = (struct s5p_aes_dev *)data;
+	struct s5p_aes_dev *dev = from_tasklet(dev, t, tasklet);
 	struct crypto_async_request *async_req, *backlog;
 	struct s5p_aes_reqctx *reqctx;
 	unsigned long flags;
@@ -2257,7 +2257,7 @@ static int s5p_aes_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, pdata);
 	s5p_dev = pdata;
 
-	tasklet_init(&pdata->tasklet, s5p_tasklet_cb, (unsigned long)pdata);
+	tasklet_setup(&pdata->tasklet, s5p_tasklet_cb);
 	crypto_init_queue(&pdata->queue, CRYPTO_QUEUE_LEN);
 
 	for (i = 0; i < ARRAY_SIZE(algs); i++) {
@@ -2267,8 +2267,7 @@ static int s5p_aes_probe(struct platform_device *pdev)
 	}
 
 	if (pdata->use_hash) {
-		tasklet_init(&pdata->hash_tasklet, s5p_hash_tasklet_cb,
-			     (unsigned long)pdata);
+		tasklet_setup(&pdata->hash_tasklet, s5p_hash_tasklet_cb);
 		crypto_init_queue(&pdata->hash_queue, SSS_HASH_QUEUE_LENGTH);
 
 		for (hash_i = 0; hash_i < ARRAY_SIZE(algs_sha1_md5_sha256);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
