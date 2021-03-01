Return-Path: <SRS0=+1u9=H7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E71BC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Mar 2021 17:19:03 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 06C23651E1
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Mar 2021 17:19:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 06C23651E1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yMyMQr5b/n2++f5ITpuF7izSPJBlM2FD8ycCVdknPfc=; b=cUtNlcqIZzoK4ob+rkrGkEtToB
	H5AKk3Kji5LkORhRIazoe5cmB16jo9effgDF17CE1caE6yr5qp+W8DPfvLtQQobXBv4WrZZ5kqCQN
	YiTKjMk1IIOuL/ximL4DelHZHYBnKAFt2LCk6B4hEtcO/3KS47xRCNomr/nrnsdXaPDWmXIJAGxmT
	ViKBpdPSC9xjLqtdrUSK7Ph1kT6POvg37oyWDv31QQ5OIgvd/NkrPFIl/pIMA0eqPGB6xyeOFxIwu
	EGfwMZDnC9s0nI3788v69T/ltdtyqOEA7lyYXtRfiVJW/SSN9gJg1vB34I2+aGolv3WmIvt2VxjrQ
	LvrPeDrw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGmC7-0000Vg-MC; Mon, 01 Mar 2021 17:18:55 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGmC2-0000SL-Bp
 for linux-rockchip@lists.infradead.org; Mon, 01 Mar 2021 17:18:53 +0000
Received: from guri.fritz.box
 (p200300c7cf38380081778a42153c5979.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf38:3800:8177:8a42:153c:5979])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B531B1F45164;
 Mon,  1 Mar 2021 17:18:43 +0000 (GMT)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 1/2] media: rkisp1: params: remove extra 'if' conditions
Date: Mon,  1 Mar 2021 18:18:34 +0100
Message-Id: <20210301171835.24202-2-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210301171835.24202-1-dafna.hirschfeld@collabora.com>
References: <20210301171835.24202-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_121850_607261_DA7D95EE 
X-CRM114-Status: GOOD (  12.14  )
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

There is a repeating code pattern:

if (a || b) {
	if (a)
		...
	if (b)
		...
}

In this pattern, the first 'if' is redundant.
The code can be replaced with:

if (a)
	...
if (b)
	...

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 .../platform/rockchip/rkisp1/rkisp1-params.c  | 445 ++++++++----------
 1 file changed, 195 insertions(+), 250 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index aa5f45749543..0e69d888e572 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -889,219 +889,177 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 	module_cfg_update = new_params->module_cfg_update;
 	module_ens = new_params->module_ens;
 
-	if ((module_en_update & RKISP1_CIF_ISP_MODULE_DPCC) ||
-	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPCC)) {
-		/*update dpc config */
-		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPCC)
-			rkisp1_dpcc_config(params,
-					   &new_params->others.dpcc_config);
-
-		if (module_en_update & RKISP1_CIF_ISP_MODULE_DPCC) {
-			if (module_ens & RKISP1_CIF_ISP_MODULE_DPCC)
-				rkisp1_param_set_bits(params,
-						      RKISP1_CIF_ISP_DPCC_MODE,
-						      RKISP1_CIF_ISP_DPCC_ENA);
-			else
-				rkisp1_param_clear_bits(params,
-							RKISP1_CIF_ISP_DPCC_MODE,
-							RKISP1_CIF_ISP_DPCC_ENA);
-		}
+	/*update dpc config */
+	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPCC)
+		rkisp1_dpcc_config(params,
+				   &new_params->others.dpcc_config);
+
+	if (module_en_update & RKISP1_CIF_ISP_MODULE_DPCC) {
+		if (module_ens & RKISP1_CIF_ISP_MODULE_DPCC)
+			rkisp1_param_set_bits(params,
+					      RKISP1_CIF_ISP_DPCC_MODE,
+					      RKISP1_CIF_ISP_DPCC_ENA);
+		else
+			rkisp1_param_clear_bits(params,
+						RKISP1_CIF_ISP_DPCC_MODE,
+						RKISP1_CIF_ISP_DPCC_ENA);
 	}
 
