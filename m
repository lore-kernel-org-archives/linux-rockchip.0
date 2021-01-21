Return-Path: <SRS0=2Xhb=GY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E809DC433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 04:43:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 91AF8238E2
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 04:43:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 91AF8238E2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=26AGzmC4jO4BtZz+/jX5kM4urcUvtJ9k0wgR9Rzz9zE=; b=Q3T/1R/i4nzwl6s+Sez7+gEKH
	hsCmMUIDT3jR/MfTiZWQgPZY+GCznGe+f++jEkvOCkA2ea1IOUSHYnRlWTXvAjC4wi59BV/dAK+am
	3bMJpI/WLvR+CrxlYnezMouyUpl51mzlEGy24o7X7gj0Zx5WhmjpzT0I3u5mOuC5LjMpA8eljaCEN
	M9znep7nhfSgzhFcjxuFQH5L2jH1ipPkuIFABvkG8u3ONo5kDcEllGREOpDeAUjHzW2GMgyTD2lGB
	gWfiZG2HjtEluvvcQKikWcqVuWEIky04uVWkJgh9oY0kOd09m+B2xapELfW8CEkQMnQWSu3oMHVEZ
	LQ2/x8u/g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2Roj-00088n-GF; Thu, 21 Jan 2021 04:43:33 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2Rog-00086K-0h; Thu, 21 Jan 2021 04:43:31 +0000
Received: by mail-pl1-x62e.google.com with SMTP id 31so569902plb.10;
 Wed, 20 Jan 2021 20:43:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1e1njK4JCLyF4BWRntmeMNLMXKX/535/WykRDF+9nqU=;
 b=topJBmTZuunqbvTDzVdkBfh9P8KCyWEnAtWWRNR9932PVRZx3eYWs3SxndCP1iHYi8
 WR7bGw+WjM4BMLhKJNR5CtmbFMfX7ZNVRn7NVu34LQsll2C29ne2NjiI67aPjyGNBJgd
 lsNuO8pBwS2moiAgBFO1EtsMwvx2F/9sX4RUIy1gqAAkctztFwAjMsjL5AnYx7MwDNsm
 TdrFx1WT+Ys7g3fgcVaXuUqrVVn22GLSI6Lde/kroqU1rDx70K45VNqKIrBiFot2F177
 w/ZN43BAAdbW7968mn8kZy6TBVfg1oVMQRu62HY5VMUC4Psy/axK/+LQv0dOyMmY1eHT
 ufeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1e1njK4JCLyF4BWRntmeMNLMXKX/535/WykRDF+9nqU=;
 b=CwW7UBc059nMBalk8glgMHuOZMqHfdScE7n8p9kSnGQpa1JfxcLFMcv7a6Zh6onAsv
 pA/Zbzic4zN0ORzgXkZgCkviXGJIpPrNEHsCkweJowCnVB+e9p1lJrhbvIQGU8bqga9A
 da7dToK7T2IIOfkE7PjnpNFEXQV0LAqAX3AI18emHVTUm8ta8czsMc+onHPiAV2lgWKi
 1GAy3JnY+uunYNJno9Q//lw99Wk48GzXe99qtNYTGzjHtdMgOGjStJHw/8g1O1HJlxIq
 rzMi0sSY3GR9ajOj+UEbkaTzjq2uBrPEK9eDPq+jWI4Fhz8eAHtDrFqurbYvwZvUgp9w
 +qiQ==
X-Gm-Message-State: AOAM532QR9XQ/J8RKUfwFk0nsAJxMRawz6B5cUfMGzCCkuulZzqaajEQ
 Eb9Puvs+3AMgmumuGqjS3zs=
X-Google-Smtp-Source: ABdhPJy41DiXk+Qf+MzisRUhFu9MMpeTc+QZ9UkJGMoATJGG6zWsX7eb6sh1HezenmZ65yENeI9Ysg==
X-Received: by 2002:a17:90b:11d8:: with SMTP id
 gv24mr9468737pjb.232.1611204207952; 
 Wed, 20 Jan 2021 20:43:27 -0800 (PST)
Received: from localhost.localdomain ([49.207.210.174])
 by smtp.gmail.com with ESMTPSA id jx15sm3916014pjb.17.2021.01.20.20.43.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Jan 2021 20:43:27 -0800 (PST)
From: Allen Pais <allen.lkml@gmail.com>
To: herbert@gondor.apana.org.au
Subject: [PATCH v4 10/19] crypto: ixp4xx: convert tasklets to use new
 tasklet_setup() API
Date: Thu, 21 Jan 2021 10:11:17 +0530
Message-Id: <20210121044126.152274-11-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210121044126.152274-1-allen.lkml@gmail.com>
References: <20210121044126.152274-1-allen.lkml@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_234330_136746_EBDCE956 
X-CRM114-Status: GOOD (  14.14  )
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
 drivers/crypto/ixp4xx_crypto.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/ixp4xx_crypto.c b/drivers/crypto/ixp4xx_crypto.c
index 8b0f17fc09fb..b783ab58d718 100644
--- a/drivers/crypto/ixp4xx_crypto.c
+++ b/drivers/crypto/ixp4xx_crypto.c
@@ -414,7 +414,7 @@ static void irqhandler(void *_unused)
 	tasklet_schedule(&crypto_done_tasklet);
 }
 
-static void crypto_done_action(unsigned long arg)
+static void crypto_done_action(struct tasklet_struct *unused)
 {
 	int i;
 
@@ -497,7 +497,7 @@ static int init_ixp_crypto(struct device *dev)
 		goto err;
 	}
 	qmgr_set_irq(RECV_QID, QUEUE_IRQ_SRC_NOT_EMPTY, irqhandler, NULL);
-	tasklet_init(&crypto_done_tasklet, crypto_done_action, 0);
+	tasklet_setup(&crypto_done_tasklet, crypto_done_action);
 
 	qmgr_enable_irq(RECV_QID);
 	return 0;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
