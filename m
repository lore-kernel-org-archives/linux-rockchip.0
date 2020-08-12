Return-Path: <SRS0=6SwX=BW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDED7C433DF
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2020 09:22:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 89C4C207DE
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2020 09:22:46 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ZDAjJ2ef";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="RNDEHMva"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 89C4C207DE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MqVkH7lDvjSu5+3VI++u95OQxKZjs8N5oSDexW0b6eY=; b=ZDAjJ2eftzXR2eQO5/aPjXqlm
	lFBf5VcK3fOC+THOFLLxjZJ/xwwn1+rc+t9ZNknyJ5+1WB9dk0c3u79gRVobMDjIJo+rKQeJzEh5H
	7ZMhCTv8AIya4wNwi+FvOVDWw19c2LOi+dmTuq9h3ou0BQ2nJpAVTx0i2vFREajl4xmbBcEwJat37
	sjAyfP2vbu7bAa5VyTrgrbLTajjV1xCTlB99605y+enMOFLxASp7WEkywmOSq1mgyrqsT9tvRhjSH
	o329/Ig8vFYAzCoS067JErszezSCzkUdT5HobeTdjLflT7Rds/i1nTbsFEPyIiAVUDXExlFfopSoU
	z/IDJROrg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k5my0-0003J9-84; Wed, 12 Aug 2020 09:22:40 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5mxu-0003Gr-Ra; Wed, 12 Aug 2020 09:22:35 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id CC848595;
 Wed, 12 Aug 2020 11:22:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1597224151;
 bh=WxR0bD/qesCEzDS1TUdLg+fPZgf/ua764mXYDcrsEP4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RNDEHMva105JzWO24cpP4ermJi5VqV6dodewcVqPLcIDJ/pBO+/p5kzEZaKMhjYGN
 9EGTF3SHWxD+Wgc0hSWdWx9mT/q3jm/vhQgPReZnx373MefyA335m7BAw6Vrn//yMi
 O/R/sFrA1PcdzDNmsEZzARurxNHIUFcs4cXZphEU=
Date: Wed, 12 Aug 2020 12:22:17 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH 2/6] drm: bridge: dw-hdmi: Implement connector
 atomic_begin/atomic_flush
Message-ID: <20200812092217.GC6057@pendragon.ideasonboard.com>
References: <20200812083120.743-1-algea.cao@rock-chips.com>
 <20200812083433.934-1-algea.cao@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200812083433.934-1-algea.cao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200812_052235_180516_013AC781 
X-CRM114-Status: GOOD (  23.28  )
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
Cc: daniel@ffwll.ch, jernej.skrabec@siol.net,
 laurent.pinchart+renesas@ideasonboard.com, heiko@sntech.de, jonas@kwiboo.se,
 airlied@linux.ie, kuankuan.y@gmail.com, narmstrong@baylibre.com,
 maarten.lankhorst@linux.intel.com, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 a.hajda@samsung.com, mripard@kernel.org, tzimmermann@suse.de,
 jbrunet@baylibre.com, linux-rockchip@lists.infradead.org, darekm@google.com,
 sam@ravnborg.org, linux-arm-kernel@lists.infradead.org, cychiang@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Algea,

Thank you for the patch.

