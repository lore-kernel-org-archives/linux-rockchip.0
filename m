From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v2 6/7] media: hantro: Move VP8 common code
Date: Thu, 25 Jul 2019 11:17:55 -0300
Message-ID: <20190725141756.2518-7-ezequiel@collabora.com>
References: <20190725141756.2518-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190725141756.2518-1-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
Cc: fbuergisser-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Alexandre Courbot <acourbot-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

In order to introduce support for RK3399 VP8 decoding,
move some common VP8 code. This will be reused by
the RK3399 implementation, reducing code duplication.

Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 .../staging/media/hantro/hantro_g1_vp8_dec.c    | 17 -----------------
 drivers/staging/media/hantro/hantro_hw.h        |  4 ++++
 drivers/staging/media/hantro/hantro_vp8.c       | 15 +++++++++++++++
 3 files changed, 19 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
index cd1fbd3a0d5f..181e2f76d8cb 100644
--- a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
@@ -16,8 +16,6 @@
 #include "hantro.h"
 #include "hantro_g1_regs.h"
 
-#define DEC_8190_ALIGN_MASK	0x07U
-
 /* DCT partition base address regs */
 static const struct hantro_reg vp8_dec_dct_base[8] = {
 	{ G1_REG_ADDR_STR, 0, 0xffffffff },
@@ -131,21 +129,6 @@ static const struct hantro_reg vp8_dec_pred_bc_tap[8][4] = {
 	},
 };
 
-/*
- * filter taps taken to 7-bit precision,
- * reference RFC6386#Page-16, filters[8][6]
- */
-static const u32 vp8_dec_mc_filter[8][6] = {
-	{ 0, 0, 128, 0, 0, 0 },
-	{ 0, -6, 123, 12, -1, 0 },
-	{ 2, -11, 108, 36, -8, 1 },
-	{ 0, -9, 93, 50, -6, 0 },
-	{ 3, -16, 77, 77, -16, 3 },
-	{ 0, -6, 50, 93, -9, 0 },
-	{ 1, -8, 36, 108, -11, 2 },
-	{ 0, -1, 12, 123, -6, 0 }
-};
-
 /*
  * Set loop filters
  */
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 34ef24e3a9ef..185e27d47e47 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -15,6 +15,8 @@
 #include <media/vp8-ctrls.h>
 #include <media/videobuf2-core.h>
 
+#define DEC_8190_ALIGN_MASK	0x07U
+
 struct hantro_dev;
 struct hantro_ctx;
 struct hantro_buf;
@@ -93,6 +95,8 @@ extern const struct hantro_variant rk3399_vpu_variant;
 extern const struct hantro_variant rk3328_vpu_variant;
 extern const struct hantro_variant rk3288_vpu_variant;
 
+extern const u32 vp8_dec_mc_filter[8][6];
+
 void hantro_watchdog(struct work_struct *work);
 void hantro_run(struct hantro_ctx *ctx);
 void hantro_irq_done(struct hantro_dev *vpu, unsigned int bytesused,
diff --git a/drivers/staging/media/hantro/hantro_vp8.c b/drivers/staging/media/hantro/hantro_vp8.c
index 66c45335d871..be5cb01d1309 100644
--- a/drivers/staging/media/hantro/hantro_vp8.c
+++ b/drivers/staging/media/hantro/hantro_vp8.c
@@ -31,6 +31,21 @@ struct vp8_prob_tbl_packed {
 	u8 padding3[96];
 };
 
+/*
+ * filter taps taken to 7-bit precision,
+ * reference RFC6386#Page-16, filters[8][6]
+ */
+const u32 vp8_dec_mc_filter[8][6] = {
+	{ 0, 0, 128, 0, 0, 0 },
+	{ 0, -6, 123, 12, -1, 0 },
+	{ 2, -11, 108, 36, -8, 1 },
+	{ 0, -9, 93, 50, -6, 0 },
+	{ 3, -16, 77, 77, -16, 3 },
+	{ 0, -6, 50, 93, -9, 0 },
+	{ 1, -8, 36, 108, -11, 2 },
+	{ 0, -1, 12, 123, -6, 0 }
+};
+
 void hantro_vp8_prob_update(struct hantro_ctx *ctx,
 			    const struct v4l2_ctrl_vp8_frame_header *hdr)
 {
-- 
2.22.0
