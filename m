Return-Path: <SRS0=9QTE=NA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B961C432BE
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Aug 2021 14:29:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E8EEA61002
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Aug 2021 14:29:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E8EEA61002
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kynesim.co.uk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Glri5R8pVPS0h1WNtQTBqmn7m128Dn1eAOn/oXLiLg=; b=dj2o/lg6Pl2KLf
	3nVq0EfBNuoF24dbuZ6keISz44i5LR4sEa4UsfpxmLxD/FPFa8IPElYp5PHF5SSq+ZUmy3L/92sga
	5suizR/9IrWq4q3oMnLp+m1NcB494d+MAh6PwPq60eCSOFlphsFOyEZVGwLWS/7/lJNgrQTIwjcwx
	Hkm5xsyJoyOG3hHHxNhb+pFrJ9ofstLc9vXv9HoqmgXusvMABeEQqfJLFkzldUqtOrMbBjeRwIBlo
	lFMI7zW2tGGS2Tvl2JSmIeXyybzQUd2fEYCvV1d9FlLpcRKqi9vRQ5UeuwhUlY0nq08wxfKmN3li8
	IKLA0FpWJ2yEi9sCWYEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mD6Hj-000uaY-Sd; Mon, 09 Aug 2021 14:29:47 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mD6HV-000uYz-Lc
 for linux-rockchip@lists.infradead.org; Mon, 09 Aug 2021 14:29:37 +0000
Received: by mail-wm1-x32b.google.com with SMTP id
 q11-20020a7bce8b0000b02902e6880d0accso2995223wmj.0
 for <linux-rockchip@lists.infradead.org>; Mon, 09 Aug 2021 07:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kynesim-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:references:in-reply-to
 :user-agent:mime-version:content-transfer-encoding;
 bh=L999Yib9z6H/0B0JYuNS69UkBVl7RBvK1NmqkaAvqbc=;
 b=aMh55qQH3CSm6IHOwLSyWPTlMpgFW1ioRLjQrChb7QwPGAMH14PTonvsmfYzwWVoNW
 JFnAaSZ7ckp+5eBKlBHEN69wSkvYBwruriQ02uw/S8PxPYO6yOesROGVtWeaxyyXvsl6
 JTEECDcddSLwvF90ohli+Pfo1vikDXvCmirOIA1M0CoJ/an/BNby5abH0NS8kl1gQFTk
 zfCtL+PEmqP2ZEwJ2DfFNq55VipsbGv5YKFmx0CbwMogRUmAYdOSc6T6Y0LVFFbL/4sR
 CDz2IN3/aDOfbnejllJbl/8oHqH3arIzPhKscEyqtKuMC2GtMX5yWlzZQIUt5noKB6Sy
 sU5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:references
 :in-reply-to:user-agent:mime-version:content-transfer-encoding;
 bh=L999Yib9z6H/0B0JYuNS69UkBVl7RBvK1NmqkaAvqbc=;
 b=cihHLL1qnUHYi5YXKTQ+/Awc8JnKWsKJPk4v4CHhP1VOcsV9pRs/PAOztK2nTUghbu
 WLaQOnPnY0iLTDXHo8ZKx+qh2Qq8AIDHRgOh6JRRZYOBXWrLa9c4vGfQYqiyz3tRV0/q
 hI+g2JynC2ZDDyOdy3YLnP04fSpNqiBzT6NthtYun8lQ8PCpG9egZqkwuUkynOA9r86f
 SJ0jglLzQjZfU2AD+yAljv/lOH7IjYbtkQs7KgfnpINYamSViCjk4XpV44NneU/TgvX+
 Ohc7+kvEGavK6hetRQEkEDyaDN6dC44ywqQ1n14kzN71sVlTGDK7pGD497HZLfP6U7rc
 CWiQ==
X-Gm-Message-State: AOAM531bgGQhTtXkizM6tmtCiCEDokDQktc2Ea+sqT5Ovu+NNMXp55++
 I6NkUWEiDKh+jMMbikQf4No6RkYTI1TpY9nETHc=
X-Google-Smtp-Source: ABdhPJzJQKZXaUTHo0dgxyBYN3G9VHHriB7v/onpxEw6Bg2btBanvR7MJ+MH/AmIO2DeJ7LR9B/t6A==
X-Received: by 2002:a05:600c:2242:: with SMTP id
 a2mr17243784wmm.180.1628519371129; 
 Mon, 09 Aug 2021 07:29:31 -0700 (PDT)
