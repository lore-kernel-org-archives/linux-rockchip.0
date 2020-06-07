From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 1/2] drm: drm_fourcc: add NV20 YUV format
Date: Sun, 07 Jun 2020 20:25:25 +0000 (UTC)
Message-ID: <20200607202521.18438-2-jonas@kwiboo.se>
References: <20200607202521.18438-1-jonas@kwiboo.se>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200607202521.18438-1-jonas@kwiboo.se>
Sender: linux-kernel-owner@vger.kernel.org
To: Sandy Huang <hjc@rock-chips.com>, Heiko =?iso-8859-1?q?St=FCbner?= <heiko@sntech.de>
Cc: Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Ben Davis <ben.davis@arm.com>, Brian Starkey <brian.starkey@arm.com>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

DRM_FORMAT_NV20 is a 2 plane format suitable for linear memory layout.
The format is similar to P210 with 4:2:2 sub-sampling but has no padding
between components. Instead, luminance and chrominance samples are grouped
into 4s so that each group is packed into an integer number of bytes:

YYYY = UVUV = 4 * 10 bits = 40 bits = 5 bytes

The '20' suffix refers to the optimum effective bits per pixel which is
achieved when the total number of luminance samples is a multiple of 4.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/drm_fourcc.c  | 4 ++++
 include/uapi/drm/drm_fourcc.h | 1 +
 2 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/drm_fourcc.c b/drivers/gpu/drm/drm_fourcc.c
index 722c7ebe4e88..2a9c8ae719ed 100644
--- a/drivers/gpu/drm/drm_fourcc.c
+++ b/drivers/gpu/drm/drm_fourcc.c
@@ -278,6 +278,10 @@ const struct drm_format_info *__drm_format_info(u32 format)
 		  .num_planes = 2, .char_per_block = { 5, 5, 0 },
 		  .block_w = { 4, 2, 0 }, .block_h = { 1, 1, 0 }, .hsub = 2,
 		  .vsub = 2, .is_yuv = true },
+		{ .format = DRM_FORMAT_NV20,		.depth = 0,
+		  .num_planes = 2, .char_per_block = { 5, 5, 0 },
+		  .block_w = { 4, 2, 0 }, .block_h = { 1, 1, 0 }, .hsub = 2,
+		  .vsub = 1, .is_yuv = true },
 		{ .format = DRM_FORMAT_Q410,		.depth = 0,
 		  .num_planes = 3, .char_per_block = { 2, 2, 2 },
 		  .block_w = { 1, 1, 1 }, .block_h = { 1, 1, 1 }, .hsub = 0,
diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
index b5bf1c0e630e..244d32433a67 100644
--- a/include/uapi/drm/drm_fourcc.h
+++ b/include/uapi/drm/drm_fourcc.h
@@ -242,6 +242,7 @@ extern "C" {
  * index 1 = Cr:Cb plane, [39:0] Cr1:Cb1:Cr0:Cb0 little endian
  */
 #define DRM_FORMAT_NV15		fourcc_code('N', 'V', '1', '5') /* 2x2 subsampled Cr:Cb plane */
+#define DRM_FORMAT_NV20		fourcc_code('N', 'V', '2', '0') /* 2x1 subsampled Cr:Cb plane */
 
 /*
  * 2 plane YCbCr MSB aligned
-- 
2.17.1
