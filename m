Return-Path: <SRS0=ZzQ+=D2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 041C3C433E7
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2020 21:00:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5B4152222C
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2020 21:00:19 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="DTabNyGP"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5B4152222C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fIEjZ0mj092DKV9gKyrLaP1u3oWQSc8JhhcU8pDr08w=; b=DTabNyGPcCnR3tFUtRV1JM0KpG
	L7XUP2La2vLPPunSqyJfAA3WNoMqr2bLK1YZNW/zsWLcyoZgEnGCOckE83RrwrHGE76FdGHtiRLFb
	rGLYvwUJeTXPcRQ+nVHGhcS7SE1sqzba5g4ItPB7TGBRm9Wpdbpi6vei137Ip1vSWTooh1GYUyyGY
	YUApJaZxq6w6Ea+bJ8YZSLfAuE7JCzjEoGor95vwBIC7aVWGaOcj86pYyrzWqOIXVwC2UQscn7YpC
	DM+5to0sm2G4n/R9hnZ65XXk2fFWyK+WZ57AEXT+vEI61jnGurD34qAf40GN4VocaRwpNlEMWfGHt
	m64x2KXQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUcGL-000733-RG; Mon, 19 Oct 2020 21:00:13 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUcGE-0006zS-VL
 for linux-rockchip@lists.infradead.org; Mon, 19 Oct 2020 21:00:10 +0000
Received: from guri.fritz.box
 (p200300c7cf435b00546912335c7d1654.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf43:5b00:5469:1233:5c7d:1654])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 085B31F44FC9;
 Mon, 19 Oct 2020 22:00:05 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 3/4] media: staging: rkisp1: params: remove unnecessary
 parentheses
Date: Mon, 19 Oct 2020 22:59:55 +0200
Message-Id: <20201019205956.6980-4-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201019205956.6980-1-dafna.hirschfeld@collabora.com>
References: <20201019205956.6980-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201019_170007_208122_F6794FB8 
X-CRM114-Status: GOOD (  11.68  )
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

There are several 'if' expression where double
parentheses is used when one is enough.
Remove the extra parentheses.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-params.c | 32 ++++++++++----------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
index 4ac401bc2164..a2df6b50c109 100644
--- a/drivers/staging/media/rkisp1/rkisp1-params.c
+++ b/drivers/staging/media/rkisp1/rkisp1-params.c
@@ -891,7 +891,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 	if ((module_en_update & RKISP1_CIF_ISP_MODULE_DPCC) ||
 	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPCC)) {
 		/*update dpc config */
-		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_DPCC))
+		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPCC)
 			rkisp1_dpcc_config(params,
 					   &new_params->others.dpcc_config);
 
@@ -910,7 +910,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 	if ((module_en_update & RKISP1_CIF_ISP_MODULE_BLS) ||
 	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_BLS)) {
 		/* update bls config */
-		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_BLS))
+		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_BLS)
 			rkisp1_bls_config(params,
 					  &new_params->others.bls_config);
 
@@ -929,7 +929,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 	if ((module_en_update & RKISP1_CIF_ISP_MODULE_SDG) ||
 	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_SDG)) {
 		/* update sdg config */
-		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_SDG))
+		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_SDG)
 			rkisp1_sdg_config(params,
 					  &new_params->others.sdg_config);
 
@@ -948,7 +948,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 	if ((module_en_update & RKISP1_CIF_ISP_MODULE_LSC) ||
 	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_LSC)) {
 		/* update lsc config */
-		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_LSC))
+		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_LSC)
 			rkisp1_lsc_config(params,
 					  &new_params->others.lsc_config);
 
@@ -967,7 +967,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 	if ((module_en_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN) ||
 	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN)) {
 		/* update awb gains */
-		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN))
+		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN)
 			rkisp1_awb_gain_config(params,
 					&new_params->others.awb_gain_config);
 
@@ -986,7 +986,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 	if ((module_en_update & RKISP1_CIF_ISP_MODULE_BDM) ||
 	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_BDM)) {
 		/* update bdm config */
-		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_BDM))
+		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_BDM)
 			rkisp1_bdm_config(params,
 					  &new_params->others.bdm_config);
 
@@ -1005,7 +1005,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 	if ((module_en_update & RKISP1_CIF_ISP_MODULE_FLT) ||
 	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_FLT)) {
 		/* update filter config */
-		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_FLT))
+		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_FLT)
 			rkisp1_flt_config(params,
 					  &new_params->others.flt_config);
 
@@ -1024,7 +1024,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 	if ((module_en_update & RKISP1_CIF_ISP_MODULE_CTK) ||
 	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_CTK)) {
 		/* update ctk config */
-		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_CTK))
+		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_CTK)
 			rkisp1_ctk_config(params,
 					  &new_params->others.ctk_config);
 
@@ -1036,7 +1036,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 	if ((module_en_update & RKISP1_CIF_ISP_MODULE_GOC) ||
 	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_GOC)) {
 		/* update goc config */
-		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_GOC))
+		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_GOC)
 			rkisp1_goc_config(params,
 					  &new_params->others.goc_config);
 
@@ -1055,7 +1055,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 	if ((module_en_update & RKISP1_CIF_ISP_MODULE_CPROC) ||
 	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_CPROC)) {
 		/* update cproc config */
-		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_CPROC)) {
+		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_CPROC) {
 			rkisp1_cproc_config(params,
 					    &new_params->others.cproc_config);
 		}
@@ -1075,7 +1075,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 	if ((module_en_update & RKISP1_CIF_ISP_MODULE_IE) ||
 	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_IE)) {
 		/* update ie config */
-		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_IE))
+		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_IE)
 			rkisp1_ie_config(params,
 					 &new_params->others.ie_config);
 
@@ -1087,7 +1087,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 	if ((module_en_update & RKISP1_CIF_ISP_MODULE_DPF) ||
 	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPF)) {
 		/* update dpf  config */
-		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_DPF))
+		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPF)
 			rkisp1_dpf_config(params,
 					  &new_params->others.dpf_config);
 
@@ -1123,7 +1123,7 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
 	if ((module_en_update & RKISP1_CIF_ISP_MODULE_AWB) ||
 	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB)) {
 		/* update awb config */
-		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB))
+		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB)
 			rkisp1_awb_meas_config(params,
 					&new_params->meas.awb_meas_config);
 
@@ -1136,7 +1136,7 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
 	if ((module_en_update & RKISP1_CIF_ISP_MODULE_AFC) ||
 	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_AFC)) {
 		/* update afc config */
-		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_AFC))
+		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AFC)
 			rkisp1_afm_config(params,
 					  &new_params->meas.afc_config);
 
@@ -1155,7 +1155,7 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
 	if ((module_en_update & RKISP1_CIF_ISP_MODULE_HST) ||
 	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_HST)) {
 		/* update hst config */
-		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_HST))
+		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_HST)
 			rkisp1_hst_config(params,
 					  &new_params->meas.hst_config);
 
@@ -1168,7 +1168,7 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
 	if ((module_en_update & RKISP1_CIF_ISP_MODULE_AEC) ||
 	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_AEC)) {
 		/* update aec config */
-		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_AEC))
+		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AEC)
 			rkisp1_aec_config(params,
 					  &new_params->meas.aec_config);
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
