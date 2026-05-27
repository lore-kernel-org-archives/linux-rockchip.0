Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6795CD6E48
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 May 2026 19:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pz862tnFgWuA38U5hMVEiS+C3g9g7Z4Xs/0oI26lXFk=; b=OGOQr/EWuor2wl
	j2RkHLTwXLquhfhZef1nR+CshOhG4GGVmFTIZ2LoHpxEcQ2jiuYAZS9BdBlyE7TEyqAxzQx4Ib2QF
	igyXM5Y8w8R2n7cQICIQ1BLc3oEg+O1YEJj2RJetjFJvdxWu6N3aKWdfFLZwA3J3XZp/nqGMYocsE
	8kEqYtwFWnr0yE1+LDpldTQtOo8xjTRNzDUNtXukcnfrDOyvy1BD47dOlDKIhW9h/ks2xa/Ux20nJ
	NwjBf67EM35BqIwZVI9Xp5HMXV4eP3535GSg3x3LCA67x7fLFxweZp6+wEFJ6oeZm9+H4VRTScJu1
	7KAn1zFL+u4N8KfScq4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSKEp-00000004gJP-2XEe;
	Wed, 27 May 2026 19:48:23 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSKEm-00000004gGb-0j30
	for linux-rockchip@lists.infradead.org;
	Wed, 27 May 2026 19:48:22 +0000
Received: by mail-qk1-x730.google.com with SMTP id af79cd13be357-911449d9d03so1360711285a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 27 May 2026 12:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779911299; x=1780516099; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PvwC2v7tf0bP6Dcjl3lKTCXZwlNlpqu4CB+86cy9Tlo=;
        b=eiiUuOUlP/1++E5VDXerFnI21EOR4tWyI6WyfnBeU3q1ZguChyXAkRQ9w2lC2MSE2W
         bxcrycbk1RCbbpeF1Nx6DYzYO66D307QTYHP4Y40DdDiBVpBFLf3O6Vs2CETB9lfWSJ8
         TuhEKsgT+3FGCjBrmjF+szFkEy89PneYvxrYAwhhW/Xdz63X5u9od2njEzajKzaZCeJN
         QTJJDeYqo0RjfZhjzwccXAzb+pKyGkvP8bJ7O+lyd7cw5mbT7KgubCHZS7eb+dJ3dBDh
         FTNBXzDBLd2AFRtdaMSgQnDMbhwPovrYw5jpowQuJKCL7Y3XJR8iydILrrRAlc5lArW9
         oKLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779911299; x=1780516099;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PvwC2v7tf0bP6Dcjl3lKTCXZwlNlpqu4CB+86cy9Tlo=;
        b=q1M3F70jSC2SU7K/KoMHnsFm6AMud5oY4jREkFU7fJeiNwDljjkNp4pwZqHYWMJb0k
         Zi/iWJVCIFftneAtIDzDrh1CzTqFO6iXs9SfDA9/BJrCDjFi2wKghqWCIFVeDjz6t5eq
         RMgp/Rnv/hWdfso5RHAZ1CxVmQ6UdSAJBvkBe7KFKOue5m+7iwXRW0ZA4O8rzwz8imsh
         G/HD9fNQrHcVpFJcjVKTqvGCI8MwcVNTb6nAWttA3Btw1vkj6D3FqRUKa0U6R6ec28rs
         Q2vSsDul9G3SNxgzXg1RFffUfwnRUEha35iUGD2Vd4Hhby/B1Q5oucWvqaXVogOpw2j0
         ZKJg==
X-Forwarded-Encrypted: i=1; AFNElJ9igdyERecfEXjfhwwRiZKByLeVgW+XYFviBsuH2ofpJaxwD+fv89xJ9Uvhj8PEpeu5hUSCyVXUvnO/mWHkPQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyirFLOFJGeSURMhV8fWmTsPbSkf87pbBZy/ysKILNTEAtH3Z5a
	chK9IJIVICPuGPSz94rnTSdxEFqlQxaxANtjbesXlV0o0f4OpR72oul4
X-Gm-Gg: Acq92OFzn4tDBHfXjW/DLTIb/6khS3dJHHOU7S3yGlFQLnuVPlNSsAiOQtkxBRPMsnh
	eCJo1xVRtktbMXwI9OYt4+BsUeU5hvaWLcG13vv/rQh39kDK9RVNAnLCYDq5n+mQBgMuXSurqZm
	7kAgv3Lv2dkaB4MXBM1fylbN/9ySWS/7kTjC0e6ZB1IT72FwqGjVBcpAq+Yxq8fTnoqdpmRobGh
	CW8XJC4zCOodCa5qWzJVahW0VAUxNhwUv3Snk34DmFfHhAVuYq/b/1AXNbGWuPSNoKK2wgyQB+n
	mqNpuUGT7+9kLUx63rmBYYexO4kh60SFgjxYBX4DeQ5KTlGy3XCb5ZIgHqAia15XFvW6/dRYaUm
	BiZCKvT4uIBlBzCM5EVPqi+m4IZYG1/csADnzNNqYtRJ9Q97l88/Pri+isa38+6XPeMBtZIJhrR
	GMONifsfFqOL4CLP9qNjiC0mUREsaNL2nPZUM+Ofhy+F/ib9r+AdOdw3m+qPlTkTg2HTiF8bPXj
	J3cHONUS25h6wlKMV8fJWxE3wVz/GRb1idkrRvRYJpSjzUGRDIjww==
