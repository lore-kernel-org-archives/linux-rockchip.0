Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00893C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 13:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fiByLGfoKqBnur1KkCUlqe9zDHU+LppUZaG7F7jSSIU=; b=IXO0EmVVmw09C3
	Nn6zqFNSnAtflM187jahKeeCTdzRmYRfZLhnfaVnpI3MSVXycePM9glwR2benioS+1wOJmaIiOWgl
	ZxcInJl2Icas7k+oQQGD6JnVikDLaum3vEsYcg9bMIZPE/z87xogKDZLfAYyZwMYOmTVxp8eCm6+6
	HiYZzp+E+qceKRaxuhlzNM22uuDACcfOrkKRzrwrhLc3gdwuCibM0bxq0GNKmsvZcnlhik27st5D5
	REQHaGpYnjkMpoE6qw5qs/ImhlfjZX1J9vx0iZ2OCa8px51z+Q4tWDBCSrTpj8DDddDF73Zy6OUmX
	ceFDMf2ej0hAehMpbvkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njKvZ-00EU19-MF; Tue, 26 Apr 2022 13:08:25 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njKm7-00EPLu-LM
 for linux-rockchip@lists.infradead.org; Tue, 26 Apr 2022 12:58:46 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 1B85C1F43999
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650977918;
 bh=XEgENTYjCMT2Anghn2qsNUIMLssrmzXSWUAtGOk2EIY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WPDkJ3gJEAFrvwPz4kOJCVGDXM69w7LquNYCOmkDxy8hKiZhuHv8vwhLVFR32zL4a
 GZFenh67Yc8514goV0s8OFXXMF1zLMrphjl9JlgC4cqg4k9HbcsCmO+q93q27VylJ9
 MUPV1OyWv4X/5Ny9Xyn3EL9f13FZhfpDaMqdSGa69D7uGqlbGb0WWOIeZnaOihf6fN
 GDHh0QjC6IsvTHlCUySvLox9sKEr2wUuqQq1jIGLQhgWnpuipLrCZXeNqCiAyCg+Ya
 5yae5ut0kQN5j2mtL/wsZwKIzGRe7n6VgZuF/iNEkf5tmJ+G8/1O5A40i7E+yy1Jcu
 ZqsQp8Dvl7YzA==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: nicolas@ndufresne.ca, Jonas Karlman <jonas@kwiboo.se>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH v4 22/24] media: hantro: h264: Make dpb entry management more
 robust
Date: Tue, 26 Apr 2022 08:57:48 -0400
Message-Id: <20220426125751.108293-23-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220426125751.108293-1-nicolas.dufresne@collabora.com>
References: <20220426125751.108293-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_055839_927857_47FFEFCC 
X-CRM114-Status: GOOD (  12.68  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Jonas Karlman <jonas@kwiboo.se>

The driver maintains stable slot locations for reference pictures. This
change makes the code more robust by using the reference_ts as key and
by marking all entries invalid right from the start.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/staging/media/hantro/hantro_h264.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_h264.c b/drivers/staging/media/hantro/hantro_h264.c
index 228629fb3cdf..7377fc26f780 100644
--- a/drivers/staging/media/hantro/hantro_h264.c
+++ b/drivers/staging/media/hantro/hantro_h264.c
@@ -258,8 +258,7 @@ static void prepare_table(struct hantro_ctx *ctx)
 static bool dpb_entry_match(const struct v4l2_h264_dpb_entry *a,
 			    const struct v4l2_h264_dpb_entry *b)
 {
-	return a->top_field_order_cnt == b->top_field_order_cnt &&
-	       a->bottom_field_order_cnt == b->bottom_field_order_cnt;
+	return a->reference_ts == b->reference_ts;
 }
 
 static void update_dpb(struct hantro_ctx *ctx)
@@ -273,13 +272,13 @@ static void update_dpb(struct hantro_ctx *ctx)
 
 	/* Disable all entries by default. */
 	for (i = 0; i < ARRAY_SIZE(ctx->h264_dec.dpb); i++)
-		ctx->h264_dec.dpb[i].flags &= ~V4L2_H264_DPB_ENTRY_FLAG_ACTIVE;
+		ctx->h264_dec.dpb[i].flags = 0;
 
 	/* Try to match new DPB entries with existing ones by their POCs. */
 	for (i = 0; i < ARRAY_SIZE(dec_param->dpb); i++) {
 		const struct v4l2_h264_dpb_entry *ndpb = &dec_param->dpb[i];
 
-		if (!(ndpb->flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE))
+		if (!(ndpb->flags & V4L2_H264_DPB_ENTRY_FLAG_VALID))
 			continue;
 
 		/*
@@ -290,8 +289,7 @@ static void update_dpb(struct hantro_ctx *ctx)
 			struct v4l2_h264_dpb_entry *cdpb;
 
 			cdpb = &ctx->h264_dec.dpb[j];
-			if (cdpb->flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE ||
-			    !dpb_entry_match(cdpb, ndpb))
+			if (!dpb_entry_match(cdpb, ndpb))
 				continue;
 
 			*cdpb = *ndpb;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