On Wed, Aug 12, 2020 at 04:34:33PM +0800, Algea Cao wrote:
> Introduce dw_hdmi_connector_atomic_begin() and
> dw_hdmi_connector_atomic_flush() to implement connector
> atomic_begin/atomic_flush. When enc_out_bus_format or
> enc_in_bus_format changed, dw_hdmi_setup is called.
> 
> To avoid screen flash when updating bus format, it's need
> to send AVMUTE flag to make screen black, and clear flag
> after bus format updated.
> 
> Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
> ---
> 
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 65 +++++++++++++++++++++++
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.h |  4 ++
>  2 files changed, 69 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index 6148a022569a..a1a81fc768c2 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -108,6 +108,8 @@ struct hdmi_vmode {
>  };
>  
>  struct hdmi_data_info {
> +	unsigned int prev_enc_in_bus_format;
> +	unsigned int prev_enc_out_bus_format;
>  	unsigned int enc_in_bus_format;
>  	unsigned int enc_out_bus_format;
>  	unsigned int enc_in_encoding;
> @@ -116,6 +118,7 @@ struct hdmi_data_info {
>  	unsigned int hdcp_enable;
>  	struct hdmi_vmode video_mode;
>  	bool rgb_limited_range;
> +	bool update;
>  };
>  
>  struct dw_hdmi_i2c {
> @@ -2401,6 +2404,60 @@ static int dw_hdmi_connector_get_modes(struct drm_connector *connector)
>  	return ret;
>  }
>  
> +static void
> +dw_hdmi_connector_atomic_begin(struct drm_connector *connector,
> +			       struct drm_connector_state *conn_state)
> +{
> +	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi,
> +					    connector);
> +	unsigned int enc_in_bus_fmt = hdmi->hdmi_data.enc_in_bus_format;
> +	unsigned int enc_out_bus_fmt = hdmi->hdmi_data.enc_out_bus_format;
> +	unsigned int prev_enc_in_bus_fmt =
> +		hdmi->hdmi_data.prev_enc_in_bus_format;
> +	unsigned int prev_enc_out_bus_fmt =
> +		hdmi->hdmi_data.prev_enc_out_bus_format;
> +
> +	if (!conn_state->crtc)
> +		return;
> +
> +	if (!hdmi->hdmi_data.video_mode.mpixelclock)
> +		return;
> +
> +	if (enc_in_bus_fmt != prev_enc_in_bus_fmt ||
> +	    enc_out_bus_fmt != prev_enc_out_bus_fmt) {
> +		hdmi->hdmi_data.update = true;
> +		hdmi_writeb(hdmi, HDMI_FC_GCP_SET_AVMUTE, HDMI_FC_GCP);
> +		/* Add delay to make av mute work on sink*/
> +		msleep(50);
> +	} else {
> +		hdmi->hdmi_data.update = false;
> +	}
> +}
> +
> +static void
> +dw_hdmi_connector_atomic_flush(struct drm_connector *connector,
> +			       struct drm_connector_state *conn_state)
> +{
> +	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi,
> +					     connector);
> +
> +	if (!conn_state->crtc)
> +		return;
> +
> +	DRM_DEBUG("%s\n", __func__);
> +
> +	if (hdmi->hdmi_data.update) {
> +		dw_hdmi_setup(hdmi, hdmi->curr_conn, &hdmi->previous_mode);
> +		/*
> +		 * Before clear AVMUTE, delay is needed to
> +		 * prevent display flash.
> +		 */
> +		msleep(50);
> +		hdmi_writeb(hdmi, HDMI_FC_GCP_CLEAR_AVMUTE, HDMI_FC_GCP);
> +		hdmi->hdmi_data.update = false;
> +	}
> +}
> +
>  static bool hdr_metadata_equal(const struct drm_connector_state *old_state,
>  			       const struct drm_connector_state *new_state)
>  {
> @@ -2465,6 +2522,8 @@ static const struct drm_connector_funcs dw_hdmi_connector_funcs = {
>  static const struct drm_connector_helper_funcs dw_hdmi_connector_helper_funcs = {
>  	.get_modes = dw_hdmi_connector_get_modes,
>  	.atomic_check = dw_hdmi_connector_atomic_check,
> +	.atomic_begin = dw_hdmi_connector_atomic_begin,
> +	.atomic_flush = dw_hdmi_connector_atomic_flush,
>  };
>  
>  static int dw_hdmi_connector_create(struct dw_hdmi *hdmi)
> @@ -2778,6 +2837,12 @@ static int dw_hdmi_bridge_atomic_check(struct drm_bridge *bridge,
>  {
>  	struct dw_hdmi *hdmi = bridge->driver_private;
>  
> +	hdmi->hdmi_data.prev_enc_out_bus_format =
> +			hdmi->hdmi_data.enc_out_bus_format;
> +
> +	hdmi->hdmi_data.prev_enc_in_bus_format =
> +			hdmi->hdmi_data.enc_in_bus_format;
> +
>  	hdmi->hdmi_data.enc_out_bus_format =
>  			bridge_state->output_bus_cfg.format;
>  

.atomic_check() isn't allowed to change the device state, neither the
hardware state, nor the software state stored in struct dw_hdmi. You
essentially need to treat the drm_bridge and dw_hdmi as const in the
.atomic_check() operation.

> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
> index 1999db05bc3b..05182418efbb 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
> @@ -842,6 +842,10 @@ enum {
>  	HDMI_FC_AVICONF3_QUANT_RANGE_LIMITED = 0x00,
>  	HDMI_FC_AVICONF3_QUANT_RANGE_FULL = 0x04,
>  
> +/* HDMI_FC_GCP */
> +	HDMI_FC_GCP_SET_AVMUTE = 0x2,
> +	HDMI_FC_GCP_CLEAR_AVMUTE = 0x1,
> +
>  /* FC_DBGFORCE field values */
>  	HDMI_FC_DBGFORCE_FORCEAUDIO = 0x10,
>  	HDMI_FC_DBGFORCE_FORCEVIDEO = 0x1,

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