Received: from CTHALPA.outer.uphall.net
 (cpc1-cmbg20-2-0-cust759.5-4.cable.virginm.net. [86.21.218.248])
 by smtp.gmail.com with ESMTPSA id j19sm206203wmi.3.2021.08.09.07.29.29
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Mon, 09 Aug 2021 07:29:30 -0700 (PDT)
From: John Cox <jc@kynesim.co.uk>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: hverkuil@xs4all.nl, ezequiel@collabora.com, p.zabel@pengutronix.de,
 mchehab@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com, andrzej.p@collabora.com, kernel@pengutronix.de,
 linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v13 2/9] media: hevc: Add decode params control
Date: Mon, 09 Aug 2021 15:29:29 +0100
Message-ID: <h8e2hgh73r8lqgr8lgmuobubj2jcdg6mv5@4ax.com>
References: <20210603115004.915294-1-benjamin.gaignard@collabora.com>
 <20210603115004.915294-3-benjamin.gaignard@collabora.com>
In-Reply-To: <20210603115004.915294-3-benjamin.gaignard@collabora.com>
User-Agent: ForteAgent/8.00.32.1272
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_072933_746273_8463D770 
X-CRM114-Status: GOOD (  21.61  )
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

Hi

>Add decode params control and the associated structure to group
>all the information that are needed to decode a reference frame as
>is described in ITU-T Rec. H.265 section "8.3.2 Decoding process
>for reference picture set".

I'm sorry I'm commenting late but I've only just got round to
implementing code based on this.

