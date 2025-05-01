Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49548C3ABA3
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 May 2025 21:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PLW6yx61oOnw5cThqWekzywuwLImP8beRuhCasbDVNg=; b=R32vj9fRbqnKS/
	jrCPmoW8onl3k84utuk5/craCUhAHzRQv4r44XkRF+JY6cGjN2fVUrYQMjyfEIOxEbFKK6xgra2gU
	frOEOjobB5F0ox6qm/YUReYHbR1TjlMw+TBJCdrZNLpJGdbPR1Xxwsg9jbSOslC+atoZN1E8CTOrp
	7pKRn31/v9+0ZxgrkzvqPfpM4KG4PrjzpPOIec4tI734HvajjjyXggmK+fBBfHI7BdOnCwVx03qwE
	wkUZE2drc7Fl7goFAuGGtRseJOEOWYLGDmhb2V8QVjRzDOWPZCbnAItNtl2e8NqajUuIa35QzRgw1
	T8A0zB3D0zwaxdq/DOWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAb2F-0000000GpYb-1Ub5;
	Thu, 01 May 2025 21:01:35 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAa0x-0000000GX45-0eqK
	for linux-rockchip@lists.infradead.org;
	Thu, 01 May 2025 19:56:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1746129368;
	bh=gtk1QnuiSm9DDJRBjqvAuyrPvfx4yN/5r3Y/w5gX+7Y=;
	h=From:Subject:Date:To:Cc:From;
	b=J18CLTCmB5N+P+Env6t9Ppb/RvvusAmBRn0wX1RpAWc7n+c3zUwwu3TCmhlhakpcW
	 HIGtnlTkhlkcvqeGg4SGUAAZw/jAtssOyzEUC/O8ViCXZ8/m75SdPgYoIGbZ0LG8JL
	 uNjAySMsuHpk+wlqLkj//y9DBX5Ox3xhsYobJ/IvfDjTGcyR+dR9ukMspD2rhzer+Q
	 sjpa7wVNSfYoZCzQUURLhpUSCO4+rRP8Gxrk86AloJO7h0bl2ZPSvMdR+8+Edq0Zre
	 p2DBj5FSi0UvcaTU4woFJccPADCgMS0+IjhCCqwx166rAq+ushpQ1tvH8jJrPT+o5a
	 yQYkqobzahHYg==
Received: from [192.168.13.3] (unknown [IPv6:2606:6d00:17:8242::c73])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 468BE17E02BE;
	Thu,  1 May 2025 21:56:07 +0200 (CEST)
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Subject: [PATCH v10 0/4] media: rkvdec: Add H.264 High 10 and 4:2:2 profile
 support
Date: Thu, 01 May 2025 15:55:46 -0400
Message-Id: <20250501-b4-rkvdec_h264_high10_and_422_support-v10-0-c380ba452108@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMLRE2gC/53NQQ+CIBjG8a/iOEcDRMVOfY/WGOKrsEwcGKs5v
 3vo1qVT6/g8h/9vQQG8hYBO2YI8RBusG9Og5JAhbdTYA7ZtOhAjrCCclrjh2N9iC1oaVnJpbG8
 okWpsJWdMhsc0OT/jXFBVcVpQWjKUWpOHzj536HJN29gwO//a3Si29yNUPwpRYII5yzsgigFUc
 NZuGFTjvDpqd0ebEuu/ynUqExBVLrRueNl8l9d1fQPdbBpKOQEAAA==
X-Change-ID: 20250416-b4-rkvdec_h264_high10_and_422_support-381a74151162
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, kernel@collabora.com, 
 Sebastian Fricke <sebastian.fricke@collabora.com>, 
 Jonas Karlman <jonas@kwiboo.se>, 
 Christopher Obbard <christopher.obbard@linaro.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250501_125611_357895_91882D8A 
X-CRM114-Status: GOOD (  14.63  )
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

This series add H.264 High 10 and 4:2:2 profile support to the Rockchip
Video Decoder driver.

Patch 1 limits the minimum profile to constrained baseline due to
unsupported features in the full baseline profile.

Patch 2 refactors code to support filtering of CAPTURE formats based
on the image format returned from a new get_image_fmt() ops.

Patch 3 adds final bits to support H.264 High 10 and 4:2:2 profiles.

Tested with Fluster on a Libre Computer Renegade Elite (RK3399).

Decoder:                        GStreamer
Commit:                         8c7ad20e4e82296ed9916f53c201e110c629f0f5
JVT-AVC_V1:                     129/135
JVT-FR-EXT:                     65/69
JVT-Professional_profiles:      12/38
JVT-MVC:                        0/20 (not supported)
JVT-SVC:                        38/185 (temporal only)

In summary, all tests that are 4:2:2 sub-sampled are now passing with
the exception of the following that display some unexplained artifacts.

 - Hi422FREXT17_SONY_A
 - Hi422FREXT19_SONY_A

This score also includes 4:2:0 10bit tests, that may have been reported
as failing due to lack of userspace support for NV15 format. It also
includes results from test suite that did not exists before (Pro, MVC
and SVC).

