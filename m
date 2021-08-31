Return-Path: <SRS0=VuRY=NW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5000DC432BE
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 09:49:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B77B160249
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 09:49:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B77B160249
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v64CC4Mi0CCyMqNdwtOyzRqGDhptGi1ebVHTFRG9t8w=; b=cfYnck+CuuFGNl
	XNU6oDMKR5xr47Iz/4E/fL6IJ8xG3jIv41Ems0oyUgcDHKBV0OMqJGzmVUk27hcatsKkm0GndEcxg
	wtit/lkRYB8IQIHJ6Z3VPFQuB3850Kp+VW49o8qE3einCwfm3mUHLN0Y1g6SCgWLHKrfabGHxgefC
	SigyNCpjCSlN8J+UbFWMzLfRbSkzFho/C63On1zxBwxlCVr8mOgJJ6g0rVpGFfFAFiamejZFlGtwt
	WA1EU4eXhHPXkzxhuBpuBr7YRE7/a4DwiA+edqbBSFae1u5RZkVrgpuieuwAr6fT/SSLbctgnJ1TT
	+NxIsANjF+oalC+COGOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mL0Os-001xr4-Sb; Tue, 31 Aug 2021 09:49:50 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mL0OK-001xiz-0B; Tue, 31 Aug 2021 09:49:18 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:2d6:5982:f5be:998c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 65E701F42FCA;
 Tue, 31 Aug 2021 10:49:11 +0100 (BST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org, p.zabel@pengutronix.de, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@gmail.com, hverkuil-cisco@xs4all.nl, jc@kynesim.co.uk,
 ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH 2/2] media: hevc: Embedded indexes in RPS
Date: Tue, 31 Aug 2021 11:49:00 +0200
Message-Id: <20210831094900.203283-3-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210831094900.203283-1-benjamin.gaignard@collabora.com>
References: <20210831094900.203283-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210831_024916_317700_9A5C224E 
X-CRM114-Status: GOOD (  12.98  )
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

Reference Picture Set lists provide indexes of short and long term
reference in DBP array.
Fix Hantro to not do a look up in DBP entries.
Make documentation more clear about it.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../media/v4l/ext-ctrls-codec.rst             |  6 ++---
 .../staging/media/hantro/hantro_g2_hevc_dec.c | 25 +++++--------------
 2 files changed, 9 insertions(+), 22 deletions(-)

diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
index eff33c511090..4e4892c37723 100644
--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
@@ -3352,15 +3352,15 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
     * - __u8
       - ``poc_st_curr_before[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
       - PocStCurrBefore as described in section 8.3.2 "Decoding process for reference
-        picture set.
+        picture set": provides the index of the short term before references in DPB array.
     * - __u8
       - ``poc_st_curr_after[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
       - PocStCurrAfter as described in section 8.3.2 "Decoding process for reference
-        picture set.
+        picture set": provides the index of the short term after references in DPB array.
     * - __u8
       - ``poc_lt_curr[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
       - PocLtCurr as described in section 8.3.2 "Decoding process for reference
-        picture set.
+        picture set": provides the index of the long term references in DPB array.
     * - __u64
       - ``flags``
       - See :ref:`Decode Parameters Flags <hevc_decode_params_flags>`
diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
index be46b3c28b17..76386e9eb8f4 100644
--- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
+++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
@@ -306,24 +306,11 @@ static void set_params(struct hantro_ctx *ctx)
 	hantro_reg_write(vpu, &g2_apf_threshold, 8);
 }
 
-static int find_ref_pic_index(const struct v4l2_hevc_dpb_entry *dpb, int pic_order_cnt)
-{
-	int i;
-
-	for (i = 0; i < V4L2_HEVC_DPB_ENTRIES_NUM_MAX; i++) {
-		if (dpb[i].pic_order_cnt[0] == pic_order_cnt)
-			return i;
-	}
-
-	return 0x0;
-}
-
 static void set_ref_pic_list(struct hantro_ctx *ctx)
 {
 	const struct hantro_hevc_dec_ctrls *ctrls = &ctx->hevc_dec.ctrls;
 	struct hantro_dev *vpu = ctx->dev;
 	const struct v4l2_ctrl_hevc_decode_params *decode_params = ctrls->decode_params;
-	const struct v4l2_hevc_dpb_entry *dpb = decode_params->dpb;
 	u32 list0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX] = {};
 	u32 list1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX] = {};
 	static const struct hantro_reg ref_pic_regs0[] = {
@@ -367,11 +354,11 @@ static void set_ref_pic_list(struct hantro_ctx *ctx)
 	/* List 0 contains: short term before, short term after and long term */
 	j = 0;
 	for (i = 0; i < decode_params->num_poc_st_curr_before && j < ARRAY_SIZE(list0); i++)
-		list0[j++] = find_ref_pic_index(dpb, decode_params->poc_st_curr_before[i]);
+		list0[j++] = decode_params->poc_st_curr_before[i];
 	for (i = 0; i < decode_params->num_poc_st_curr_after && j < ARRAY_SIZE(list0); i++)
-		list0[j++] = find_ref_pic_index(dpb, decode_params->poc_st_curr_after[i]);
+		list0[j++] = decode_params->poc_st_curr_after[i];
 	for (i = 0; i < decode_params->num_poc_lt_curr && j < ARRAY_SIZE(list0); i++)
-		list0[j++] = find_ref_pic_index(dpb, decode_params->poc_lt_curr[i]);
+		list0[j++] = decode_params->poc_lt_curr[i];
 
 	/* Fill the list, copying over and over */
 	i = 0;
@@ -380,11 +367,11 @@ static void set_ref_pic_list(struct hantro_ctx *ctx)
 
 	j = 0;
 	for (i = 0; i < decode_params->num_poc_st_curr_after && j < ARRAY_SIZE(list1); i++)
-		list1[j++] = find_ref_pic_index(dpb, decode_params->poc_st_curr_after[i]);
+		list1[j++] = decode_params->poc_st_curr_after[i];
 	for (i = 0; i < decode_params->num_poc_st_curr_before && j < ARRAY_SIZE(list1); i++)
-		list1[j++] = find_ref_pic_index(dpb, decode_params->poc_st_curr_before[i]);
+		list1[j++] = decode_params->poc_st_curr_before[i];
 	for (i = 0; i < decode_params->num_poc_lt_curr && j < ARRAY_SIZE(list1); i++)
-		list1[j++] = find_ref_pic_index(dpb, decode_params->poc_lt_curr[i]);
+		list1[j++] = decode_params->poc_lt_curr[i];
 
 	i = 0;
 	while (j < ARRAY_SIZE(list1))
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
