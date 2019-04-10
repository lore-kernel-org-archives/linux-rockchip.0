From: ayaka <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>
Subject: [PATCH v3 5/9] [TEST]: rockchip: mpp: support qtable
Date: Wed, 10 Apr 2019 20:42:22 +0800
Message-ID: <20190410124226.8612-6-ayaka@soulik.info>
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
Cc: paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, maxime.ripard-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, joro-zLv9SwRftAIdnm+yROfE0A@public.gmane.org, Randy Li <randy.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, jernej.skrabec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org, hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, posciak-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: Randy Li <randy.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

I don't care, I don't want to store buffers for a session.
I just want to use it to verify the FFmpeg.
---
 drivers/staging/rockchip-mpp/mpp_dev_common.h |  3 +++
 drivers/staging/rockchip-mpp/mpp_dev_vdpu2.c  |  5 ++++-
 drivers/staging/rockchip-mpp/vdpu2/mpeg2.c    | 13 ++++++++-----
 3 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rockchip-mpp/mpp_dev_common.h b/drivers/staging/rockchip-mpp/mpp_dev_common.h
index 36770af53a95..33d7725be67b 100644
--- a/drivers/staging/rockchip-mpp/mpp_dev_common.h
+++ b/drivers/staging/rockchip-mpp/mpp_dev_common.h
@@ -100,6 +100,9 @@ struct mpp_session {
 	struct v4l2_ctrl_handler ctrl_handler;
 	/* TODO: FIXME: slower than helper function ? */
 	struct v4l2_ctrl **ctrls;
+
+	dma_addr_t qtable_addr;
+	void *qtable_vaddr;
 };
 
 /* The context for the a task */
diff --git a/drivers/staging/rockchip-mpp/mpp_dev_vdpu2.c b/drivers/staging/rockchip-mpp/mpp_dev_vdpu2.c
index dbd9f334562e..1be73ab9c2be 100644
--- a/drivers/staging/rockchip-mpp/mpp_dev_vdpu2.c
+++ b/drivers/staging/rockchip-mpp/mpp_dev_vdpu2.c
@@ -246,6 +246,9 @@ static int rkvdpu_open(struct file *filp)
 	if (IS_ERR_OR_NULL(session))
 		return PTR_ERR(session);
 
+	session->qtable_vaddr = dmam_alloc_coherent(mpp_dev->dev, 64 * 4,
+						    &session->qtable_addr,
+						    GFP_KERNEL);
 	filp->private_data = &session->fh;
 	pm_runtime_get_sync(mpp_dev->dev);
 
@@ -529,7 +532,7 @@ static int rockchip_mpp_rkvdpu_probe(struct platform_device *pdev)
 	ret = mpp_dev_register_node(mpp_dev, mpp_dev->variant->node_name,
 				    NULL, &rkvdpu_ioctl_ops);
 	if (ret)
-		dev_err(dev, "register char device failed: %d\n", ret);
+		dev_err(dev, "register v4l2/media device failed: %d\n", ret);
 
 	memcpy(mpp_dev->fmt_out, fmt_out_templ, sizeof(fmt_out_templ));
 	memcpy(mpp_dev->fmt_cap, fmt_cap_templ, sizeof(fmt_cap_templ));
diff --git a/drivers/staging/rockchip-mpp/vdpu2/mpeg2.c b/drivers/staging/rockchip-mpp/vdpu2/mpeg2.c
index d32958c4cb20..837ee4a4a000 100644
--- a/drivers/staging/rockchip-mpp/vdpu2/mpeg2.c
+++ b/drivers/staging/rockchip-mpp/vdpu2/mpeg2.c
@@ -52,7 +52,7 @@ static const u8 intra_default_q_matrix[64] = {
 static void mpeg2_dec_copy_qtable(u8 * qtable, const struct v4l2_ctrl_mpeg2_quantization
 				  *ctrl)
 {
-	int i, n;
+	int i;
 
 	if (!qtable || !ctrl)
 		return;
@@ -111,16 +111,12 @@ int rkvdpu_mpeg2_gen_reg(struct mpp_session *session, void *regs,
 			 struct vb2_v4l2_buffer *src_buf)
 {
 	const struct v4l2_ctrl_mpeg2_slice_params *params;
-	const struct v4l2_ctrl_mpeg2_quantization *quantization;
 	const struct v4l2_mpeg2_sequence *sequence;
 	const struct v4l2_mpeg2_picture *picture;
 	struct vdpu2_regs *p_regs = regs;
 
 	params = rockchip_mpp_get_cur_ctrl(session,
 					   V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS);
-	quantization = rockchip_mpp_get_cur_ctrl(session,
-						 V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION);
-
 	if (!params)
 		return -EINVAL;
 
@@ -211,6 +207,7 @@ int rkvdpu_mpeg2_prepare_buf(struct mpp_session *session, void *regs)
 {
 	const struct v4l2_ctrl_mpeg2_slice_params *params;
 	const struct v4l2_mpeg2_sequence *sequence;
+	const struct v4l2_ctrl_mpeg2_quantization *quantization;
 	const struct v4l2_mpeg2_picture *picture;
 	struct vb2_v4l2_buffer *dst_buf;
 	dma_addr_t cur_addr, fwd_addr, bwd_addr;
@@ -223,6 +220,9 @@ int rkvdpu_mpeg2_prepare_buf(struct mpp_session *session, void *regs)
 	picture = &params->picture;
 	sequence = &params->sequence;
 
+	quantization = rockchip_mpp_get_cur_ctrl(session,
+			V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION);
+
 	dst_buf = v4l2_m2m_next_dst_buf(session->fh.m2m_ctx);
 	cur_addr = vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
 
@@ -266,5 +266,8 @@ int rkvdpu_mpeg2_prepare_buf(struct mpp_session *session, void *regs)
 		p_regs->sw135.refer3_base = cur_addr >> 2;
 	}
 
+	mpeg2_dec_copy_qtable(session->qtable_vaddr, quantization);
+        p_regs->sw61.qtable_base = session->qtable_addr;
+
 	return 0;
 }
-- 
2.20.1