-	if ((module_en_update & RKISP1_CIF_ISP_MODULE_BLS) ||
-	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_BLS)) {
-		/* update bls config */
-		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_BLS)
-			rkisp1_bls_config(params,
-					  &new_params->others.bls_config);
-
-		if (module_en_update & RKISP1_CIF_ISP_MODULE_BLS) {
-			if (module_ens & RKISP1_CIF_ISP_MODULE_BLS)
-				rkisp1_param_set_bits(params,
-						      RKISP1_CIF_ISP_BLS_CTRL,
-						      RKISP1_CIF_ISP_BLS_ENA);
-			else
-				rkisp1_param_clear_bits(params,
-							RKISP1_CIF_ISP_BLS_CTRL,
-							RKISP1_CIF_ISP_BLS_ENA);
-		}
-	}
+	/* update bls config */
+	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_BLS)
+		rkisp1_bls_config(params,
+				  &new_params->others.bls_config);
 
-	if ((module_en_update & RKISP1_CIF_ISP_MODULE_SDG) ||
-	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_SDG)) {
-		/* update sdg config */
-		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_SDG)
-			rkisp1_sdg_config(params,
-					  &new_params->others.sdg_config);
-
-		if (module_en_update & RKISP1_CIF_ISP_MODULE_SDG) {
-			if (module_ens & RKISP1_CIF_ISP_MODULE_SDG)
-				rkisp1_param_set_bits(params,
-						      RKISP1_CIF_ISP_CTRL,
-						      RKISP1_CIF_ISP_CTRL_ISP_GAMMA_IN_ENA);
-			else
-				rkisp1_param_clear_bits(params,
-							RKISP1_CIF_ISP_CTRL,
-							RKISP1_CIF_ISP_CTRL_ISP_GAMMA_IN_ENA);
-		}
+	if (module_en_update & RKISP1_CIF_ISP_MODULE_BLS) {
+		if (module_ens & RKISP1_CIF_ISP_MODULE_BLS)
+			rkisp1_param_set_bits(params,
+					      RKISP1_CIF_ISP_BLS_CTRL,
+					      RKISP1_CIF_ISP_BLS_ENA);
+		else
+			rkisp1_param_clear_bits(params,
+						RKISP1_CIF_ISP_BLS_CTRL,
+						RKISP1_CIF_ISP_BLS_ENA);
 	}
 
-	if ((module_en_update & RKISP1_CIF_ISP_MODULE_LSC) ||
-	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_LSC)) {
-		/* update lsc config */
-		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_LSC)
-			rkisp1_lsc_config(params,
-					  &new_params->others.lsc_config);
-
-		if (module_en_update & RKISP1_CIF_ISP_MODULE_LSC) {
-			if (module_ens & RKISP1_CIF_ISP_MODULE_LSC)
-				rkisp1_param_set_bits(params,
-						      RKISP1_CIF_ISP_LSC_CTRL,
-						      RKISP1_CIF_ISP_LSC_CTRL_ENA);
-			else
-				rkisp1_param_clear_bits(params,
-							RKISP1_CIF_ISP_LSC_CTRL,
-							RKISP1_CIF_ISP_LSC_CTRL_ENA);
-		}
-	}
+	/* update sdg config */
+	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_SDG)
+		rkisp1_sdg_config(params,
+				  &new_params->others.sdg_config);
 
-	if ((module_en_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN) ||
-	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN)) {
-		/* update awb gains */
-		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN)
-			rkisp1_awb_gain_config(params,
-					       &new_params->others.awb_gain_config);
-
-		if (module_en_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN) {
-			if (module_ens & RKISP1_CIF_ISP_MODULE_AWB_GAIN)
-				rkisp1_param_set_bits(params,
-						      RKISP1_CIF_ISP_CTRL,
-						      RKISP1_CIF_ISP_CTRL_ISP_AWB_ENA);
-			else
-				rkisp1_param_clear_bits(params,
-							RKISP1_CIF_ISP_CTRL,
-							RKISP1_CIF_ISP_CTRL_ISP_AWB_ENA);
-		}
+	if (module_en_update & RKISP1_CIF_ISP_MODULE_SDG) {
+		if (module_ens & RKISP1_CIF_ISP_MODULE_SDG)
+			rkisp1_param_set_bits(params,
+					      RKISP1_CIF_ISP_CTRL,
+					      RKISP1_CIF_ISP_CTRL_ISP_GAMMA_IN_ENA);
+		else
+			rkisp1_param_clear_bits(params,
+						RKISP1_CIF_ISP_CTRL,
+						RKISP1_CIF_ISP_CTRL_ISP_GAMMA_IN_ENA);
 	}
 