X-Received: by 2002:a05:620a:2b45:b0:914:da39:eadb with SMTP id af79cd13be357-914da39ee49mr2225042385a.12.1779911298765;
        Wed, 27 May 2026 12:48:18 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-914f87017a0sm564942385a.15.2026.05.27.12.48.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2026 12:48:18 -0700 (PDT)
From: Michael Bommarito <michael.bommarito@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Hans Verkuil <hverkuil@kernel.org>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH v2 2/3] media: v4l2-ctrls: validate HEVC EXT SPS RPS counts
Date: Wed, 27 May 2026 15:47:36 -0400
Message-ID: <20260527194737.1999409-3-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260527194737.1999409-1-michael.bommarito@gmail.com>
References: <20260513181922.2075438-1-michael.bommarito@gmail.com>
 <20260527194737.1999409-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_124820_471635_B4D4E629 
X-CRM114-Status: GOOD (  12.04  )
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

The HEVC SPS control carries the short-term and long-term RPS counts
that decoder drivers use to walk the matching EXT SPS dynamic arrays.
Reject SPS values that exceed the HEVC limits of 64 short-term sets and
32 long-term references so drivers cannot later index beyond those
controls.

Also reject EXT SPS ST RPS entries whose negative or positive picture
counts exceed the 16-entry arrays, or whose combined delta-POC count
exceeds the HEVC DPB maximum.

Fixes: c9a59dc2acc7 ("media: rkvdec: Add HEVC support for the VDPU381 variant")
Cc: stable@vger.kernel.org
Suggested-by: Detlev Casanova <detlev.casanova@collabora.com>
Assisted-by: Claude:claude-opus-4-7
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
---
 drivers/media/v4l2-core/v4l2-ctrls-core.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls-core.c b/drivers/media/v4l2-core/v4l2-ctrls-core.c
index 6b375720e395c..a1d773e5de20c 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls-core.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls-core.c
@@ -16,6 +16,9 @@
 
 static const union v4l2_ctrl_ptr ptr_null;
 
+#define V4L2_HEVC_MAX_SHORT_TERM_REF_PIC_SETS	64
+#define V4L2_HEVC_MAX_LONG_TERM_REF_PICS_SPS	32
+
 static void fill_event(struct v4l2_event *ev, struct v4l2_ctrl *ctrl,
 		       u32 changes)
 {
@@ -1213,6 +1216,10 @@ static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
 	case V4L2_CTRL_TYPE_HEVC_SPS:
 		p_hevc_sps = p;
 
+		if (p_hevc_sps->num_short_term_ref_pic_sets >
+		    V4L2_HEVC_MAX_SHORT_TERM_REF_PIC_SETS)
+			return -EINVAL;
+
 		if (!(p_hevc_sps->flags & V4L2_HEVC_SPS_FLAG_PCM_ENABLED)) {
 			p_hevc_sps->pcm_sample_bit_depth_luma_minus1 = 0;
 			p_hevc_sps->pcm_sample_bit_depth_chroma_minus1 = 0;
@@ -1223,6 +1230,9 @@ static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
 		if (!(p_hevc_sps->flags &
 		      V4L2_HEVC_SPS_FLAG_LONG_TERM_REF_PICS_PRESENT))
 			p_hevc_sps->num_long_term_ref_pics_sps = 0;
+		else if (p_hevc_sps->num_long_term_ref_pics_sps >
+			 V4L2_HEVC_MAX_LONG_TERM_REF_PICS_SPS)
+			return -EINVAL;
 		break;
 
 	case V4L2_CTRL_TYPE_HEVC_PPS:
@@ -1267,6 +1277,11 @@ static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
 
 		if (p_hevc_st_rps->flags & ~V4L2_HEVC_EXT_SPS_ST_RPS_FLAG_INTER_REF_PIC_SET_PRED)
 			return -EINVAL;
+		if (p_hevc_st_rps->num_negative_pics > 16 ||
+		    p_hevc_st_rps->num_positive_pics > 16 ||
+		    p_hevc_st_rps->num_negative_pics +
+		    p_hevc_st_rps->num_positive_pics > 16)
+			return -EINVAL;
 		break;
 
 	case V4L2_CTRL_TYPE_HEVC_EXT_SPS_LT_RPS:
-- 
2.53.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
