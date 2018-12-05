From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: [PATCH] media: rockchip/vpu: fix a few alignments
Date: Wed,  5 Dec 2018 13:43:24 -0500
Message-ID: <bcebf81255a71b34541bc00bcb505e815193f0be.1544035391.git.mchehab+samsung@kernel.org>
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

As reported by checkpatch.pl, some function calls have a wrong
alignment.

Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c | 4 ++--
 drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c b/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
index 8919151e1631..e27c10855de5 100644
--- a/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
+++ b/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
@@ -106,8 +106,8 @@ void rk3288_vpu_jpeg_enc_run(struct rockchip_vpu_ctx *ctx)
 	rk3288_vpu_set_src_img_ctrl(vpu, ctx);
 	rk3288_vpu_jpeg_enc_set_buffers(vpu, ctx, src_buf);
 	rk3288_vpu_jpeg_enc_set_qtable(vpu,
-		rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 0),
-		rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 1));
+				       rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 0),
+				       rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 1));
 
 	reg = VEPU_REG_AXI_CTRL_OUTPUT_SWAP16
 		| VEPU_REG_AXI_CTRL_INPUT_SWAP16
diff --git a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
index 8afa2162bf9f..5f75e4d11d76 100644
--- a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
+++ b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
@@ -137,8 +137,8 @@ void rk3399_vpu_jpeg_enc_run(struct rockchip_vpu_ctx *ctx)
 	rk3399_vpu_set_src_img_ctrl(vpu, ctx);
 	rk3399_vpu_jpeg_enc_set_buffers(vpu, ctx, src_buf);
 	rk3399_vpu_jpeg_enc_set_qtable(vpu,
-			rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 0),
-			rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 1));
+				       rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 0),
+				       rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 1));
 
 	reg = VEPU_REG_OUTPUT_SWAP32
 		| VEPU_REG_OUTPUT_SWAP16
-- 
2.19.1