-	if ((module_en_update & RKISP1_CIF_ISP_MODULE_BDM) ||
-	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_BDM)) {
-		/* update bdm config */
-		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_BDM)
-			rkisp1_bdm_config(params,
-					  &new_params->others.bdm_config);
-
-		if (module_en_update & RKISP1_CIF_ISP_MODULE_BDM) {
-			if (module_ens & RKISP1_CIF_ISP_MODULE_BDM)
-				rkisp1_param_set_bits(params,
-						      RKISP1_CIF_ISP_DEMOSAIC,
-						      RKISP1_CIF_ISP_DEMOSAIC_BYPASS);
-			else
-				rkisp1_param_clear_bits(params,
-							RKISP1_CIF_ISP_DEMOSAIC,
-							RKISP1_CIF_ISP_DEMOSAIC_BYPASS);
-		}
+	/* update lsc config */
+	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_LSC)
+		rkisp1_lsc_config(params,
+				  &new_params->others.lsc_config);
+
+	if (module_en_update & RKISP1_CIF_ISP_MODULE_LSC) {
+		if (module_ens & RKISP1_CIF_ISP_MODULE_LSC)
+			rkisp1_param_set_bits(params,
+					      RKISP1_CIF_ISP_LSC_CTRL,
+					      RKISP1_CIF_ISP_LSC_CTRL_ENA);
+		else
+			rkisp1_param_clear_bits(params,
+						RKISP1_CIF_ISP_LSC_CTRL,
+						RKISP1_CIF_ISP_LSC_CTRL_ENA);
 	}
 
-	if ((module_en_update & RKISP1_CIF_ISP_MODULE_FLT) ||
-	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_FLT)) {
-		/* update filter config */
-		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_FLT)
-			rkisp1_flt_config(params,
-					  &new_params->others.flt_config);
-
-		if (module_en_update & RKISP1_CIF_ISP_MODULE_FLT) {
-			if (module_ens & RKISP1_CIF_ISP_MODULE_FLT)
-				rkisp1_param_set_bits(params,
-						      RKISP1_CIF_ISP_FILT_MODE,
-						      RKISP1_CIF_ISP_FLT_ENA);
-			else
-				rkisp1_param_clear_bits(params,
-							RKISP1_CIF_ISP_FILT_MODE,
-							RKISP1_CIF_ISP_FLT_ENA);
-		}
+	/* update awb gains */
+	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN)
+		rkisp1_awb_gain_config(params, &new_params->others.awb_gain_config);
+
+	if (module_en_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN) {
+		if (module_ens & RKISP1_CIF_ISP_MODULE_AWB_GAIN)
+			rkisp1_param_set_bits(params,
+					      RKISP1_CIF_ISP_CTRL,
+					      RKISP1_CIF_ISP_CTRL_ISP_AWB_ENA);
+		else
+			rkisp1_param_clear_bits(params,
+						RKISP1_CIF_ISP_CTRL,
+						RKISP1_CIF_ISP_CTRL_ISP_AWB_ENA);
 	}
 
-	if ((module_en_update & RKISP1_CIF_ISP_MODULE_CTK) ||
-	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_CTK)) {
-		/* update ctk config */
-		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_CTK)
-			rkisp1_ctk_config(params,
-					  &new_params->others.ctk_config);
+	/* update bdm config */
+	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_BDM)
+		rkisp1_bdm_config(params,
+				  &new_params->others.bdm_config);
 
