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
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC98AC433DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:12:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 842A82078D
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:12:34 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="iq0CEl0O";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="vCNVuFix"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 842A82078D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lYtI3DyfOTs897IsMPOZOgUEPhlP/6sIrXkhagxIbOo=; b=iq0CEl0Ob0L1P/SEiu2UvbGYCB
	KOU4ah8wiw0JhZYGs3uHQy8hkhG+DXrPUiAEu567m5VTdJvWjTyL3COxAIpopiVV1RXSApzuU7TM4
	SgbrYLHTJMNqTQnaLZz53Rsfwat+iDA4SEq3OZynFQ3w//8R7GS7EtQQdzVJlE3eODM9HRg6BM7Yv
	0tMqkG63DLyNuDmr1Sr+KIeZ1qwQnOgLvEZeWG75NsF7mChVp8o5X3C3B0N0hYG54GOh0884ZhwIV
	syQnCeHMqJkovsXdI7rtQE+dCVFwEAcEd9I5i3OJXmpzjIrnFiXLLuswcwAlpxhAzXdH5xcezCli4
	HIZrv7pg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7aFm-0003sz-VL; Mon, 17 Aug 2020 08:12:27 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7aEK-000322-5g; Mon, 17 Aug 2020 08:10:57 +0000
Received: by mail-pf1-x444.google.com with SMTP id x25so7861118pff.4;
 Mon, 17 Aug 2020 01:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=29Cc8iNRVO8G7DTd5+GqkXPX7Kx0cyS5m7DjP0Ag8Mc=;
 b=vCNVuFixVNNuPta5SWwJK9d836N/VbFNSDLfBVrJ+w7kEFV4M1HRgPNUepgKRBAI9r
 76I/bxaGXC2mtUM/L5Vd4gs/MNuPEFoap605rvDEtJKjMAVfRlEP6Mydb+oWCaXvubnP
 35/5l+nVtv21Mu3YfVXv2sAMBsufHBRv2NwnTCMcA58uf3F5aBIbsLG0JK9111705ahS
 C+oxNgzu76baSmk20w8WaujscxrfWbzSdvVfl3U6gP3jEbD4Z0fVygrOX3zwD3wuJMvF
 4NBdiEIGBNFq0B6p7hWTA9M62hUaaq7rJTAfKdk3lt79uL0EGyju9EzTXxjmoqwOAsn/
 G+Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=29Cc8iNRVO8G7DTd5+GqkXPX7Kx0cyS5m7DjP0Ag8Mc=;
 b=n3QK7IpQWPxoeWgQ/ISFSd245VlTQS8bW+aD6nB4+Ysg+rxQ8F4zYU3W4MdPbVTyuz
 PrYHCJbJDJap61V0twKKSH/aZzcAOvTMnqSiapeSkCN0Azkuv2F8iKUCzmxarXT40RM6
 8tbrzcvou2mIg0KSgisL2hErYMBlVf5cYuE9wiMMh63T1O6sXFQXXZxtIP49WdmXPxJm
 ilnLmrho93eeCl0LUoiq+zPsy5oNVvBMx2nSAMBv0Nk9M06JA9TEGo5EgmB5ajzInM7G
 LIlKMVkaobNMvUNyGVvFriDqgNO5vzkFwh1TaTUU+UkB9NJvwYYxPXjvuBIR6YsLolNv
 vvgg==
X-Gm-Message-State: AOAM530X5U71uqHC9eMkNXHfc06dO3xbvzDyPgvu4AgB00Z/uF5zctDi
 vvSh0CCYFCy+ROT+yUhFPDkYkOCy3R/JLQ==
X-Google-Smtp-Source: ABdhPJwwqp+UtqVKQBUluo4dsr1lmQnlD31gkclvHzhxea7YxCNOG2iDdO/rutHGUUIO4KE5Lqm6eg==
X-Received: by 2002:aa7:8751:: with SMTP id g17mr10333709pfo.109.1597651853965; 
 Mon, 17 Aug 2020 01:10:53 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id 77sm18499751pfx.85.2020.08.17.01.10.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 01:10:53 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 ludovic.desroches@microchip.com, heiko@sntech.de, matthias.bgg@gmail.com
Subject: [PATCH 11/19] crypto: mediatek: convert tasklets to use new
 tasklet_setup() API
