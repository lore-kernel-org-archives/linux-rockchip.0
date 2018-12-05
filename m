From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: [PATCH] media: rockchip vpu: remove some unused vars
Date: Wed,  5 Dec 2018 18:54:54 -0500
Message-ID: <be7a207dc092e2d1b80cfdd2e5971e4641cb30c9.1544054086.git.mchehab+samsung@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
Cc: devel@driverdev.osuosl.org, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Mauro Carvalho Chehab <mchehab@infradead.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org, Linux Media Mailing List <linux-media@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

As complained by gcc:

	drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c: In function 'rk3288_vpu_jpeg_enc_set_qtable':
	drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c:70:10: warning: variable 'chroma_qtable_p' set but not used [-Wunused-but-set-variable]
	  __be32 *chroma_qtable_p;
	          ^~~~~~~~~~~~~~~
	drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c:69:10: warning: variable 'luma_qtable_p' set but not used [-Wunused-but-set-variable]
	  __be32 *luma_qtable_p;
	          ^~~~~~~~~~~~~
	drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c: In function 'rk3399_vpu_jpeg_enc_set_qtable':
	drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c:101:10: warning: variable 'chroma_qtable_p' set but not used [-Wunused-but-set-variable]
	  __be32 *chroma_qtable_p;
	          ^~~~~~~~~~~~~~~
	drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c:100:10: warning: variable 'luma_qtable_p' set but not used [-Wunused-but-set-variable]
	  __be32 *luma_qtable_p;
	          ^~~~~~~~~~~~~
	drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c: In function 'rockchip_vpu_queue_setup':
	drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c:522:33: warning: variable 'vpu_fmt' set but not used [-Wunused-but-set-variable]
	  const struct rockchip_vpu_fmt *vpu_fmt;
	                                 ^~~~~~~
	drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c: In function 'rockchip_vpu_buf_prepare':
	drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c:560:33: warning: variable 'vpu_fmt' set but not used [-Wunused-but-set-variable]
	  const struct rockchip_vpu_fmt *vpu_fmt;
	                                 ^~~~~~~

Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c b/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
index e27c10855de5..5282236d1bb1 100644
--- a/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
+++ b/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
@@ -66,13 +66,8 @@ rk3288_vpu_jpeg_enc_set_qtable(struct rockchip_vpu_dev *vpu,
 			       unsigned char *luma_qtable,
 			       unsigned char *chroma_qtable)
 {
-	__be32 *luma_qtable_p;
-	__be32 *chroma_qtable_p;
 	u32 reg, i;
 
-	luma_qtable_p = (__be32 *)luma_qtable;
-	chroma_qtable_p = (__be32 *)chroma_qtable;
-
 	for (i = 0; i < VEPU_JPEG_QUANT_TABLE_COUNT; i++) {
 		reg = get_unaligned_be32(&luma_qtable[i]);
 		vepu_write_relaxed(vpu, reg, VEPU_REG_JPEG_LUMA_QUAT(i));
-- 
2.19.1
