From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: [PATCH 4/4] media: rockchip: rga: Only set output CSC mode for RGB
 input
Date: Thu, 16 Apr 2020 13:50:47 +0200
Message-ID: <20200416115047.233720-5-paul.kocialkowski@bootlin.com>
References: <20200416115047.233720-1-paul.kocialkowski@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <20200416115047.233720-1-paul.kocialkowski@bootlin.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Mark Rutland <mark.rutland@arm.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hansverk@cisco.com>, Jacob Chen <jacob-chen@iotwrt.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Ezequiel Garcia <ezequiel@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

Setting the output CSC mode is required for a YUV output, but must not
be set when the input is also YUV. Doing this (as tested with a YUV420P
to YUV420P conversion) results in wrong colors.

Adapt the logic to only set the CSC mode when the output is YUV and the
input is RGB.

Fixes: f7e7b48e6d79 ("[media] rockchip/rga: v4l2 m2m support")
Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 drivers/media/platform/rockchip/rga/rga-hw.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media/platform/rockchip/rga/rga-hw.c
index 4be6dcf292ff..cbffcf986ccf 100644
--- a/drivers/media/platform/rockchip/rga/rga-hw.c
+++ b/drivers/media/platform/rockchip/rga/rga-hw.c
@@ -216,13 +216,17 @@ static void rga_cmd_set_trans_info(struct rga_ctx *ctx)
 	}
 
 	if (ctx->out.fmt->hw_format >= RGA_COLOR_FMT_YUV422SP) {
-		switch (ctx->out.colorspace) {
-		case V4L2_COLORSPACE_REC709:
-			dst_info.data.csc_mode = RGA_SRC_CSC_MODE_BT709_R0;
-			break;
-		default:
-			dst_info.data.csc_mode = RGA_DST_CSC_MODE_BT601_R0;
-			break;
+		if (ctx->in.fmt->hw_format < RGA_COLOR_FMT_YUV422SP) {
+			switch (ctx->out.colorspace) {
+			case V4L2_COLORSPACE_REC709:
+				dst_info.data.csc_mode =
+					RGA_SRC_CSC_MODE_BT709_R0;
+				break;
+			default:
+				dst_info.data.csc_mode =
+					RGA_DST_CSC_MODE_BT601_R0;
+				break;
+			}
 		}
 	}
 
-- 
2.26.0