-		if (module_en_update & RKISP1_CIF_ISP_MODULE_CTK)
-			rkisp1_ctk_enable(params,
-					  !!(module_ens & RKISP1_CIF_ISP_MODULE_CTK));
+	if (module_en_update & RKISP1_CIF_ISP_MODULE_BDM) {
+		if (module_ens & RKISP1_CIF_ISP_MODULE_BDM)
+			rkisp1_param_set_bits(params,
+					      RKISP1_CIF_ISP_DEMOSAIC,
+					      RKISP1_CIF_ISP_DEMOSAIC_BYPASS);
+		else
+			rkisp1_param_clear_bits(params,
+						RKISP1_CIF_ISP_DEMOSAIC,
+						RKISP1_CIF_ISP_DEMOSAIC_BYPASS);
 	}
 
-	if ((module_en_update & RKISP1_CIF_ISP_MODULE_GOC) ||
-	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_GOC)) {
-		/* update goc config */
-		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_GOC)
-			rkisp1_goc_config(params,
-					  &new_params->others.goc_config);
-
-		if (module_en_update & RKISP1_CIF_ISP_MODULE_GOC) {
-			if (module_ens & RKISP1_CIF_ISP_MODULE_GOC)
-				rkisp1_param_set_bits(params,
-						      RKISP1_CIF_ISP_CTRL,
-						      RKISP1_CIF_ISP_CTRL_ISP_GAMMA_OUT_ENA);
-			else
-				rkisp1_param_clear_bits(params,
-							RKISP1_CIF_ISP_CTRL,
-							RKISP1_CIF_ISP_CTRL_ISP_GAMMA_OUT_ENA);
-		}
+	/* update filter config */
+	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_FLT)
+		rkisp1_flt_config(params,
+				  &new_params->others.flt_config);
+
+	if (module_en_update & RKISP1_CIF_ISP_MODULE_FLT) {
+		if (module_ens & RKISP1_CIF_ISP_MODULE_FLT)
+			rkisp1_param_set_bits(params,
+					      RKISP1_CIF_ISP_FILT_MODE,
+					      RKISP1_CIF_ISP_FLT_ENA);
+		else
+			rkisp1_param_clear_bits(params,
+						RKISP1_CIF_ISP_FILT_MODE,
+						RKISP1_CIF_ISP_FLT_ENA);
 	}
 
-	if ((module_en_update & RKISP1_CIF_ISP_MODULE_CPROC) ||
-	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_CPROC)) {
-		/* update cproc config */
-		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_CPROC) {
-			rkisp1_cproc_config(params,
-					    &new_params->others.cproc_config);
-		}
+	/* update ctk config */
+	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_CTK)
+		rkisp1_ctk_config(params,
+				  &new_params->others.ctk_config);
 
-		if (module_en_update & RKISP1_CIF_ISP_MODULE_CPROC) {
-			if (module_ens & RKISP1_CIF_ISP_MODULE_CPROC)
-				rkisp1_param_set_bits(params,
-						      RKISP1_CIF_C_PROC_CTRL,
-						      RKISP1_CIF_C_PROC_CTR_ENABLE);
-			else
-				rkisp1_param_clear_bits(params,
-							RKISP1_CIF_C_PROC_CTRL,
-							RKISP1_CIF_C_PROC_CTR_ENABLE);
-		}
+	if (module_en_update & RKISP1_CIF_ISP_MODULE_CTK)
+		rkisp1_ctk_enable(params, !!(module_ens & RKISP1_CIF_ISP_MODULE_CTK));
+
+	/* update goc config */
+	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_GOC)
+		rkisp1_goc_config(params,
+				  &new_params->others.goc_config);
+
+	if (module_en_update & RKISP1_CIF_ISP_MODULE_GOC) {
+		if (module_ens & RKISP1_CIF_ISP_MODULE_GOC)
+			rkisp1_param_set_bits(params,
+					      RKISP1_CIF_ISP_CTRL,
+					      RKISP1_CIF_ISP_CTRL_ISP_GAMMA_OUT_ENA);
+		else
+			rkisp1_param_clear_bits(params,
+						RKISP1_CIF_ISP_CTRL,
+						RKISP1_CIF_ISP_CTRL_ISP_GAMMA_OUT_ENA);
 	}
 
