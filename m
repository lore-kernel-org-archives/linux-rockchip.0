Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86C39C28D13
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Aug 2022 17:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LiYVZLzJ4SnXCCal3SXWfQrWwfkrXtP847GbTcbrvc4=; b=nC1V7MYWvN2GyjvJMbBpIlCUOH
	2RsdxUZvqHWJv9q+8qK7a2C0piWOlHpldEFaISydVAaRXYy3k60zykGfsxNMnQ7pjifqEj4SdDjj4
	ai07VWsJWo4HgkIKMu2hb6xHeiKRa6oy8/KQwEqLazyVJJWGE8Y2x/sw1lDpS2jCSXwaX3u2zykWQ
	d5Yc7UajifK4l8x4mKwVQCOoq8pzOuNkhNtrn7CJeVO9JqmTikyKCf3BFsw7Tf9dhxjBr3qT2oV63
	GMboCEXiBdMdUUGWjTvhgtK3lkk/bzrS/Q7YF1A8YIiKbnpOTsEYqhruFUOTzClGZ1AKof5JJdCdb
	koPvn9Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQAvO-00Cwah-3b; Mon, 22 Aug 2022 17:09:18 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQAvK-00CwTZ-7Q
	for linux-rockchip@lists.infradead.org; Mon, 22 Aug 2022 17:09:17 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 946DD32009F4;
	Mon, 22 Aug 2022 13:09:07 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Mon, 22 Aug 2022 13:09:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1661188147; x=1661274547; bh=X9PHL+jHVs
	Sv4Xbf26BUTCZfNVUvtCBC8qIB3/1pLU4=; b=ZLYyTM+xbqOkmJIdNHFyrQDz5L
	BqyRNFDmv+xa6Mz2xXJqwP74y42xWssZt+3Fg+UrIXfM3wli4fCZ22JP5lLh+KOC
	GaNfAavCVzRutyE/PKMO1ijtTFlHJVfppj4/hxWlwlVFLIRcteHb+mJMNPsjFIsS
	LbXQLTyxXfWlS4gHd++gUXTS2l5SwDRWvp8mzefqon5AV4AT56BkZzbZj4zsAGQZ
	at+B/fIamKKQqkbw2u1wN0S5GFC77q6EIu+wQRKdSVLsnfyxq29MHUwbSR24JXH0
	Bts3xpJSBOZMSUItbHiO58E8SvGgy/OUkj2w8R0n5+nTXvuEG+U7ofZBRW5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1661188147; x=1661274547; bh=X9PHL+jHVsSv4Xbf26BUTCZfNVUv
	tCBC8qIB3/1pLU4=; b=GdRsC2zC4wet/x23nUDlYreeXhvgDR6mfICgTPo5NJL7
	pYbCv+7R4Bp1Hfbr5ygA3zkH7mZv/9ggmKnsV7dcQ2QkGkHR6qBalS3vrdF/2R8G
	NNPbiN/MSfvwZ0Xuytjl7quNkF80uuQ3vedna8KPL06waMCeiSiJBaY+5GHgJAHl
	hgOsTr2uLYdiSpWmHoDMy8NVKJIdB10ZYoEB9mtfP5B1Fqn8hPkGMuOqm2tBAsrV
	ZhGj8VgtxmPd6lAfQ6KAagbByWl6X44/t1d0CNCj4WGAPkr+e+tS1t7lFU3F716T
	5Q4LALtVweTY4R28i9Xhf8AUDsuyDhUBIO+wA6ws5A==
X-ME-Sender: <xms:MrgDY-8wnAuYsSy287CKSN1B7le_EYICHhbmLcj3_VkG8uX3QEtUZA>
    <xme:MrgDY-urwevgSNv5U-f6pXJcOAb1AK2pRb52F6USFPLlNLeAc7L1cnmwrHDAA7Mvz
    vWlpVKckGoI6HaYpGg>
