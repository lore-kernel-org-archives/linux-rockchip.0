Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E86FCD98C5
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jun 2026 13:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1EaJcbAQWxrsN0JMs6fhstJFeSziNsgAi1IbqP/h7Ls=; b=XEuiO6/mrVbl+a
	4NbchOPO5sHi16QdQTy55HxkC7Kl1rqiIBrz1d8aUxNivb6vx6CWrnzQOe4BHKKQ2WJkMqOSRnCmw
	m4MDivj/UUgQ7XBwz/gpxFg54utb2yhI/9gauU25E8k0BY/xvNwROOVaAbXfc1RqpKlA64Euu/jf6
	DOsEmWo/IYxJ8PHEtlztV9bDOMdYb0+n6LJgcMfa7s4wxLkwAjSLR9YPk16zrkN7AkhqyTGgoErFP
	lw+Sv5PFEbNRpB+CH5bhGOhI616QKKVM2foeJQ+PuQjWtd70UWSo16kZKSNLEOfzr0XGDqLtzlsoq
	ABM+jRaShUS8KvzIA/kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYkbO-0000000D0Da-2OEz;
	Sun, 14 Jun 2026 13:10:14 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYkbK-0000000D09X-12LW
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Jun 2026 13:10:11 +0000
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-915767ea2d0so200980285a.1
        for <linux-rockchip@lists.infradead.org>; Sun, 14 Jun 2026 06:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781442609; x=1782047409; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9R3ZKgrKDL3TDyGuDg2FO0n6HFt0EmJKubv/kONUNuQ=;
        b=mNFfYflRoTg80l6rK8GYy7jyf4e79l7PILILcKpRqCO1HBq7+ef4lZfoo1bmT4Ff44
         rL0sGT3I5Im3srJWAWpuwJu6gy9uE7ZnFwwFDNhBllOshiD5GIVrDoh1VMPoELDfAhey
         jW80Ysr/brY2fT0tD0uLuVwFrnpjJvrN2p8iMu75CWZ9BS2dpmfuQS5K6y4xw9+FI4nJ
         p963tC+Oip2GGZUys572cwCziST1X7pMlfjKJ8NmuCTFGpKx0SzVGPEEMAfGq9ekPrez
         tCgr+xzb/0yVwvYGa2rGiR1yQJsN2B7Hd0Lw1BZ0fH1mdH1scSg6nmmmhqK2ubWSP8MS
         i4mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781442609; x=1782047409;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9R3ZKgrKDL3TDyGuDg2FO0n6HFt0EmJKubv/kONUNuQ=;
        b=pGYlt7UI/cvAVSSndo733WzbONd/X06cJRv4QnSaJujhfWZ+f8WBC0pxXa7LRrKsdn
         fN22ORzG9edzzSWEA8YnYoCjZ7U9gRz27CAsVis72Iw7nHUdR956VRX+anLNIlczmtka
         sutttU3DVj0ArKqJ6ig+kGzp5O7lPrszzNF7AkLBTAq1PvMf5+HKCMVbJh5z4zGAs5fV
         m/9N4wyWNCDW3RQoE7ICt8AZVDYO4M7Cc9TYoM7/7poPxpIqr9xYl95hhOnJKN2MBiZv
         nQsX1uJdlXBBtq7pkBafQTQ+inPOehGU9eL7sX5d7Bn+nvl3ktlWPm+NQ5vnmAM3Agzn
         QrQQ==
X-Forwarded-Encrypted: i=1; AFNElJ+SErCIunDSvZUmIxK5wubJDsakn6mfTV6NnRJa6Op/wtKIlljqMU+vKKoWWQ9xgRYsCq2r+SJW/nvt0KX2jg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyT7S9pbTiunHJbqgPGiyb4eNO0+HL8adzA3EZ4GrDGwYUGbiZ1
	/BI2SHJ6OXhR3mdZdCMZleV6p+aQweAbqrxh7/0wyqeGVLO7lySVOHBG
X-Gm-Gg: Acq92OEX+9uHdfKCbPER1xp7Z7digEbcCfzvg8WhljgRquSEceTs/yHSpuwbHMBMrbf
	03L0fe6h8huTgW8QyYR3RYXyN3e9YXnQOK+bG47eeoNsIs4Hz4XXlcfs8bT0MDF/NpdodRBvJMc
	3JGnHb4GFO/ct3TBUeYNIy4lXHuDGH2bvkGhgJ0/EHx8adnIvutIBxry8n6S1LTRjOCdInn065s
	0l2t6c+DrkEphYpBZYIgkSIDc/E8G+uWGu8Q4wDklkF3RQWkbsYTkVWwWD6NYszg3UFzr+I0CjM
	k0lSNiwvd4aFyROGYEFSKr5/2bpscOweDAFQsU/nn1EzgorO3oghneBgmn/jluhinmsJNuawLQs
	FpU87jKfzGvsOc99NBHRHywLt2dMiIIEzvG7E299n5MIYID1ESkMgFnfHnR45Ec0lxWuE4g9Wvq
	KVlYbLVsKUcmL7rLEoSWpEy5YygAH/8rMgG3P98kF5HkK3SfZPJiTZJ1yT+dYvUfaA+XrgB/Ni0
	eOZ4CFGWrY5FilPhVWu+ptAs3bdSsYj5WSAKKlG8T0=
