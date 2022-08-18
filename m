Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40EBCC25B08
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 03:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eN6AGf/0xDldfTuBiWVcfqsXK8QJZJ5n3DnVJVPuTTo=; b=yYVNWSWtJ2/qaSgS0lyOeG0kAY
	8alNagyubEwrdh7SKPIGnOU8rryThC7wDds9NGpSP9G6ak/CqNwdLcq1RzRHyS2NMyoyAowY/ABkJ
	gtlFFuOs93VGBWIEbyhiXye/TEU/akJzZf6tToFzvD7Z+CMFWgDdg9VZgzD5+3qKRPQrUwlMxjPNp
	3VhXLJJmBrX6ZyAUSXdjOafKs1sXDaP9MiudDX99fX+bYYBPLOfJhgWUpnPphZnjXYpAbhSUojveQ
	vSsgxgRhOYfARyhkxqkcOakUkZQLbm0QWUrPtKOQA6uOq6pazSOB2CbUL/G8wBpKODIS/fQPKhhGE
	ak28EYYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOWTn-00DQ1H-Qm; Thu, 18 Aug 2022 03:45:59 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOWTj-00DPga-DN
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 03:45:58 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id E521D5C0187;
	Wed, 17 Aug 2022 23:45:51 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Wed, 17 Aug 2022 23:45:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1660794351; x=1660880751; bh=wZxq8ey1JE
	LmkrJ+wcumqzB9Y18QOMgr259FprIwzmI=; b=MskzTh0MjSU8EhrpeDM3qDpJWa
	fYM8rjws+G7S758pUJ3n/4v1Q56QiaeEIuFutudev8vySbb629er+5KLLVsWkuln
	Tf85EUhxr1FGePhXC4Bhcmm0cOL9Zg5a73Scs9RDcex9E//Cq+SyPXSZv//xWIxO
	PbqXFSysjTXfl1jMs4MLJ7rE771H3/wwXgLt+WLrBmGlDyeZVNZqhS+N1I2b8S+a
	Cr8vSSmwHhIxblQM+T1gU41KZT46epTZPJhZUlL0UZ/nio5lbd4qDcv0MU3csrXq
	QdcJC17AXY0CxHfHfe9lMhf+tnvHcva41YAK503Gb6BOXQWanEa6aS+Bq6Rg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1660794351; x=1660880751; bh=wZxq8ey1JELmkrJ+wcumqzB9Y18Q
	OMgr259FprIwzmI=; b=uT5ApLp/wShxQVjKfQStuDajgaZ15elLGZpTOQUHDtMk
	YnwuYCb0U0Cmir2li92O114A0NPBxRlH5snFQ2VFBsI8bHX1BUw5YzIPlykEie3S
	2JFq42xEVGR39mgIWxIwOd0UduiDe/BzXavbS+4SbNyQ1p4ykiV2dMXcliN+CIg7
	OwHoHVUpo4aOxo0Ipw6iRScN7mcUbVVtzfpf5uObXcV7n0JHxa64BviMDc8Ux9zc
	uyyQCUJyuHUgFRC2nRE6jhphEodmsXxN+kmGtVAbUzv96R/6t7ooB+/1yplaKg2V
	5skWR18IcwOtAMXmQn/gDSVec8hTIEJjGJO4MLU8vQ==
X-ME-Sender: <xms:77X9Yl6LYOEL5WAEUCkB04kfWcOfKAahKtBNukPc2OdPWN-xyh9w9w>
    <xme:77X9Yi7n7_l7SuWvY_pG3ZLluH9wd-F76L3aspj0aJ9za3Mxyl9tFifCufkPwsgt3
    G0TQfKXdZxxgeofSh8>
