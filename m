Return-Path: <SRS0=F11g=MP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDFFEC4320A
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jul 2021 07:32:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8E08A60E91
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jul 2021 07:32:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8E08A60E91
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tbhH5LkgVWiBj+3WVjp9WdyeYHn/iqMBdh7dFWWyuH0=; b=glOmiBade7nnni
	VADOBKiF4Hpdcxt6fOxufCWXlE11mRKBIV5pdlCJE+OfP1QpnNejJyAVUuHFUYs3CSsyERrbD+ZFs
	OvgtBvRUf18ED88AhmIoBU9SU36LliG5qv5EdYvYMcxVzGGpkrIQ+JFSD4R27fDjKXfbhfxkg4GnF
	29rHsCGAfNvkTP7gism6NCUKPtV6Z/GRhr29t8tzAQwLL365hGP+1CQg5aFP/XaGLDK1ztwxQC2Tn
	wl+OoGgDYfPE/P+8Cxues5MKIUP0T+cmPRX78INQOcBfB5Tj/fmlJSJ7Ev4jjV02I3+bh9i5XF0vU
	0lDPI8YEj7f3sD0TMmYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6pfp-003hha-5O; Fri, 23 Jul 2021 07:32:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6pfb-003hV3-CG
 for linux-rockchip@lists.infradead.org; Fri, 23 Jul 2021 07:32:34 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m6pfX-0003dj-KN; Fri, 23 Jul 2021 09:32:27 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl
Cc: ezequiel@collabora.com, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, Laurent.pinchart@ideasonboard.com,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 heiko@sntech.de, robh+dt@kernel.org, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH v7 06/10] media: rockchip: rkisp1: make some isp-stats
 functions variable
Date: Fri, 23 Jul 2021 09:32:17 +0200
Message-Id: <20210723073221.1276358-7-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210723073221.1276358-1-heiko@sntech.de>
References: <20210723073221.1276358-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210723_003231_629114_3F9612CA 
X-CRM114-Status: GOOD (  12.91  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

The isp block evolved in subsequent socs, so some functions
will behave differently on newer variants.

Therefore make it possible to override the needed stats functions.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Reviewed-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../media/platform/rockchip/rkisp1/rkisp1-common.h | 11 +++++++++++
 .../media/platform/rockchip/rkisp1/rkisp1-stats.c  | 14 +++++++++++---
 2 files changed, 22 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index b285ce9feb35..bb277cd79aa6 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -236,6 +236,16 @@ struct rkisp1_capture {
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
 /*
  * struct rkisp1_stats - ISP Statistics device
  *
@@ -248,6 +258,7 @@ struct rkisp1_capture {
 struct rkisp1_stats {
 	struct rkisp1_vdev_node vnode;
 	struct rkisp1_device *rkisp1;
+	const struct rkisp1_stats_ops *ops;
 
 	spinlock_t lock; /* locks the buffers list 'stats' */
 	struct list_head stat;
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
index c1d07a2e8839..e5743efecd1c 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
@@ -287,6 +287,12 @@ static void rkisp1_stats_get_bls_meas(struct rkisp1_stats *stats,
 	}
 }
 
+static const struct rkisp1_stats_ops rkisp1_stats_ops = {
+	.get_awb_meas = rkisp1_stats_get_awb_meas,
+	.get_aec_meas = rkisp1_stats_get_aec_meas,
+	.get_hst_meas = rkisp1_stats_get_hst_meas,
+};
+
 static void
 rkisp1_stats_send_measurement(struct rkisp1_stats *stats, u32 isp_ris)
 {
@@ -309,18 +315,18 @@ rkisp1_stats_send_measurement(struct rkisp1_stats *stats, u32 isp_ris)
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
@@ -354,6 +360,8 @@ static void rkisp1_init_stats(struct rkisp1_stats *stats)
 		V4L2_META_FMT_RK_ISP1_STAT_3A;
 	stats->vdev_fmt.fmt.meta.buffersize =
 		sizeof(struct rkisp1_stat_buffer);
+
+	stats->ops = &rkisp1_stats_ops;
 }
 
 int rkisp1_stats_register(struct rkisp1_device *rkisp1)
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
