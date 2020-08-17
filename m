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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0215BC433E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:10:52 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C3DF02078D
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:10:51 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="uj1J/2CD";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i1+ADZbM"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C3DF02078D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=in8Edpk+JwCUGLPwHPdF7dWN55WNAFLvP6Jaeiw3lDE=; b=uj1J/2CDoZUJoTZJwyyZZlYoXO
	XHc8YGTyPxMDE1TJm33hI96T7GDnxAYVoaIQ0X4MUTNStYS3LaPMpxtHHyh2+SwLBYrU7SsCXHxR2
	jlYHShD/puNoMIdCnMUR1gSvJYpEjV1sFeEJAM3lS08hKhOBAcpzTfpubGkbC3PX6DuHiChbCuOID
	BvUWcmZvPYBb/3AH3+E62fcLoEj7dPiEDr7vQVx/iyfSQymawk3tJ48VsulraMYpDOgsfeRkgh6OH
	0+jteDphdOcsUN3bAVM9GFZqHad5n1BZ0zpLbVC4/cl8xrE5Ch7pVe7I1l+NkvvsKdHceohhadEIC
	dhxaSFsg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7aEA-0002xQ-Lt; Mon, 17 Aug 2020 08:10:46 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7aDn-0002lG-0K; Mon, 17 Aug 2020 08:10:27 +0000
Received: by mail-pl1-x641.google.com with SMTP id f10so7112708plj.8;
 Mon, 17 Aug 2020 01:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AQ09dDtr3c2l1Roq0ne6URApsMSGN10hnLKyehD45Gs=;
 b=i1+ADZbM04yKV29bxvf14C4AfjR1DxtKP0yjjVyTUAFFhoVNvTltQu7x90fBPPNBC8
 uC7Eap5SUopZYFMtjxSgAXpcwXoKDoI6iOXQxnHSbuUd7T00NrbK6z43UYIYYUzrQBd8
 RQXP2LTtLIsM8avul4X6clc9gCOU80SMJ1ZzBtf3ctBER5/3dvW/KyYkSmTvsLkf0eIM
 qK2sp8D8YO9mUlrPy0KyWjPeLcj6POj4CfDy4F+2s8tk99v66wi63aJJjypppa026j4w
 mK/MTitnJ+ElSoei45gm/OH9DsTX03onLMmjXq0Zo0GO1cqCHRlKCVyudm7kXvDdcXCI
 HkOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AQ09dDtr3c2l1Roq0ne6URApsMSGN10hnLKyehD45Gs=;
 b=BQbJaFBb7wBUtkFN8XOcIuluO4Yx6cpnKsWaS6hHUB9DUfMTKpj/dGNekjAskBaBuv
 3boB1mmAql51ddW6SjkPAVuym28C+4Uujg6Zo6hMb+RdkQMSOX+Lh1pS1atPJet34FwI
 v4X4f25lEeZFxK0SPc/vWENkqicVjHwR1oFQWMxTa/x7/iiCixHKKGp+V5Rg/Ps3yCOf
 YaLeR3OSFulJm+NAX+adlstYioTeQMZAiorbjyraS2TUUerwq5F7lWoRKoF7ariglZKC
 KHpn/bGXvzzxsfDMd5rVD44HCscm/oRUYGAeLhF6pYj5g6LmTC+dNPIW2NG/oxhwR1+0
 idew==
X-Gm-Message-State: AOAM532Lh/MC8nGFx+LBrzuYLbjATPOwFGVF++P2M8oVWQq31BbKMVNb
 JMuK8wJVz5blX9WsR6dD2p0=
X-Google-Smtp-Source: ABdhPJyaWmoUPigt5EzkuJiRyagPX4x/btPrL124BPaPGgcH3dgesfRQ26eVBtXL4hKJJ/AzDOuPrQ==
X-Received: by 2002:a17:902:c286:: with SMTP id
 i6mr9940453pld.219.1597651820779; 
 Mon, 17 Aug 2020 01:10:20 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id 77sm18499751pfx.85.2020.08.17.01.10.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 01:10:20 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 ludovic.desroches@microchip.com, heiko@sntech.de, matthias.bgg@gmail.com
Subject: [PATCH 04/19] crypto: caam: convert tasklets to use new
 tasklet_setup() API
Date: Mon, 17 Aug 2020 13:39:26 +0530
Message-Id: <20200817080941.19227-5-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817080941.19227-1-allen.lkml@gmail.com>
References: <20200817080941.19227-1-allen.lkml@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_041023_183139_AF425748 
X-CRM114-Status: GOOD (  13.92  )
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
 drivers/crypto/caam/jr.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/crypto/caam/jr.c b/drivers/crypto/caam/jr.c
index bf6b03b17251..4dc923736ba8 100644
--- a/drivers/crypto/caam/jr.c
+++ b/drivers/crypto/caam/jr.c
@@ -201,11 +201,10 @@ static irqreturn_t caam_jr_interrupt(int irq, void *st_dev)
 }
 
 /* Deferred service handler, run as interrupt-fired tasklet */
-static void caam_jr_dequeue(unsigned long devarg)
+static void caam_jr_dequeue(struct tasklet_struct *t)
 {
 	int hw_idx, sw_idx, i, head, tail;
-	struct device *dev = (struct device *)devarg;
-	struct caam_drv_private_jr *jrp = dev_get_drvdata(dev);
+	struct caam_drv_private_jr *jrp = from_tasklet(jrp, t, irqtask);
 	void (*usercall)(struct device *dev, u32 *desc, u32 status, void *arg);
 	u32 *userdesc, userstatus;
 	void *userarg;
@@ -483,7 +482,7 @@ static int caam_jr_init(struct device *dev)
 		      (JOBR_INTC_COUNT_THLD << JRCFG_ICDCT_SHIFT) |
 		      (JOBR_INTC_TIME_THLD << JRCFG_ICTT_SHIFT));
 
-	tasklet_init(&jrp->irqtask, caam_jr_dequeue, (unsigned long)dev);
+	tasklet_setup(&jrp->irqtask, caam_jr_dequeue);
 
 	/* Connect job ring interrupt handler. */
 	error = devm_request_irq(dev, jrp->irq, caam_jr_interrupt, IRQF_SHARED,
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
