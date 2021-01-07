Return-Path: <SRS0=faov=GK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0762C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 12:31:01 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7180023356
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 12:31:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7180023356
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=26AGzmC4jO4BtZz+/jX5kM4urcUvtJ9k0wgR9Rzz9zE=; b=TLRoS8P+QL7eBN92U+r6S6iDc
	itGM0exBUQm20K41supVpqC+jWqpEh1S2Ppn/w+PBem3Jnh02TOJgHdLFce6rqBzk3CIj4kMGIzGK
	/kGNdzQghOwq8TfuKdIFfGz/yRO5g10ejIFefN0yyeUkNN2xcvX5jAej6Y4FCO8Lr15PfMVQ5xsXQ
	jgJ+24UdKI2agTQ67tk5M8Wd/ziLntHAJ5aIeo7YxbZ0ksHWaHqx4M7FNEE0pANc7JAeDinhcOk3p
	n1qDa5TeFeZqBCrG06OChLeC9A36rpwZXZBR6GITdogxbLZ+fz7UTeIL5N4UPtBfDINdHOhzBbDMA
	UFhP/X/Pw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxURO-0004Ke-Gd; Thu, 07 Jan 2021 12:30:58 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxURM-0004J4-DL; Thu, 07 Jan 2021 12:30:57 +0000
Received: by mail-pl1-x631.google.com with SMTP id x12so3395375plr.10;
 Thu, 07 Jan 2021 04:30:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1e1njK4JCLyF4BWRntmeMNLMXKX/535/WykRDF+9nqU=;
 b=hbZxd8GMbWMwunv97wfH2Jf1oJf/8UcNY6xBKZcNSEUqzpSUI65LKuKQrxS91lf3JW
 Bupw/mebNEqeQTlLLVwWk16hsX081CmCeM3mCGPFqAIt6Y15WaGH/KwDFlvfhr1Hgg9Z
 XmJtwwBRs5RusKIVtDfejCw5hq1vLWEe1lHia/3otyEyWTKYI3bUsoZQF2D5pI0ztNQy
 0/6+Z3Om5i4sHkVm60WuZFrh8e9eyF3U8Mo1nCSfMgurTh2MkeWCP5UWfGjtMH2pbNlQ
 Pt9JtbYllg2QWQaoR9nfEhdPC6MM/gw25S4hDUm222XYCSreZw2frFc8N124MrS997zA
 oqyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1e1njK4JCLyF4BWRntmeMNLMXKX/535/WykRDF+9nqU=;
 b=H4Q8bIghNhlF2ik/X26OCemF2S6AfvtYcBrrGwla1LcDZFuIyhxc3xIfBzMSOXfsYR
 IDX5ZFhtho7BHSq9p45KtxlMrIy4QZowG+m4X4GarpQTbaxPpiJ0h8tUq78VBn28R1Q3
 ZNFtmQTkDgwUIq9mI66UxiTnPuNI7f8F37PwPJWG1urFodf6YkDgDCkWh3JlZ/Ud61Zo
 shenDnIPYllrwgzA2oPEZgk2glpAzXqjMcVWJqsU88Fmc1xTlyEbcGS8SWwE9+hOf3EK
 tuOvtCFEWuuuoiEYmP5ajIBeT6FzvCtP1SFoZtyfV7ItgMKfxgutL819BGfCzcewNfNZ
 ObfA==
X-Gm-Message-State: AOAM532ajqxwbQh/UK+RD+7APl02d0TZJFibHxeYVVGKaHuNVWVEW475
 a9L3BkvK7ONW5Bb5bwM9tZs=
X-Google-Smtp-Source: ABdhPJxNswk3UqAPRQFOECWMZZXKETLsDLgMohWjq2tJwnnMR19IXzXOUsAVBJnz8yZ5/DQIIMxoDA==
X-Received: by 2002:a17:90a:b90c:: with SMTP id
 p12mr8705424pjr.135.1610022654721; 
 Thu, 07 Jan 2021 04:30:54 -0800 (PST)
Received: from localhost.localdomain ([49.207.216.201])
 by smtp.gmail.com with ESMTPSA id h12sm6356014pgk.70.2021.01.07.04.30.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Jan 2021 04:30:54 -0800 (PST)
From: Allen Pais <allen.lkml@gmail.com>
To: herbert@gondor.apana.org.au
Subject: [PATCH v2 10/19] crypto: ixp4xx: convert tasklets to use new
 tasklet_setup() API
Date: Thu,  7 Jan 2021 17:59:35 +0530
Message-Id: <20210107122944.16363-7-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210107122944.16363-1-allen.lkml@gmail.com>
References: <20210107122944.16363-1-allen.lkml@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210107_073056_481625_3891FFB6 
X-CRM114-Status: GOOD (  14.01  )
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
