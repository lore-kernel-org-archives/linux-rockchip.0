Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57001C54EBC
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jan 2023 12:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ivbnIsSCNvMW4JaDEec+8vGNQ+S1/ic7d6sOlkf1sc=; b=zNz49ykBV/Ded4
	P2xlLwuTKOMnfP8RipMN1GTRJJshPO9kSwXpX0kXm39yBwQyO1F8PbAHNFA38pfKyoXIo2xR8qXsq
	XyfXvixD+c2pBV1CVeJ4ildppWpc5pBBlejqmfUtDr48D/KKISl35xxg3aHJvcAd94UwK0WLvsSza
	4YesfCtbsaGiXPPyEG1B6iBcdzzARQjjRCS47lRUfwCsJkmSkmCS0PbAerNSzH7nEtTxMm860qmuh
	OsoULq1+Lk9173+gHIwRTAkRfT82FKhk6qmlmH2knET9SFQspC6Bk8Po1Xyt2lx0T1HJkMjzICpi+
	3b6OewtEK/R31Z058hpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFx8Q-00F3sT-23; Thu, 12 Jan 2023 12:56:46 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFx8M-00F3pW-T4
	for linux-rockchip@lists.infradead.org; Thu, 12 Jan 2023 12:56:44 +0000
Received: from localhost (89-26-75-29.goll.dyn.salzburg-online.at [89.26.75.29])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 830346602DB1;
	Thu, 12 Jan 2023 12:56:41 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673528201;
	bh=AVEg4DSMK0gqYca27eD54R157QB5YV2sWChYYaBFpmI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=LM1vgt+pOaabBAJ85FdbLo9wq5mUT0w0x5nAszJ37VGijYHKcIXfdOuoVfBt0gFKM
	 6V0TsNYP9Ceg5NVgCMb5s0IZWo5rZ1dbo1r5fvwCxpo0VEyHldVhngCZ0XpZuXi7cB
	 aNfDgYu++punO6h4oxFkcZ7KjeWXaYxHFhfFxOuq9Le8mNU8nv04VPbmGJwPlU5+L9
	 H+xIH29P1Jx2f8ei32MK42TPAd34QOcwHrFPJGwMZzJFHYJ2kzjYxAbPEAb3fIUCjd
	 6xgX3fHo389Rsu+JdAl860N6hgqDWhXpo04SbF0lJbmDCfInbfMID2Zwd3C7+fJY9z
	 H5eTXOOfjX8wQ==
From: Sebastian Fricke <sebastian.fricke@collabora.com>
Date: Thu, 12 Jan 2023 13:56:19 +0100
Subject: [PATCH v2 04/12] staging: media: rkvdec: Block start streaming until
 both queues run
MIME-Version: 1.0
Message-Id: <20230101-patch-series-v2-6-2-rc1-v2-4-fa1897efac14@collabora.com>
References: <20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com>
In-Reply-To:  <20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 Jonas Karlman <jonas@kwiboo.se>, Alex Bee <knaerzche@gmail.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Collabora Kernel-domain <kernel@collabora.com>,
 Robert Beckett <bob.beckett@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sebastian Fricke <sebastian.fricke@collabora.com>
X-Mailer: b4 0.11.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1673528186; l=1025;
 i=sebastian.fricke@collabora.com; s=linux-media; h=from:subject:message-id;
 bh=AVEg4DSMK0gqYca27eD54R157QB5YV2sWChYYaBFpmI=;
 b=4fInMsBgcT6jf30p/7TvMJW1s4sjmIUMu2MIX6uCwRuxM7iBhvTpC/00Nu4xtEZo2TrulpGwWaVw
 pfVDB17lDTsDfzQFYB1UAn0aetGnBIbCWNnkmQVCdoIqa/IR7mT0
X-Developer-Key: i=sebastian.fricke@collabora.com; a=ed25519;
 pk=pYXedPwrTtErcj7ERYeo/IpTrpe4QbJuEzSB52fslBg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_045643_123918_4804ECFA 
X-CRM114-Status: GOOD (  10.19  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Ensure that both the CAPTURE and the OUTPUT queue are running (e.g. busy
-> have buffers allocated) before starting the actual streaming process.

Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index c849f6c20279..e0e95d06e216 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -562,6 +562,13 @@ static int rkvdec_start_streaming(struct vb2_queue *q, unsigned int count)
 	if (V4L2_TYPE_IS_CAPTURE(q->type))
 		return 0;
 
+	/*
+	 * Make sure that both the output and the capture queue are running
+	 */
+	if (rkvdec_queue_busy(ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) == 0 ||
+	    rkvdec_queue_busy(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) == 0)
+		return -EAGAIN;
+
 	desc = ctx->coded_fmt_desc;
 	if (WARN_ON(!desc))
 		return -EINVAL;

-- 
2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