Changes in v10:
- Renamed rkvdec_fmt_changed() into rkvdec_image_fmt_changed()
- Link to v9: https://lore.kernel.org/r/20250417-b4-rkvdec_h264_high10_and_422_support-v9-0-0e8738ccb46b@collabora.com

Changes in v9:
- Moved v4l2_m2m_ctx init before the controls
- Removed unneeded changes in try_ctrl ops
- Link to v8: https://lore.kernel.org/r/20250417-b4-rkvdec_h264_high10_and_422_support-v8-0-423fe0a2ee7e@collabora.com

Changes in v8:
- Removed patches that got applied from v7
- Move the constrained-baseline fix first
- Move the format checks into s_ctrl only
- Simplify the checks
- Retest against a newer GStreamer version with NV16 and NV20 support.
- Test against the new fluster suite Professions, SVC and MVC.
Link to v7: https://lore.kernel.org/linux-media/20250225-rkvdec_h264_high10_and_422_support-v7-0-7992a68a4910@collabora.com/

Changes in v7:
- Split out the change with the minimum profile
- s/v4l2_format_plane_width/v4l2_format_plane_stride/
- Move V4L2_PIX_FMT_NV15/V4L2_PIX_FMT_NV20 documentation as suggested
- Change return value from int to bool on rkvdec_image_fmt_match
- Add reviewed-by tags
Link to v6: https://lore.kernel.org/linux-media/20240909192522.1076704-1-jonas@kwiboo.se/

Changes in v6:
- Change to use fmt_idx instead of j++ tucked inside a condition (Dan)
- Add patch to fix enumerated frame sizes returned to userspace (Alex)
- Fluster test score is same as v4 and v5, see [4] and [5]
Link to v5: https://lore.kernel.org/linux-media/20240618194647.742037-1-jonas@kwiboo.se/

Changes in v5:
- Drop Remove SPS validation at streaming start patch
- Move buffer align from rkvdec_fill_decoded_pixfmt to min/step_width
- Use correct profiles for V4L2_CID_MPEG_VIDEO_H264_PROFILE
- Collect r-b and t-b tags
- Fluster test score is same as v4, see [4] and [5]
Link to v4: https://lore.kernel.org/linux-media/20231105165521.3592037-1-jonas@kwiboo.se/

Changes in v4:
- Fix failed v4l2-compliance tests related to CAPTURE queue
- Rework CAPTURE format filter anv validate to use an image format
- Run fluster test suite JVT-FR-EXT [4] and JVT-AVC_V1 [5]
Link to v3: https://lore.kernel.org/linux-media/20231029183427.1781554-1-jonas@kwiboo.se/

Changes in v3:
- Drop merged patches
- Use bpp and bpp_div instead of prior misuse of block_w/block_h
- New patch to use values from SPS/PPS control to configure the HW
- New patch to remove an unnecessary call to validate sps at streaming start
- Reworked pixel format validation
Link to v2: https://lore.kernel.org/linux-media/20200706215430.22859-1-jonas@kwiboo.se/

Changes in v2:
- Collect r-b tags
- SPS pic width and height in mbs validation moved to rkvdec_try_ctrl
- New patch to not override output buffer sizeimage
- Reworked pixel format validation
- Only align decoded buffer instead of changing frmsize step_width
Link to v1: https://lore.kernel.org/linux-media/20200701215616.30874-1-jonas@kwiboo.se/

To fully runtime test this series you may need FFmpeg patches from [1]
and fluster patches from [2], this series is also available at [3].

[1] https://github.com/Kwiboo/FFmpeg/commits/v4l2request-2024-v2-rkvdec/
[2] https://github.com/Kwiboo/fluster/commits/ffmpeg-v4l2request-rkvdec/
[3] https://github.com/Kwiboo/linux-rockchip/commits/linuxtv-rkvdec-high-10-v6/
[4] https://gist.github.com/Kwiboo/f4ac15576b2c72887ae2bc5d58b5c865
[5] https://gist.github.com/Kwiboo/459a1c8f1dcb56e45dc7a7a29cc28adf

Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
Jonas Karlman (2):
      media: rkvdec: Add get_image_fmt ops
      media: rkvdec: h264: Support High 10 and 4:2:2 profiles

Nicolas Dufresne (1):
      media: rkvdec: Initialize the m2m context before the controls

Sebastian Fricke (1):
      media: rkvdec: h264: Limit minimum profile to constrained baseline

 drivers/staging/media/rkvdec/rkvdec-h264.c | 37 ++++++++++---
 drivers/staging/media/rkvdec/rkvdec.c      | 89 ++++++++++++++++++++++++------
 drivers/staging/media/rkvdec/rkvdec.h      |  5 ++
 3 files changed, 105 insertions(+), 26 deletions(-)
---
base-commit: 2e79181dfc85e1347a8655ea8d8a314158155c52
change-id: 20250416-b4-rkvdec_h264_high10_and_422_support-381a74151162

Best regards,
-- 
Nicolas Dufresne <nicolas.dufresne@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
