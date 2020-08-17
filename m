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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C078C433E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:12:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4D441207FB
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:12:29 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="xp9MvZIN";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hQU4vn0G"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4D441207FB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nR2WXbgoIsXNdQpWxyLsIHXDGWUgWtTVePvrSXn+QW4=; b=xp9MvZINLt0XpAr/PNsozwbN36
	AMqR43aNfAoLLoYINVXTymWTrA3doNLNKmDusOxVbf/KhUuZtj6ra0g2GQ9mU2kElFYNpxV3m/KHg
	JdkMrBtGN8SaLNLbDpcUaH5x4d/0WxA+fzBQNWfdsIlnEx3gpPnm9xK6KO3xl3A13wzF0ckpoalNq
	dJnoHK6s1VfzcZs3HjRwSZecEMxL/d+HnqBhxsDQ0vWQpM57YnNmVQr4D7FoKyRPbSVmHAYSAhLk8
	wD3tNbdg2fd8zH58iTS5xzXS+ZCv7NVev8waMkB61o09CG+naROEw9EpdYYNwGtSDBRxJkEiARSb7
	CnDDfNug==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7aFi-0003pn-Mf; Mon, 17 Aug 2020 08:12:23 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7aEG-000309-Kz; Mon, 17 Aug 2020 08:10:54 +0000
Received: by mail-pf1-x444.google.com with SMTP id 74so7832588pfx.13;
 Mon, 17 Aug 2020 01:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0lVeVyUi928a7/fzs7+FY0tXKdsKnkp78ZmUm5IzGsw=;
 b=hQU4vn0G9qzRlCq6N+seXKFofQkuPKmULu4dD8/Hg7tm7u1tpybameqU+4C8/8NYLx
 hTCGmVlt+mhyfLFNFkwDYCFAKTNUWqG6fpFauhqiSwY93BJiDTh9xBJZO5t4OefFqIq4
 to5E49yEXe+Gah/XLnEkfF2zg65G51qXM2REKPgJvRNaACb1/WqAM18QK8RcvJqRzBqE
 NNTvDPryPR9KRt9ocGHgk+qQq+DR3FD4bVP4e2mvo0gGGufCOEV7HgBZTPRBYQKGODUR
 obOoFk/pQpJ4cd2zjNT/NdUJA1bMPXhdGkFOjbEhoVpprDMmKcRlyLCmipfdMlD28lex
 Af9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0lVeVyUi928a7/fzs7+FY0tXKdsKnkp78ZmUm5IzGsw=;
 b=esVzegdMzTTKbG7FByfe2bQSyVgNAHJ6AzRPtRTAIkj5Le9JpalQLXzQLNvnDKTPuO
 2A8wiTQB2r8925Tfu7uSYdJMs4EshixjYc/gPiIAh+tth4oD+x4Ljod+M3uyLBorOpHc
 l8IVCmNsZvzrYGa0E6n2qUZBgw7ju4VqxFCn4T3PAQTtM4Q6VN7BkYkcaQ3eRaCvf3yQ
 tsjeDxLVzTrj/3k2wuZU6H57t8vU7DBClEGZCJVWkKt/8U9/jWpToXb/06iC5YfRbSJM
 vX1oPqTC58NRh4Zj+Aa3ODfcShaXoH1MP2pK3kZxQFDpvThbe/f/cCiaBQH6EoGV+w9N
 yoSQ==
X-Gm-Message-State: AOAM530AOGlHTYTdE/Qdd+M6mK35Vura1vHS3AHVFFWP14ZxKpdt9OvL
 HAUC930UL7MDrVkou2z/LtI=
X-Google-Smtp-Source: ABdhPJw356CtYnI45KdkYTDa3IIDMQEWrcBTSATYq3hf/G3Zjs0kV6xnzKLETPtBU1XVb0/XiQEYqA==
X-Received: by 2002:a62:8cd3:: with SMTP id
 m202mr10164425pfd.184.1597651850205; 
 Mon, 17 Aug 2020 01:10:50 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id 77sm18499751pfx.85.2020.08.17.01.10.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 01:10:49 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 ludovic.desroches@microchip.com, heiko@sntech.de, matthias.bgg@gmail.com
Subject: [PATCH 10/19] crypto: ixp4xx: convert tasklets to use new
 tasklet_setup() API
Date: Mon, 17 Aug 2020 13:39:32 +0530
Message-Id: <20200817080941.19227-11-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817080941.19227-1-allen.lkml@gmail.com>
References: <20200817080941.19227-1-allen.lkml@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_041053_045310_F2F5573F 
X-CRM114-Status: GOOD (  15.47  )
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
 drivers/crypto/ixp4xx_crypto.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/ixp4xx_crypto.c b/drivers/crypto/ixp4xx_crypto.c
index f478bb0a566a..31a584940022 100644
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
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