X-ME-Received: <xmr:MrgDY0Ct75_aclflCtMR5J7LnBc3x-meXtmUZKudO2fL-f0w7JhIUr4GC2WGyU1VvEQ4D4_msGDGwayfm5QPSo3glAP743NU6J0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeijedguddutdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttdejnecuhfhrohhmpeffrghf
    nhgrucfjihhrshgthhhfvghlugcuoegurghfnhgrsehfrghsthhmrghilhdrtghomheqne
    cuggftrfgrthhtvghrnhepvdehtdeludekgeevleefuedvudejieetheekvdfhteekffdu
    jefhfedtudehvdeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomhepuggrfhhnrgesfhgrshhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:MrgDY2ewl-q-nZ060bAGvhmoOMUK5Kp_CxWu0R5XTScfQWgnLj144g>
    <xmx:MrgDYzNqSlituRdG_g0-Tz8zUvqNvKF73Cwge30X8zPPHBVNpSyqMw>
    <xmx:MrgDYwmmAxVQaFIqb-3U_bSU9M0TyWKwLJFDcpgMkYgP4_0c-vjsYg>
    <xmx:M7gDY4qYphcNs_X8EeC7z9ISzGyspwB-l1T9JAedpkqF8FYEB3Tj2w>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 22 Aug 2022 13:09:04 -0400 (EDT)
Date: Mon, 22 Aug 2022 20:08:55 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Paul Elder <paul.elder@ideasonboard.com>,
	Florian Sylvestre <fsylvestre@baylibre.com>
Subject: Re: [PATCH 5/5] media: rkisp1: Configure LSC after enabling the ISP
Message-ID: <20220822170855.y4v5sjskhfgqtne6@guri>
References: <20220817021850.20460-1-laurent.pinchart@ideasonboard.com>
 <20220817021850.20460-6-laurent.pinchart@ideasonboard.com>
 <20220818034546.6qx6sdi3qbf6ogra@guri>
 <Yv3bYci+HarfFAbo@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yv3bYci+HarfFAbo@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_100914_864436_1684947A 
X-CRM114-Status: GOOD (  39.95  )
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

