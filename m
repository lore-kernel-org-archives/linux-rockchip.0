From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 8/9] media: rkvdec: Add validate_fmt ops for pixelformat
 validation
Date: Wed, 01 Jul 2020 21:56:24 +0000 (UTC)
Message-ID: <20200701215616.30874-9-jonas@kwiboo.se>
References: <20200701215616.30874-1-jonas@kwiboo.se>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200701215616.30874-1-jonas@kwiboo.se>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia <ezequiel@collabora.com>, Hans Verkuil <hans.verkuil@cisco.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, Alexandre Courbot <acourbot@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Add an optional validate_fmt operation that is used to validate the
pixelformat of CAPTURE buffers.

This is used in next patch to ensure correct pixelformat is used for 10-bit
and 4:2:2 content.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/staging/media/rkvdec/rkvdec.c | 8 ++++++++
 drivers/staging/media/rkvdec/rkvdec.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index b1de55aa6535..465444c58f13 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -239,6 +239,14 @@ static int rkvdec_try_capture_fmt(struct file *file, void *priv,
 	if (WARN_ON(!coded_desc))
 		return -EINVAL;
 
+	if (coded_desc->ops->validate_fmt) {
+		int ret;
+
+		ret = coded_desc->ops->validate_fmt(ctx, pix_mp->pixelformat);
+		if (ret)
+			return ret;
+	}
+
 	for (i = 0; i < coded_desc->num_decoded_fmts; i++) {
 		if (coded_desc->decoded_fmts[i] == pix_mp->pixelformat)
 			break;
diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
index 2fc9f46b6910..be4fc3645cde 100644
--- a/drivers/staging/media/rkvdec/rkvdec.h
+++ b/drivers/staging/media/rkvdec/rkvdec.h
@@ -64,6 +64,7 @@ vb2_to_rkvdec_decoded_buf(struct vb2_buffer *buf)
 struct rkvdec_coded_fmt_ops {
 	int (*adjust_fmt)(struct rkvdec_ctx *ctx,
 			  struct v4l2_format *f);
+	int (*validate_fmt)(struct rkvdec_ctx *ctx, u32 pixelformat);
 	int (*start)(struct rkvdec_ctx *ctx);
 	void (*stop)(struct rkvdec_ctx *ctx);
 	int (*run)(struct rkvdec_ctx *ctx);
-- 
2.17.1
