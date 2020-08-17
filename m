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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1707BC433DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:10:42 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D3DC52078D
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:10:41 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="xqhtIqKo";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TZ17WiWG"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D3DC52078D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZazttE7gFWZJnmXUaiGt4PcB06YnpPSt+BhvdXONMHQ=; b=xqhtIqKog8UnRmB/xtshLA4/PT
	UQAcdzH+YqKMJtUEHcWtciIn9NzwjG+O4NV331vKPMpDUNShfrvvNl79KlQBulKlrSI54jBhuAcam
	eI0Y/tDWKtrn2Ubr1AYFn9AmJtMVkvw7kO5EScPCCX+gHA/Klj6r/MVFGpNY0hAThzSMuswrYniQc
	sfvs3b0b8Wevls/+JBYasEYYsXOBpDbE/3AmBj0KpzE+uzNgrQT7thIVlWuAD8euX8P1uuljJytKu
	Yx41o4O1ZqKB6syKTkVAjZsv+A/YTd84jDN+vhBmeTjV7UKd99qGw5J4mrWW+USj1AFVyhKbJrM9Z
	Wal61Rhw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7aE0-0002rv-F7; Mon, 17 Aug 2020 08:10:36 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7aDh-0002i0-LO; Mon, 17 Aug 2020 08:10:18 +0000
Received: by mail-pg1-x544.google.com with SMTP id 128so7748006pgd.5;
 Mon, 17 Aug 2020 01:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EjM/bc9oMW+0sBykqCFUkPw3qkHdhalyi/ZZCcuM7jI=;
 b=TZ17WiWGgSUx7KDRMcYgdPiVlPvhIeKyT7JacWITYd5bfAzGX0K/drdRZgf/IgMZnQ
 haeKHiKqj+EWZOMjz9vK4jyjQiqD2EsYL5wZtUY/7MKM8EcwZCyMRJ9m0MJHmJysxrGT
 rEe7Yhg9fiXCpeiIOwHg87Nc2oW9XxSEsocphkY+WifyY5+Lr48OB0OlGW1u2ACfuUp2
 1lrjWZf+TyJF5sRol6kMfbmX6DqRnNgYIZ7szwvBsl3Dc96FJPHdC/QrIh8YsFfghKkv
 Lds0hCRbLyYqsmh1KhEpxq6A5urNKeBOU3y2s7X0wX6op6r5rAs4OcFXJX8gg7m83fNC
 srrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EjM/bc9oMW+0sBykqCFUkPw3qkHdhalyi/ZZCcuM7jI=;
 b=IKDVgb3EnmDhoMKsgea3zfLOTGmw1mV28mr2CGXmrECPByjVfko8BkdigqVD6B7g2f
 hfg2QsX8ExAHs0Dx3zXTQ2/fw+o/jt583OEh31BnWNP1oGCUoVFXwGo+u/Oaa3TVAs+P
 knaVMmJ8M1K7DuqY9rBlsdoMyOFSJhTrKT9LtEtwcbHbfnp8q2Cnvr2YQX/jRR6OPgs1
 TYmlrmYvse7K0Q73iifYont8k9ETJrBZdd98+nQXO6+hlnZRlqnuz1owrYeV9Qq1zFwN
 l8tYElQKqPuTRXez5jcm1BNbmPVJ/+IEzKkLnChFIsLGxzttD0LuxWlJV4pp9KjRAfGa
 NEwA==
X-Gm-Message-State: AOAM530UR9PW/8L3slBngAXXgtIrUJ0N9Nf052Wz+YjX2VTFhmfwXgsI
 9zsL4fG1hSkJA1eMS3Ucpzw=
X-Google-Smtp-Source: ABdhPJyC+tc9WoKzXMgb8ccCrUbWRcq5oU1rFYGbt/72fsZUVj49tUcq4g9/xNjX1u4iKnS7QZEhOA==
X-Received: by 2002:a63:31c6:: with SMTP id x189mr6189388pgx.182.1597651812808; 
 Mon, 17 Aug 2020 01:10:12 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id 77sm18499751pfx.85.2020.08.17.01.10.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 01:10:12 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 ludovic.desroches@microchip.com, heiko@sntech.de, matthias.bgg@gmail.com
Subject: [PATCH 03/19] crypto: axis: convert tasklets to use new
 tasklet_setup() API
Date: Mon, 17 Aug 2020 13:39:25 +0530
Message-Id: <20200817080941.19227-4-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817080941.19227-1-allen.lkml@gmail.com>
References: <20200817080941.19227-1-allen.lkml@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_041017_807070_F6E6E09A 
X-CRM114-Status: GOOD (  13.13  )
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
 drivers/crypto/axis/artpec6_crypto.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/crypto/axis/artpec6_crypto.c b/drivers/crypto/axis/artpec6_crypto.c
index 1a46eeddf082..83e4c164dedb 100644
--- a/drivers/crypto/axis/artpec6_crypto.c
+++ b/drivers/crypto/axis/artpec6_crypto.c
@@ -2074,9 +2074,9 @@ static void artpec6_crypto_timeout(struct timer_list *t)
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
@@ -2899,8 +2899,7 @@ static int artpec6_crypto_probe(struct platform_device *pdev)
 	artpec6_crypto_init_debugfs();
 #endif
 
-	tasklet_init(&ac->task, artpec6_crypto_task,
-		     (unsigned long)ac);
+	tasklet_setup(&ac->task, artpec6_crypto_task);
 
 	ac->pad_buffer = devm_kzalloc(&pdev->dev, 2 * ARTPEC_CACHE_LINE_MAX,
 				      GFP_KERNEL);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
