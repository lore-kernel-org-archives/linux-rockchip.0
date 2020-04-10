From: Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 5.6 06/68] media: hantro: fix extra MV/MC sync space calculation
Date: Thu,  9 Apr 2020 23:45:31 -0400
Message-ID: <20200410034634.7731-6-sashal@kernel.org>
References: <20200410034634.7731-1-sashal@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200410034634.7731-1-sashal@kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org, stable@vger.kernel.org
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Ezequiel Garcia <ezequiel@collabora.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Sasha Levin <sashal@kernel.org>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, devel@driverdev.osuosl.org
List-Id: linux-rockchip.vger.kernel.org

From: Philipp Zabel <p.zabel@pengutronix.de>

[ Upstream commit 042584e9055b615ac917239884fb0d65690f56ec ]

Add space for MVs and MC sync data to the capture buffers depending on
whether the post processor will be enabled for the new capture format
passed to TRY_FMT, not the currently set capture format.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/hantro/hantro_v4l2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index 0198bcda26b75..f4ae2cee0f189 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -295,7 +295,7 @@ static int vidioc_try_fmt(struct file *file, void *priv, struct v4l2_format *f,
 		 * +---------------------------+
 		 */
 		if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE &&
-		    !hantro_needs_postproc(ctx, ctx->vpu_dst_fmt))
+		    !hantro_needs_postproc(ctx, fmt))
 			pix_mp->plane_fmt[0].sizeimage +=
 				64 * MB_WIDTH(pix_mp->width) *
 				     MB_WIDTH(pix_mp->height) + 32;
-- 
2.20.1
