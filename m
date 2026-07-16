Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C5F0C4450A
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 11:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xVaI95zolitzSvYjVMeR2E+xQt77huvIE3zgO5foTwU=; b=TF0zYFL+p8I+3c
	MfFKVDtTbIMHvcBwYDI5i1CaWQjSyHEadSX33A1rC26Blx6NULq3P1ladvBXXO17rH1pF+jw74rxf
	l1hq1WLA7FClRPZ2cG7FRDy42Qf8HgbKTmD2bL2gssxq7aDvycawP+KKjKYZQODLTbbQtvqZ/k2pO
	mDJUR1Czz5i5AVfiXa+kN0tYGrF9eXx/QQtCz/2r29L8B0vBMgp9YDu9QWVvVkia1FnaJlnfDoePn
	12gjugvUhwYdE0pi8rC3N4amP4mmljQeP+r77oC92efoT6Kp/3TfvcI2VxkVs69gkwnrp4Pj88l2h
	Bu0Whil85LSxiDbjTO4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkKJB-0000000H8HA-1axb;
	Thu, 16 Jul 2026 11:31:17 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkKJ9-0000000H8FZ-09bU
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 11:31:16 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-47c2ae992beso396760f8f.2
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jul 2026 04:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784201473; x=1784806273; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=e5CmSTYkwSFknR5AGKkjqSMNuhrUCH0vfnwLK+Jw0JU=;
        b=Zwm7VJFZmJ8BZrOB4PGceIFeUu1HqvjdtBt7zxwQQ2UKuj5fkeslM7ijiF6f0yoDlm
         CwgG8UK4dyBHx9/ki7w+hzFBz28Zlt6WURPjxN7JkpS+L9arJHE+5dSw+/CfsiRlXnLs
         owvDRJi5D2pmhUZ3kUjIbfrWsR0eyBGCIdx4+ywnegTosL0JdrdnyunzlSRj/XJ29sC/
         yQI2sY1sbmCXwWAbl8vTv4mEEaY81S+0cZbJ0Zkb2LNUqG3usvhWRwsqIBcL4S6awMIO
         ACz8JCD8I85fmaDzqXW8rb7+60egslekAW59B0BrUJsyGqXTOINmhVl29QVGoWL65Xyf
         TZkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784201473; x=1784806273;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=e5CmSTYkwSFknR5AGKkjqSMNuhrUCH0vfnwLK+Jw0JU=;
        b=MsZtdLSxTMyllO4s+Yy2sElObpScun+34MlBBAj7oRorpxD4ic1eSKEfCN6OVRbr3Y
         PqbRVLn5xxt/3RSrYSbuFQ19vGhbJAdvE+n0R9z7DbhVcRUZYoTUC1BPWHJ2sLOrZXIH
         dNcApbmVYFrzwaHFeHOMjSnDfR8KXPN3SoIEHAiDsOxoagMMEQy22jfjt70c4Fbax7hb
         xTh/uIS95elhT4rWWTfrPa6j2/Uh33iTHq4727MHmJPpgOr0SNzt1GjryMDK6EURHYqQ
         EDpz6DcumG9mm57fR0ZYteGQPgvTQg9BRQY84KOk/mxNCQTaD/IWqxDcX9Rd5we0wJdd
         EIhw==
X-Forwarded-Encrypted: i=1; AHgh+RpBZPqAiZuB0wrvlD0wqwU24N/y9DVhZ6i9J4mcddZtfP7yYxAqF45xIY2IxZikQYKnFtGx5eFy1zPprsR9PQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyFDroMqyma5ysiRZBrOXZnlgIhi3WYJWy9NgtZ0VE4LzztlOhv
	jIdAX7EcX4RNfusz5ILgD2YYAWJLZuqE5XbyczpGyG6zeid5u8Qe7mIj
X-Gm-Gg: AfdE7ckEDgXMEv9xgnpD9/R+nj7BLCD+DfLG92N69ZLfCUviRXZJ44Gc5zjP/hdkPtI
	SprOFM3+z0nCd7BpnapYI48EokYL9V6a1h2FDE2nHrFHhljec/zRVF2Z/k4vKo+ooe2uQjtjj/p
	7R2SRHExrbbi7SiMP50Sc4yxzu0vcfiThB85jy4fi3psI1w3yXs6Yy0g+GWwDaZ2+1ZyBvGhxNm
	IQ9fveZxek072QE4MMmpmDM28U3/xU5d7TFN7lW7gsmra0DR7uqmL5lDdCyhUn0NLYy4riRsorY
	D7U/2VPETQi7xcBQft9V/fuDiLUskv0y7nfsddKtdJV94n6nFDmdonLMTqecLsuJ8Asdu5IrHco
	CLafXX3oi1XZyTYWb+64nnV1b2DpMKVa7CCGy3436ADDDXRUGjP+qeQF1SPIXWnTEj8GRmxh0qO
	BPhxCZ1mLYG3uBhWNFRQ/dYFQLCVTBFQtcyaN3f3/pupYPtnH6HrGYcgXbokfitJlXv9c3ErHHI
	w9NAVs9Mzo=
