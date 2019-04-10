From: ayaka <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>
Subject: [PATCH v3 7/9] [TEST]: rkvdec: spspps address alignment
Date: Wed, 10 Apr 2019 20:42:24 +0800
Message-ID: <20190410124226.8612-8-ayaka@soulik.info>
References: <20190410124226.8612-1-ayaka@soulik.info>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190410124226.8612-1-ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>
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
Cc: paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, maxime.ripard-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, joro-zLv9SwRftAIdnm+yROfE0A@public.gmane.org, ayaka <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>, randy.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org, jernej.skrabec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org, hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, posciak-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

I found the offset for cpu access is not equal to the DMA
opeartion.

Signed-off-by: ayaka <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>
---
 drivers/staging/rockchip-mpp/mpp_dev_common.h |  3 +++
 drivers/staging/rockchip-mpp/mpp_dev_rkvdec.c |  3 +++
 drivers/staging/rockchip-mpp/rkvdec/avc.c     | 14 +++++++-------
 3 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rockchip-mpp/mpp_dev_common.h b/drivers/staging/rockchip-mpp/mpp_dev_common.h
index 36770af53a95..6718bcccde1f 100644
--- a/drivers/staging/rockchip-mpp/mpp_dev_common.h
+++ b/drivers/staging/rockchip-mpp/mpp_dev_common.h
@@ -100,6 +100,9 @@ struct mpp_session {
 	struct v4l2_ctrl_handler ctrl_handler;
 	/* TODO: FIXME: slower than helper function ? */
 	struct v4l2_ctrl **ctrls;
+
+	void *aux_vaddr;
+	dma_addr_t aux_addr;
 };
 
 /* The context for the a task */
diff --git a/drivers/staging/rockchip-mpp/mpp_dev_rkvdec.c b/drivers/staging/rockchip-mpp/mpp_dev_rkvdec.c
index 97abfdfc344f..cc1fa9737bc1 100644
--- a/drivers/staging/rockchip-mpp/mpp_dev_rkvdec.c
+++ b/drivers/staging/rockchip-mpp/mpp_dev_rkvdec.c
@@ -382,6 +382,9 @@ static int rkvdec_open(struct file *filp)
 	filp->private_data = &session->fh;
 	pm_runtime_get_sync(mpp_dev->dev);
 
+	session->aux_vaddr = dmam_alloc_coherent(mpp_dev->dev, SZ_1M,
+						 &session->aux_addr, GFP_KERNEL);
+
 	mpp_debug_leave();
 	return 0;
 }
diff --git a/drivers/staging/rockchip-mpp/rkvdec/avc.c b/drivers/staging/rockchip-mpp/rkvdec/avc.c
index 1cb5b2208bfa..8266a990dca6 100644
--- a/drivers/staging/rockchip-mpp/rkvdec/avc.c
+++ b/drivers/staging/rockchip-mpp/rkvdec/avc.c
@@ -26,8 +26,8 @@
 #include "regs.h"
 #include "avc-data.h"
 
-static void generate_input_data(struct rkvdec_regs *p_regs,
-				struct vb2_v4l2_buffer *src_buf,
+static void generate_input_data(struct mpp_session *session,
+				struct rkvdec_regs *p_regs,
 				const struct v4l2_ctrl_h264_sps *sps,
 				const struct v4l2_ctrl_h264_pps *pps,
 				const struct v4l2_ctrl_h264_scaling_matrix
@@ -44,8 +44,8 @@ static void generate_input_data(struct rkvdec_regs *p_regs,
 
 	stream_len = slice_param->size + 64;
 
-	r_data = vb2_plane_vaddr(&src_buf->vb2_buf, 0);
-	r_scaling_offs = ALIGN(stream_len, 16);
+	r_data = session->aux_vaddr;
+	r_scaling_offs = 0;
 	r_data += r_scaling_offs;
 
 	if (pps->flags & V4L2_H264_PPS_FLAG_PIC_SCALING_MATRIX_PRESENT) {
@@ -62,7 +62,7 @@ static void generate_input_data(struct rkvdec_regs *p_regs,
 	rkvdec_avc_write_sps(&rbsp, sps);
 	rkvdec_avc_write_pps(&rbsp, pps);
 	rkvdec_avc_write_pps_tail(&rbsp, scaling_addr, decode_param);
-	p_regs->sw_pps_base = p_regs->sw_strm_rlc_base + r_sps_offs;
+	p_regs->sw_pps_base = session->aux_addr + r_sps_offs;
 
 	for (i = 1; i < 256; i++)
 		memset(r_data + r_sps_offs + i * 32, 0, 32);
@@ -72,7 +72,7 @@ static void generate_input_data(struct rkvdec_regs *p_regs,
 	r_rps_offs = ALIGN(r_rps_offs, 16);
 	rbsp_init(&rbsp, r_data + r_rps_offs, SZ_2M - r_rps_offs, 0);
 	rkvdec_avc_write_rps(&rbsp, sps, slice_param, decode_param);
-	p_regs->sw_rps_base = p_regs->sw_strm_rlc_base + r_rps_offs;
+	p_regs->sw_rps_base = session->aux_addr + r_rps_offs;
 }
 
 static void init_hw_cfg(struct rkvdec_regs *p_regs)
@@ -238,7 +238,7 @@ int rkvdec_avc_gen_reg(struct mpp_session *session, void *regs,
 	dst_buf = v4l2_m2m_next_dst_buf(session->fh.m2m_ctx);
 	rkvdec_avc_gen_ref(p_regs, dst_buf, decode_param);
 
-	generate_input_data(p_regs, src_buf, sps, pps, scaling, slice_param,
+	generate_input_data(session, p_regs, sps, pps, scaling, slice_param,
 			    decode_param);
 
 	return 0;
-- 
2.20.1
