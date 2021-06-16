Return-Path: <SRS0=qhcO=LK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D731CC49EA6
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jun 2021 21:52:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3D9A4613AE
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jun 2021 21:52:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3D9A4613AE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zp7kCSwKbofMc6XLpO9bx9Hgivh38ymTZUkXwdHfAJo=; b=uqeZELUu8qR/pi
	5RhuFzqyPxKymwilJ96WBQIBS/QYbynO96i75S9AU9eykwYGUOdpcydMISp05KB4JvTAa+cOiI5EU
	7lY/gp1fURPhbILKY8hmGXcNQNmIWTUbpHMFP7v5yAuM/JPp+C9t1C3Dhh7kVlga9M71VRiOY2wra
	T2NcvzRTlln6hCoLSifH2JLsha01+pQT3d50N/Jg0T4vT2mjUO06sg4aeEkWvpuXObaNQxGKxx5s8
	z0v5yaC9CGHxWllfvW+NaALKAx8uDLI1WMDgqtxVp8CGQ+6wIk7T6kxxD88VYGdlLAxaj6lEAYkxo
	Ep5rmDDiEfCyXjvEptdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltdSa-007oY0-85; Wed, 16 Jun 2021 21:52:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltdSS-007oRY-2Y
 for linux-rockchip@bombadil.infradead.org; Wed, 16 Jun 2021 21:52:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=RtrOm1EoACW41CWmX0zo3ecGui8yUOnirwPUS2dJK2o=; b=rczG1uEuAVppHLCOFZMRQ4WNgx
 5OAlZZr3u7kIqqoPrOmm6OYv2P07LrUAhXMQX7tIKA+kF+M6YD3ACGkId7othmIgYKPxFd3r0tLZu
 Eg+TUwlpt1ghOo9cW0tYFb8qisO3I1XDQn9A/+yjdCzvvRZ6kDdwt+bE1ZrIfdubA0Sqd82MNhuiP
 0KJxfJ2pfUdcMpEIjbCVaLUMDS5WDnjChopzvWvQBwiqdOSTLP0VFTWSSepyIwEJj+LEEUxuP290R
 F1auXPAMFgTV01eyJho3QqNDZE723dGNMDFxO9aXuyWOsrCZZGA0Ye2V/zCkoChVrYxM7DE26eYwE
 +U/vUDcg==;
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltdSG-008Rc4-Ad
 for linux-rockchip@lists.infradead.org; Wed, 16 Jun 2021 21:52:21 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1ltdSJ-0008QL-7n; Wed, 16 Jun 2021 23:52:15 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl
Cc: ezequiel@collabora.com, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, Laurent.pinchart@ideasonboard.com,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 heiko@sntech.de, robh+dt@kernel.org, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: [PATCH v4 05/10] media: rockchip: rkisp1: make some isp-param
 functions variable
Date: Wed, 16 Jun 2021 23:52:06 +0200
Message-Id: <20210616215211.4002992-6-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210616215211.4002992-1-heiko@sntech.de>
References: <20210616215211.4002992-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_225219_385393_089C87F1 
X-CRM114-Status: GOOD (  16.31  )
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

Therefore make it possible to override the needed params functions.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 .../platform/rockchip/rkisp1/rkisp1-common.h  | 25 +++++++
 .../platform/rockchip/rkisp1/rkisp1-params.c  | 67 +++++++++++--------
 2 files changed, 65 insertions(+), 27 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 25dd5c93620e..74ddd8256366 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -254,11 +254,35 @@ struct rkisp1_stats {
 	struct v4l2_format vdev_fmt;
 };
 
