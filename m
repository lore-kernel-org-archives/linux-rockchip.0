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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12D88C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Feb 2021 09:43:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8A80464E82
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Feb 2021 09:43:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8A80464E82
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7YBCDeouPjn4ARwzdPlvPdavGHavo2LL0DS28/yl4ZE=; b=B+HIg+9jqxguTgMcAJNhEwtoN
	SyUZu2AUGnncp00310DEtJm/fEnq7YGrFPLoNVMbHwGrJ++UmFHYC18qumnlXwXyexCvfvZDH+/Jy
	lBK5TZfRAZ0DishXxpUq6Up5PTHagVwgSSwKr+5ERd/cRoVb4FVmjVmMFWvaV8NG9tbzhMwIfHHFs
	fxzljNyMYKZI2ZhJbooJRYRhXt9FiFB1pcOx8HcijwPmAoWbxQ6JOeO8FpPhDw+0sMKRK3wtWaYBw
	j1fxaUoaulPA1HrARaey2xX9Gz/Tflazzbx1eeYdQO+E3U0befftluB+kdtKYuPwrL1tZnZJlbwMI
	WAVyvrJdQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l934e-0006Eo-Qq; Mon, 08 Feb 2021 09:43:16 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l934b-0006DP-ID; Mon, 08 Feb 2021 09:43:14 +0000
Received: by mail-pl1-x62d.google.com with SMTP id b8so7498846plh.12;
 Mon, 08 Feb 2021 01:43:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z1ChG13UjjztSNVmWKm8LG/tQ4bXSFaATn/TncVbdO0=;
 b=T5syCcXJp9ECpk82vm2+7hmGJKlYvipt8MdeOw+1/OIDLPUbkXXgxcUrrvsAicXl3P
 NOAU/R88AzwgDeJJFH+QneZY9b3yysAkcQDNGtZcVN48FmGDhrAjmwLex8KfdfPtJcRb
 rit9eexydLejDaVGwC67hL0KBUWKQyF5xmgVp8K1GdHMAHiEJBSkNugAl2KkbNV+sYag
 GiRy9tU0ec1Vkw4WJ5bivAe6cfenmvq0gtLil0aOyRh45bDTFPYtYpl2wO2nEXsAV25+
 hONX2zevYi4gULbYBV49qLviLnzGJ4ySTAzVUHaNs8jDGD4gDoPF2tKEv2ZunH7NoYjF
 AjLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z1ChG13UjjztSNVmWKm8LG/tQ4bXSFaATn/TncVbdO0=;
 b=ujoHlGIXsZTH89TsN7qDYgepJKeD0UuOBEBtFyhiM73HFGSkUA1CyebA+s009ef1bN
 7r/LbKkKIhvs2JsxtdeDQCGgvtVejG+jcAcqWgRBuXNm3htu7V70OdH8KhxlMqy+macz
 rQ9jUHiv5l0pGmEHW9YmHoIjAu/pTVbKV7WrzQUKW6ke13zPbOgEI5AwnDjwQgGoiTPM
 VDn/x9qOwnzaXp5TuDnHyhzEtO74Kq8WMJrY4HDMUIZt/Y1V90SLxwqpEtPmrUUyHKs1
 FG/gp4xy2EIkLvS5jqYveMM0SpGjhEGwtbOyjqkwmNHp8t/2NA+XvIoLSkosIremmyzs
 4Vdg==
X-Gm-Message-State: AOAM531wyQgi4MVQkJzlkMtXAbp2KcJkiCOnS0Scv+P2lX6P6QOPpU1l
 3tK3v9FUkhLVSusL/94vr5E=
X-Google-Smtp-Source: ABdhPJyywK9e9JjwWEAMufqCNgRCmU+pUvue7JS13f8T1Q7Y0jGVZuJNjqTfq/4k+vGVYxmKblWfzA==
X-Received: by 2002:a17:902:26a:b029:da:af47:77c7 with SMTP id
 97-20020a170902026ab02900daaf4777c7mr15598456plc.10.1612777391098; 
 Mon, 08 Feb 2021 01:43:11 -0800 (PST)
Received: from localhost.localdomain ([49.207.205.214])
 by smtp.gmail.com with ESMTPSA id k69sm12208958pfd.4.2021.02.08.01.43.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Feb 2021 01:43:10 -0800 (PST)
From: Allen Pais <allen.lkml@gmail.com>
To: herbert@gondor.apana.org.au
Subject: [PATCH v5 01/19] crypto: amcc: convert tasklets to use new
 tasklet_setup() API
Date: Mon,  8 Feb 2021 15:12:20 +0530
Message-Id: <20210208094238.571015-2-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210208094238.571015-1-allen.lkml@gmail.com>
References: <20210208094238.571015-1-allen.lkml@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210208_044313_624757_24AD81D0 
X-CRM114-Status: GOOD (  14.57  )
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
 drivers/crypto/amcc/crypto4xx_core.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/crypto/amcc/crypto4xx_core.c b/drivers/crypto/amcc/crypto4xx_core.c
index 8d1b918a0533..721ccf850f0b 100644
--- a/drivers/crypto/amcc/crypto4xx_core.c
+++ b/drivers/crypto/amcc/crypto4xx_core.c
@@ -1072,10 +1072,11 @@ static void crypto4xx_unregister_alg(struct crypto4xx_device *sec_dev)
 	}
 }
 
-static void crypto4xx_bh_tasklet_cb(unsigned long data)
+static void crypto4xx_bh_tasklet_cb(struct tasklet_struct *t)
 {
-	struct device *dev = (struct device *)data;
-	struct crypto4xx_core_device *core_dev = dev_get_drvdata(dev);
+	struct crypto4xx_core_device *core_dev = from_tasklet(core_dev, t,
+							      tasklet);
+	struct device *dev = core_dev->device;
 	struct pd_uinfo *pd_uinfo;
 	struct ce_pd *pd;
 	u32 tail = core_dev->dev->pdr_tail;
@@ -1452,8 +1453,7 @@ static int crypto4xx_probe(struct platform_device *ofdev)
 		goto err_build_sdr;
 
 	/* Init tasklet for bottom half processing */
-	tasklet_init(&core_dev->tasklet, crypto4xx_bh_tasklet_cb,
-		     (unsigned long) dev);
+	tasklet_setup(&core_dev->tasklet, crypto4xx_bh_tasklet_cb);
 
 	core_dev->dev->ce_base = of_iomap(ofdev->dev.of_node, 0);
 	if (!core_dev->dev->ce_base) {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
