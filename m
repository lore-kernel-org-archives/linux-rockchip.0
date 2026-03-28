Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F08010BA45E
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Mar 2026 00:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+dmh6khrAhWAzPoyheEBUCdPcfyk5x1ZWND5N3f8es=; b=n7mB/09176wvf5
	8TKwM255Hqqq+HRQgS+9x3GTPSdU7IEJaHnussKkqloNGf6bmm871Wl/vKTWjdg3xtSFdPyRZZiCv
	J7s9KM4QT76RlfMtrJP/8WkJlJQqbb/6jPV5GE/PR9WDvOIptXxbD4PgimG8FgASYehWfTLVeqdmr
	qTMlX4dqK2HDp2ZSHGjXqbdChVTYRYudPnZ6iqvkI0kI3eu+6QksJnKo/ZlYrDlazl65PAffnj/wQ
	c8YI4FadUM3XTE25kHlyt16xcWRWlr+oxjF/5MIvh4Sn5bVAQDmlrI3aa/+G93HJxcL5m/r1lj8tY
	lcZfugDxQ/cJEM9ITD4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6HRT-00000008N4l-3XkQ;
	Sat, 28 Mar 2026 00:22:19 +0000
Received: from mgamail.intel.com ([192.198.163.19])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6HRQ-00000008N3g-0iip;
	Sat, 28 Mar 2026 00:22:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1774657336; x=1806193336;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=hKLpvsNSY5f61dkDuhlSS6zsyLleYaRSx9gGzSTHTmo=;
  b=SH6anZtRRBULf0eIzPqwNYkO+4LhKBSvjOvIdQw8f77L3EKGTXkqsNsA
   dH3eHD7HKC3ApfQfCncyis5EqG+b0s4ZskSonaQ8T7vmATgcWVndIfCXV
   oOXFNzuGfXhWxmtZyiu7A8as72puPpzjJNkOayjOsnq7vAuYEpZ+peYP1
   LB/fVxFetXeatZjw1b3DMRa5DtpRD7+EtsdNCCEu2Dqu3MZusB6C27wV+
   gOwqH6iGDcB3+3G8U3p3Qaw9MpFZ3yfMDQ0OUBYHIkbFJEjHVbHAV8+rU
   oPx4nW5Lu8LbyvgRIaQkdUCLtk51+ZQY0hYCJq3O/nqEGKiv99p1I9RW0
   Q==;
X-CSE-ConnectionGUID: /KsWCr+URxifdSorsfXEJQ==
X-CSE-MsgGUID: ayPihzqnQuScyo2YKZ7ffA==
X-IronPort-AV: E=McAfee;i="6800,10657,11742"; a="74768557"
X-IronPort-AV: E=Sophos;i="6.23,145,1770624000"; 
   d="scan'208";a="74768557"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Mar 2026 17:22:13 -0700
X-CSE-ConnectionGUID: mSyIvSuCRBKSEXuAKNOjtQ==
X-CSE-MsgGUID: SWzO0wyVQ2SyujTRwk21xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,145,1770624000"; 
   d="scan'208";a="224498686"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.188])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Mar 2026 17:22:04 -0700
Date: Sat, 28 Mar 2026 02:22:01 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Harry Wentland <harry.wentland@amd.com>,
	Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
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
Message-ID: <accfKbYPbH7EgAMc@intel.com>
References: <20260324-color-format-v11-3-605559af4fb4@collabora.com>
 <acLDPYuaVI2-12JX@intel.com>
 <23910073.EfDdHjke4D@workhorse>
 <acLrv5hLyNss-Px5@intel.com>
 <20260325-neat-elegant-raven-ebc9ab@houat>
 <acPA60Ci3n_t__xF@intel.com>
 <20260325-magnificent-ultraviolet-oarfish-baefbc@houat>
 <acQsw3Wi_xVlBZ8d@intel.com>
 <20260326-pumpkin-goshawk-of-stamina-0ccb84@houat>
 <acVzwRyk_J24GrJ4@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <acVzwRyk_J24GrJ4@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_172216_259262_72D7DCD5 
X-CRM114-Status: GOOD (  53.51  )
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

