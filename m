From: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH 04/12] media: hantro: Reduce H264 extra space for motion
 vectors
Date: Sun, 1 Sep 2019 12:45:44 +0000
Message-ID: <HE1PR06MB4011D387573107C54185D528ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20190901124531.23645-1-jonas@kwiboo.se>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190901124531.23645-1-jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, "linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

A decoded 8-bit 4:2:0 frame need memory for up to 448 macroblocks
with additional 32 bytes on multi-core variants.

Memory layout is as follow:

+-------------------+
| Y-plane   256 MBs |
+-------------------+
| UV-plane  128 MBs |
+-------------------+
| MV buffer  64 MBs |
+-------------------+
| MC sync  32 bytes |
+-------------------+

Reduce the extra space allocated now that motion vector buffer offset no
longer is based on the extra space.

Only use extra space for 64 MBs of motion vector buffer and 32 bytes for
multi-core sync.

Fixes: a9471e25629b ("media: hantro: Add core bits to support H264 decoding")
Signed-off-by: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
---
 drivers/staging/media/hantro/hantro_v4l2.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index 3dae52abb96c..3a360a6a17e2 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -242,12 +242,12 @@ static int vidioc_try_fmt(struct file *file, void *priv, struct v4l2_format *f,
 		/*
 		 * The H264 decoder needs extra space on the output buffers
 		 * to store motion vectors. This is needed for reference
-		 * frames.
+		 * frames. 32 extra bytes is used for multi-core sync.
 		 */
 		if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE)
 			pix_mp->plane_fmt[0].sizeimage +=
-				128 * DIV_ROUND_UP(pix_mp->width, 16) *
-				      DIV_ROUND_UP(pix_mp->height, 16);
+				64 * H264_MB_WIDTH(pix_mp->width) *
+				     H264_MB_WIDTH(pix_mp->height) + 32;
 	} else if (!pix_mp->plane_fmt[0].sizeimage) {
 		/*
 		 * For coded formats the application can specify
-- 
2.17.1
