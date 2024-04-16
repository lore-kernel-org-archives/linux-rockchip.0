Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07845C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 14:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XeoHPHKd2hv75YCPWIVuaCM8kcMMY7dQ9C/Q/xuXlO4=; b=KBTuqWCZ9ou0uq
	k0dr/685WDRhUWuVNVcvJpacwa+TkVbO0u+n0RUyyl8W1ywkQqpX/MFa9M43jznVUbEqN65+XT3ss
	xrx+9jRe9cBCwet7z9p1QLVgU3XUHnuHwpOTzgx5zdQ7RkFqIf+BN6L032NMGu7ypgf5b9XCcZsR0
	gwRTWneab5IKsaSOWdlrZWeCS7sFH0wfJb4VaTL6WIQcO7zRFgL1G59wELvQkC3i264uq9DIbWilJ
	xH6oWEQfCM4vjuHCjJjt7z0YYk4uhCiDaGnkjMxfEKD7gRuZA9SV0MElNq/eNyay/moteX+efLhzx
	BCm9VUzBVLepCyB3/0zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwjVW-0000000CSME-3nPU;
	Tue, 16 Apr 2024 14:09:58 +0000
Received: from mgamail.intel.com ([192.198.163.16])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwjVL-0000000CSCS-1cCB;
	Tue, 16 Apr 2024 14:09:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1713276587; x=1744812587;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=ojzOa7PwYri2Lph1vpvafrvjeVQgZz7o4ByRzv53LDQ=;
  b=S6Lqod8wk/H0CdQyh5LdJ/89c09gBwZFkYkUtUhrNWP1y4gafNVlIRax
   sI7F/w+Wx/duU5TlsaMd1Q2fbdNH8hjs7Sy5Y44igHPw448wS7TC4wslS
   y1o8xcHGb66aDt9F/aaTG79g/2ywigC7RUPlI+ea0VpstJDXe24UI/FyT
   DM+xpsHBmBKHKfda4JIPiTwiuZ1kNvHBMkpMUPxRGRDcgRhX/e8uThAC+
   kfjFO9V3z9PRKlAXYf9TTHjBWeAo4JGoJQLvcpEd3ujMDnnL2CZIDQ57x
   x2tnEGhxCj6/bduqiTb1mHu46FsO/Wjmh0l90FdQ/W1OjNPNoA9nuhicb
   A==;
X-CSE-ConnectionGUID: 0rubh7GoQTCDQ1DlnkkAFQ==
X-CSE-MsgGUID: 3i8c5AAGSRiYMhTViFBvnQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="9268401"
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; 
   d="scan'208";a="9268401"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2024 07:09:46 -0700
X-CSE-ConnectionGUID: eAfTqTRwTKu5nLh4//PJXQ==
X-CSE-MsgGUID: i+B0PUP9T5awrB+Yrhqn2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; 
   d="scan'208";a="22333147"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
  by fmviesa008.fm.intel.com with SMTP; 16 Apr 2024 07:09:41 -0700
Received: by stinkbox (sSMTP sendmail emulation); Tue, 16 Apr 2024 17:09:40 +0300
Date: Tue, 16 Apr 2024 17:09:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Sebastian Wick <sebastian.wick@redhat.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
	Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: Re: [PATCH v11 19/28] drm/connector: hdmi: Add RGB Quantization
 Range to the connector state
Message-ID: <Zh6GpHL7k_mmsad_@intel.com>
References: <20240326-kms-hdmi-connector-state-v11-0-c5680ffcf261@kernel.org>
 <20240326-kms-hdmi-connector-state-v11-19-c5680ffcf261@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240326-kms-hdmi-connector-state-v11-19-c5680ffcf261@kernel.org>
X-Patchwork-Hint: comment
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_070947_869707_C927C2D7 
X-CRM114-Status: GOOD (  29.44  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Mar 26, 2024 at 04:40:23PM +0100, Maxime Ripard wrote:
> HDMI controller drivers will need to figure out the RGB range they need
> to configure based on a mode and property values. Let's expose that in
> the HDMI connector state so drivers can just use that value.
> =

> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/display/drm_hdmi_state_helper.c | 29 +++++++++++++++++++=
++++++
>  drivers/gpu/drm/drm_atomic.c                    |  1 +
>  include/drm/drm_connector.h                     |  6 +++++
>  3 files changed, 36 insertions(+)
> =

> diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/gp=
u/drm/display/drm_hdmi_state_helper.c
> index c844cbeb675b..e693fe51abf5 100644
> --- a/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> +++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> @@ -49,10 +49,37 @@ connector_state_get_mode(const struct drm_connector_s=
tate *conn_state)
>  		return NULL;
>  =

>  	return &crtc_state->mode;
>  }
>  =