X-Received: by 2002:a05:620a:2992:b0:915:a82b:3e9d with SMTP id af79cd13be357-9161baf526cmr1594376285a.12.1781442608799;
        Sun, 14 Jun 2026 06:10:08 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-91619f1b400sm752878985a.15.2026.06.14.06.10.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jun 2026 06:10:08 -0700 (PDT)
From: Michael Bommarito <michael.bommarito@gmail.com>
To: Hans Verkuil <hverkuil@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Sebastian Fricke <sebastian.fricke@collabora.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Yunfei Dong <yunfei.dong@mediatek.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Heiko Stuebner <heiko@sntech.de>,
	Kees Cook <kees@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/6] media: v4l2-ctrls: validate HEVC and AV1 tile counts
Date: Sun, 14 Jun 2026 09:09:58 -0400
Message-ID: <20260614131003.2524025-2-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260614131003.2524025-1-michael.bommarito@gmail.com>
References: <20260614131003.2524025-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260614_061010_318920_B02E5118 
X-CRM114-Status: GOOD (  12.55  )
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

The stateless HEVC and AV1 controls carry tile counts that several SoC
decoder drivers consume as loop bounds when laying out fixed-size hardware
descriptor buffers, but std_validate_compound() does not bound them.

For V4L2_CTRL_TYPE_HEVC_PPS with tiling enabled, num_tile_columns_minus1
and num_tile_rows_minus1 (u8) drive loops over column_width_minus1[20] and
row_height_minus1[22]. For V4L2_CTRL_TYPE_AV1_FRAME, tile_info.tile_cols
and tile_rows (u8) bound loops over the mi_*_starts[] / *_in_sbs_minus_1[]
arrays and a zero tile_cols divides by zero. Cap both to the uAPI array
capacity and reject out-of-range values with -EINVAL.

These are active-count fields (loop bounds), so bounding them here mirrors
the existing num_active_dpb_entries check. Driver-interpreted index values
(HEVC pic_parameter_set_id, AV1 context_update_tile_id) are bounded in the
consuming drivers instead (patches 2 and 4).

Fixes: 256fa3920874 ("media: v4l: Add definitions for HEVC stateless decoding")
Fixes: 9de30f579980 ("media: Add AV1 uAPI")
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
Assisted-by: Claude:claude-opus-4-8
---
These are loop-bound counts, not per-entry index values, so bounding them
in the common path mirrors the existing num_active_dpb_entries check.

Tested with the KUnit suite in patch 6: under KASAN on x86_64 the new
checks reject the over-range HEVC/AV1 tile counts and the zero AV1
tile_cols with -EINVAL while the in-range cases still pass, on stock and
patched.

 drivers/media/v4l2-core/v4l2-ctrls-core.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls-core.c b/drivers/media/v4l2-core/v4l2-ctrls-core.c
index 6b37572..25227d9 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls-core.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls-core.c
@@ -790,10 +790,25 @@ static int validate_av1_film_grain(struct v4l2_ctrl_av1_film_grain *fg)
 	return 0;
 }
 
+static int validate_av1_tile_info(struct v4l2_av1_tile_info *t)
+{
+	/* Loop bounds and a divisor in the stateless AV1 drivers. */
+	if (t->tile_cols < 1 || t->tile_cols > V4L2_AV1_MAX_TILE_COLS)
+		return -EINVAL;
+
+	if (t->tile_rows < 1 || t->tile_rows > V4L2_AV1_MAX_TILE_ROWS)
+		return -EINVAL;
+
+	return 0;
+}
+
 static int validate_av1_frame(struct v4l2_ctrl_av1_frame *f)
 {
 	int ret = 0;
 
+	ret = validate_av1_tile_info(&f->tile_info);
+	if (ret)
+		return ret;
 	ret = validate_av1_quantization(&f->quantization);
 	if (ret)
 		return ret;
@@ -1242,6 +1257,14 @@ static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
 
 			p_hevc_pps->flags &=
 				~V4L2_HEVC_PPS_FLAG_LOOP_FILTER_ACROSS_TILES_ENABLED;
+		} else {
+			/* Loop bounds in the stateless HEVC drivers. */
+			if (p_hevc_pps->num_tile_columns_minus1 >=
+			    ARRAY_SIZE(p_hevc_pps->column_width_minus1))
+				return -EINVAL;
+			if (p_hevc_pps->num_tile_rows_minus1 >=
+			    ARRAY_SIZE(p_hevc_pps->row_height_minus1))
+				return -EINVAL;
 		}
 
 		if (p_hevc_pps->flags &
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
