Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02ED0F54ADE
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 17:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kxbt/qRZH0fkosUHigik1p4GkCDWFr7+pIj89pNP6+s=; b=evy2tpXjLqBWV+
	H8NwET0Nimp1d/sgQr53aLDVho8geCBRJKPSTpR0j5nFJjpYTCS/VcmyVpVYj2u6M/NO1hMUFixPD
	xOUpdjGqBmNzEUZm9th+cTynOvdFz9ZIDZtc8irL3+sGXhLmvT46Uwku/+sJRGVX2/Atq3O4IVT43
	+TTnW8njiZKLdQUa8CowNd1bL68bOqD7VM0YL2UatiHpuuhIiDk4bvmat4SKr/8S4nIrI6ddf3c4e
	W1My8hqRNlCxtD8eVxfjb2hT7V1L/KAxoMGbWCq1bd8Hp9iLof7CeRNu9ulQsuDr68dG+DUpk8zbm
	am/6g3imNS0oBQXgK7Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w557w-00000001xZ3-0cb6;
	Tue, 24 Mar 2026 17:01:12 +0000
Received: from mgamail.intel.com ([198.175.65.15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w557o-00000001xSk-3fOR;
	Tue, 24 Mar 2026 17:01:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1774371665; x=1805907665;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=aDKWI4cKGQKK5hVg6AfnHxki62nohW34+6dDQKvaUzA=;
  b=TrL523X9mkaqiErQOaUcRyUkdNBtE+QPuPEWrK4v0DRymib2AR5qKeke
   yKLWWwma5SVKTz3oNE6FWf8/wNsvUkMzRVdCNXztcdVW6wOuCt53f4vEQ
   OrKX68iWkrjY8bVqFM9QCo3M9L5f+7+/rDrio+LrD4yitiNEy9PBLOwnh
   RpFoKZcYtUpwAoFFHxHmjfaBbqpoyNkqx79W+IMHQL9yY7FA75QnWcbE3
   /9JlajL2CFgE6WiHONlfJK6Pjd7v6QJylm8mHg8WdhwvRBlyWqym7M2vy
   c6KHta0ZgdjVMzFobE96tZDGkxAyVwH45aTYfSfR3tbMusKFm/YF32Qg4
   g==;
X-CSE-ConnectionGUID: QufFrYzfRnCPEnLwcRmjqw==
X-CSE-MsgGUID: S1HTuNjnSH2l3hzjVAMrKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="78991857"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; 
   d="scan'208";a="78991857"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2026 10:01:00 -0700
X-CSE-ConnectionGUID: b4BAW2/ERUWoQ6r6oZykng==
X-CSE-MsgGUID: SL+/tSDtRZahvvTQl/a0tQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; 
   d="scan'208";a="254912602"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.220])
  by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2026 10:00:49 -0700
Date: Tue, 24 Mar 2026 19:00:45 +0200
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
	Shuah Khan <skhan@linuxfoundation.org>, kernel@collabora.com,
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org,
	Werner Sembach <wse@tuxedocomputers.com>,
	Andri Yngvason <andri@yngvason.is>,
	Marius Vlad <marius.vlad@collabora.com>
Subject: Re: [PATCH v11 03/22] drm: Add new general DRM property "color
 format"
Message-ID: <acLDPYuaVI2-12JX@intel.com>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <20260324-color-format-v11-3-605559af4fb4@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260324-color-format-v11-3-605559af4fb4@collabora.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_100104_978159_9703DF05 
X-CRM114-Status: GOOD (  22.93  )
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

