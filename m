Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9126FC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 13:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zhM73RXKmY7uKcrnJocAKgoKYGtSPu6ulMKdYjI3nEQ=; b=3EvYkqeGfdkPqQ
	xIOrWjd/lAtKaGEeiXqk/RsLzOdE6kKPvZ2atbnqsRzlZsd7JzrLyttHgxvuAvlCoNePXeXyzkQow
	KQ1wiZJOTo8aqjYsRgVTAUOX40uIYfDBL6ioIeWXsmOkujYk7RriLk5mrX6KK97uOTnPCJtpHi6W2
	Dm6SDt85XZ3Wqizj1KAvTzVXvcD4MMGFaOZHUtrS2ajNLTauQlTdkNajnAmiNj22nqHv0c4IXSET8
	8C8WIF4BDYZwFgU5xG7xIyGB1gELVgPD1fjAEbwF6wEXsZRLSCilTW7JtLX9hlnANKmT4qT/q++uo
	3NdeQO8z5DHsQhe9ljOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njKv1-00ETaN-I0; Tue, 26 Apr 2022 13:07:51 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njKlz-00EPEP-1S
 for linux-rockchip@lists.infradead.org; Tue, 26 Apr 2022 12:58:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 1C6751F43996
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650977909;
 bh=Obrg+kliljhQBVbkjHH9eqyMF1KK1PscTQElBfjHqLA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=M/Su31vKdsLjJViMlDV+oZDM2lWGxhUOrM0xafZj4XX9GRff9fgOXPSG4OMAc1QAs
 B5qSVl8w3PC38ceehO0XjfkGqsCHvh4k940A679PTb+LHLTOx3rrilS9Sp2Exzrkoq
 ij85Gh4X8ovJXGy0mCiByNyHOjNK0/xSni3J/R+PkETo4Hy0Yqi1agSZBU8bzvqRff
 gBE+vPFCxcz2wg3bZN0kte+59S6ty4xTRoc04YP6VwCQSuRwFbDEKWby7uO2+0SfCE
 OLgllG/q6s3WF7qFY103nMu47ObqYHVano4sby24zZQCO/SzPVbi64lxCNU86vSSC9
 Hm2TfZqLLoO/w==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: nicolas@ndufresne.ca, Jonas Karlman <jonas@kwiboo.se>,
 linux-media@vger.kernel.org, Ezequiel Garcia <ezequiel@collabora.com>,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 17/24] media: rkvdec: h264: Fix reference frame_num wrap
 for second field
Date: Tue, 26 Apr 2022 08:57:43 -0400
Message-Id: <20220426125751.108293-18-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220426125751.108293-1-nicolas.dufresne@collabora.com>
References: <20220426125751.108293-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_055831_275523_4C29BA22 
X-CRM114-Status: GOOD (  11.27  )
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
field being decoded, this caused issues decoding the second field in a
complementary field pair.

Fix this by using inclusive comparison: 'less than or equal'.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec-h264.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
index d5ac0285f36f..7011b66c1aab 100644
--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
@@ -782,7 +782,7 @@ static void assemble_hw_rps(struct rkvdec_ctx *ctx,
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
