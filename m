Return-Path: <SRS0=ZzQ+=D2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 644D0C43457
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2020 21:00:18 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BB0052222C
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2020 21:00:17 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="tlWsndep"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BB0052222C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pDzRscavumi9ORmHvbGFLHAnlSNJRyTxK1/fk5h42l0=; b=tlWsndepd++tWUvPfGpS5j8yO6
	nK709Hy7Xi2EEIdHD50ZC1XnTeF52UiQwARM+H3ZNk03+8oOmS8kULyYZgwp5KjrLHKISrlIAadsB
	V0N0F3XWp3+guYYKhSVwH6JSBXRXi7ya5z39gMPc/etdJUnzja+oCYBBUEMtJxZYtk7UkGlRi6mD0
	SedVytXflz7DQPJ19dNG1kGjtHVI644xlQ228t1lGWebQrN7D7CGzs70MuQvMml57M+L8IHl00RAc
	zuz5cIGaZg0RtqhSlU5VGQEEXvheaJP+f24mCeYuQx2i33F943iYTsTW0oUzFMsh2XEi8ypbdKJgm
	hAHdiEWQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUcGK-00072p-Rf; Mon, 19 Oct 2020 21:00:12 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUcGE-0006zR-RL
 for linux-rockchip@lists.infradead.org; Mon, 19 Oct 2020 21:00:09 +0000
Received: from guri.fritz.box
 (p200300c7cf435b00546912335c7d1654.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf43:5b00:5469:1233:5c7d:1654])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 91FC41F44FC3;
 Mon, 19 Oct 2020 22:00:04 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 2/4] media: staging: rkisp1: params: remove unnecessary "!!"
Date: Mon, 19 Oct 2020 22:59:54 +0200
Message-Id: <20201019205956.6980-3-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201019205956.6980-1-dafna.hirschfeld@collabora.com>
References: <20201019205956.6980-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201019_170007_119723_EC908C23 
X-CRM114-Status: GOOD (  10.59  )
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

There are several 'if' conditions of the form:

if (!!(module_ens & SOME_FLAG))

Those can be replaced with:

if (module_ens & SOME_FLAG)

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-params.c | 24 ++++++++++----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
index 986d293201e6..4ac401bc2164 100644
--- a/drivers/staging/media/rkisp1/rkisp1-params.c
+++ b/drivers/staging/media/rkisp1/rkisp1-params.c
@@ -896,7 +896,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 					   &new_params->others.dpcc_config);
 
 		if (module_en_update & RKISP1_CIF_ISP_MODULE_DPCC) {
-			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_DPCC))
+			if (module_ens & RKISP1_CIF_ISP_MODULE_DPCC)
 				rkisp1_param_set_bits(params,
 						      RKISP1_CIF_ISP_DPCC_MODE,
 						      RKISP1_CIF_ISP_DPCC_ENA);
@@ -915,7 +915,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 					  &new_params->others.bls_config);
 
 		if (module_en_update & RKISP1_CIF_ISP_MODULE_BLS) {
-			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_BLS))
+			if (module_ens & RKISP1_CIF_ISP_MODULE_BLS)
 				rkisp1_param_set_bits(params,
 						      RKISP1_CIF_ISP_BLS_CTRL,
 						      RKISP1_CIF_ISP_BLS_ENA);
@@ -934,7 +934,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 					  &new_params->others.sdg_config);
 
 		if (module_en_update & RKISP1_CIF_ISP_MODULE_SDG) {
-			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_SDG))
+			if (module_ens & RKISP1_CIF_ISP_MODULE_SDG)
 				rkisp1_param_set_bits(params,
 					RKISP1_CIF_ISP_CTRL,
 					RKISP1_CIF_ISP_CTRL_ISP_GAMMA_IN_ENA);
