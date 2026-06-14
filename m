Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C80A7CD98D8
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jun 2026 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AYGlTZCBu7uU1Qf7zI873V4uA6T09EYcqG29Ivthq2M=; b=Tcdh+ioKOGw+9r
	zwsDpg4gq01NPy1k0wPJOGuU7ZoBZ4A4x8rEES7lT+3dtpkzC9xzKRDMCv7bDq2vhxckJeo6GU4mG
	cH8qZ+hMsM3TnArJ3S9QUvJhGkksu4rMCo3B6IhG4HnpUNXHJwfJeu0thm94VmF45strFOWv98zTJ
	XAwUH2dHFr+g32R7yEYnNcvx7G7pnEzhqEd4tF17ieT1AQXABsVXSZh1uTww02fOer7CTUxa4XrB/
	Z5y5DQWykuqZM66/XKfSFwJwC+NFw0iV0QQERAWsV9wR71D5RvAx6gES/Xf6MP354Y9al2h0cd8K7
	IewgrFKSDmPs10uQo2IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYnC7-0000000D9Y5-1MnS;
	Sun, 14 Jun 2026 15:56:19 +0000
Received: from mail-qv1-xf35.google.com ([2607:f8b0:4864:20::f35])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYnC4-0000000D9Vv-00lR
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Jun 2026 15:56:17 +0000
Received: by mail-qv1-xf35.google.com with SMTP id 6a1803df08f44-8ce9df49c5fso42698356d6.1
        for <linux-rockchip@lists.infradead.org>; Sun, 14 Jun 2026 08:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781452575; x=1782057375; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0ElgwnBNirjLiswOhHY1Csa+P9LjdxoJoEu8lkda184=;
        b=N955MgIBF3k+oMtpEOQHmLM5DeVMbyrN1PeO5Z8RZ///58nstpUI8AVLArXfYwEayY
         PCWIhgvFHEIqMEzcs6zEapmQs1OpszYfvpeY0Vpf1eLCC4nV9r5iwsEh4MoigSflcVul
         E/hWF90jQ0MZq/diX5eUHBBYm2ffVCKTEnRMqYlMRPBZDZoAGMwRJ0IUiK6ZvhN61IQr
         mg22nKbdzKzzsMMLYAtN6Acm3yquxVo150yZQVVRQnvmA7Dimd38hG+oapUIW3baGJeJ
         OR5pp/qfyxUyGzhW0LmfvBOatgVED24NvsXFOqp+IL8FuQfpn4d23AhjvLGE4RK+PNFM
         /a5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781452575; x=1782057375;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0ElgwnBNirjLiswOhHY1Csa+P9LjdxoJoEu8lkda184=;
        b=OwMLoLDeQvtBcQZf8Xw30hsZNtbP3OBwU48u7MRMfjco4hqjJF40rEHcD9yRn1baER
         gQtK+hJCfbLXcjsRSSwHPlHvy11wGjBvbvNLk+dRDaJRSE6Esm3ToTh41qro9JCl1PY1
         6oWPqAoPS7QEMUlVEZOIVNPHA73lnzyiT1g0NVqRhggDPeOfi2WsasFMGFDku6PLInNw
         d40Ojyb+Yg68zN+fTj5rdiBh5BAR8IJm1PkNbCATMEU04nhDe+ggtk2i6Fj0PPJN/fDV
         PQqCiZJlx9t4HojZa3gamKmtbWS5nsijplE+gUKqEsiF3PzkGbpqREsUuiU5yrogv0e5
         Qe0A==
X-Forwarded-Encrypted: i=1; AFNElJ8WIa32avNJs5dY72EKzjpKXHHfura9qZB0jZAIQT+o6b6OOSDFWln1vHVuTe9roAfeo8yH++gDRKuIBZEJLw==@lists.infradead.org
X-Gm-Message-State: AOJu0YziDIW3xxO4nG6z4Q7qRtzoCj0t2tdaVXZnT/un747O473zuwaF
	C/RITjl0AG4jVa6OuD1ySN6GNEEYJyiHmCru0dIlkAaIVtF5WT7s42HT
