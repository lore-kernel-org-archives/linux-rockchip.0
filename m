Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5622D43341
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Dec 2025 19:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ISS6kBFAY5GsLIsLXwO2/UyGg6rI73c46y5xa6IQUo=; b=IsJ4KkZ3wkOaRg
	YFMAxsHyaTiZoi4IUsuC0Kw0g/bp+K9t1Bas/95aM2w42vSoDTOT2UqMfviDfofZ7ZoAjCwmPSaZh
	/rP3nHmP1758No67tPO9KjWgac+ttVdSf+VOlYOJ6xPokkW6yR8kNGd6Bw++0+PQgptfArnZC5L18
	FC5PlKNVbPZnZ7FimGXqL+FMGc00Oifs30zdsA8cj52AOX6OQ1z+mLx/wWnzKll/ZXfXKJRIZjc4V
	97J3CyGHwvrTri35gZoj0EYw9VqGCUPPwTd7K7A1NpyusQselVHreVTTY9SK1K3Sz2vw2IXLc+X1M
	DbCoOfeyi0l63qcVwQ9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmZ2-0000000HAyD-3M8u;
	Thu, 11 Dec 2025 19:43:00 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmYz-0000000HAxi-452K;
	Thu, 11 Dec 2025 19:42:59 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1765482132; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=ciN6hhmmewtgEN0ZKJ63T2zfwfD+1mtmEX2RNDfEuj6+44NErDR963oAInB4MfFQjTUAoPCFP2KfvPKQ6sWfOzGe88gJEhMzYhlHy5aFG/jc6htQs0JZLA8bOVZO6du5s1+6ymS5OdB6BahiaWTKKWLXMdJHHVvQLX72sz5Db0E=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1765482132; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=c+k0Zb9KAErrPfpLNWK7UIA2mEBiGzS9CegcNA5fUbk=; 
	b=NQLYx6bZtsCLPVB0LgjvedBDeJFYTouh/lah/ttc24PJEN11qGrqhjsTdoOy8T5gj8Tgj+mDB4O/DbYFY6cYn7eVlqfqvxJZOSQPNPJ9vYoTA5BXoLo0/jwzezER80fiSpB3cGPCw5jUp7uXJzpN/iQuKlv67zdFdhzDYD8pHT4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1765482132;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=c+k0Zb9KAErrPfpLNWK7UIA2mEBiGzS9CegcNA5fUbk=;
	b=JAfYpqV/M7/bXt2gwPMrFJUxfV5AvQXKF81nxShtB5i5utfNMjDEIvGlWxiwwg/z
	w64xNKE9sddDilcZpfrKHOG/7gHtPqXJOgk6sVLqwpkAby7M0EhiGNdgUcBn2yPrGXc
	DGZ/hBZ+FvSAfsnkeoBLsk73sHMUwgEEhspruKzA=
Received: by mx.zohomail.com with SMTPS id 1765482130230834.2305088660225;
	Thu, 11 Dec 2025 11:42:10 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>,
 kernel@collabora.com, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v5 05/17] drm/display: hdmi-state-helper: Act on color format DRM
 property
Date: Thu, 11 Dec 2025 20:42:00 +0100
Message-ID: <3084118.iZASKD2KPV@workhorse>
In-Reply-To: <20251209-uptight-radical-chupacabra-ac3d6d@houat>
References: <20251128-color-format-v5-0-63e82f1db1e1@collabora.com>
 <20251128-color-format-v5-5-63e82f1db1e1@collabora.com>
 <20251209-uptight-radical-chupacabra-ac3d6d@houat>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_114258_068113_1213F9D7 
X-CRM114-Status: GOOD (  24.76  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tuesday, 9 December 2025 15:16:58 Central European Standard Time Maxime Ripard wrote:
> On Fri, Nov 28, 2025 at 10:05:41PM +0100, Nicolas Frattaroli wrote:
> > With the introduction of the "color format" DRM property, which allows
> > userspace to request a specific color format, the HDMI state helper
> > should implement this.
> > 
> > Implement it by checking whether the property is set and set to
> > something other than auto. If so, pass the requested color format, and
> > otherwise set RGB.
> > 
> > Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> > ---
> >  drivers/gpu/drm/display/drm_hdmi_state_helper.c | 12 +++++++++++-
> >  1 file changed, 11 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> > index a561f124be99..5da956bdd68c 100644
> > --- a/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> > +++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> > @@ -649,11 +649,21 @@ hdmi_compute_config(const struct drm_connector *connector,
> >  	unsigned int max_bpc = clamp_t(unsigned int,
> >  				       conn_state->max_bpc,
> >  				       8, connector->max_bpc);
> > +	enum hdmi_colorspace hdmi_colorspace =
> > +		drm_color_format_to_hdmi_colorspace(conn_state->color_format);
> >  	int ret;
> >  
> >  	ret = hdmi_compute_format_bpc(connector, conn_state, mode, max_bpc,
> > -				      HDMI_COLORSPACE_RGB);
> > +				      hdmi_colorspace);
> >  	if (ret) {
> > +		/* If a color format was explicitly requested, don't fall back */
> > +		if (conn_state->color_format) {
> > +			drm_dbg_kms(connector->dev,
> > +				    "Explicitly set color format '%s' doesn't work.\n",
> > +				    drm_get_color_format_name(conn_state->color_format));
> > +			return ret;
> > +		}
> > +
> 
> I think the following would be more readable:
> 
> 
> if (conn_state->color_format && conn_state->color_format != DRM_COLOR_FORMAT_AUTO) {
>     enum hdmi_colorspace hdmi_colorspace =
>         drm_color_format_to_hdmi_colorspace(conn_state->color_format);
> 
>     return hdmi_compute_format_bpc(connector, conn_state, mode, max_bpc, hdmi_colorspace)
> }
> 
> ret = ret = hdmi_compute_format_bpc(connector, conn_state, mode, max_bpc,
>                                     HDMI_COLORSPACE_RGB);
> 
> ...

I think I get what you mean: if conn_state->color_format is set, return
directly, instead of bailing out in the fallback path. I can do that.

However, `conn_state->color_format && conn_state->color_format != DRM_COLOR_FORMAT_AUTO`
is redundant now as of v5 since DRM_COLOR_FORMAT_AUTO is 0 (and
I use its falsy nature in many other places, and don't intend to
stop doing that).

> 
> Maxime
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
