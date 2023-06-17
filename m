Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8CDDEB64D9
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jun 2023 22:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KVz004JbTfNoLY88B8qDE33ycijf9zTe9dYSZq63DQM=; b=SRjKTu1ewvbbdNm6wMlXwx7gG0
	a2/MaFA4wVIATBM93RnElFq3auEVWPBV04InOwhFNlYjCt2mH7mYsFOiUqnMlIb2gFmjWTZEttgYE
	/vVu/DmQsXEI1xN75+mPnT+eoqIc+bnF/sY7+dkvOA8rW1P7HLXevp5+CX3DRwPPfJqHyjyLTNlPU
	S3A1hHdFbljQS3B8unGGT4qn1TXxbo9SghkAXuXItCsvzMY8LVcgXHEcwI0wPRlWMxsymOi4YjJAS
	Mf1rVi1ARE731pf2Vb4bzTcpcRfJjh4cJH5XEMHowg0P4LRCSR7gsDbigXZm8jDM66XVJn3RXrKLC
	uQ0EwCAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAeKM-004V5x-30;
	Sat, 17 Jun 2023 22:23:26 +0000
Received: from s.wrqvwxzv.outbound-mail.sendgrid.net ([149.72.154.232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAeKC-004V2k-0w
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Jun 2023 22:23:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=knW5hfOdRlNb6ad4KcvWMFXEOrQEnk5DYqTPo5HmSZE=;
	b=Lcs4O2j3t0Zya8gHh1y5Xz1vPnnl19E8vEuvH6W8bEEnX+iTrflGvDeo1iZzMttdvVL+
	98xgNX3tnCR8MrbFidbigyG/aE4uhdKJDEp0YEq++j+djJJlE/DWVKJ4NczNF+N/3DFhyw
	VtLIdf3jFLfBo4Uzv6ppFPZdBJBEDPq1fsZAcxAu66me8wCPAxwun24TTtffKiNE8jqg39
	amqDdIg9yeNRgixtwQ45aS3cCHoKVNRmlGPfRK65vQ6RswoMdT5lVyUIVkstnKvLcAXpkB
	//k+G6QHah1WTLcZ0Z1XQL6P2OivTVqscp00Gi5avguR1rdChqWbf+40lYB4AvQg==
Received: by filterdrecv-66949dbc98-dbt7m with SMTP id filterdrecv-66949dbc98-dbt7m-1-648E3250-7
        2023-06-17 22:23:12.210230445 +0000 UTC m=+3278605.771189366
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-1 (SG)
	with ESMTP
	id 4XYLAl6XSH2KsNiMfk1_gA
	Sat, 17 Jun 2023 22:23:12.024 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v3 1/2] drm/fourcc: Add NV20 and NV30 YUV formats
Date: Sat, 17 Jun 2023 22:23:12 +0000 (UTC)
Message-Id: <20230617222307.3145714-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230617222307.3145714-1-jonas@kwiboo.se>
References: <20230617222307.3145714-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h=2FnEEJCFmPMWB71Ft?=
 =?us-ascii?Q?+V7t0A=2FzSB2WM2Yr+B+lLlEGl35eOZtuuZWJsdu?=
 =?us-ascii?Q?F1uSpyKMXxuqrraykNbNcSNPUH9XsC2f+e9Gj6X?=
 =?us-ascii?Q?+Ev4TJ5ld2g=2FosOsQHfO5QMiljk2lZDW67c84dA?=
 =?us-ascii?Q?sZRj6Eye9DBE6AT6fnrDxTeecHj0YkIp38ok6eE?=
 =?us-ascii?Q?c5BMSDlayXwb6Wm4q851Q=3D=3D?=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
	<mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
	<airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Sandy Huang
	<hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_152316_414666_8729688F 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
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

DRM_FORMAT_NV20 and DRM_FORMAT_NV30 formats is the 2x1 and non-subsampled
variant of NV15, a 10-bit 2-plane YUV format that has no padding between
components. Instead, luminance and chrominance samples are grouped into 4s
so that each group is packed into an integer number of bytes:

YYYY = UVUV = 4 * 10 bits = 40 bits = 5 bytes

The '20' and '30' suffix refers to the optimum effective bits per pixel
which is achieved when the total number of luminance samples is a multiple
of 4.

V2: Added NV30 format

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Reviewed-by: Sandy Huang <hjc@rock-chips.com>
---
 drivers/gpu/drm/drm_fourcc.c  | 8 ++++++++
 include/uapi/drm/drm_fourcc.h | 2 ++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/drm_fourcc.c b/drivers/gpu/drm/drm_fourcc.c
index 0f17dfa8702b..193cf8ed7912 100644
--- a/drivers/gpu/drm/drm_fourcc.c
+++ b/drivers/gpu/drm/drm_fourcc.c
@@ -299,6 +299,14 @@ const struct drm_format_info *__drm_format_info(u32 format)
 		  .num_planes = 2, .char_per_block = { 5, 5, 0 },
 		  .block_w = { 4, 2, 0 }, .block_h = { 1, 1, 0 }, .hsub = 2,
 		  .vsub = 2, .is_yuv = true },
+		{ .format = DRM_FORMAT_NV20,		.depth = 0,
+		  .num_planes = 2, .char_per_block = { 5, 5, 0 },
+		  .block_w = { 4, 2, 0 }, .block_h = { 1, 1, 0 }, .hsub = 2,
+		  .vsub = 1, .is_yuv = true },
+		{ .format = DRM_FORMAT_NV30,		.depth = 0,
+		  .num_planes = 2, .char_per_block = { 5, 5, 0 },
+		  .block_w = { 4, 2, 0 }, .block_h = { 1, 1, 0 }, .hsub = 1,
+		  .vsub = 1, .is_yuv = true },
 		{ .format = DRM_FORMAT_Q410,		.depth = 0,
 		  .num_planes = 3, .char_per_block = { 2, 2, 2 },
 		  .block_w = { 1, 1, 1 }, .block_h = { 1, 1, 1 }, .hsub = 1,
diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
index 8db7fd3f743e..3151f1fc7ebb 100644
--- a/include/uapi/drm/drm_fourcc.h
+++ b/include/uapi/drm/drm_fourcc.h
@@ -323,6 +323,8 @@ extern "C" {
  * index 1 = Cr:Cb plane, [39:0] Cr1:Cb1:Cr0:Cb0 little endian
  */
 #define DRM_FORMAT_NV15		fourcc_code('N', 'V', '1', '5') /* 2x2 subsampled Cr:Cb plane */
+#define DRM_FORMAT_NV20		fourcc_code('N', 'V', '2', '0') /* 2x1 subsampled Cr:Cb plane */
+#define DRM_FORMAT_NV30		fourcc_code('N', 'V', '3', '0') /* non-subsampled Cr:Cb plane */
 
 /*
  * 2 plane YCbCr MSB aligned
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