>Adapt Cedrus driver to these changes.
>
>Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
>Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
>---
>version 11:
> - Split what was done in v4l2-ctrls.c in v4l2-ctrls-core.c and v4l2-ctrls-defs.c
>
> .../media/v4l/ext-ctrls-codec.rst             | 94 +++++++++++++++----
> .../media/v4l/vidioc-queryctrl.rst            |  6 ++
> drivers/media/v4l2-core/v4l2-ctrls-core.c     | 21 +++--
> drivers/media/v4l2-core/v4l2-ctrls-defs.c     |  4 +
> drivers/staging/media/sunxi/cedrus/cedrus.c   |  6 ++
> drivers/staging/media/sunxi/cedrus/cedrus.h   |  1 +
> .../staging/media/sunxi/cedrus/cedrus_dec.c   |  2 +
> .../staging/media/sunxi/cedrus/cedrus_h265.c  | 12 ++-
> include/media/hevc-ctrls.h                    | 29 ++++--
> 9 files changed, 136 insertions(+), 39 deletions(-)
>
>diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
>index 9cfb471fc6be..9120c5bcaf90 100644
>--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
>+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
>@@ -2997,9 +2997,6 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>     * - __u8
>       - ``pic_struct``
>       -
>-    * - __u8
>-      - ``num_active_dpb_entries``
>-      - The number of entries in ``dpb``.
>     * - __u8
>       - ``ref_idx_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
>       - The list of L0 reference elements as indices in the DPB.
>@@ -3007,22 +3004,8 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>       - ``ref_idx_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
>       - The list of L1 reference elements as indices in the DPB.
>     * - __u8
>-      - ``num_rps_poc_st_curr_before``
>-      - The number of reference pictures in the short-term set that come before
>-        the current frame.
>-    * - __u8
>-      - ``num_rps_poc_st_curr_after``
>-      - The number of reference pictures in the short-term set that come after
>-        the current frame.
>-    * - __u8
>-      - ``num_rps_poc_lt_curr``
>-      - The number of reference pictures in the long-term set.
>-    * - __u8
>-      - ``padding[7]``
>+      - ``padding``
>       - Applications and drivers must set this to zero.
>-    * - struct :c:type:`v4l2_hevc_dpb_entry`
>-      - ``dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
>-      - The decoded picture buffer, for meta-data about reference frames.
>     * - struct :c:type:`v4l2_hevc_pred_weight_table`
>       - ``pred_weight_table``
>       - The prediction weight coefficients for inter-picture prediction.
>@@ -3278,3 +3261,78 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>     encoding the next frame queued after setting this control.
>     This provides a bitmask which consists of bits [0, LTR_COUNT-1].
>     This is applicable to the H264 and HEVC encoders.
>+
>+``V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS (struct)``
>+    Specifies various decode parameters, especially the references picture order
>+    count (POC) for all the lists (short, long, before, current, after) and the
>+    number of entries for each of them.
>+    These parameters are defined according to :ref:`hevc`.
>+    They are described in section 8.3 "Slice decoding process" of the
>+    specification.
>+
>+.. c:type:: v4l2_ctrl_hevc_decode_params
>+
>+.. cssclass:: longtable
>+
>+.. flat-table:: struct v4l2_ctrl_hevc_decode_params
>+    :header-rows:  0
>+    :stub-columns: 0
>+    :widths:       1 1 2
>+
>+    * - __s32
>+      - ``pic_order_cnt_val``
>+      - PicOrderCntVal as described in section 8.3.1 "Decoding process
>+        for picture order count" of the specification.
>+    * - __u8
>+      - ``num_active_dpb_entries``
>+      - The number of entries in ``dpb``.
>+    * - struct :c:type:`v4l2_hevc_dpb_entry`
>+      - ``dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
>+      - The decoded picture buffer, for meta-data about reference frames.
>+    * - __u8
>+      - ``num_poc_st_curr_before``
>+      - The number of reference pictures in the short-term set that come before
>+        the current frame.
>+    * - __u8
>+      - ``num_poc_st_curr_after``
>+      - The number of reference pictures in the short-term set that come after
>+        the current frame.
>+    * - __u8
>+      - ``num_poc_lt_curr``
>+      - The number of reference pictures in the long-term set.
>+    * - __u8
>+      - ``poc_st_curr_before[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
>+      - PocStCurrBefore as described in section 8.3.2 "Decoding process for reference
>+        picture set.
>+    * - __u8
>+      - ``poc_st_curr_after[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
>+      - PocStCurrAfter as described in section 8.3.2 "Decoding process for reference
>+        picture set.
>+    * - __u8
>+      - ``poc_lt_curr[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
>+      - PocLtCurr as described in section 8.3.2 "Decoding process for reference
>+        picture set.

Two things here

1) By my understanding poc_st_curr_before/after & poc_lt_curr attempt to
hold a POC (as per 8.3.2). That is a 32bit signed value not U8.  You can
get away with U16 if you mask & sign extend your comparisions but U8 I'm
pretty sure is too small.

2) I think you can calculate these list from the info in the DPB
structure. Certainly v4l2_hevc_dpb_entry.rps contains which list every
entry is in.

Regards

John Cox


>+    * - __u64
>+      - ``flags``
>+      - See :ref:`Decode Parameters Flags <hevc_decode_params_flags>`
>+
>+.. _hevc_decode_params_flags:
>+
>+``Decode Parameters Flags``
>+
>+.. cssclass:: longtable
>+
>+.. flat-table::
>+    :header-rows:  0
>+    :stub-columns: 0
>+    :widths:       1 1 2
>+
>+    * - ``V4L2_HEVC_DECODE_PARAM_FLAG_IRAP_PIC``
>+      - 0x00000001
>+      -
>+    * - ``V4L2_HEVC_DECODE_PARAM_FLAG_IDR_PIC``
>+      - 0x00000002
>+      -
>+    * - ``V4L2_HEVC_DECODE_PARAM_FLAG_NO_OUTPUT_OF_PRIOR``
>+      - 0x00000004
>+      -
>diff --git a/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst b/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
>index 07e54029e1e9..f9ecf6276129 100644
>--- a/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
>+++ b/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
>@@ -501,6 +501,12 @@ See also the examples in :ref:`control`.
>       - n/a
>       - A struct :c:type:`v4l2_ctrl_vp8_frame`, containing VP8
> 	frame parameters for stateless video decoders.
>+    * - ``V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS``
>+      - n/a
>+      - n/a
>+      - n/a
>+      - A struct :c:type:`v4l2_ctrl_hevc_decode_params`, containing HEVC
>+	decoding parameters for stateless video decoders.
> 
> .. raw:: latex
> 
>diff --git a/drivers/media/v4l2-core/v4l2-ctrls-core.c b/drivers/media/v4l2-core/v4l2-ctrls-core.c
>index 081439224357..c4b5082849b6 100644
>--- a/drivers/media/v4l2-core/v4l2-ctrls-core.c
>+++ b/drivers/media/v4l2-core/v4l2-ctrls-core.c
>@@ -337,6 +337,7 @@ static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
> 	struct v4l2_ctrl_hevc_pps *p_hevc_pps;
> 	struct v4l2_ctrl_hevc_slice_params *p_hevc_slice_params;
> 	struct v4l2_ctrl_hdr10_mastering_display *p_hdr10_mastering;
>+	struct v4l2_ctrl_hevc_decode_params *p_hevc_decode_params;
> 	struct v4l2_area *area;
> 	void *p = ptr.p + idx * ctrl->elem_size;
> 	unsigned int i;
>@@ -616,23 +617,26 @@ static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
> 		zero_padding(*p_hevc_pps);
> 		break;
> 
>-	case V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS:
>-		p_hevc_slice_params = p;
>+	case V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS:
>+		p_hevc_decode_params = p;
> 
>-		if (p_hevc_slice_params->num_active_dpb_entries >
>+		if (p_hevc_decode_params->num_active_dpb_entries >
> 		    V4L2_HEVC_DPB_ENTRIES_NUM_MAX)
> 			return -EINVAL;
> 
>-		zero_padding(p_hevc_slice_params->pred_weight_table);
>-
>-		for (i = 0; i < p_hevc_slice_params->num_active_dpb_entries;
>+		for (i = 0; i < p_hevc_decode_params->num_active_dpb_entries;
> 		     i++) {
> 			struct v4l2_hevc_dpb_entry *dpb_entry =
>-				&p_hevc_slice_params->dpb[i];
>+				&p_hevc_decode_params->dpb[i];
> 
> 			zero_padding(*dpb_entry);
> 		}
>+		break;
> 
>+	case V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS:
>+		p_hevc_slice_params = p;
>+
>+		zero_padding(p_hevc_slice_params->pred_weight_table);
> 		zero_padding(*p_hevc_slice_params);
> 		break;
> 
>@@ -1236,6 +1240,9 @@ static struct v4l2_ctrl *v4l2_ctrl_new(struct v4l2_ctrl_handler *hdl,
> 	case V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS:
> 		elem_size = sizeof(struct v4l2_ctrl_hevc_slice_params);
> 		break;
>+	case V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS:
>+		elem_size = sizeof(struct v4l2_ctrl_hevc_decode_params);
>+		break;
> 	case V4L2_CTRL_TYPE_HDR10_CLL_INFO:
> 		elem_size = sizeof(struct v4l2_ctrl_hdr10_cll_info);
> 		break;
>diff --git a/drivers/media/v4l2-core/v4l2-ctrls-defs.c b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
>index 7963c7b43450..b6344bbf1e00 100644
>--- a/drivers/media/v4l2-core/v4l2-ctrls-defs.c
>+++ b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
>@@ -996,6 +996,7 @@ const char *v4l2_ctrl_get_name(u32 id)
> 	case V4L2_CID_MPEG_VIDEO_HEVC_SPS:			return "HEVC Sequence Parameter Set";
> 	case V4L2_CID_MPEG_VIDEO_HEVC_PPS:			return "HEVC Picture Parameter Set";
> 	case V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS:		return "HEVC Slice Parameters";
>+	case V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS:		return "HEVC Decode Parameters";
> 	case V4L2_CID_MPEG_VIDEO_HEVC_DECODE_MODE:		return "HEVC Decode Mode";
> 	case V4L2_CID_MPEG_VIDEO_HEVC_START_CODE:		return "HEVC Start Code";
> 
>@@ -1487,6 +1488,9 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
> 	case V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS:
> 		*type = V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS;
> 		break;
>+	case V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS:
>+		*type = V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS;
>+		break;
> 	case V4L2_CID_UNIT_CELL_SIZE:
> 		*type = V4L2_CTRL_TYPE_AREA;
> 		*flags |= V4L2_CTRL_FLAG_READ_ONLY;
>diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/staging/media/sunxi/cedrus/cedrus.c
>index fa348c09f844..c0d005dafc6c 100644
>--- a/drivers/staging/media/sunxi/cedrus/cedrus.c
>+++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
>@@ -157,6 +157,12 @@ static const struct cedrus_control cedrus_controls[] = {
> 		},
> 		.codec		= CEDRUS_CODEC_VP8,
> 	},
>+	{
>+		.cfg = {
>+			.id = V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS,
>+		},
>+		.codec		= CEDRUS_CODEC_H265,
>+	},
> };
> 
> #define CEDRUS_CONTROLS_COUNT	ARRAY_SIZE(cedrus_controls)
>diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
>index bbcdcd0787cf..88afba17b78b 100644
>--- a/drivers/staging/media/sunxi/cedrus/cedrus.h
>+++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
>@@ -77,6 +77,7 @@ struct cedrus_h265_run {
> 	const struct v4l2_ctrl_hevc_sps			*sps;
> 	const struct v4l2_ctrl_hevc_pps			*pps;
> 	const struct v4l2_ctrl_hevc_slice_params	*slice_params;
>+	const struct v4l2_ctrl_hevc_decode_params	*decode_params;
> };
> 
> struct cedrus_vp8_run {
>diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
>index 97e410d92506..40e8c4123f76 100644
>--- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
>+++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
>@@ -70,6 +70,8 @@ void cedrus_device_run(void *priv)
> 			V4L2_CID_MPEG_VIDEO_HEVC_PPS);
> 		run.h265.slice_params = cedrus_find_control_data(ctx,
> 			V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS);
>+		run.h265.decode_params = cedrus_find_control_data(ctx,
>+			V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS);
> 		break;
> 
> 	case V4L2_PIX_FMT_VP8_FRAME:
>diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
>index 10744fab7cea..6821e3d05d34 100644
>--- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
>+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
>@@ -245,6 +245,7 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
> 	const struct v4l2_ctrl_hevc_sps *sps;
> 	const struct v4l2_ctrl_hevc_pps *pps;
> 	const struct v4l2_ctrl_hevc_slice_params *slice_params;
>+	const struct v4l2_ctrl_hevc_decode_params *decode_params;
> 	const struct v4l2_hevc_pred_weight_table *pred_weight_table;
> 	dma_addr_t src_buf_addr;
> 	dma_addr_t src_buf_end_addr;
>@@ -256,6 +257,7 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
> 	sps = run->h265.sps;
> 	pps = run->h265.pps;
> 	slice_params = run->h265.slice_params;
>+	decode_params = run->h265.decode_params;
> 	pred_weight_table = &slice_params->pred_weight_table;
> 
> 	/* MV column buffer size and allocation. */
>@@ -487,7 +489,7 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
> 
> 	reg = VE_DEC_H265_DEC_SLICE_HDR_INFO1_SLICE_TC_OFFSET_DIV2(slice_params->slice_tc_offset_div2) |
> 	      VE_DEC_H265_DEC_SLICE_HDR_INFO1_SLICE_BETA_OFFSET_DIV2(slice_params->slice_beta_offset_div2) |
>-	      VE_DEC_H265_DEC_SLICE_HDR_INFO1_SLICE_POC_BIGEST_IN_RPS_ST(slice_params->num_rps_poc_st_curr_after == 0) |
>+	      VE_DEC_H265_DEC_SLICE_HDR_INFO1_SLICE_POC_BIGEST_IN_RPS_ST(decode_params->num_poc_st_curr_after == 0) |
> 	      VE_DEC_H265_DEC_SLICE_HDR_INFO1_SLICE_CR_QP_OFFSET(slice_params->slice_cr_qp_offset) |
> 	      VE_DEC_H265_DEC_SLICE_HDR_INFO1_SLICE_CB_QP_OFFSET(slice_params->slice_cb_qp_offset) |
> 	      VE_DEC_H265_DEC_SLICE_HDR_INFO1_SLICE_QP_DELTA(slice_params->slice_qp_delta);
>@@ -527,8 +529,8 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
> 	cedrus_write(dev, VE_DEC_H265_NEIGHBOR_INFO_ADDR, reg);
> 
> 	/* Write decoded picture buffer in pic list. */
>-	cedrus_h265_frame_info_write_dpb(ctx, slice_params->dpb,
>-					 slice_params->num_active_dpb_entries);
>+	cedrus_h265_frame_info_write_dpb(ctx, decode_params->dpb,
>+					 decode_params->num_active_dpb_entries);
> 
> 	/* Output frame. */
> 
>@@ -545,7 +547,7 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
> 
> 	/* Reference picture list 0 (for P/B frames). */
> 	if (slice_params->slice_type != V4L2_HEVC_SLICE_TYPE_I) {
>-		cedrus_h265_ref_pic_list_write(dev, slice_params->dpb,
>+		cedrus_h265_ref_pic_list_write(dev, decode_params->dpb,
> 					       slice_params->ref_idx_l0,
> 					       slice_params->num_ref_idx_l0_active_minus1 + 1,
> 					       VE_DEC_H265_SRAM_OFFSET_REF_PIC_LIST0);
>@@ -564,7 +566,7 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
> 
> 	/* Reference picture list 1 (for B frames). */
> 	if (slice_params->slice_type == V4L2_HEVC_SLICE_TYPE_B) {
>-		cedrus_h265_ref_pic_list_write(dev, slice_params->dpb,
>+		cedrus_h265_ref_pic_list_write(dev, decode_params->dpb,
> 					       slice_params->ref_idx_l1,
> 					       slice_params->num_ref_idx_l1_active_minus1 + 1,
> 					       VE_DEC_H265_SRAM_OFFSET_REF_PIC_LIST1);
>diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
>index 245052c15864..e53666a1127f 100644
>--- a/include/media/hevc-ctrls.h
>+++ b/include/media/hevc-ctrls.h
>@@ -19,6 +19,7 @@
> #define V4L2_CID_MPEG_VIDEO_HEVC_SPS		(V4L2_CID_CODEC_BASE + 1008)
> #define V4L2_CID_MPEG_VIDEO_HEVC_PPS		(V4L2_CID_CODEC_BASE + 1009)
> #define V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS	(V4L2_CID_CODEC_BASE + 1010)
>+#define V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS	(V4L2_CID_CODEC_BASE + 1012)
> #define V4L2_CID_MPEG_VIDEO_HEVC_DECODE_MODE	(V4L2_CID_CODEC_BASE + 1015)
> #define V4L2_CID_MPEG_VIDEO_HEVC_START_CODE	(V4L2_CID_CODEC_BASE + 1016)
> 
>@@ -26,6 +27,7 @@
> #define V4L2_CTRL_TYPE_HEVC_SPS 0x0120
> #define V4L2_CTRL_TYPE_HEVC_PPS 0x0121
> #define V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS 0x0122
>+#define V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS 0x0124
> 
> enum v4l2_mpeg_video_hevc_decode_mode {
> 	V4L2_MPEG_VIDEO_HEVC_DECODE_MODE_SLICE_BASED,
>@@ -195,18 +197,10 @@ struct v4l2_ctrl_hevc_slice_params {
> 	__u8	pic_struct;
> 
> 	/* ISO/IEC 23008-2, ITU-T Rec. H.265: General slice segment header */
>-	__u8	num_active_dpb_entries;
> 	__u8	ref_idx_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> 	__u8	ref_idx_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> 
>-	__u8	num_rps_poc_st_curr_before;
>-	__u8	num_rps_poc_st_curr_after;
>-	__u8	num_rps_poc_lt_curr;
>-
>-	__u8	padding;
>-
>-	/* ISO/IEC 23008-2, ITU-T Rec. H.265: General slice segment header */
>-	struct v4l2_hevc_dpb_entry dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
>+	__u8	padding[5];
> 
> 	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Weighted prediction parameter */
> 	struct v4l2_hevc_pred_weight_table pred_weight_table;
>@@ -214,4 +208,21 @@ struct v4l2_ctrl_hevc_slice_params {
> 	__u64	flags;
> };
> 
>+#define V4L2_HEVC_DECODE_PARAM_FLAG_IRAP_PIC		0x1
>+#define V4L2_HEVC_DECODE_PARAM_FLAG_IDR_PIC		0x2
>+#define V4L2_HEVC_DECODE_PARAM_FLAG_NO_OUTPUT_OF_PRIOR  0x4
>+
>+struct v4l2_ctrl_hevc_decode_params {
>+	__s32	pic_order_cnt_val;
>+	__u8	num_active_dpb_entries;
>+	struct	v4l2_hevc_dpb_entry dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
>+	__u8	num_poc_st_curr_before;
>+	__u8	num_poc_st_curr_after;
>+	__u8	num_poc_lt_curr;
>+	__u8	poc_st_curr_before[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
>+	__u8	poc_st_curr_after[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
>+	__u8	poc_lt_curr[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
>+	__u64	flags;
>+};
>+
> #endif

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