X-Gm-Gg: Acq92OH4YCxys5e+Ufak4vo9NUwyRuCwWiQwgMI2vwbgiwp6nfkAuDGNpooAv4Jy+je
	klgykiSskKlFRkjlk7zfoxI+vmc3cT5t0nTrey9xR+ZLXnVeWs37mYiUgyfK030zbe8L1jawBa1
	a9MJSaCYn54bBHS3wm6O8mzlTNK7elTw0y9z+IEGi9TlwCTXwujjHExXa/+eSNUecmViZNo5/8P
	CbYaZ/x/Os4yN0bYCeIBt72uLocjUgY8/cIgB6St3vKM9h3rPlfz07aSyxrtNzycAIJaOGN80Q4
	9AUZYj34idJF+uXJd2R0EfjcszuUjzowUFOgZL6gHdO6+nZ5jFN157wqZwRYMaZxUOxyu220w4Y
	afOjpwiylKN9GVCPOJkidgkj7U+fHLlcfrmbmAFcdx8hfYfNEm+BYlk4QIY35QYbhRZxvP2p1o7
	aA0wU1dQe2cnx+v5ZZKIJShaN4ORKaqdQb56e44I3HYpI7b9iroLV569M8UTURLcSbVU7JFRAVY
	JbCJ9BNOrZCjhjhX3Em6CBivWlunkIX/z7YVpLxA3g=
X-Received: by 2002:a05:6214:3993:b0:8ce:b018:89ff with SMTP id 6a1803df08f44-8d44f8fc7a0mr121880556d6.36.1781452574638;
        Sun, 14 Jun 2026 08:56:14 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8d30522cbeasm82008446d6.44.2026.06.14.08.56.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jun 2026 08:56:14 -0700 (PDT)
From: Michael Bommarito <michael.bommarito@gmail.com>
To: Hans Verkuil <hverkuil@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>
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
Subject: [PATCH v2 1/6] media: v4l2-ctrls: validate HEVC and AV1 tile counts
Date: Sun, 14 Jun 2026 11:56:03 -0400
Message-ID: <20260614155609.3107600-2-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260614155609.3107600-1-michael.bommarito@gmail.com>
References: <20260614155609.3107600-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260614_085616_081457_367E8FC7 
X-CRM114-Status: GOOD (  13.18  )
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
arrays. Reject counts beyond the uAPI array capacity with -EINVAL.

These are active-count fields (loop bounds), so bounding the upper limit
here mirrors the existing num_active_dpb_entries check. Only the upper
bound is enforced; a zero tile count is left to the consuming driver, so
the zero-initialised AV1 frame control that existing userspace submits is
not rejected, and the AV1 divisor (context_update_tile_id / tile_cols) is
guarded where it is used in the rockchip decoder (patch 4).

Driver-interpreted index values (HEVC pic_parameter_set_id, AV1
context_update_tile_id) are bounded in the consuming drivers instead
(patches 2 and 4).

Fixes: 256fa3920874 ("media: v4l: Add definitions for HEVC stateless decoding")
Fixes: 9de30f579980 ("media: Add AV1 uAPI")
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
Assisted-by: Claude:claude-opus-4-8
---
 drivers/media/v4l2-core/v4l2-ctrls-core.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls-core.c b/drivers/media/v4l2-core/v4l2-ctrls-core.c
index 6b375720e395c..58e2eb7002a19 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls-core.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls-core.c
@@ -790,10 +790,25 @@ static int validate_av1_film_grain(struct v4l2_ctrl_av1_film_grain *fg)
 	return 0;
 }
 
+static int validate_av1_tile_info(struct v4l2_av1_tile_info *t)
+{
+	/* Loop bounds in the stateless AV1 drivers. */
+	if (t->tile_cols > V4L2_AV1_MAX_TILE_COLS)
+		return -EINVAL;
+
+	if (t->tile_rows > V4L2_AV1_MAX_TILE_ROWS)
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
