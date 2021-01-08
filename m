Return-Path: <SRS0=mPU+=GL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E96CEC433E6
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 19:34:07 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3937723AA7
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 19:34:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3937723AA7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aPXCjpSZypi4DL7jthvqABwxpSXqhIfT1/FpPQFBbC4=; b=LM6GrF/KbaukJTvjdzJITjVWx
	kfKRHoa23qqAlgrT/UBt/U1Ev/szUZHYajlKVe6teY4tAxgCoyuSEqmxQjjE1dRTvudSc5j2AOYWu
	c+8dnBRUxoFlakLMHw4o1LX6YP+3cu+UPUS6RhpNisfqswaVajMlxdkSvbuWYTpU3FAcm8XWj9jgF
	QYOWkT3XAU4hg00KWi7Q/lXR/q53a5bBBBAlYTKm6NEC0C2sWSGTD62eDBsV2e8KcLf/lTwvJ1E8z
	2y2toPgReUTYI6CvDjANlnMOwjqOz4Yma97G5kv3wzHg43WnFTRhjmhi0mrnoV++Xh94wh1/f7nT7
	xl4FBrs9A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxxWJ-00061p-RW; Fri, 08 Jan 2021 19:33:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxxW8-0005u2-Lx
 for linux-rockchip@lists.infradead.org; Fri, 08 Jan 2021 19:33:52 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kxxVy-0004Zr-3t; Fri, 08 Jan 2021 20:33:38 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: ezequiel@collabora.com, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, Laurent.pinchart@ideasonboard.com
Subject: [PATCH RFC 09/11] media: rockchip: rkisp1: make some isp-stats
 functions variable
Date: Fri,  8 Jan 2021 20:33:09 +0100
Message-Id: <20210108193311.3423236-10-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210108193311.3423236-1-heiko@sntech.de>
References: <20210108193311.3423236-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210108_143348_946264_0284F021 
X-CRM114-Status: GOOD (  13.50  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: heiko@sntech.de, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-rockchip@lists.infradead.org, christoph.muellner@theobroma-systems.com,
 mchehab@kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

The isp block evolved in subsequent socs, so some functions
will behave differently on newer variants.

Therefore make it possible to override the needed stats functions.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 .../platform/rockchip/rkisp1/rkisp1-common.h  | 17 +++++++++++++
 .../platform/rockchip/rkisp1/rkisp1-stats.c   | 24 +++++++++++++++----
 2 files changed, 36 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 4034a05ef9d2..be0ae02165c9 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -240,6 +240,21 @@ struct rkisp1_capture {
 	} pix;
 };
 
+struct rkisp1_stats;
+struct rkisp1_stats_ops {
+	void (*get_awb_meas)(struct rkisp1_stats *stats,
+			     struct rkisp1_stat_buffer *pbuf);
+	void (*get_aec_meas)(struct rkisp1_stats *stats,
+			     struct rkisp1_stat_buffer *pbuf);
+	void (*get_hst_meas)(struct rkisp1_stats *stats,
+			     struct rkisp1_stat_buffer *pbuf);
+};
+
+struct rkisp1_stats_config {
+	const int ae_mean_max;
+	const int hist_bin_n_max;
+};
+
 /*
  * struct rkisp1_stats - ISP Statistics device
  *
@@ -252,6 +267,8 @@ struct rkisp1_capture {
 struct rkisp1_stats {
 	struct rkisp1_vdev_node vnode;
 	struct rkisp1_device *rkisp1;
+	struct rkisp1_stats_ops *ops;
+	struct rkisp1_stats_config *config;
 
 	spinlock_t lock; /* locks the buffers list 'stats' */
 	struct list_head stat;
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
index 3ddab8fa8f2d..7136292039f6 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
@@ -203,7 +203,7 @@ static void rkisp1_stats_get_aec_meas(struct rkisp1_stats *stats,
 	unsigned int i;
 
 	pbuf->meas_type |= RKISP1_CIF_ISP_STAT_AUTOEXP;
-	for (i = 0; i < RKISP1_CIF_ISP_AE_MEAN_MAX; i++)
+	for (i = 0; i < stats->config->ae_mean_max; i++)
 		pbuf->params.ae.exp_mean[i] =
 			(u8)rkisp1_read(rkisp1,
 					RKISP1_CIF_ISP_EXP_MEAN_00 + i * 4);
@@ -233,7 +233,7 @@ static void rkisp1_stats_get_hst_meas(struct rkisp1_stats *stats,
 	unsigned int i;
 
 	pbuf->meas_type |= RKISP1_CIF_ISP_STAT_HIST;
-	for (i = 0; i < RKISP1_CIF_ISP_HIST_BIN_N_MAX; i++)
+	for (i = 0; i < stats->config->hist_bin_n_max; i++)
 		pbuf->params.hist.hist_bins[i] =
 			(u8)rkisp1_read(rkisp1,
 					RKISP1_CIF_ISP_HIST_BIN_0 + i * 4);
@@ -286,6 +286,17 @@ static void rkisp1_stats_get_bls_meas(struct rkisp1_stats *stats,
 	}
 }
 
+static struct rkisp1_stats_ops rkisp1_stats_ops = {
+	.get_awb_meas = rkisp1_stats_get_awb_meas,
+	.get_aec_meas = rkisp1_stats_get_aec_meas,
+	.get_hst_meas = rkisp1_stats_get_hst_meas,
+};
+
+static struct rkisp1_stats_config rkisp1_stats_config = {
+	.ae_mean_max = 25,
+	.hist_bin_n_max = 16,
+};
+
 static void
 rkisp1_stats_send_measurement(struct rkisp1_stats *stats, u32 isp_ris)
 {
@@ -308,18 +319,18 @@ rkisp1_stats_send_measurement(struct rkisp1_stats *stats, u32 isp_ris)
 		(struct rkisp1_stat_buffer *)(cur_buf->vaddr);
 
 	if (isp_ris & RKISP1_CIF_ISP_AWB_DONE)
-		rkisp1_stats_get_awb_meas(stats, cur_stat_buf);
+		stats->ops->get_awb_meas(stats, cur_stat_buf);
 
 	if (isp_ris & RKISP1_CIF_ISP_AFM_FIN)
 		rkisp1_stats_get_afc_meas(stats, cur_stat_buf);
 
 	if (isp_ris & RKISP1_CIF_ISP_EXP_END) {
-		rkisp1_stats_get_aec_meas(stats, cur_stat_buf);
+		stats->ops->get_aec_meas(stats, cur_stat_buf);
 		rkisp1_stats_get_bls_meas(stats, cur_stat_buf);
 	}
 
 	if (isp_ris & RKISP1_CIF_ISP_HIST_MEASURE_RDY)
-		rkisp1_stats_get_hst_meas(stats, cur_stat_buf);
+		stats->ops->get_hst_meas(stats, cur_stat_buf);
 
 	vb2_set_plane_payload(&cur_buf->vb.vb2_buf, 0,
 			      sizeof(struct rkisp1_stat_buffer));
@@ -353,6 +364,9 @@ static void rkisp1_init_stats(struct rkisp1_stats *stats)
 		V4L2_META_FMT_RK_ISP1_STAT_3A;
 	stats->vdev_fmt.fmt.meta.buffersize =
 		sizeof(struct rkisp1_stat_buffer);
+
+	stats->ops = &rkisp1_stats_ops;
+	stats->config = &rkisp1_stats_config;
 }
 
 int rkisp1_stats_register(struct rkisp1_device *rkisp1)
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
