From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v2 01/11] rockchip/vpu: Rename pixel format helpers
Date: Mon,  4 Mar 2019 16:25:19 -0300
Message-ID: <20190304192529.14200-2-ezequiel@collabora.com>
References: <20190304192529.14200-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190304192529.14200-1-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The rockchip VPU driver uses generic names for its pixel format
helpers. We want to use the same names for generic versions
of these helpers, so rename the rockchip ones.

The driver will be switched to the generic helpers later.

Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 .../staging/media/rockchip/vpu/rockchip_vpu_enc.c    | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
index ab0fb2053620..fb5e36aedd8c 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
@@ -41,7 +41,7 @@
  * @is_compressed: Is it a compressed format?
  * @multiplanar: Is it a multiplanar variant format? (e.g. NV12M)
  */
-struct v4l2_format_info {
+struct rockchip_vpu_v4l2_format_info {
 	u32 format;
 	u32 header_size;
 	u8 num_planes;
@@ -52,10 +52,10 @@ struct v4l2_format_info {
 	u8 multiplanar;
 };
 
-static const struct v4l2_format_info *
-v4l2_format_info(u32 format)
+static const struct rockchip_vpu_v4l2_format_info *
+rockchip_vpu_v4l2_format_info(u32 format)
 {
-	static const struct v4l2_format_info formats[] = {
+	static const struct rockchip_vpu_v4l2_format_info formats[] = {
 		{ .format = V4L2_PIX_FMT_YUV420M,	.num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 2, .vsub = 2, .multiplanar = 1 },
 		{ .format = V4L2_PIX_FMT_NV12M,		.num_planes = 2, .cpp = { 1, 2, 0 }, .hsub = 2, .vsub = 2, .multiplanar = 1 },
 		{ .format = V4L2_PIX_FMT_YUYV,		.num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 2, .vsub = 1 },
@@ -76,11 +76,11 @@ static void
 fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
 	       int pixelformat, int width, int height)
 {
-	const struct v4l2_format_info *info;
+	const struct rockchip_vpu_v4l2_format_info *info;
 	struct v4l2_plane_pix_format *plane;
 	int i;
 
-	info = v4l2_format_info(pixelformat);
+	info = rockchip_vpu_v4l2_format_info(pixelformat);
 	if (!info)
 		return;
 
-- 
2.20.1