On Tue, Mar 24, 2026 at 05:01:07PM +0100, Nicolas Frattaroli wrote:
> +enum drm_connector_color_format {
> +	/**
> +	 * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or display protocol
> +	 * helpers should pick a suitable color format. All implementations of a
> +	 * specific display protocol must behave the same way with "AUTO", but
> +	 * different display protocols do not necessarily have the same "AUTO"
> +	 * semantics.
> +	 *
> +	 * For HDMI, "AUTO" picks RGB, but falls back to YCbCr 4:2:0 if the
> +	 * bandwidth required for full-scale RGB is not available, or the mode
> +	 * is YCbCr 4:2:0-only, as long as the mode and output both support
> +	 * YCbCr 4:2:0.
> +	 *
> +	 * For display protocols other than HDMI, the recursive bridge chain
> +	 * format selection picks the first chain of bridge formats that works,
> +	 * as has already been the case before the introduction of the "color
> +	 * format" property. Non-HDMI bridges should therefore either sort their
> +	 * bus output formats by preference, or agree on a unified auto format
> +	 * selection logic that's implemented in a common state helper (like
> +	 * how HDMI does it).
> +	 */
> +	DRM_CONNECTOR_COLOR_FORMAT_AUTO =3D 0,
> +
> +	/**
> +	 * @DRM_CONNECTOR_COLOR_FORMAT_RGB444: RGB output format
> +	 */
> +	DRM_CONNECTOR_COLOR_FORMAT_RGB444,
> +
> +	/**
> +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR444: YCbCr 4:4:4 output format (ie.
> +	 * not subsampled)
> +	 */
> +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR444,
> +
> +	/**
> +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR422: YCbCr 4:2:2 output format (ie.
> +	 * with horizontal subsampling)
> +	 */
> +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR422,
> +
> +	/**
> +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR420: YCbCr 4:2:0 output format (ie.
> +	 * with horizontal and vertical subsampling)
> +	 */
> +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR420,

Seems like this should document what the quantization range
should be for each format.

> +
> +	/**
> +	 * @DRM_CONNECTOR_COLOR_FORMAT_COUNT: Number of valid connector color
> +	 * format values in this enum
> +	 */
> +	DRM_CONNECTOR_COLOR_FORMAT_COUNT,
> +};
> +
> +/**
> + * drm_connector_color_format_valid - Validate drm_connector_color_forma=
t value
> + * @fmt: value to check against all values of &enum drm_connector_color_=
format
> + *
> + * Checks whether the passed in value of @fmt is one of the allowable va=
lues in
> + * &enum drm_connector_color_format.
> + *
> + * Returns: %true if it's a valid value for the enum, %false otherwise.
> + */
> +static inline bool __pure
> +drm_connector_color_format_valid(enum drm_connector_color_format fmt)
> +{
> +	switch (fmt) {
> +	case DRM_CONNECTOR_COLOR_FORMAT_AUTO:
> +	case DRM_CONNECTOR_COLOR_FORMAT_RGB444:
> +	case DRM_CONNECTOR_COLOR_FORMAT_YCBCR444:
> +	case DRM_CONNECTOR_COLOR_FORMAT_YCBCR422:
> +	case DRM_CONNECTOR_COLOR_FORMAT_YCBCR420:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
>  const char *
>  drm_hdmi_connector_get_output_format_name(enum drm_output_color_format f=
mt);
>  =

> @@ -1129,6 +1217,13 @@ struct drm_connector_state {
>  	 */
>  	enum drm_colorspace colorspace;
>  =

> +	/**
> +	 * @color_format: State variable for Connector property to request
> +	 * color format change on Sink. This is most commonly used to switch
> +	 * between RGB to YUV and vice-versa.
> +	 */
> +	enum drm_connector_color_format color_format;
> +
>  	/**
>  	 * @writeback_job: Writeback job for writeback connectors
>  	 *
> @@ -2127,6 +2222,12 @@ struct drm_connector {
>  	 */
>  	struct drm_property *colorspace_property;
>  =

> +	/**
> +	 * @color_format_property: Connector property to set the suitable
> +	 * color format supported by the sink.
> +	 */
> +	struct drm_property *color_format_property;
> +
>  	/**
>  	 * @path_blob_ptr:
>  	 *
> @@ -2610,6 +2711,9 @@ bool drm_connector_has_possible_encoder(struct drm_=
connector *connector,
>  					struct drm_encoder *encoder);
>  const char *drm_get_colorspace_name(enum drm_colorspace colorspace);
>  =

> +int drm_connector_attach_color_format_property(struct drm_connector *con=
nector,
> +					       unsigned long supported_color_formats);
> +
>  /**
>   * drm_for_each_connector_iter - connector_list iterator macro
>   * @connector: &struct drm_connector pointer used as cursor
> =

> -- =

> 2.53.0

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
