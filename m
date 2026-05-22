Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12961CD5BB4
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 May 2026 19:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mxnrL8SR7Fp4UlUqtttZB5WE1O3LyK/uCtNWCq6alrY=; b=w3ErJu7yJlZ9GK
	2T1ZhMYlijgNiTuGCplkZlXxviiV8NfRN3/iaPCT0vQhewEMOwFkpH4wN3i8fUgGkljlfMyLD1lh/
	AMAsdl3MIvmYts8XdiQfu8X3TLprgDldraP2vU0P7o3uwjF9TYQWr7epNvF6K8E/CkkVeqOftugki
	83+ZhKuFAqDt+5LkrGl/dk1bJ3NLpnUNxX2EpLsowI7SmsaOsaxa8Ln4mmwA17iI9lrCT9I6b9hZi
	pqxIIOXfQ+T7/JYFG0r+ymMXePcg6QyQJHi6JnSOfMSzK+Xos7WxRgdY09wb01XM2DQBE9YJFSbXy
	KRU2eab973f/fRbvm8QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQVP8-0000000Bl6u-3JlF;
	Fri, 22 May 2026 19:19:30 +0000
Received: from mgamail.intel.com ([192.198.163.12])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQVP5-0000000Bl63-4Afz;
	Fri, 22 May 2026 19:19:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1779477568; x=1811013568;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=mvsDdaMaG9ahIS17I/CcaLNe8axrlTXXcEKv1I/F3/Q=;
  b=ZXssrStocuppOtW1LLHKq65BFilzaNo3KamAI44OhgvwaXPx/s4lCNM6
   XJvnV8AbkHpzRY6L2zOMz06UJegSnmWIu127uKn9E4DKgZpXkWp8OhTEB
   d795837jWor1HH23Wq2sGol6JzUckfhDWlij/HYhCqcxMKPdgUAT0AXpT
   jRD8BAsXqOi4c5iFJp5zAMO7aa8FsicZqyKYrkGo1X0JEWsFllTqvuPJf
   N1Yi1bvIin4P61UlBiwIzI1zJAk4SWGJ1CigZpWzW3B6CC8pIZEJN2RaR
   l9SffWHJUoOzr3t5JfKdmIO7E6Zl3hljOSbrtWHi6iCScWLPRtGt5ds/s
   A==;
X-CSE-ConnectionGUID: 9iNxwtKPQh2g2lGwLxjwbg==
X-CSE-MsgGUID: n6AnXCyrTYCvfJ2ZpmzG6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="84267503"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; 
   d="scan'208";a="84267503"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 May 2026 12:19:27 -0700
X-CSE-ConnectionGUID: dL6cDJ6DQFWZrX5hPOKejw==
X-CSE-MsgGUID: L335gYqQSTavjDxYniwzUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; 
   d="scan'208";a="264546693"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.71])
  by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 May 2026 12:19:18 -0700
Date: Fri, 22 May 2026 22:19:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
	Rodrigo Siqueira <siqueira@igalia.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Tvrtko Ursulin <tursulin@ursulin.net>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Rob Herring <robh@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Daniel Stone <daniel@fooishbar.org>, kernel@collabora.com,
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org,
	wayland-devel@lists.freedesktop.org
Subject: Re: [PATCH v15 12/28] drm/i915/dp: Add YCBCR444 handling for sink
 formats
Message-ID: <ahCsMhvKzUU-3x7b@intel.com>
References: <20260522-color-format-v15-0-21fb136c9df2@collabora.com>
 <20260522-color-format-v15-12-21fb136c9df2@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260522-color-format-v15-12-21fb136c9df2@collabora.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_121928_048597_EAD03968 
X-CRM114-Status: GOOD (  19.47  )
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

On Fri, May 22, 2026 at 02:32:03PM +0200, Nicolas Frattaroli wrote:
> In anticipation of userspace being able to explicitly select supported
> sink formats, add handling of the YCBCR444 sink format. The AUTO path
> does not choose this format, but with explicit format selection added to
> the driver, it becomes a possibility.
> =

> Check for both source and sink support of YCBCR444 in
> intel_dp_sink_format_valid.
> =

> Acked-by: Daniel Stone <daniel@fooishbar.org>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 1920d2f02666..143ed85224be 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1344,6 +1344,20 @@ intel_dp_mode_valid_downstream(struct intel_connec=
tor *connector,
>  					 8, sink_format, true);
>  }
>  =

> +static bool
> +intel_dp_can_ycbcr444(struct intel_dp *intel_dp)
> +{
> +	if (source_can_output(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR444) &&
> +	    !drm_dp_is_branch(intel_dp->dpcd))
> +		return true;
> +
> +	if (source_can_output(intel_dp, INTEL_OUTPUT_FORMAT_RGB) &&
> +	    dfp_can_convert_from_rgb(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR444))

IIRC my previous conclusion was that we don't want the dfp convert
stuff here, at least initially. So this should just are about
source_can_output().

> +		return true;
> +
> +	return false;
> +}
> +
>  static enum drm_mode_status
>  intel_dp_sink_format_valid(struct intel_connector *connector,
>  			   const struct drm_display_mode *mode,
> @@ -1364,6 +1378,13 @@ intel_dp_sink_format_valid(struct intel_connector =
*connector,
>  =

>  		return MODE_OK;

Again, would prefer a cleanr 420->444->rgb order.

>  	case INTEL_OUTPUT_FORMAT_RGB:
> +		return MODE_OK;
> +	case INTEL_OUTPUT_FORMAT_YCBCR444:
> +		if (!(info->color_formats & BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444)))
> +			return MODE_BAD;
> +		if (!intel_dp_can_ycbcr444(intel_dp))
> +			return MODE_BAD;

These two ifs are swapped when compared to the HDMI version for no
good reason that I can see.

And missing the has_hdmi_sink check here as well.

> +
>  		return MODE_OK;
>  	default:
>  		MISSING_CASE(sink_format);
> =

> -- =

> 2.54.0

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