> +static bool hdmi_is_full_range(const struct drm_connector *connector,
> +			       const struct drm_connector_state *conn_state)
> +{
> +	const struct drm_display_info *display =3D &connector->display_info;

We call this 'info' everywhere else.

> +	const struct drm_display_mode *mode =3D
> +		connector_state_get_mode(conn_state);
> +
> +	/*
> +	 * The Broadcast RGB property only applies to RGB format, and
> +	 * i915 just assumes limited range for YCbCr output, so let's
> +	 * just do the same.
> +	 */
> +	if (conn_state->hdmi.output_format !=3D HDMI_COLORSPACE_RGB)
> +		return false;
> +
> +	if (conn_state->hdmi.broadcast_rgb =3D=3D DRM_HDMI_BROADCAST_RGB_FULL)
> +		return true;
> +
> +	if (conn_state->hdmi.broadcast_rgb =3D=3D DRM_HDMI_BROADCAST_RGB_LIMITE=
D)
> +		return false;
> +
> +	if (!display->is_hdmi)
> +		return true;
> +
> +	return drm_default_rgb_quant_range(mode) =3D=3D HDMI_QUANTIZATION_RANGE=
_FULL ? true : false;

Pointless ?:

I'd probably use a switch statement to make
the whole thing a bit more clear.

I was pondering if we could also use this from i915. But
we'd have to turn the 'is_hdmi' part into a function
argument since we derive that from the current crtc state
rather than from the display info.

> +}
> +
>  static bool
>  sink_supports_format_bpc(const struct drm_connector *connector,
>  			 const struct drm_display_info *info,
>  			 const struct drm_display_mode *mode,
>  			 unsigned int format, unsigned int bpc)
> @@ -307,10 +334,12 @@ int drm_atomic_helper_connector_hdmi_check(struct d=
rm_connector *connector,
>  		drm_atomic_get_new_connector_state(state, connector);
>  	const struct drm_display_mode *mode =3D
>  		connector_state_get_mode(new_conn_state);
>  	int ret;
>  =

> +	new_conn_state->hdmi.is_full_range =3D hdmi_is_full_range(connector, ne=
w_conn_state);
> +
>  	ret =3D hdmi_compute_config(connector, new_conn_state, mode);
>  	if (ret)
>  		return ret;
>  =

>  	if (old_conn_state->hdmi.broadcast_rgb !=3D new_conn_state->hdmi.broadc=
ast_rgb ||
> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
> index 3e57d98d8418..ec6c6beda5c9 100644
> --- a/drivers/gpu/drm/drm_atomic.c
> +++ b/drivers/gpu/drm/drm_atomic.c
> @@ -1145,10 +1145,11 @@ static void drm_atomic_connector_print_state(stru=
ct drm_printer *p,
>  =

>  	if (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIA ||
>  	    connector->connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIB) {
>  		drm_printf(p, "\tbroadcast_rgb=3D%s\n",
>  			   drm_hdmi_connector_get_broadcast_rgb_name(state->hdmi.broadcast_rg=
b));
> +		drm_printf(p, "\tis_full_range=3D%c\n", state->hdmi.is_full_range ? 'y=
' : 'n');
>  		drm_printf(p, "\toutput_bpc=3D%u\n", state->hdmi.output_bpc);
>  		drm_printf(p, "\toutput_format=3D%s\n",
>  			   drm_hdmi_connector_get_output_format_name(state->hdmi.output_forma=
t));
>  		drm_printf(p, "\ttmds_char_rate=3D%llu\n", state->hdmi.tmds_char_rate);
>  	}
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index a40eaf3a8ce4..f5e960e89de3 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -1068,10 +1068,16 @@ struct drm_connector_state {
>  		 * @broadcast_rgb: Connector property to pass the
>  		 * Broadcast RGB selection value.
>  		 */
>  		enum drm_hdmi_broadcast_rgb broadcast_rgb;
>  =

> +		/**
> +		 * @is_full_range: Is the output supposed to use a full
> +		 * RGB Quantization Range or not?
> +		 */
> +		bool is_full_range;

I would say limited range is the exception so I would suggest
flagging that instead. Feels a bit weird to flag the normal
case. Maybe the name should also include 'rgb' to make it clear
it only applies to RGB.

> +
>  		/**
>  		 * @output_bpc: Bits per color channel to output.
>  		 */
>  		unsigned int output_bpc;
>  =

> =

> -- =

> 2.44.0

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
