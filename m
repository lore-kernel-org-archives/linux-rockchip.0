Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15A77C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 19:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MvMIE1GwUbzGTNg/RPPwYdT9geqBUwTlKcsvK1nPbWo=; b=vSWFpf6cnCPWLt
	ME1Bd7muFUy38VejuFLCBn6ShNv7y1ejszwTSK+ZU6sGl05pgRdJdCA5ipl3mYFyXhgNztzvw8492
	+XIMUOI9DNCo3QrTB/PQcRMOm5lu//9qnLQlDWgXA00oxbGKTcj39+0KsbxTGGLlp7GZFSklJ6N0S
	vL+6M1wa/TlpXt4kwndG+K/Ga7S68KY26HF269UAMwNgJYxI6ijK5fMFY0GPazA044GEHBYxypEYR
	/6uUEI4/3Ibj3/JYv+l+TedPmtaPzAY/u1b0VPWnd2ZYarKVli13kyue49/OgbrC3XognnmT3U10B
	Mxs/Gn8zR1w60szF9bsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1na0cN-003RN8-9R; Thu, 31 Mar 2022 19:38:03 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1na0c8-003RBm-3T
 for linux-rockchip@lists.infradead.org; Thu, 31 Mar 2022 19:37:50 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 4C41B1F4724D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648755464;
 bh=VjX+liG+SlI3iuDWs50MzK4K6rmwEP4Ktzmj7Beu+Mo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=i1Up/5emswsszUr/IL82EU9CA2ojTsAugslRJT9YMSbyEf30Ti5BXZws52rF6LNiV
 y5+cLWg7C5SqyiIXBAY2YUtyVYPQVQ0q/bQalp4u+V1GMeduCKVwTa1UYz2JGXe2/C
 WafKxJ5Y4tsT9UbfNjuahk3E1SccJN388ZRPx+KytlH1ngeNwZ2lLs6XZ8Risfa/FK
 qBtN4be/+0m8Hzg3xmNvmH9zRQPftUBsc+WvrSTyMOyB/+WlCd0Eofe5CV2R77f6yN
 F7nLcd0c4r8+gO7wek8hFboqHt5R4ZY5gR22Z5omOh24PqR6akhbS2/G+USGX5dCq0
 xfEvo4aX5tcTg==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@collabora.com, Sebastian Fricke <sebastian.fricke@collabora.com>,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev
Subject: [PATCH v2 06/23] media: h264: Increase reference lists size to 32
Date: Thu, 31 Mar 2022 15:37:08 -0400
Message-Id: <20220331193726.289559-7-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220331193726.289559-1-nicolas.dufresne@collabora.com>
References: <20220331193726.289559-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_123748_439998_77D01A4E 
X-CRM114-Status: GOOD (  12.19  )
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

This is to accommodate support for field decoding, which splits the top
and the bottom references into the reference list.

Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>
---
 drivers/media/v4l2-core/v4l2-h264.c        | 6 +++---
 drivers/staging/media/hantro/hantro_hw.h   | 6 +++---
 drivers/staging/media/rkvdec/rkvdec-h264.c | 6 +++---
 include/media/v4l2-h264.h                  | 8 ++++----
 4 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/media/v4l2-core/v4l2-h264.c b/drivers/media/v4l2-core/v4l2-h264.c