X-ME-Received: <xmr:77X9Yscaoe5kV6z05OhAsp6W1__WlIDVTvSG8Nna0vubR3irw3Tycg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdehjedgjeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:77X9YuKc_t409ET-UcUEBthX5xjWxtM8IfwNmdBW3pDJ7TTAfZ-5ag>
    <xmx:77X9YpKc94sVhGN4Gdylz5bKCKRhtjbnr8zR0AmopQcOYDDU-bek9Q>
    <xmx:77X9Ynxyl4Kx9pTDMEZkZE2u73p0_tLEfrjjs5v8-ymr2RqR-xE73Q>
    <xmx:77X9YmE_Is5DJEVUe0XnvO3VX_8vw4nJbbWsfAd6KSmKK6cuL0qFdw>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Aug 2022 23:45:49 -0400 (EDT)
Date: Thu, 18 Aug 2022 06:45:46 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Paul Elder <paul.elder@ideasonboard.com>,
	Florian Sylvestre <fsylvestre@baylibre.com>
Subject: Re: [PATCH 5/5] media: rkisp1: Configure LSC after enabling the ISP
Message-ID: <20220818034546.6qx6sdi3qbf6ogra@guri>
References: <20220817021850.20460-1-laurent.pinchart@ideasonboard.com>
 <20220817021850.20460-6-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220817021850.20460-6-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_204556_019037_AB055A26 