@@ -953,7 +953,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 					  &new_params->others.lsc_config);
 
 		if (module_en_update & RKISP1_CIF_ISP_MODULE_LSC) {
-			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_LSC))
+			if (module_ens & RKISP1_CIF_ISP_MODULE_LSC)
 				rkisp1_param_set_bits(params,
 						RKISP1_CIF_ISP_LSC_CTRL,
 						RKISP1_CIF_ISP_LSC_CTRL_ENA);
@@ -972,7 +972,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 					&new_params->others.awb_gain_config);
 
 		if (module_en_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN) {
-			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_AWB_GAIN))
+			if (module_ens & RKISP1_CIF_ISP_MODULE_AWB_GAIN)
 				rkisp1_param_set_bits(params,
 					RKISP1_CIF_ISP_CTRL,
 					RKISP1_CIF_ISP_CTRL_ISP_AWB_ENA);
@@ -991,7 +991,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 					  &new_params->others.bdm_config);
 
 		if (module_en_update & RKISP1_CIF_ISP_MODULE_BDM) {
-			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_BDM))
+			if (module_ens & RKISP1_CIF_ISP_MODULE_BDM)
 				rkisp1_param_set_bits(params,
 						RKISP1_CIF_ISP_DEMOSAIC,
 						RKISP1_CIF_ISP_DEMOSAIC_BYPASS);
@@ -1010,7 +1010,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 					  &new_params->others.flt_config);
 
 		if (module_en_update & RKISP1_CIF_ISP_MODULE_FLT) {
-			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_FLT))
+			if (module_ens & RKISP1_CIF_ISP_MODULE_FLT)
 				rkisp1_param_set_bits(params,
 						      RKISP1_CIF_ISP_FILT_MODE,
 						      RKISP1_CIF_ISP_FLT_ENA);
@@ -1041,7 +1041,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 					  &new_params->others.goc_config);
 
 		if (module_en_update & RKISP1_CIF_ISP_MODULE_GOC) {
-			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_GOC))
+			if (module_ens & RKISP1_CIF_ISP_MODULE_GOC)
 				rkisp1_param_set_bits(params,
 					RKISP1_CIF_ISP_CTRL,
 					RKISP1_CIF_ISP_CTRL_ISP_GAMMA_OUT_ENA);
@@ -1061,7 +1061,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 		}
 
 		if (module_en_update & RKISP1_CIF_ISP_MODULE_CPROC) {
-			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_CPROC))
+			if (module_ens & RKISP1_CIF_ISP_MODULE_CPROC)
 				rkisp1_param_set_bits(params,
 						RKISP1_CIF_C_PROC_CTRL,
 						RKISP1_CIF_C_PROC_CTR_ENABLE);
@@ -1092,7 +1092,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 					  &new_params->others.dpf_config);
 
 		if (module_en_update & RKISP1_CIF_ISP_MODULE_DPF) {
-			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_DPF))
+			if (module_ens & RKISP1_CIF_ISP_MODULE_DPF)
 				rkisp1_param_set_bits(params,
 						   RKISP1_CIF_ISP_DPF_MODE,
 						   RKISP1_CIF_ISP_DPF_MODE_EN);
@@ -1141,7 +1141,7 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
 					  &new_params->meas.afc_config);
 
 		if (module_en_update & RKISP1_CIF_ISP_MODULE_AFC) {
-			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_AFC))
+			if (module_ens & RKISP1_CIF_ISP_MODULE_AFC)
 				rkisp1_param_set_bits(params,
 						      RKISP1_CIF_ISP_AFM_CTRL,
 						      RKISP1_CIF_ISP_AFM_ENA);
@@ -1173,7 +1173,7 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
 					  &new_params->meas.aec_config);
 
 		if (module_en_update & RKISP1_CIF_ISP_MODULE_AEC) {
-			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_AEC))
+			if (module_ens & RKISP1_CIF_ISP_MODULE_AEC)
 				rkisp1_param_set_bits(params,
 						      RKISP1_CIF_ISP_EXP_CTRL,
 						      RKISP1_CIF_ISP_EXP_ENA);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
