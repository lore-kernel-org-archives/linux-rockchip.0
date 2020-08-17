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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31B33C433E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:15:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EB97220738
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:15:22 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="CQLVmW+P";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="t2MQSO33"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EB97220738
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hFVrBJWkSZuVZN2rJyGFDiOyJ7/Tbw5nMHKL0PEB/G4=; b=CQLVmW+PR+z9Nks6MutDx/Dkpu
	lLV4iIXKmT3pEBmKSeyndijO+S5b5TZxNMvdWK/SQ+gI/bWQwfo7hpnM8iWQMm3XofZBAsEuCNTTd
	SZVGVryLntnoUokfLKFpNYTMoRcrlyh84MX/0NTipxxSPA5EYpS5Ad7f6JulHQqZ4130sSnrqFvvU
	7cfBVBbN40rn1jr4EPcEZuRcVFIfqqLM7iZjhPDZ1cOrAWp3Y71EkS3Vomox5+uy9npo0b5XlBCIH
	3QayvxxbcDxyNjuZ94aJPHTgV2em4+3GX4OaJN0+H/EAS5ucZ/JHNHVzDh8X0z1uRSpbiSIUgm+v6
	63urcr7w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7aIW-0005at-HF; Mon, 17 Aug 2020 08:15:16 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7aEq-0003JH-Dw; Mon, 17 Aug 2020 08:11:29 +0000
Received: by mail-pl1-x641.google.com with SMTP id k13so7104369plk.13;
 Mon, 17 Aug 2020 01:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2jlucAzcv0W9eM59+GUn2Gh+5IEHgp5g50ux6o6FWwQ=;
 b=t2MQSO33f1vjbVEQeuo3aU++uKHVnUyyrTtB3geB2I08q7ydG1kWWexSrXGDcLWNdv
 1DlHUBJ+biSN3baHJHgEWZwCeTElOGpgVYrWDI0Kt/zPqL3vkhdg3i/ZiLZdHXIFaczn
 +F2ygDuPckoakT4oIKq67rcj8g59qwcFwR24DHvn38NgRh0fQjl8TUE4mmLnwGxszJh2
 Np0X12q/PXnv5FYcMAJTQujiLVQdM6TsVxViUJGMM2vO8opwWf6WON7JoHHS6DMOZhKN
 JZvHL/ffslNv006PR5pAvZ6RuLuD1L5kS+I8cwnPyQlpfEWmuAQU/MTin6aK8Hy4YNza
 nfjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2jlucAzcv0W9eM59+GUn2Gh+5IEHgp5g50ux6o6FWwQ=;
 b=TzWjFp3a2ROwUqWGBnUMvwt7nMku8/shxBbdoGsb/wZCKlsfRAed+eBGSNfVGgFbqv
 WydPW4+CR1F9jR5UrW/FRIlcimEov6N3pi+lb4jeK0W6Iy5RtCteiHCDAKHQg/fZQnge
 gVLzJZVWFFZoQw/nBwJ6KJjKsVjCWqjzFv624C22vIjTiidodPkfKR1fgMkc9cNjYqVB
 +CWfKNSk/VkXkcfthWDZEjFn/axD3TlQqVrtMxk3F9B6ovMyBipRfHLXS0CcmgZTAzsx
 Gc5fwLnGUrk+BxZ3GpvnZU0f8Qdt6V6Wr+K9pFIdSbGy8hMVEJs2BRMxgqsZCwLgfg5l
 GZ8g==
X-Gm-Message-State: AOAM531MsMPdca5n3rrp8RxcCcVFl6LB9MHyJ6UVsja59n8L2FQzcgmI
 WLXgHtGNPpLIpP3N71KgKR0=
X-Google-Smtp-Source: ABdhPJyjoI0JkeOWbU0bb5kX5eCoqltfYh3yZoAKu+OpTQJh7RAmgYhlWJE4RsqnMrAcaumgImJMNg==
X-Received: by 2002:a17:90a:5b:: with SMTP id
 27mr10822949pjb.188.1597651886671; 
 Mon, 17 Aug 2020 01:11:26 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id 77sm18499751pfx.85.2020.08.17.01.11.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 01:11:26 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 ludovic.desroches@microchip.com, heiko@sntech.de, matthias.bgg@gmail.com
Subject: [PATCH 19/19] crypto: octeontx: convert tasklets to use new
 tasklet_setup() API
Date: Mon, 17 Aug 2020 13:39:41 +0530
Message-Id: <20200817080941.19227-20-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817080941.19227-1-allen.lkml@gmail.com>
References: <20200817080941.19227-1-allen.lkml@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_041128_627907_7E5291E4 
X-CRM114-Status: GOOD (  14.72  )
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
Cc: keescook@chromium.org, Allen Pais <allen.lkml@gmail.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 inux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

In preparation for unconditionally passing the
struct tasklet_struct pointer to all tasklet
callbacks, switch to using the new tasklet_setup()
and from_tasklet() to pass the tasklet pointer explicitly.

Signed-off-by: Allen Pais <allen.lkml@gmail.com>
---
 drivers/crypto/marvell/octeontx/otx_cptvf_main.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/crypto/marvell/octeontx/otx_cptvf_main.c b/drivers/crypto/marvell/octeontx/otx_cptvf_main.c
index 228fe8e47e0e..515049cca9e3 100644
--- a/drivers/crypto/marvell/octeontx/otx_cptvf_main.c
+++ b/drivers/crypto/marvell/octeontx/otx_cptvf_main.c
@@ -17,11 +17,12 @@
 #define DRV_NAME	"octeontx-cptvf"
 #define DRV_VERSION	"1.0"
 
-static void vq_work_handler(unsigned long data)
+static void vq_work_handler(struct tasklet_struct *t)
 {
-	struct otx_cptvf_wqe_info *cwqe_info =
-					(struct otx_cptvf_wqe_info *) data;
-
+	struct otx_cptvf_wqe *cwqe = from_tasklet(cwqe, t, twork);
+	struct otx_cptvf_wqe_info *cwqe_info = container_of(cwqe,
+							typeof(*cwqe_info),
+							vq_wqe[0]);
 	otx_cpt_post_process(&cwqe_info->vq_wqe[0]);
 }
 
@@ -41,8 +42,7 @@ static int init_worker_threads(struct otx_cptvf *cptvf)
 	}
 
 	for (i = 0; i < cptvf->num_queues; i++) {
-		tasklet_init(&cwqe_info->vq_wqe[i].twork, vq_work_handler,
-			     (u64)cwqe_info);
+		tasklet_setup(&cwqe_info->vq_wqe[i].twork, vq_work_handler);
 		cwqe_info->vq_wqe[i].cptvf = cptvf;
 	}
 	cptvf->wqe_info = cwqe_info;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