index afbfcf78efe4..4b46b36526c0 100644
--- a/drivers/media/v4l2-core/v4l2-h264.c
+++ b/drivers/media/v4l2-core/v4l2-h264.c
@@ -212,7 +212,7 @@ static int v4l2_h264_b1_ref_list_cmp(const void *ptra, const void *ptrb,
  * v4l2_h264_build_p_ref_list() - Build the P reference list
  *
  * @builder: reference list builder context
- * @reflist: 16 sized array used to store the P reference list. Each entry
+ * @reflist: 32 sized array used to store the P reference list. Each entry
  *	     is a v4l2_h264_reference structure
  *
  * This functions builds the P reference lists. This procedure is describe in
@@ -235,9 +235,9 @@ EXPORT_SYMBOL_GPL(v4l2_h264_build_p_ref_list);
  * v4l2_h264_build_b_ref_lists() - Build the B0/B1 reference lists
  *
  * @builder: reference list builder context
- * @b0_reflist: 16 sized array used to store the B0 reference list. Each entry
+ * @b0_reflist: 32 sized array used to store the B0 reference list. Each entry
  *		is a v4l2_h264_reference structure
- * @b1_reflist: 16 sized array used to store the B1 reference list. Each entry
+ * @b1_reflist: 32 sized array used to store the B1 reference list. Each entry
  *		is a v4l2_h264_reference structure
  *
  * This functions builds the B0/B1 reference lists. This procedure is described
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 2bc6b8f088f5..292aaaabaf24 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -69,9 +69,9 @@ struct hantro_h264_dec_ctrls {
  * @b1:		B1 reflist
  */
 struct hantro_h264_dec_reflists {
-	struct v4l2_h264_reference p[HANTRO_H264_DPB_SIZE];
-	struct v4l2_h264_reference b0[HANTRO_H264_DPB_SIZE];
-	struct v4l2_h264_reference b1[HANTRO_H264_DPB_SIZE];
+	struct v4l2_h264_reference p[V4L2_H264_REF_LIST_LEN];
+	struct v4l2_h264_reference b0[V4L2_H264_REF_LIST_LEN];
+	struct v4l2_h264_reference b1[V4L2_H264_REF_LIST_LEN];
 };
 
 /**
diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
index 3c7f3d87fab4..dff89732ddd0 100644
--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
@@ -100,9 +100,9 @@ struct rkvdec_h264_priv_tbl {
 #define RKVDEC_H264_DPB_SIZE 16
 
 struct rkvdec_h264_reflists {
-	struct v4l2_h264_reference p[RKVDEC_H264_DPB_SIZE];
-	struct v4l2_h264_reference b0[RKVDEC_H264_DPB_SIZE];
-	struct v4l2_h264_reference b1[RKVDEC_H264_DPB_SIZE];
+	struct v4l2_h264_reference p[V4L2_H264_REF_LIST_LEN];
+	struct v4l2_h264_reference b0[V4L2_H264_REF_LIST_LEN];
+	struct v4l2_h264_reference b1[V4L2_H264_REF_LIST_LEN];
 	u8 num_valid;
 };
 
diff --git a/include/media/v4l2-h264.h b/include/media/v4l2-h264.h
index ef9a894e3c32..e282fb16ac58 100644
--- a/include/media/v4l2-h264.h
+++ b/include/media/v4l2-h264.h
@@ -37,7 +37,7 @@ struct v4l2_h264_reflist_builder {
 		u16 longterm : 1;
 	} refs[V4L2_H264_NUM_DPB_ENTRIES];
 	s32 cur_pic_order_count;
-	struct v4l2_h264_reference unordered_reflist[V4L2_H264_NUM_DPB_ENTRIES];
+	struct v4l2_h264_reference unordered_reflist[V4L2_H264_REF_LIST_LEN];
 	u8 num_valid;
 };
 
@@ -51,9 +51,9 @@ v4l2_h264_init_reflist_builder(struct v4l2_h264_reflist_builder *b,
  * v4l2_h264_build_b_ref_lists() - Build the B0/B1 reference lists
  *
  * @builder: reference list builder context
- * @b0_reflist: 16 sized array used to store the B0 reference list. Each entry
+ * @b0_reflist: 32 sized array used to store the B0 reference list. Each entry
  *		is a v4l2_h264_reference structure
- * @b1_reflist: 16 sized array used to store the B1 reference list. Each entry
+ * @b1_reflist: 32 sized array used to store the B1 reference list. Each entry
  *		is a v4l2_h264_reference structure
  *
  * This functions builds the B0/B1 reference lists. This procedure is described
@@ -70,7 +70,7 @@ v4l2_h264_build_b_ref_lists(const struct v4l2_h264_reflist_builder *builder,
  * v4l2_h264_build_p_ref_list() - Build the P reference list
  *
  * @builder: reference list builder context
- * @reflist: 16 sized array used to store the P reference list. Each entry
+ * @reflist: 32 sized array used to store the P reference list. Each entry
  *	     is a v4l2_h264_reference structure
  *
  * This functions builds the P reference lists. This procedure is describe in
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