X-Received: by 2002:a05:6000:4285:b0:473:aed9:ef1c with SMTP id ffacd0b85a97d-47f2dce2d29mr13817474f8f.7.1784201472578;
        Thu, 16 Jul 2026 04:31:12 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8DDB00EEA7E4D0825D1D4E.dsl.pool.telekom.hu. [2001:4c4e:1b8d:db00:eea7:e4d0:825d:1d4e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f4634e0e4sm25222130f8f.4.2026.07.16.04.31.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2026 04:31:12 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH] drm/rockchip: vop2: add COLOR_ENCODING and COLOR_RANGE plane properties
Date: Thu, 16 Jul 2026 13:30:24 +0200
Message-ID: <20260716113024.15357-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_043115_100719_641AA8D9 
X-CRM114-Status: GOOD (  15.16  )
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

The VOP2 windows have a YCbCr to RGB conversion block whose coefficient
matrix is selected by a per-window CSC mode field, with hardware support
for BT.601, BT.709 (both limited range) and BT.2020, plus a BT.601 full
range mode. So far the driver hardcodes this to BT.709 limited range for
every YUV plane, so BT.601 (SD) and BT.2020 content is converted with
the wrong matrix.

Expose the standard COLOR_ENCODING and COLOR_RANGE plane properties and
program the window CSC mode from them, so userspace can request the
matrix matching the framebuffer. The default stays BT.709 limited range,
which matches the previous behaviour. The hardware has no full range
mode for the BT.709 and BT.2020 encodings, so that combination is
rejected in the plane atomic check.

Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 40 +++++++++++++++++++-
 1 file changed, 38 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 4cce3e3..22e056b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -667,6 +667,22 @@ static int vop2_convert_csc_mode(int csc_mode)
 	}
 }
 
+static int vop2_convert_color_encoding(enum drm_color_encoding color_encoding,
+				       enum drm_color_range color_range)
+{
+	bool full_range = color_range == DRM_COLOR_YCBCR_FULL_RANGE;
+
+	switch (color_encoding) {
+	case DRM_COLOR_YCBCR_BT601:
+		return full_range ? CSC_BT601F : CSC_BT601L;
+	case DRM_COLOR_YCBCR_BT2020:
+		return CSC_BT2020L;
+	case DRM_COLOR_YCBCR_BT709:
+	default:
+		return CSC_BT709L;
+	}
+}
+
 /*
  * colorspace path:
  *      Input        Win csc                     Output
@@ -707,7 +723,6 @@ static void vop2_setup_csc_mode(struct vop2_video_port *vp,
 	struct rockchip_crtc_state *vcstate = to_rockchip_crtc_state(vp->crtc.state);
 	int is_input_yuv = pstate->fb->format->is_yuv;
 	int is_output_yuv = is_yuv_output(vcstate->bus_format);
-	int input_csc = V4L2_COLORSPACE_DEFAULT;
 	int output_csc = vcstate->color_space;
 	bool r2y_en, y2r_en;
 	int csc_mode;
@@ -715,7 +730,8 @@ static void vop2_setup_csc_mode(struct vop2_video_port *vp,
 	if (is_input_yuv && !is_output_yuv) {
 		y2r_en = true;
 		r2y_en = false;
-		csc_mode = vop2_convert_csc_mode(input_csc);
+		csc_mode = vop2_convert_color_encoding(pstate->color_encoding,
+						       pstate->color_range);
 	} else if (!is_input_yuv && is_output_yuv) {
 		y2r_en = false;
 		r2y_en = true;
@@ -1109,6 +1125,18 @@ static int vop2_plane_atomic_check(struct drm_plane *plane,
 	if (WARN_ON(format < 0))
 		return format;
 
+	/*
+	 * The window CSC hardware has no full range mode for the BT.709 and
+	 * BT.2020 encodings, so reject that combination.
+	 */
+	if (fb->format->is_yuv &&
+	    pstate->color_range == DRM_COLOR_YCBCR_FULL_RANGE &&
+	    pstate->color_encoding != DRM_COLOR_YCBCR_BT601) {
+		drm_dbg_kms(vop2->drm,
+			    "Full range is only supported with BT.601 encoding\n");
+		return -EINVAL;
+	}
+
 	/* Co-ordinates have now been clipped */
 	src_x = src->x1 >> 16;
 	src_w = drm_rect_width(src) >> 16;
@@ -2472,6 +2500,14 @@ static int vop2_plane_init(struct vop2 *vop2, struct vop2_win *win,
 	drm_plane_create_blend_mode_property(&win->base, blend_caps);
 	drm_plane_create_zpos_property(&win->base, win->win_id, 0,
 				       vop2->registered_num_wins - 1);
+	drm_plane_create_color_properties(&win->base,
+					  BIT(DRM_COLOR_YCBCR_BT601) |
+					  BIT(DRM_COLOR_YCBCR_BT709) |
+					  BIT(DRM_COLOR_YCBCR_BT2020),
+					  BIT(DRM_COLOR_YCBCR_LIMITED_RANGE) |
+					  BIT(DRM_COLOR_YCBCR_FULL_RANGE),
+					  DRM_COLOR_YCBCR_BT709,
+					  DRM_COLOR_YCBCR_LIMITED_RANGE);
 
 	return 0;
 }
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