Date: Mon, 17 Aug 2020 13:39:33 +0530
Message-Id: <20200817080941.19227-12-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817080941.19227-1-allen.lkml@gmail.com>
References: <20200817080941.19227-1-allen.lkml@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_041056_338280_558AC5E4 
X-CRM114-Status: GOOD (  14.28  )
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
 drivers/crypto/mediatek/mtk-aes.c | 14 ++++++--------
 drivers/crypto/mediatek/mtk-sha.c | 14 ++++++--------
 2 files changed, 12 insertions(+), 16 deletions(-)

diff --git a/drivers/crypto/mediatek/mtk-aes.c b/drivers/crypto/mediatek/mtk-aes.c
index 4ad3571ab6af..5557359f105c 100644
--- a/drivers/crypto/mediatek/mtk-aes.c
+++ b/drivers/crypto/mediatek/mtk-aes.c
@@ -1089,16 +1089,16 @@ static struct aead_alg aes_gcm_alg = {
 	},
 };
 
-static void mtk_aes_queue_task(unsigned long data)
+static void mtk_aes_queue_task(struct tasklet_struct *t)
 {
-	struct mtk_aes_rec *aes = (struct mtk_aes_rec *)data;
+	struct mtk_aes_rec *aes = from_tasklet(aes, t, queue_task);
 
 	mtk_aes_handle_queue(aes->cryp, aes->id, NULL);
 }
 
-static void mtk_aes_done_task(unsigned long data)
+static void mtk_aes_done_task(struct tasklet_struct *t)
 {
-	struct mtk_aes_rec *aes = (struct mtk_aes_rec *)data;
+	struct mtk_aes_rec *aes = from_tasklet(aes, t, done_task);
 	struct mtk_cryp *cryp = aes->cryp;
 
 	mtk_aes_unmap(cryp, aes);
@@ -1151,10 +1151,8 @@ static int mtk_aes_record_init(struct mtk_cryp *cryp)
 		spin_lock_init(&aes[i]->lock);
 		crypto_init_queue(&aes[i]->queue, AES_QUEUE_SIZE);
 
-		tasklet_init(&aes[i]->queue_task, mtk_aes_queue_task,
-			     (unsigned long)aes[i]);
-		tasklet_init(&aes[i]->done_task, mtk_aes_done_task,
-			     (unsigned long)aes[i]);
+		tasklet_setup(&aes[i]->queue_task, mtk_aes_queue_task);
+		tasklet_setup(&aes[i]->done_task, mtk_aes_done_task);
 	}
 
 	/* Link to ring0 and ring1 respectively */
diff --git a/drivers/crypto/mediatek/mtk-sha.c b/drivers/crypto/mediatek/mtk-sha.c
index da3f0b8814aa..ea0ae45cde93 100644
--- a/drivers/crypto/mediatek/mtk-sha.c
+++ b/drivers/crypto/mediatek/mtk-sha.c
@@ -1163,16 +1163,16 @@ static struct ahash_alg algs_sha384_sha512[] = {
 },
 };
 
-static void mtk_sha_queue_task(unsigned long data)
+static void mtk_sha_queue_task(struct tasklet_struct *t)
 {
-	struct mtk_sha_rec *sha = (struct mtk_sha_rec *)data;
+	struct mtk_sha_rec *sha = from_tasklet(sha, t, queue_task);
 
 	mtk_sha_handle_queue(sha->cryp, sha->id - MTK_RING2, NULL);
 }
 
-static void mtk_sha_done_task(unsigned long data)
+static void mtk_sha_done_task(struct tasklet_struct *t)
 {
-	struct mtk_sha_rec *sha = (struct mtk_sha_rec *)data;
+	struct mtk_sha_rec *sha = from_tasklet(sha, t, done_task);
 	struct mtk_cryp *cryp = sha->cryp;
 
 	mtk_sha_unmap(cryp, sha);
@@ -1218,10 +1218,8 @@ static int mtk_sha_record_init(struct mtk_cryp *cryp)
 		spin_lock_init(&sha[i]->lock);
 		crypto_init_queue(&sha[i]->queue, SHA_QUEUE_SIZE);
 
-		tasklet_init(&sha[i]->queue_task, mtk_sha_queue_task,
-			     (unsigned long)sha[i]);
-		tasklet_init(&sha[i]->done_task, mtk_sha_done_task,
-			     (unsigned long)sha[i]);
+		tasklet_setup(&sha[i]->queue_task, mtk_sha_queue_task);
+		tasklet_setup(&sha[i]->done_task, mtk_sha_done_task);
 	}
 
 	/* Link to ring2 and ring3 respectively */
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