-	if ((module_en_update & RKISP1_CIF_ISP_MODULE_IE) ||
-	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_IE)) {
-		/* update ie config */
-		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_IE)
-			rkisp1_ie_config(params,
-					 &new_params->others.ie_config);
+	/* update cproc config */
+	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_CPROC)
+		rkisp1_cproc_config(params,
+				    &new_params->others.cproc_config);
 
-		if (module_en_update & RKISP1_CIF_ISP_MODULE_IE)
-			rkisp1_ie_enable(params,
-					 !!(module_ens & RKISP1_CIF_ISP_MODULE_IE));
+	if (module_en_update & RKISP1_CIF_ISP_MODULE_CPROC) {
+		if (module_ens & RKISP1_CIF_ISP_MODULE_CPROC)
+			rkisp1_param_set_bits(params,
+					      RKISP1_CIF_C_PROC_CTRL,
+					      RKISP1_CIF_C_PROC_CTR_ENABLE);
+		else
+			rkisp1_param_clear_bits(params,
+						RKISP1_CIF_C_PROC_CTRL,
+						RKISP1_CIF_C_PROC_CTR_ENABLE);
 	}
 
-	if ((module_en_update & RKISP1_CIF_ISP_MODULE_DPF) ||
-	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPF)) {
-		/* update dpf  config */
-		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPF)
-			rkisp1_dpf_config(params,
-					  &new_params->others.dpf_config);
-
-		if (module_en_update & RKISP1_CIF_ISP_MODULE_DPF) {
-			if (module_ens & RKISP1_CIF_ISP_MODULE_DPF)
-				rkisp1_param_set_bits(params,
-						      RKISP1_CIF_ISP_DPF_MODE,
-						      RKISP1_CIF_ISP_DPF_MODE_EN);
-			else
-				rkisp1_param_clear_bits(params,
-							RKISP1_CIF_ISP_DPF_MODE,
-							RKISP1_CIF_ISP_DPF_MODE_EN);
-		}
+	/* update ie config */
+	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_IE)
+		rkisp1_ie_config(params, &new_params->others.ie_config);
+
+	if (module_en_update & RKISP1_CIF_ISP_MODULE_IE)
+		rkisp1_ie_enable(params, !!(module_ens & RKISP1_CIF_ISP_MODULE_IE));
+
+	/* update dpf  config */
+	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPF)
+		rkisp1_dpf_config(params, &new_params->others.dpf_config);
+
+	if (module_en_update & RKISP1_CIF_ISP_MODULE_DPF) {
+		if (module_ens & RKISP1_CIF_ISP_MODULE_DPF)
+			rkisp1_param_set_bits(params,
+					      RKISP1_CIF_ISP_DPF_MODE,
+					      RKISP1_CIF_ISP_DPF_MODE_EN);
+		else
+			rkisp1_param_clear_bits(params,
+						RKISP1_CIF_ISP_DPF_MODE,
+						RKISP1_CIF_ISP_DPF_MODE_EN);
 	}
 
 	if ((module_en_update & RKISP1_CIF_ISP_MODULE_DPF_STRENGTH) ||
@@ -1121,68 +1079,55 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
 	module_cfg_update = new_params->module_cfg_update;
 	module_ens = new_params->module_ens;
 
-	if ((module_en_update & RKISP1_CIF_ISP_MODULE_AWB) ||
-	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB)) {
-		/* update awb config */
-		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB)
-			rkisp1_awb_meas_config(params,
-					       &new_params->meas.awb_meas_config);
-
-		if (module_en_update & RKISP1_CIF_ISP_MODULE_AWB)
-			rkisp1_awb_meas_enable(params,
-					       &new_params->meas.awb_meas_config,
-					       !!(module_ens & RKISP1_CIF_ISP_MODULE_AWB));
-	}
-
-	if ((module_en_update & RKISP1_CIF_ISP_MODULE_AFC) ||
-	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_AFC)) {
-		/* update afc config */
-		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AFC)
-			rkisp1_afm_config(params,
-					  &new_params->meas.afc_config);
-
-		if (module_en_update & RKISP1_CIF_ISP_MODULE_AFC) {
-			if (module_ens & RKISP1_CIF_ISP_MODULE_AFC)
-				rkisp1_param_set_bits(params,
-						      RKISP1_CIF_ISP_AFM_CTRL,
-						      RKISP1_CIF_ISP_AFM_ENA);
-			else
-				rkisp1_param_clear_bits(params,
-							RKISP1_CIF_ISP_AFM_CTRL,
-							RKISP1_CIF_ISP_AFM_ENA);
-		}
-	}
-
-	if ((module_en_update & RKISP1_CIF_ISP_MODULE_HST) ||
-	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_HST)) {
-		/* update hst config */
-		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_HST)
-			rkisp1_hst_config(params,
-					  &new_params->meas.hst_config);
-
-		if (module_en_update & RKISP1_CIF_ISP_MODULE_HST)
-			rkisp1_hst_enable(params,
-					  &new_params->meas.hst_config,
-					  !!(module_ens & RKISP1_CIF_ISP_MODULE_HST));
+	/* update awb config */
+	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB)
+		rkisp1_awb_meas_config(params, &new_params->meas.awb_meas_config);
+
+	if (module_en_update & RKISP1_CIF_ISP_MODULE_AWB)
+		rkisp1_awb_meas_enable(params,
+				       &new_params->meas.awb_meas_config,
+				       !!(module_ens & RKISP1_CIF_ISP_MODULE_AWB));
+
+	/* update afc config */
+	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AFC)
+		rkisp1_afm_config(params,
+				  &new_params->meas.afc_config);
+
+	if (module_en_update & RKISP1_CIF_ISP_MODULE_AFC) {
+		if (module_ens & RKISP1_CIF_ISP_MODULE_AFC)
+			rkisp1_param_set_bits(params,
+					      RKISP1_CIF_ISP_AFM_CTRL,
+					      RKISP1_CIF_ISP_AFM_ENA);
+		else
+			rkisp1_param_clear_bits(params,
+						RKISP1_CIF_ISP_AFM_CTRL,
+						RKISP1_CIF_ISP_AFM_ENA);
 	}
 