On Thu, Mar 26, 2026 at 07:58:25PM +0200, Ville Syrj=E4l=E4 wrote:
> On Thu, Mar 26, 2026 at 06:02:47PM +0100, Maxime Ripard wrote:
> > On Wed, Mar 25, 2026 at 08:43:15PM +0200, Ville Syrj=E4l=E4 wrote:
> > > On Wed, Mar 25, 2026 at 03:56:58PM +0100, Maxime Ripard wrote:
> > > > On Wed, Mar 25, 2026 at 01:03:07PM +0200, Ville Syrj=E4l=E4 wrote:
> > > > > On Wed, Mar 25, 2026 at 09:24:27AM +0100, Maxime Ripard wrote:
> > > > > > On Tue, Mar 24, 2026 at 09:53:35PM +0200, Ville Syrj=E4l=E4 wro=
te:
> > > > > > > On Tue, Mar 24, 2026 at 08:10:11PM +0100, Nicolas Frattaroli =
wrote:
> > > > > > > > On Tuesday, 24 March 2026 18:00:45 Central European Standar=
d Time Ville Syrj=E4l=E4 wrote:
> > > > > > > > > On Tue, Mar 24, 2026 at 05:01:07PM +0100, Nicolas Frattar=
oli wrote:
> > > > > > > > > > +enum drm_connector_color_format {
> > > > > > > > > > +	/**
> > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or di=
splay protocol
> > > > > > > > > > +	 * helpers should pick a suitable color format. All i=
mplementations of a
> > > > > > > > > > +	 * specific display protocol must behave the same way=
 with "AUTO", but
> > > > > > > > > > +	 * different display protocols do not necessarily hav=
e the same "AUTO"
> > > > > > > > > > +	 * semantics.
> > > > > > > > > > +	 *
> > > > > > > > > > +	 * For HDMI, "AUTO" picks RGB, but falls back to YCbC=
r 4:2:0 if the
> > > > > > > > > > +	 * bandwidth required for full-scale RGB is not avail=
able, or the mode
> > > > > > > > > > +	 * is YCbCr 4:2:0-only, as long as the mode and outpu=
t both support
> > > > > > > > > > +	 * YCbCr 4:2:0.
> > > > > > > > > > +	 *
> > > > > > > > > > +	 * For display protocols other than HDMI, the recursi=
ve bridge chain
> > > > > > > > > > +	 * format selection picks the first chain of bridge f=
ormats that works,
> > > > > > > > > > +	 * as has already been the case before the introducti=
on of the "color
> > > > > > > > > > +	 * format" property. Non-HDMI bridges should therefor=
e either sort their
> > > > > > > > > > +	 * bus output formats by preference, or agree on a un=
ified auto format
> > > > > > > > > > +	 * selection logic that's implemented in a common sta=
te helper (like
> > > > > > > > > > +	 * how HDMI does it).
> > > > > > > > > > +	 */
> > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_AUTO =3D 0,
> > > > > > > > > > +
> > > > > > > > > > +	/**
> > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_RGB444: RGB output for=
mat
> > > > > > > > > > +	 */
> > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_RGB444,
> > > > > > > > > > +
> > > > > > > > > > +	/**
> > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR444: YCbCr 4:4:4 =
output format (ie.
> > > > > > > > > > +	 * not subsampled)
> > > > > > > > > > +	 */
> > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR444,
> > > > > > > > > > +
> > > > > > > > > > +	/**
> > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR422: YCbCr 4:2:2 =
output format (ie.
> > > > > > > > > > +	 * with horizontal subsampling)
> > > > > > > > > > +	 */
> > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR422,
> > > > > > > > > > +
> > > > > > > > > > +	/**
> > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR420: YCbCr 4:2:0 =
output format (ie.
> > > > > > > > > > +	 * with horizontal and vertical subsampling)
> > > > > > > > > > +	 */
> > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR420,
> > > > > > > > > =

> > > > > > > > > Seems like this should document what the quantization ran=
ge
> > > > > > > > > should be for each format.
> > > > > > > > > =

> > > > > > > > =

> > > > > > > > I don't think so? If you want per-component bit depth value=
s,
> > > > > > > > DRM_FORMAT_* defines would be the appropriate values to use=
. This
> > > > > > > > enum is more abstract than that, and is there to communicate
> > > > > > > > YUV vs. RGB and chroma subsampling, with bit depth being ha=
ndled
> > > > > > > > by other properties.
> > > > > > > > =

> > > > > > > > If you mean the factor used for subsampling, then that'd on=
ly be
> > > > > > > > relevant if YCBCR410 was supported where one chroma plane i=
sn't
> > > > > > > > halved but quartered in resolution. I suspect 4:1:0 will ne=
ver
> > > > > > > > be added; no digital display protocol standard supports it =
to my
> > > > > > > > knowledge, and hopefully none ever will.
> > > > > > > =

> > > > > > > No, I mean the quantization range (16-235 vs. 0-255 etc).
> > > > > > > =

> > > > > > > The i915 behaviour is that YCbCr is always limited range,
> > > > > > > RGB can either be full or limited range depending on the =

> > > > > > > "Broadcast RGB" property and other related factors.
> > > > > > =

> > > > > > So far the HDMI state has both the format and quantization rang=
e as
> > > > > > different fields. I'm not sure we need to document the range in=
 the
> > > > > > format field, maybe only mention it's not part of the format bu=
t has a
> > > > > > field of its own?
> > > > > =

> > > > > I think we only have it for RGB (on some drivers only?). For YCbCr
> > > > > I think the assumption is limited range everywhere.
> > > > > =

> > > > > But I'm not really concerned about documenting struct members.
> > > > > What I'm talking about is the *uapi* docs. Surely userspace
> > > > > will want to know what the new property actually does so the
> > > > > uapi needs to be documented properly. And down the line some
> > > > > new driver might also implement the wrong behaviour if there
> > > > > is no clear specification.
> > > > =

> > > > Ack
> > > > =

> > > > > So I'm thinking (or perhaps hoping) the rule might be something l=
ike:
> > > > > - YCbCr limited range =

> > > > > - RGB full range if "Broadcast RGB" property is not present
> > > > =

> > > > Isn't it much more complicated than that for HDMI though? My
> > > > recollection was that any VIC but VIC1 would be limited range, and
> > > > anything else full range?
> > > =

> > > Do we have some driver that implements the CTA-861 CE vs. IT mode
> > > logic but doesn't expose the "Broadcast RGB" property? I was hoping
> > > those would always go hand in hand now.
> > =

> > I'm not sure. i915 and the HDMI state helpers handle it properly (I
> > think?) but it looks like only vc4 registers the Broadcast RGB property
> > and uses the HDMI state helpers.
> > =

