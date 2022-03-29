Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 310B5C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 08:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GKN29CfzUNCXql5KHtk5ot73YKnEPHBQb3gvbRqeDMI=; b=I7w64oVvuRWPWtE3XndZqKmAWA
	EjyYMJEJ4FRR5Z1ezjCAD4uO36PqHdTcMQxa7rMvE5wAt4EQfnW3GFWeUSbVc4rpX5bjE3hFFb34y
	yTajiRtOHUtDsxSPGDSgs5+/YBeKHsaivTFxL7PJ8n/TsEbDBXsHZOsKtStnwEUsmMOA0NVGLZbkm
	Z3QCHRuqlC4cQfvAy5WkxxNpzGYtfcVOYEvNDsj13n54Co2WfNMQw7rUV81mGApQNpUTkdTCH2n7L
	b2rBU87F/o/BEXPLcWWEDPdvpGAaBCAmV3UticQkLQQfIXFFfK6yR1UbYFemq7MVFaIUsV6R9d4cl
	jpkT40+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZ7AU-00BSf7-2e; Tue, 29 Mar 2022 08:25:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZ7AQ-00BSdw-PK
 for linux-rockchip@lists.infradead.org; Tue, 29 Mar 2022 08:25:32 +0000
Received: from localhost (unknown [IPv6:2a02:3030:a:f397:f6bc:b726:2678:839f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: sebastianfricke)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id AD2381F43940;
 Tue, 29 Mar 2022 09:25:28 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648542328;
 bh=f1D9zZ5QeEl1SNAS+500xZ0sHqyx/I137Xd4Cdi9UwQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TjRvs4SHnf8vYHOIcgthNvi7ssgTzAe2Y8menEXMXNm3aJfdeJctChd2AMqWelPeu
 7h04Ecsj1yqzvdpIoxXpVUDJa0wZ2ZLtUDfj6XMX1xzeEKbOFw06Do9h+/+iSCWMgj
 rEJISRZMa/1czJKIy9sB+7OSamF40GkC/qTW8ChlDQloiBuJg2e//OpfYpltFo/bJU
 /FjwiR0LKxB094KxXozCe0PzdsJFlCqt8l9/bdZvm8knhtLVRVbEoYEMV2AvFBG/du
 YIZQMUZIT7/fQ+U2PvNvHRq6iGHvVv6k5ruS4ibK966DOuwTgS3hyHZhtsXiun0xkJ
 4KAkyC0fTZ0Zg==
Date: Tue, 29 Mar 2022 10:25:26 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel@collabora.com, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Subject: Re: [PATCH v1 01/24] media: h264: Increase reference lists size to 32
Message-ID: <20220329082526.v64tlnmzjlheuxgu@basti-XPS-13-9310>
References: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
 <20220328195936.82552-2-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220328195936.82552-2-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_012531_159530_4DF71AC1 
X-CRM114-Status: GOOD (  18.78  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey Nicolas,

As mentioned in patch 24 as well:
The patch series doesn't seem to apply on the latest media tree master
branch. Looking at your tree I can see that you have commit: ba2c670a
"media: nxp: Restrict VIDEO_IMX_MIPI_CSIS to ARCH_MXC or COMPILE_TEST
Laurent Pinchart authored 1 week ago "

But the current head of the media tree is: 71e6d0608e4d
"media: platform: Remove unnecessary print function dev_err()
Yang Li authored 13 days ago"

On 28.03.2022 15:59, Nicolas Dufresne wrote:
>This is to accommodate support for field decoding, which splits the top
>and the bottom reference into the reference list.

s/and the bottom reference/and the bottom references/

I think it would be helpful to describe with a bit more detail why field
decoding requires the 32 entry array instead of the 16 entry array.

How about:
"""
In field decoding mode a slice is a sequence of macroblock pairs, where
each pair contains a top and a bottom macroblock. To accommodate for
this mode the reference list must be able contain references for both
top and bottom macroblocks. Double the size of the reference list array
accordingly.
"""

I got the info from the specification at 6.3.

>
>Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>
>---
> drivers/media/v4l2-core/v4l2-h264.c        | 6 +++---
> drivers/staging/media/hantro/hantro_hw.h   | 6 +++---
> drivers/staging/media/rkvdec/rkvdec-h264.c | 6 +++---
> include/media/v4l2-h264.h                  | 8 ++++----
> 4 files changed, 13 insertions(+), 13 deletions(-)
>
>diff --git a/drivers/media/v4l2-core/v4l2-h264.c b/drivers/media/v4l2-core/v4l2-h264.c
>index 0618c6f52214..8d750ee69e74 100644
>--- a/drivers/media/v4l2-core/v4l2-h264.c
>+++ b/drivers/media/v4l2-core/v4l2-h264.c
>@@ -210,7 +210,7 @@ static int v4l2_h264_b1_ref_list_cmp(const void *ptra, const void *ptrb,
>  * v4l2_h264_build_p_ref_list() - Build the P reference list
>  *
>  * @builder: reference list builder context
>- * @reflist: 16 sized array used to store the P reference list. Each entry
>+ * @reflist: 32 sized array used to store the P reference list. Each entry
>  *	     is a v4l2_h264_reference structure
>  *
>  * This functions builds the P reference lists. This procedure is describe in

Oh unrelated to the patch but there is a typo: s/describe/described/

Greetings,
Sebastian

>@@ -233,9 +233,9 @@ EXPORT_SYMBOL_GPL(v4l2_h264_build_p_ref_list);
>  * v4l2_h264_build_b_ref_lists() - Build the B0/B1 reference lists
>  *
>  * @builder: reference list builder context
>- * @b0_reflist: 16 sized array used to store the B0 reference list. Each entry
>+ * @b0_reflist: 32 sized array used to store the B0 reference list. Each entry
>  *		is a v4l2_h264_reference structure
>- * @b1_reflist: 16 sized array used to store the B1 reference list. Each entry
>+ * @b1_reflist: 32 sized array used to store the B1 reference list. Each entry
>  *		is a v4l2_h264_reference structure
>  *
>  * This functions builds the B0/B1 reference lists. This procedure is described
>diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
>index 2bc6b8f088f5..292aaaabaf24 100644
>--- a/drivers/staging/media/hantro/hantro_hw.h
>+++ b/drivers/staging/media/hantro/hantro_hw.h
>@@ -69,9 +69,9 @@ struct hantro_h264_dec_ctrls {
>  * @b1:		B1 reflist
>  */
> struct hantro_h264_dec_reflists {
>-	struct v4l2_h264_reference p[HANTRO_H264_DPB_SIZE];
>-	struct v4l2_h264_reference b0[HANTRO_H264_DPB_SIZE];
>-	struct v4l2_h264_reference b1[HANTRO_H264_DPB_SIZE];
>+	struct v4l2_h264_reference p[V4L2_H264_REF_LIST_LEN];
>+	struct v4l2_h264_reference b0[V4L2_H264_REF_LIST_LEN];
>+	struct v4l2_h264_reference b1[V4L2_H264_REF_LIST_LEN];
> };
>
> /**
>diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
>index 3c7f3d87fab4..dff89732ddd0 100644
>--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
>+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
>@@ -100,9 +100,9 @@ struct rkvdec_h264_priv_tbl {
> #define RKVDEC_H264_DPB_SIZE 16
>
> struct rkvdec_h264_reflists {
>-	struct v4l2_h264_reference p[RKVDEC_H264_DPB_SIZE];
>-	struct v4l2_h264_reference b0[RKVDEC_H264_DPB_SIZE];
>-	struct v4l2_h264_reference b1[RKVDEC_H264_DPB_SIZE];
>+	struct v4l2_h264_reference p[V4L2_H264_REF_LIST_LEN];
>+	struct v4l2_h264_reference b0[V4L2_H264_REF_LIST_LEN];
>+	struct v4l2_h264_reference b1[V4L2_H264_REF_LIST_LEN];
> 	u8 num_valid;
> };
>
>diff --git a/include/media/v4l2-h264.h b/include/media/v4l2-h264.h
>index ef9a894e3c32..e282fb16ac58 100644
>--- a/include/media/v4l2-h264.h
>+++ b/include/media/v4l2-h264.h
>@@ -37,7 +37,7 @@ struct v4l2_h264_reflist_builder {
> 		u16 longterm : 1;
> 	} refs[V4L2_H264_NUM_DPB_ENTRIES];
> 	s32 cur_pic_order_count;
>-	struct v4l2_h264_reference unordered_reflist[V4L2_H264_NUM_DPB_ENTRIES];
>+	struct v4l2_h264_reference unordered_reflist[V4L2_H264_REF_LIST_LEN];
> 	u8 num_valid;
> };
>
>@@ -51,9 +51,9 @@ v4l2_h264_init_reflist_builder(struct v4l2_h264_reflist_builder *b,
>  * v4l2_h264_build_b_ref_lists() - Build the B0/B1 reference lists
>  *
>  * @builder: reference list builder context
>- * @b0_reflist: 16 sized array used to store the B0 reference list. Each entry
>+ * @b0_reflist: 32 sized array used to store the B0 reference list. Each entry
>  *		is a v4l2_h264_reference structure
>- * @b1_reflist: 16 sized array used to store the B1 reference list. Each entry
>+ * @b1_reflist: 32 sized array used to store the B1 reference list. Each entry
>  *		is a v4l2_h264_reference structure
>  *
>  * This functions builds the B0/B1 reference lists. This procedure is described
>@@ -70,7 +70,7 @@ v4l2_h264_build_b_ref_lists(const struct v4l2_h264_reflist_builder *builder,
>  * v4l2_h264_build_p_ref_list() - Build the P reference list
>  *
>  * @builder: reference list builder context
>- * @reflist: 16 sized array used to store the P reference list. Each entry
>+ * @reflist: 32 sized array used to store the P reference list. Each entry
>  *	     is a v4l2_h264_reference structure
>  *
>  * This functions builds the P reference lists. This procedure is describe in
>-- 
>2.34.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