-	if ((module_en_update & RKISP1_CIF_ISP_MODULE_AEC) ||
-	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_AEC)) {
-		/* update aec config */
-		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AEC)
-			rkisp1_aec_config(params,
-					  &new_params->meas.aec_config);
-
-		if (module_en_update & RKISP1_CIF_ISP_MODULE_AEC) {
-			if (module_ens & RKISP1_CIF_ISP_MODULE_AEC)
-				rkisp1_param_set_bits(params,
-						      RKISP1_CIF_ISP_EXP_CTRL,
-						      RKISP1_CIF_ISP_EXP_ENA);
-			else
-				rkisp1_param_clear_bits(params,
-							RKISP1_CIF_ISP_EXP_CTRL,
-							RKISP1_CIF_ISP_EXP_ENA);
-		}
+	/* update hst config */
+	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_HST)
+		rkisp1_hst_config(params,
+				  &new_params->meas.hst_config);
+
+	if (module_en_update & RKISP1_CIF_ISP_MODULE_HST)
+		rkisp1_hst_enable(params,
+				  &new_params->meas.hst_config,
+				  !!(module_ens & RKISP1_CIF_ISP_MODULE_HST));
+
+	/* update aec config */
+	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AEC)
+		rkisp1_aec_config(params,
+				  &new_params->meas.aec_config);
+
+	if (module_en_update & RKISP1_CIF_ISP_MODULE_AEC) {
+		if (module_ens & RKISP1_CIF_ISP_MODULE_AEC)
+			rkisp1_param_set_bits(params,
+					      RKISP1_CIF_ISP_EXP_CTRL,
+					      RKISP1_CIF_ISP_EXP_ENA);
+		else
+			rkisp1_param_clear_bits(params,
+						RKISP1_CIF_ISP_EXP_CTRL,
+						RKISP1_CIF_ISP_EXP_ENA);
 	}
 }
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