+struct rkisp1_params;
+struct rkisp1_params_ops {
+	void (*lsc_matrix_config)(struct rkisp1_params *params,
+				  const struct rkisp1_cif_isp_lsc_config *pconfig);
+	void (*goc_config)(struct rkisp1_params *params,
+			   const struct rkisp1_cif_isp_goc_config *arg);
+	void (*awb_meas_config)(struct rkisp1_params *params,
+				const struct rkisp1_cif_isp_awb_meas_config *arg);
+	void (*awb_meas_enable)(struct rkisp1_params *params,
+				const struct rkisp1_cif_isp_awb_meas_config *arg,
+				bool en);
+	void (*awb_gain_config)(struct rkisp1_params *params,
+				const struct rkisp1_cif_isp_awb_gain_config *arg);
+	void (*aec_config)(struct rkisp1_params *params,
+			   const struct rkisp1_cif_isp_aec_config *arg);
+	void (*hst_config)(struct rkisp1_params *params,
+			   const struct rkisp1_cif_isp_hst_config *arg);
+	void (*hst_enable)(struct rkisp1_params *params,
+			   const struct rkisp1_cif_isp_hst_config *arg, bool en);
+	void (*afm_config)(struct rkisp1_params *params,
+			   const struct rkisp1_cif_isp_afc_config *arg);
+};
+
 /*
  * struct rkisp1_params - ISP input parameters device
  *
  * @vnode:		video node
  * @rkisp1:		pointer to the rkisp1 device
+ * @ops:		pointer to the variant-specific operations
  * @config_lock:	locks the buffer list 'params'
  * @params:		queue of rkisp1_buffer
  * @vdev_fmt:		v4l2_format of the metadata format
@@ -268,6 +292,7 @@ struct rkisp1_stats {
 struct rkisp1_params {
 	struct rkisp1_vdev_node vnode;
 	struct rkisp1_device *rkisp1;
+	struct rkisp1_params_ops *ops;
 
 	spinlock_t config_lock; /* locks the buffers list 'params' */
 	struct list_head params;
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index b6beddd988d0..1aab2720ffa2 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -185,8 +185,8 @@ static void rkisp1_bls_config(struct rkisp1_params *params,
 
 /* ISP LS correction interface function */
 static void
-rkisp1_lsc_correct_matrix_config(struct rkisp1_params *params,
-				 const struct rkisp1_cif_isp_lsc_config *pconfig)
+rkisp1_lsc_matrix_config(struct rkisp1_params *params,
+			 const struct rkisp1_cif_isp_lsc_config *pconfig)
 {
 	unsigned int isp_lsc_status, sram_addr, isp_lsc_table_sel, i, j, data;
 
@@ -265,7 +265,7 @@ static void rkisp1_lsc_config(struct rkisp1_params *params,
 	lsc_ctrl = rkisp1_read(params->rkisp1, RKISP1_CIF_ISP_LSC_CTRL);
 	rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_LSC_CTRL,
 				RKISP1_CIF_ISP_LSC_CTRL_ENA);
-	rkisp1_lsc_correct_matrix_config(params, arg);
+	params->ops->lsc_matrix_config(params, arg);
 
 	for (i = 0; i < RKISP1_CIF_ISP_LSC_SECTORS_TBL_SIZE / 2; i++) {
 		/* program x size tables */
@@ -955,7 +955,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 
 	/* update awb gains */
 	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN)
-		rkisp1_awb_gain_config(params, &new_params->others.awb_gain_config);
+		params->ops->awb_gain_config(params, &new_params->others.awb_gain_config);
 
 	if (module_en_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN) {
 		if (module_ens & RKISP1_CIF_ISP_MODULE_AWB_GAIN)
@@ -1010,8 +1010,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 
 	/* update goc config */
 	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_GOC)
-		rkisp1_goc_config(params,
-				  &new_params->others.goc_config);
+		params->ops->goc_config(params, &new_params->others.goc_config);
 
 	if (module_en_update & RKISP1_CIF_ISP_MODULE_GOC) {
 		if (module_ens & RKISP1_CIF_ISP_MODULE_GOC)
@@ -1081,17 +1080,17 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
 
 	/* update awb config */
 	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB)
-		rkisp1_awb_meas_config(params, &new_params->meas.awb_meas_config);
+		params->ops->awb_meas_config(params, &new_params->meas.awb_meas_config);
 
 	if (module_en_update & RKISP1_CIF_ISP_MODULE_AWB)
-		rkisp1_awb_meas_enable(params,
-				       &new_params->meas.awb_meas_config,
-				       !!(module_ens & RKISP1_CIF_ISP_MODULE_AWB));
+		params->ops->awb_meas_enable(params,
+					     &new_params->meas.awb_meas_config,
+					     !!(module_ens & RKISP1_CIF_ISP_MODULE_AWB));
 
 	/* update afc config */
 	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AFC)
-		rkisp1_afm_config(params,
-				  &new_params->meas.afc_config);
+		params->ops->afm_config(params,
+					&new_params->meas.afc_config);
 
 	if (module_en_update & RKISP1_CIF_ISP_MODULE_AFC) {
 		if (module_ens & RKISP1_CIF_ISP_MODULE_AFC)
@@ -1106,18 +1105,18 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
 
 	/* update hst config */
 	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_HST)
-		rkisp1_hst_config(params,
-				  &new_params->meas.hst_config);
+		params->ops->hst_config(params,
+					&new_params->meas.hst_config);
 
 	if (module_en_update & RKISP1_CIF_ISP_MODULE_HST)
-		rkisp1_hst_enable(params,
-				  &new_params->meas.hst_config,
-				  !!(module_ens & RKISP1_CIF_ISP_MODULE_HST));
+		params->ops->hst_enable(params,
+					&new_params->meas.hst_config,
+					!!(module_ens & RKISP1_CIF_ISP_MODULE_HST));
 
 	/* update aec config */
 	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AEC)