On 18.08.2022 09:25, Laurent Pinchart wrote:
>Hi Dafna,
>
>On Thu, Aug 18, 2022 at 06:45:46AM +0300, Dafna Hirschfeld wrote:
>> On 17.08.2022 05:18, Laurent Pinchart wrote:
>> > The ISP8000Nano v18.02 (found in the i.MX8MP) requires the ISP to be
>> > enabled (as indicated by the ISP_CTRL.ISP_ENABLE bit) to configure the
>> > lens shading table in internal RAM. The driver currently configures all
>> > ISP initial parameters before enabling the ISP, which causes the LSC RAM
>> > to not be initialized properly.
>> >
>> > To fix this, split the rkisp1_params_configure() function into a
>> > rkisp1_params_pre_configure() and a rkisp1_params_post_configure(). The
>> > former configures all ISP parameters but LSC, while the latter
>> > configures LSC. To implement this, the rkisp1_params_apply_params_cfg()
>> > function is deconstructed, with two small helpers created to deal with
>> > the parameters buffers, which are then used in rkisp1_params_isr(),
>> > rkisp1_params_pre_configure() and rkisp1_params_post_configure().
>> >
>> > While this initialization ordering is only needed for the ISP8000Nano
>> > v18.02, it doesn't affect other ISP versions negatively, and can thus be
>> > followed unconditionally.
>> >
>> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>> > ---
>> >  .../platform/rockchip/rkisp1/rkisp1-common.h  |  29 ++-
>> >  .../platform/rockchip/rkisp1/rkisp1-isp.c     |   9 +-
>> >  .../platform/rockchip/rkisp1/rkisp1-params.c  | 169 ++++++++++++------
>> >  3 files changed, 143 insertions(+), 64 deletions(-)
>> >
>> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>> > index 1383c13e22b8..f612e1b42b91 100644
>> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>> > @@ -589,19 +589,32 @@ void rkisp1_sd_adjust_crop(struct v4l2_rect *crop,
>> >   */
>> >  const struct rkisp1_mbus_info *rkisp1_mbus_info_get_by_code(u32 mbus_code);
>> >
>> > -/* rkisp1_params_configure - configure the params when stream starts.
>> > - *			     This function is called by the isp entity upon stream starts.
>> > - *			     The function applies the initial configuration of the parameters.
>> > +/*
>> > + * rkisp1_params_pre_configure - Configure the params before stream start
>> >   *
>> > - * @params:	  pointer to rkisp1_params.
>> > + * @params:	  pointer to rkisp1_params
>> >   * @bayer_pat:	  the bayer pattern on the isp video sink pad
>> >   * @quantization: the quantization configured on the isp's src pad
>> >   * @ycbcr_encoding: the ycbcr_encoding configured on the isp's src pad
>> > + *
>> > + * This function is called by the ISP entity just before the ISP gets started.
>> > + * It applies the initial ISP parameters from the first params buffer, but
>> > + * skips LSC as it needs to be configured after the ISP is started.
>> >   */
>> > -void rkisp1_params_configure(struct rkisp1_params *params,
>> > -			     enum rkisp1_fmt_raw_pat_type bayer_pat,
>> > -			     enum v4l2_quantization quantization,
>> > -			     enum v4l2_ycbcr_encoding ycbcr_encoding);
>> > +void rkisp1_params_pre_configure(struct rkisp1_params *params,
>> > +				 enum rkisp1_fmt_raw_pat_type bayer_pat,
>> > +				 enum v4l2_quantization quantization,
>> > +				 enum v4l2_ycbcr_encoding ycbcr_encoding);
>> > +
>> > +/*
>> > + * rkisp1_params_post_configure - Configure the params after stream start
>> > + *
>> > + * @params:	  pointer to rkisp1_params
>> > + *
>> > + * This function is called by the ISP entity just after the ISP gets started.
>> > + * It applies the initial ISP KSC parameters from the first params buffer.
>>
>> What is KSC ?
>
>An incorrect spelling of LSC :-) I'll fix it.
>
>> > + */
>> > +void rkisp1_params_post_configure(struct rkisp1_params *params);
>> >
>> >  /* rkisp1_params_disable - disable all parameters.
>> >   *			   This function is called by the isp entity upon stream start
>> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>> > index c029d2e86717..4876bf890cb2 100644
>> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>> > @@ -343,9 +343,9 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
>> >  		src_frm = rkisp1_isp_get_pad_fmt(isp, NULL,
>> >  						 RKISP1_ISP_PAD_SOURCE_VIDEO,
>> >  						 V4L2_SUBDEV_FORMAT_ACTIVE);
>> > -		rkisp1_params_configure(&rkisp1->params, sink_fmt->bayer_pat,
>> > -					src_frm->quantization,
>> > -					src_frm->ycbcr_enc);
>> > +		rkisp1_params_pre_configure(&rkisp1->params, sink_fmt->bayer_pat,
>> > +					    src_frm->quantization,
>> > +					    src_frm->ycbcr_enc);
>> >  	}
>> >
>> >  	return 0;
>> > @@ -462,6 +462,9 @@ static int rkisp1_isp_start(struct rkisp1_isp *isp, struct media_pad *source)
>> >  	       RKISP1_CIF_ISP_CTRL_ISP_INFORM_ENABLE;
>> >  	rkisp1_write(rkisp1, RKISP1_CIF_ISP_CTRL, val);
>> >
>> > +	if (isp->src_fmt->pixel_enc == V4L2_PIXEL_ENC_BAYER)
>> > +		rkisp1_params_post_configure(&rkisp1->params);
>>
>> why is post config called only in case of bayer?
>
>Because pre_configure is also called for Bayer input only. When the
>input is YUV the ISP is bypassed, and the parameters are reset instead.
>
>> also I see that the lsc config from the isr is called without this condition.
>> In addition the post config also does 'complete buffer' so maybe you do want to
>> call it without the bayer condition.
>
>When the input is YUV there isn't supposed to be any ISP params buffers
>queued. I don't know what will happen if userspace queues any, maybe
>something bad, but this patch doesn't affect that behaviour as far as I
>can tell. Further fixes, if required, would go on top.
>
>> > +
>> >  	return 0;
>> >  }
>> >
>> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>> > index 421ade177b2d..a4664efdfea8 100644
>> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>> > @@ -1297,22 +1297,6 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>> >  						RKISP1_CIF_ISP_CTRL_ISP_GAMMA_IN_ENA);
>> >  	}
>> >
>> > -	/* update lsc config */
>> > -	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_LSC)
>> > -		rkisp1_lsc_config(params,
>> > -				  &new_params->others.lsc_config);
>> > -
>> > -	if (module_en_update & RKISP1_CIF_ISP_MODULE_LSC) {
>> > -		if (module_ens & RKISP1_CIF_ISP_MODULE_LSC)
>> > -			rkisp1_param_set_bits(params,
>> > -					      RKISP1_CIF_ISP_LSC_CTRL,
>> > -					      RKISP1_CIF_ISP_LSC_CTRL_ENA);
>> > -		else
>> > -			rkisp1_param_clear_bits(params,
>> > -						RKISP1_CIF_ISP_LSC_CTRL,
>> > -						RKISP1_CIF_ISP_LSC_CTRL_ENA);
>> > -	}
>> > -
>> >  	/* update awb gains */
>> >  	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN)
>> >  		params->ops->awb_gain_config(params, &new_params->others.awb_gain_config);
>> > @@ -1429,6 +1413,33 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>> >  	}
>> >  }
>> >
>> > +static void
>> > +rkisp1_isp_isr_lsc_config(struct rkisp1_params *params,
>> > +			  const struct rkisp1_params_cfg *new_params)
>> > +{
>> > +	unsigned int module_en_update, module_cfg_update, module_ens;
>> > +
>> > +	module_en_update = new_params->module_en_update;
>> > +	module_cfg_update = new_params->module_cfg_update;
>> > +	module_ens = new_params->module_ens;
>> > +
>> > +	/* update lsc config */
>> > +	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_LSC)
>> > +		rkisp1_lsc_config(params,
>> > +				  &new_params->others.lsc_config);
>> > +
>> > +	if (module_en_update & RKISP1_CIF_ISP_MODULE_LSC) {
>> > +		if (module_ens & RKISP1_CIF_ISP_MODULE_LSC)
>> > +			rkisp1_param_set_bits(params,
>> > +					      RKISP1_CIF_ISP_LSC_CTRL,
>> > +					      RKISP1_CIF_ISP_LSC_CTRL_ENA);
>> > +		else
>> > +			rkisp1_param_clear_bits(params,
>> > +						RKISP1_CIF_ISP_LSC_CTRL,
>> > +						RKISP1_CIF_ISP_LSC_CTRL_ENA);
>> > +	}
>> > +}
>> > +
>> >  static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
>> >  				       struct  rkisp1_params_cfg *new_params)
>> >  {
>> > @@ -1490,47 +1501,60 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
>> >  	}
>> >  }
>> >
>> > -static void rkisp1_params_apply_params_cfg(struct rkisp1_params *params,
>> > -					   unsigned int frame_sequence)
>> > +static bool rkisp1_params_get_buffer(struct rkisp1_params *params,
>> > +				     struct rkisp1_buffer **buf,
>> > +				     struct rkisp1_params_cfg **cfg)
>> >  {
>> > -	struct rkisp1_params_cfg *new_params;
>> > -	struct rkisp1_buffer *cur_buf = NULL;
>> > -
>> >  	if (list_empty(&params->params))
>> > -		return;
>> > +		return false;
>> >
>> > -	cur_buf = list_first_entry(&params->params,
>> > -				   struct rkisp1_buffer, queue);
>> > +	*buf = list_first_entry(&params->params, struct rkisp1_buffer, queue);
>> > +	*cfg = vb2_plane_vaddr(&(*buf)->vb.vb2_buf, 0);
>> >
>> > -	new_params = (struct rkisp1_params_cfg *)vb2_plane_vaddr(&cur_buf->vb.vb2_buf, 0);
>> > +	return true;
>> > +}
>> >
>> > -	rkisp1_isp_isr_other_config(params, new_params);
>> > -	rkisp1_isp_isr_meas_config(params, new_params);
>> > +static void rkisp1_params_complete_buffer(struct rkisp1_params *params,
>> > +					  struct rkisp1_buffer *buf,
>> > +					  unsigned int frame_sequence)
>> > +{
>> > +	list_del(&buf->queue);
>> >
>> > -	/* update shadow register immediately */
>> > -	rkisp1_param_set_bits(params, RKISP1_CIF_ISP_CTRL, RKISP1_CIF_ISP_CTRL_ISP_CFG_UPD);
>> > -
>> > -	list_del(&cur_buf->queue);
>> > -
>> > -	cur_buf->vb.sequence = frame_sequence;
>> > -	vb2_buffer_done(&cur_buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
>> > +	buf->vb.sequence = frame_sequence;
>> > +	vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
>> >  }
>> >
>> >  void rkisp1_params_isr(struct rkisp1_device *rkisp1)
>> >  {
>> > -	/*
>> > -	 * This isr is called when the ISR finishes processing a frame (RKISP1_CIF_ISP_FRAME).
>> > -	 * Configurations performed here will be applied on the next frame.
>> > -	 * Since frame_sequence is updated on the vertical sync signal, we should use
>> > -	 * frame_sequence + 1 here to indicate to userspace on which frame these parameters
>> > -	 * are being applied.
>> > -	 */
>> > -	unsigned int frame_sequence = rkisp1->isp.frame_sequence + 1;
>> >  	struct rkisp1_params *params = &rkisp1->params;
>> > +	struct rkisp1_params_cfg *new_params;
>> > +	struct rkisp1_buffer *cur_buf;
>> >
>> >  	spin_lock(&params->config_lock);
>> > -	rkisp1_params_apply_params_cfg(params, frame_sequence);
>> >
>> > +	if (!rkisp1_params_get_buffer(params, &cur_buf, &new_params))
>> > +		goto unlock;
>> > +
>> > +	rkisp1_isp_isr_other_config(params, new_params);
>> > +	rkisp1_isp_isr_lsc_config(params, new_params);
>> > +	rkisp1_isp_isr_meas_config(params, new_params);
>> > +
>> > +	/* update shadow register immediately */
>> > +	rkisp1_param_set_bits(params, RKISP1_CIF_ISP_CTRL,
>> > +			      RKISP1_CIF_ISP_CTRL_ISP_CFG_UPD);
>> > +
>> > +	/*
>> > +	 * This isr is called when the ISR finishes processing a frame
>> > +	 * (RKISP1_CIF_ISP_FRAME). Configurations performed here will be
>> > +	 * applied on the next frame. Since frame_sequence is updated on the
>> > +	 * vertical sync signal, we should use frame_sequence + 1 here to
>> > +	 * indicate to userspace on which frame these parameters are being
>> > +	 * applied.
>> > +	 */
>> > +	rkisp1_params_complete_buffer(params, cur_buf,
>> > +				      rkisp1->isp.frame_sequence + 1);
>> > +
>> > +unlock:
>> >  	spin_unlock(&params->config_lock);
>> >  }
>> >
>> > @@ -1573,9 +1597,18 @@ static const struct rkisp1_cif_isp_afc_config rkisp1_afc_params_default_config =
>> >  	14
>> >  };
>> >
>> > -static void rkisp1_params_config_parameter(struct rkisp1_params *params)
>> > +void rkisp1_params_pre_configure(struct rkisp1_params *params,
>> > +				 enum rkisp1_fmt_raw_pat_type bayer_pat,
>> > +				 enum v4l2_quantization quantization,
>> > +				 enum v4l2_ycbcr_encoding ycbcr_encoding)
>> >  {
>> >  	struct rkisp1_cif_isp_hst_config hst = rkisp1_hst_params_default_config;
>> > +	struct rkisp1_params_cfg *new_params;
>> > +	struct rkisp1_buffer *cur_buf;
>> > +
>> > +	params->quantization = quantization;
>> > +	params->ycbcr_encoding = ycbcr_encoding;
>> > +	params->raw_type = bayer_pat;
>> >
>> >  	params->ops->awb_meas_config(params, &rkisp1_awb_params_default_config);
>> >  	params->ops->awb_meas_enable(params, &rkisp1_awb_params_default_config,
>> > @@ -1599,20 +1632,50 @@ static void rkisp1_params_config_parameter(struct rkisp1_params *params)
>> >  	spin_lock_irq(&params->config_lock);
>> >
>> >  	/* apply the first buffer if there is one already */
>> > -	rkisp1_params_apply_params_cfg(params, 0);
>> >
>> > +	if (!rkisp1_params_get_buffer(params, &cur_buf, &new_params))
>> > +		goto unlock;
>> > +
>> > +	rkisp1_isp_isr_other_config(params, new_params);
>> > +	rkisp1_isp_isr_meas_config(params, new_params);
>> > +
>> > +	/* update shadow register immediately */
>> > +	rkisp1_param_set_bits(params, RKISP1_CIF_ISP_CTRL,
>> > +			      RKISP1_CIF_ISP_CTRL_ISP_CFG_UPD);
>> > +
>> > +unlock:
>> >  	spin_unlock_irq(&params->config_lock);
>> >  }
>> >
>> > -void rkisp1_params_configure(struct rkisp1_params *params,
>> > -			     enum rkisp1_fmt_raw_pat_type bayer_pat,
>> > -			     enum v4l2_quantization quantization,
>> > -			     enum v4l2_ycbcr_encoding ycbcr_encoding)
>> > +void rkisp1_params_post_configure(struct rkisp1_params *params)
>> >  {
>> > -	params->quantization = quantization;
>> > -	params->ycbcr_encoding = ycbcr_encoding;
>> > -	params->raw_type = bayer_pat;
>> > -	rkisp1_params_config_parameter(params);
>> > +	struct rkisp1_params_cfg *new_params;
>> > +	struct rkisp1_buffer *cur_buf;
>> > +
>> > +	spin_lock_irq(&params->config_lock);
>> > +
>> > +	/*
>> > +	 * Apply LSC parameters from the first buffer (if any is already
>> > +	 * available. This must be done after the ISP gets started in the
>> > +	 * ISP8000Nano v18.02 (found in the i.MX8MP) as access to the LSC RAM
>> > +	 * is gated by the ISP_CTRL.ISP_ENABLE bit. As this initialization
>> > +	 * ordering doesn't affect other ISP versions negatively, do so
>> > +	 * unconditionally.
>> > +	 */
>> > +
>> > +	if (!rkisp1_params_get_buffer(params, &cur_buf, &new_params))
>> > +		goto unlock;
>> > +
>> > +	rkisp1_isp_isr_lsc_config(params, new_params);
>> > +
>> > +	/* update shadow register immediately */
>> > +	rkisp1_param_set_bits(params, RKISP1_CIF_ISP_CTRL,
>> > +			      RKISP1_CIF_ISP_CTRL_ISP_CFG_UPD);
>>
>> updating the shadow regs is already done in the 'complete buffer'
>
>I don't see that being done in rkisp1_params_complete_buffer().

Sorry, I missed,

Dafna,

>
>> > +
>> > +	rkisp1_params_complete_buffer(params, cur_buf, 0);
>> > +
>> > +unlock:
>> > +	spin_unlock_irq(&params->config_lock);
>> >  }
>> >
>> >  /*
>
>-- 
>Regards,
>
>Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
