From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 1/2] drm: drm_fourcc: add NV20 and NV30 YUV formats
Date: Mon, 06 Jul 2020 22:30:13 +0000 (UTC)
Message-ID: <20200706223009.1200-2-jonas@kwiboo.se>
References: <20200607202521.18438-1-jonas@kwiboo.se>
 <20200706223009.1200-1-jonas@kwiboo.se>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200706223009.1200-1-jonas@kwiboo.se>
Sender: linux-kernel-owner@vger.kernel.org
To: Sandy Huang <hjc@rock-chips.com>, Heiko =?iso-8859-1?q?St=FCbner?= <heiko@sntech.de>
Cc: Jonas Karlman <jonas@kwiboo.se>, Ben Davis <ben.davis@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

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
---
 drivers/gpu/drm/drm_fourcc.c  | 8 ++++++++
 include/uapi/drm/drm_fourcc.h | 2 ++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/drm_fourcc.c b/drivers/gpu/drm/drm_fourcc.c
index 722c7ebe4e88..2daf8a304b53 100644
--- a/drivers/gpu/drm/drm_fourcc.c
+++ b/drivers/gpu/drm/drm_fourcc.c
@@ -278,6 +278,14 @@ const struct drm_format_info *__drm_format_info(u32 format)
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
 		  .block_w = { 1, 1, 1 }, .block_h = { 1, 1, 1 }, .hsub = 0,
diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
index cbf92fdf2712..c8695673295c 100644
--- a/include/uapi/drm/drm_fourcc.h
+++ b/include/uapi/drm/drm_fourcc.h
@@ -242,6 +242,8 @@ extern "C" {
  * index 1 = Cr:Cb plane, [39:0] Cr1:Cb1:Cr0:Cb0 little endian
  */
 #define DRM_FORMAT_NV15		fourcc_code('N', 'V', '1', '5') /* 2x2 subsampled Cr:Cb plane */
+#define DRM_FORMAT_NV20		fourcc_code('N', 'V', '2', '0') /* 2x1 subsampled Cr:Cb plane */
+#define DRM_FORMAT_NV30		fourcc_code('N', 'V', '3', '0') /* non-subsampled Cr:Cb plane */
 
 /*
  * 2 plane YCbCr MSB aligned
-- 
2.17.1