-		rkisp1_aec_config(params,
-				  &new_params->meas.aec_config);
+		params->ops->aec_config(params,
+					&new_params->meas.aec_config);
 
 	if (module_en_update & RKISP1_CIF_ISP_MODULE_AEC) {
 		if (module_ens & RKISP1_CIF_ISP_MODULE_AEC)
@@ -1218,20 +1217,20 @@ static void rkisp1_params_config_parameter(struct rkisp1_params *params)
 {
 	struct rkisp1_cif_isp_hst_config hst = rkisp1_hst_params_default_config;
 
-	rkisp1_awb_meas_config(params, &rkisp1_awb_params_default_config);
-	rkisp1_awb_meas_enable(params, &rkisp1_awb_params_default_config,
-			       true);
+	params->ops->awb_meas_config(params, &rkisp1_awb_params_default_config);
+	params->ops->awb_meas_enable(params, &rkisp1_awb_params_default_config,
+				     true);
 
-	rkisp1_aec_config(params, &rkisp1_aec_params_default_config);
+	params->ops->aec_config(params, &rkisp1_aec_params_default_config);
 	rkisp1_param_set_bits(params, RKISP1_CIF_ISP_EXP_CTRL,
 			      RKISP1_CIF_ISP_EXP_ENA);
 
-	rkisp1_afm_config(params, &rkisp1_afc_params_default_config);
+	params->ops->afm_config(params, &rkisp1_afc_params_default_config);
 	rkisp1_param_set_bits(params, RKISP1_CIF_ISP_AFM_CTRL,
 			      RKISP1_CIF_ISP_AFM_ENA);
 
 	memset(hst.hist_weight, 0x01, sizeof(hst.hist_weight));
-	rkisp1_hst_config(params, &hst);
+	params->ops->hst_config(params, &hst);
 	rkisp1_param_set_bits(params, RKISP1_CIF_ISP_HIST_PROP,
 			      rkisp1_hst_params_default_config.mode);
 
@@ -1275,7 +1274,7 @@ void rkisp1_params_disable(struct rkisp1_params *params)
 				RKISP1_CIF_ISP_DEMOSAIC_BYPASS);
 	rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_FILT_MODE,
 				RKISP1_CIF_ISP_FLT_ENA);
-	rkisp1_awb_meas_enable(params, NULL, false);
+	params->ops->awb_meas_enable(params, NULL, false);
 	rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_CTRL,
 				RKISP1_CIF_ISP_CTRL_ISP_AWB_ENA);
 	rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_EXP_CTRL,
@@ -1283,7 +1282,7 @@ void rkisp1_params_disable(struct rkisp1_params *params)
 	rkisp1_ctk_enable(params, false);
 	rkisp1_param_clear_bits(params, RKISP1_CIF_C_PROC_CTRL,
 				RKISP1_CIF_C_PROC_CTR_ENABLE);
-	rkisp1_hst_enable(params, NULL, false);
+	params->ops->hst_enable(params, NULL, false);
 	rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_AFM_CTRL,
 				RKISP1_CIF_ISP_AFM_ENA);
 	rkisp1_ie_enable(params, false);
@@ -1291,6 +1290,18 @@ void rkisp1_params_disable(struct rkisp1_params *params)
 				RKISP1_CIF_ISP_DPF_MODE_EN);
 }
 
+static struct rkisp1_params_ops rkisp1_params_ops = {
+	.lsc_matrix_config = rkisp1_lsc_matrix_config,
+	.goc_config = rkisp1_goc_config,
+	.awb_meas_config = rkisp1_awb_meas_config,
+	.awb_meas_enable = rkisp1_awb_meas_enable,
+	.awb_gain_config = rkisp1_awb_gain_config,
+	.aec_config = rkisp1_aec_config,
+	.hst_config = rkisp1_hst_config,
+	.hst_enable = rkisp1_hst_enable,
+	.afm_config = rkisp1_afm_config,
+};
+
 static int rkisp1_params_enum_fmt_meta_out(struct file *file, void *priv,
 					   struct v4l2_fmtdesc *f)
 {
@@ -1457,6 +1468,8 @@ static void rkisp1_init_params(struct rkisp1_params *params)
 		V4L2_META_FMT_RK_ISP1_PARAMS;
 	params->vdev_fmt.fmt.meta.buffersize =
 		sizeof(struct rkisp1_params_cfg);
+
+	params->ops = &rkisp1_params_ops;
 }
 
 int rkisp1_params_register(struct rkisp1_device *rkisp1)
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
