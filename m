Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68F6DC433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 19:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=71G/gpqekH+KUpEFtzP+PXrOC7dVYq5epXwsh9OTgyM=; b=L1LFSlPs3KW0VT
	ewZD8+rKvXCzORZfYDlzi6R6GpPGxeY6ZEoFal7yO56BWBmLKrivt3C84Om747DyzS2wwuhsEnKii
	vsz/PoL0niU2XfmzeTwpVjkWKyU3lTvYTu4qX13QUu0cn9ebUAmX6j6ZLy+tjDg4KycA6WfS8kzSq
	LtGY9RmJk4/VaTHeZz6JcP5gQQpgYKBgYdLXKBiSJD0B/DLT7GdzoYWJVi58te8luNVM3RQRT91jM
	9Rb25LLw7KvxF9PGY7XWMDR9sCB8XNaixZc07o5MZiNkBcYOxJy3wXwFT2CohLnZ8A2BGoxT1zdzR
	Pp01nDKVl5bfWiYjDiaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1na0cU-003RV7-DU; Thu, 31 Mar 2022 19:38:10 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1na0cL-003RLP-FQ
 for linux-rockchip@lists.infradead.org; Thu, 31 Mar 2022 19:38:03 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 08D9D1F4725F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648755480;
 bh=HmMBg5b8YH4LzW0sBzAl4u/8f+BCfQenxWj/fruvkP8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KbVTEhI17KkBlxrzHM4EuGkf7QIYl4hZ/hOfcIcrzBe13cx9Xk5TLnQilPRIkCk/u
 +RAY0swuwiXIxoC7+k0vRmZm036mvACh+quaET/cKJOI1pwgQV9em1k9c0K7ymuKsf
 /Q7biHye8EnmdIsduVy61i1tLrDezx2l9quW2m4+1MKZOo/JAiSUAXxQnx3emifXBL
 8COXL3t4Q7KArtzscrvkyquK+0+O2W+4FznSZTULfF5040+lllV7hyjwDLsz/z77P2
 O3gWwpXQDdPv8zkLNX/NAufkBj5R0d8RXWFUa8vfYn7pR9ZDFaRx+fBm4Bc5cxyEGx
 fuwF0A10DIMuA==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH v2 16/23] media: rkvdec: h264: Fix reference frame_num wrap
 for second field
Date: Thu, 31 Mar 2022 15:37:18 -0400
Message-Id: <20220331193726.289559-17-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220331193726.289559-1-nicolas.dufresne@collabora.com>
References: <20220331193726.289559-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_123801_689139_87014AE3 
X-CRM114-Status: GOOD (  11.07  )
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

When decoding the second field in a complementary field pair the second
field is sharing the same frame_num with the first field.

Currently the frame_num for the first field is wrapped when it matches the
field being decoded, this cause issues to decode the second field in a
complementary field pair.

Fix this by using inclusive comparison, less than or equal.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec-h264.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
index a42cf19bcc6d..730f8ebf7f58 100644
--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
@@ -773,7 +773,7 @@ static void assemble_hw_rps(struct rkvdec_ctx *ctx,
 			continue;
 
 		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM ||
-		    dpb[i].frame_num < dec_params->frame_num) {
+		    dpb[i].frame_num <= dec_params->frame_num) {
 			p[i] = dpb[i].frame_num;
 			continue;
 		}
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