> > And it looks like amdgpu registers Broadcast RGB but doesn't use
> > drm_default_rgb_quant_range() which seems suspicious?
> =

> If they want just manual full vs. limited then they should
> limit the property to not expose the "auto" option at all.
> =

> amdgpu also ties this in with the "colorspace" property, which
> originally in i915 only controlled the infoframes/etc. But on
> amdgpu it now controls various aspects of output color
> transformation. The end result is that the property is a complete
> mess with most of the values making no sense. And for whatever
> reason everyone involved refused to remove/deprecate the
> nonsensical values :/
> =

> Looks like this series should make sure the documentation for
> the "colorspace" property is in sync with the new property
> as well. Currently now it's giving conflicting information.

After pondering about this a bit more I guess we could actually
use this to make all the values of the colorspace property make
some sense.

Since we won't have to worry about that RGB->YCbCr 4:2:0
fallback when using and explicit color format, all we'd have
to do is explicitly reject the nonsensical combinations:

color_format_and_colorspace_ok()
{
	switch (color_format) {
	case DRM_CONNECTOR_COLOR_FORMAT_YCBCR444:
	case DRM_CONNECTOR_COLOR_FORMAT_YCBCR422:
	case DRM_CONNECTOR_COLOR_FORMAT_YCBCR420:
		switch (colorspace) {
		case DRM_MODE_COLORIMETRY_NO_DATA:
		case DRM_MODE_COLORIMETRY_SMPTE_170M_YCC:
		case DRM_MODE_COLORIMETRY_BT601_YCC:
		case DRM_MODE_COLORIMETRY_BT709_YCC:
		case DRM_MODE_COLORIMETRY_XVYCC_601:
		case DRM_MODE_COLORIMETRY_XVYCC_709:
		case DRM_MODE_COLORIMETRY_SYCC_601:
		case DRM_MODE_COLORIMETRY_OPYCC_601:
		case DRM_MODE_COLORIMETRY_BT2020_CYCC:
		case DRM_MODE_COLORIMETRY_BT2020_YCC:
		case DRM_MODE_COLORIMETRY_BT709_YCC:
			return true;
		default:
			return false;
		}
		break;
	case DRM_CONNECTOR_COLOR_FORMAT_RGB444:
		switch (colorspace) {
		case DRM_MODE_COLORIMETRY_NO_DATA:
		case DRM_MODE_COLORIMETRY_OPRGB:
		case DRM_MODE_COLORIMETRY_BT2020_RGB:
		case DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65:
		case DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER:
		case DRM_MODE_COLORIMETRY_RGB_WIDE_FIXED:
		case DRM_MODE_COLORIMETRY_RGB_WIDE_FLOAT:
		case DRM_MODE_COLORIMETRY_OPRGB:
		case DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65:
		case DRM_MODE_COLORIMETRY_BT2020_RGB:
			return true;
		default
			return false;
		}
		break;
	case DRM_CONNECTOR_COLOR_FORMAT_AUTO:
		switch (colorspace) {
		case DRM_MODE_COLORIMETRY_NO_DATA:
		case DRM_MODE_COLORIMETRY_BT2020_RGB:
		case DRM_MODE_COLORIMETRY_BT2020_YCC:
			return true;
		default:
			return false;
		}
	default:
		bad;
	}
}

And then presumably the colorspace property is the thing that should
dictate which conversion matrix to use. So something like this:

csc_matrix()
{
	switch (colorspace) {
	case DRM_MODE_COLORIMETRY_SMPTE_170M_YCC:
	case DRM_MODE_COLORIMETRY_BT601_YCC:
	case DRM_MODE_COLORIMETRY_XVYCC_601:
	case DRM_MODE_COLORIMETRY_SYCC_601:
	case DRM_MODE_COLORIMETRY_OPYCC_601:
		return 601;
	case DRM_MODE_COLORIMETRY_BT709_YCC:
	case DRM_MODE_COLORIMETRY_XVYCC_709:
		return 709;
	case DRM_MODE_COLORIMETRY_BT2020_YCC:
	case DRM_MODE_COLORIMETRY_BT2020_RGB:
		return 2020;
	case DRM_MODE_COLORIMETRY_BT2020_CYCC:
		return 2020_const;
	case DRM_MODE_COLORIMETRY_NO_DATA:
		return vdisplay >=3D 720 ? 709 : 601;
	default:
		bad;
	}
}

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