X-CRM114-Status: GOOD (  22.09  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 17.08.2022 05:18, Laurent Pinchart wrote:
>The ISP8000Nano v18.02 (found in the i.MX8MP) requires the ISP to be
>enabled (as indicated by the ISP_CTRL.ISP_ENABLE bit) to configure the
>lens shading table in internal RAM. The driver currently configures all
>ISP initial parameters before enabling the ISP, which causes the LSC RAM
>to not be initialized properly.
>
>To fix this, split the rkisp1_params_configure() function into a
>rkisp1_params_pre_configure() and a rkisp1_params_post_configure(). The
>former configures all ISP parameters but LSC, while the latter
>configures LSC. To implement this, the rkisp1_params_apply_params_cfg()
>function is deconstructed, with two small helpers created to deal with
>the parameters buffers, which are then used in rkisp1_params_isr(),
>rkisp1_params_pre_configure() and rkisp1_params_post_configure().
>
>While this initialization ordering is only needed for the ISP8000Nano
>v18.02, it doesn't affect other ISP versions negatively, and can thus be
>followed unconditionally.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>---
> .../platform/rockchip/rkisp1/rkisp1-common.h  |  29 ++-
> .../platform/rockchip/rkisp1/rkisp1-isp.c     |   9 +-
> .../platform/rockchip/rkisp1/rkisp1-params.c  | 169 ++++++++++++------
> 3 files changed, 143 insertions(+), 64 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>index 1383c13e22b8..f612e1b42b91 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>@@ -589,19 +589,32 @@ void rkisp1_sd_adjust_crop(struct v4l2_rect *crop,
>  */
> const struct rkisp1_mbus_info *rkisp1_mbus_info_get_by_code(u32 mbus_code);
>
>-/* rkisp1_params_configure - configure the params when stream starts.
>- *			     This function is called by the isp entity upon stream starts.
>- *			     The function applies the initial configuration of the parameters.
>+/*
>+ * rkisp1_params_pre_configure - Configure the params before stream start
>  *
>- * @params:	  pointer to rkisp1_params.
>+ * @params:	  pointer to rkisp1_params
>  * @bayer_pat:	  the bayer pattern on the isp video sink pad
>  * @quantization: the quantization configured on the isp's src pad
>  * @ycbcr_encoding: the ycbcr_encoding configured on the isp's src pad
>+ *
>+ * This function is called by the ISP entity just before the ISP gets started.
>+ * It applies the initial ISP parameters from the first params buffer, but
>+ * skips LSC as it needs to be configured after the ISP is started.
>  */
>-void rkisp1_params_configure(struct rkisp1_params *params,
>-			     enum rkisp1_fmt_raw_pat_type bayer_pat,
>-			     enum v4l2_quantization quantization,
>-			     enum v4l2_ycbcr_encoding ycbcr_encoding);
>+void rkisp1_params_pre_configure(struct rkisp1_params *params,
>+				 enum rkisp1_fmt_raw_pat_type bayer_pat,
>+				 enum v4l2_quantization quantization,
>+				 enum v4l2_ycbcr_encoding ycbcr_encoding);
>+
>+/*
>+ * rkisp1_params_post_configure - Configure the params after stream start
>+ *
>+ * @params:	  pointer to rkisp1_params
>+ *
>+ * This function is called by the ISP entity just after the ISP gets started.
>+ * It applies the initial ISP KSC parameters from the first params buffer.

What is KSC ?

>+ */
>+void rkisp1_params_post_configure(struct rkisp1_params *params);
>
> /* rkisp1_params_disable - disable all parameters.
>  *			   This function is called by the isp entity upon stream start
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>index c029d2e86717..4876bf890cb2 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>@@ -343,9 +343,9 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
> 		src_frm = rkisp1_isp_get_pad_fmt(isp, NULL,
> 						 RKISP1_ISP_PAD_SOURCE_VIDEO,
> 						 V4L2_SUBDEV_FORMAT_ACTIVE);
>-		rkisp1_params_configure(&rkisp1->params, sink_fmt->bayer_pat,
>-					src_frm->quantization,
>-					src_frm->ycbcr_enc);
>+		rkisp1_params_pre_configure(&rkisp1->params, sink_fmt->bayer_pat,
>+					    src_frm->quantization,
>+					    src_frm->ycbcr_enc);
> 	}
>
> 	return 0;
>@@ -462,6 +462,9 @@ static int rkisp1_isp_start(struct rkisp1_isp *isp, struct media_pad *source)
> 	       RKISP1_CIF_ISP_CTRL_ISP_INFORM_ENABLE;
> 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_CTRL, val);
>
>+	if (isp->src_fmt->pixel_enc == V4L2_PIXEL_ENC_BAYER)
>+		rkisp1_params_post_configure(&rkisp1->params);

why is post config called only in case of bayer?
also I see that the lsc config from the isr is called without this condition.
In addition the post config also does 'complete buffer' so maybe you do want to
call it without the bayer condition.

>+
> 	return 0;
> }
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>index 421ade177b2d..a4664efdfea8 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>@@ -1297,22 +1297,6 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
> 						RKISP1_CIF_ISP_CTRL_ISP_GAMMA_IN_ENA);
> 	}
>
>-	/* update lsc config */
>-	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_LSC)
>-		rkisp1_lsc_config(params,
>-				  &new_params->others.lsc_config);
>-
>-	if (module_en_update & RKISP1_CIF_ISP_MODULE_LSC) {
>-		if (module_ens & RKISP1_CIF_ISP_MODULE_LSC)
>-			rkisp1_param_set_bits(params,
>-					      RKISP1_CIF_ISP_LSC_CTRL,
>-					      RKISP1_CIF_ISP_LSC_CTRL_ENA);
>-		else
>-			rkisp1_param_clear_bits(params,
>-						RKISP1_CIF_ISP_LSC_CTRL,
>-						RKISP1_CIF_ISP_LSC_CTRL_ENA);
>-	}
>-
> 	/* update awb gains */
> 	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN)
> 		params->ops->awb_gain_config(params, &new_params->others.awb_gain_config);
>@@ -1429,6 +1413,33 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
> 	}
> }
>
>+static void
>+rkisp1_isp_isr_lsc_config(struct rkisp1_params *params,
>+			  const struct rkisp1_params_cfg *new_params)
>+{
>+	unsigned int module_en_update, module_cfg_update, module_ens;
>+
>+	module_en_update = new_params->module_en_update;
>+	module_cfg_update = new_params->module_cfg_update;
>+	module_ens = new_params->module_ens;
>+
>+	/* update lsc config */
>+	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_LSC)
>+		rkisp1_lsc_config(params,
>+				  &new_params->others.lsc_config);
>+
>+	if (module_en_update & RKISP1_CIF_ISP_MODULE_LSC) {
>+		if (module_ens & RKISP1_CIF_ISP_MODULE_LSC)
>+			rkisp1_param_set_bits(params,
>+					      RKISP1_CIF_ISP_LSC_CTRL,
>+					      RKISP1_CIF_ISP_LSC_CTRL_ENA);
>+		else
>+			rkisp1_param_clear_bits(params,
>+						RKISP1_CIF_ISP_LSC_CTRL,
>+						RKISP1_CIF_ISP_LSC_CTRL_ENA);
>+	}
>+}
>+
> static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
> 				       struct  rkisp1_params_cfg *new_params)
> {
>@@ -1490,47 +1501,60 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
> 	}
> }
>
>-static void rkisp1_params_apply_params_cfg(struct rkisp1_params *params,
>-					   unsigned int frame_sequence)
>+static bool rkisp1_params_get_buffer(struct rkisp1_params *params,
>+				     struct rkisp1_buffer **buf,
>+				     struct rkisp1_params_cfg **cfg)
> {
>-	struct rkisp1_params_cfg *new_params;
>-	struct rkisp1_buffer *cur_buf = NULL;
>-
> 	if (list_empty(&params->params))
>-		return;
>+		return false;
>
>-	cur_buf = list_first_entry(&params->params,
>-				   struct rkisp1_buffer, queue);
>+	*buf = list_first_entry(&params->params, struct rkisp1_buffer, queue);
>+	*cfg = vb2_plane_vaddr(&(*buf)->vb.vb2_buf, 0);
>
>-	new_params = (struct rkisp1_params_cfg *)vb2_plane_vaddr(&cur_buf->vb.vb2_buf, 0);
>+	return true;
>+}
>
>-	rkisp1_isp_isr_other_config(params, new_params);
>-	rkisp1_isp_isr_meas_config(params, new_params);
>+static void rkisp1_params_complete_buffer(struct rkisp1_params *params,
>+					  struct rkisp1_buffer *buf,
>+					  unsigned int frame_sequence)
>+{
>+	list_del(&buf->queue);
>
>-	/* update shadow register immediately */
>-	rkisp1_param_set_bits(params, RKISP1_CIF_ISP_CTRL, RKISP1_CIF_ISP_CTRL_ISP_CFG_UPD);
>-
>-	list_del(&cur_buf->queue);
>-
>-	cur_buf->vb.sequence = frame_sequence;
>-	vb2_buffer_done(&cur_buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
>+	buf->vb.sequence = frame_sequence;
>+	vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
> }
>
> void rkisp1_params_isr(struct rkisp1_device *rkisp1)
> {
>-	/*
>-	 * This isr is called when the ISR finishes processing a frame (RKISP1_CIF_ISP_FRAME).
>-	 * Configurations performed here will be applied on the next frame.
>-	 * Since frame_sequence is updated on the vertical sync signal, we should use
>-	 * frame_sequence + 1 here to indicate to userspace on which frame these parameters
>-	 * are being applied.
>-	 */
>-	unsigned int frame_sequence = rkisp1->isp.frame_sequence + 1;
> 	struct rkisp1_params *params = &rkisp1->params;
>+	struct rkisp1_params_cfg *new_params;
>+	struct rkisp1_buffer *cur_buf;
>
> 	spin_lock(&params->config_lock);
>-	rkisp1_params_apply_params_cfg(params, frame_sequence);
>
>+	if (!rkisp1_params_get_buffer(params, &cur_buf, &new_params))
>+		goto unlock;
>+
>+	rkisp1_isp_isr_other_config(params, new_params);
>+	rkisp1_isp_isr_lsc_config(params, new_params);
>+	rkisp1_isp_isr_meas_config(params, new_params);
>+
>+	/* update shadow register immediately */
>+	rkisp1_param_set_bits(params, RKISP1_CIF_ISP_CTRL,
>+			      RKISP1_CIF_ISP_CTRL_ISP_CFG_UPD);
>+
>+	/*
>+	 * This isr is called when the ISR finishes processing a frame
>+	 * (RKISP1_CIF_ISP_FRAME). Configurations performed here will be
>+	 * applied on the next frame. Since frame_sequence is updated on the
>+	 * vertical sync signal, we should use frame_sequence + 1 here to
>+	 * indicate to userspace on which frame these parameters are being
>+	 * applied.
>+	 */
>+	rkisp1_params_complete_buffer(params, cur_buf,
>+				      rkisp1->isp.frame_sequence + 1);
>+
>+unlock:
> 	spin_unlock(&params->config_lock);
> }
>
>@@ -1573,9 +1597,18 @@ static const struct rkisp1_cif_isp_afc_config rkisp1_afc_params_default_config =
> 	14
> };
>
>-static void rkisp1_params_config_parameter(struct rkisp1_params *params)
>+void rkisp1_params_pre_configure(struct rkisp1_params *params,
>+				 enum rkisp1_fmt_raw_pat_type bayer_pat,
>+				 enum v4l2_quantization quantization,
>+				 enum v4l2_ycbcr_encoding ycbcr_encoding)
> {
> 	struct rkisp1_cif_isp_hst_config hst = rkisp1_hst_params_default_config;
>+	struct rkisp1_params_cfg *new_params;
>+	struct rkisp1_buffer *cur_buf;
>+
>+	params->quantization = quantization;
>+	params->ycbcr_encoding = ycbcr_encoding;
>+	params->raw_type = bayer_pat;
>
> 	params->ops->awb_meas_config(params, &rkisp1_awb_params_default_config);
> 	params->ops->awb_meas_enable(params, &rkisp1_awb_params_default_config,
>@@ -1599,20 +1632,50 @@ static void rkisp1_params_config_parameter(struct rkisp1_params *params)
> 	spin_lock_irq(&params->config_lock);
>
> 	/* apply the first buffer if there is one already */
>-	rkisp1_params_apply_params_cfg(params, 0);
>
>+	if (!rkisp1_params_get_buffer(params, &cur_buf, &new_params))
>+		goto unlock;
>+
>+	rkisp1_isp_isr_other_config(params, new_params);
>+	rkisp1_isp_isr_meas_config(params, new_params);
>+
>+	/* update shadow register immediately */
>+	rkisp1_param_set_bits(params, RKISP1_CIF_ISP_CTRL,
>+			      RKISP1_CIF_ISP_CTRL_ISP_CFG_UPD);
>+
>+unlock:
> 	spin_unlock_irq(&params->config_lock);
> }
>
>-void rkisp1_params_configure(struct rkisp1_params *params,
>-			     enum rkisp1_fmt_raw_pat_type bayer_pat,
>-			     enum v4l2_quantization quantization,
>-			     enum v4l2_ycbcr_encoding ycbcr_encoding)
>+void rkisp1_params_post_configure(struct rkisp1_params *params)
> {
>-	params->quantization = quantization;
>-	params->ycbcr_encoding = ycbcr_encoding;
>-	params->raw_type = bayer_pat;
>-	rkisp1_params_config_parameter(params);
>+	struct rkisp1_params_cfg *new_params;
>+	struct rkisp1_buffer *cur_buf;
>+
>+	spin_lock_irq(&params->config_lock);
>+
>+	/*
>+	 * Apply LSC parameters from the first buffer (if any is already
>+	 * available. This must be done after the ISP gets started in the
>+	 * ISP8000Nano v18.02 (found in the i.MX8MP) as access to the LSC RAM
>+	 * is gated by the ISP_CTRL.ISP_ENABLE bit. As this initialization
>+	 * ordering doesn't affect other ISP versions negatively, do so
>+	 * unconditionally.
>+	 */
>+
>+	if (!rkisp1_params_get_buffer(params, &cur_buf, &new_params))
>+		goto unlock;
>+
>+	rkisp1_isp_isr_lsc_config(params, new_params);
>+
>+	/* update shadow register immediately */
>+	rkisp1_param_set_bits(params, RKISP1_CIF_ISP_CTRL,
>+			      RKISP1_CIF_ISP_CTRL_ISP_CFG_UPD);

updating the shadow regs is already done in the 'complete buffer'

Thanks,
Dafna

>+
>+	rkisp1_params_complete_buffer(params, cur_buf, 0);
>+
>+unlock:
>+	spin_unlock_irq(&params->config_lock);
> }
>
> /*
>-- 
>Regards,
>
>Laurent Pinchart
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
