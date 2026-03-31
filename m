Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 774B21061B39
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Mar 2026 11:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6vrCC+rY5qjQ2NVuxeLjF+LykCRy2N2a7Rpb1u0/V4=; b=36+Pm2kqL+Uv9b
	23d3VXPNDme0d86AU3ggy7r9RavoPj5P8plsxm3s1DQEUMoADcFTSy0izudztTF4CYqsZHybFHfD5
	5NZ1kUpzOluCEZe3YU61WmjdW1sEyMnxwVZw70/AKMhWv7zjuaiTjljxHbsr6G5kqu2OhsU69VvX+
	K1+raFIPdMTH3GdtKe4o3fNghr1jUdZIYFBySjR0uUSdPe4muyUeShKFw0DXDNe1yaVOWxStHGu0e
	UV2yoeSxnW0dDJ1EQB1z4bkgIF41DuIjVVcpIMJyAB/CjiwdHJG8yyZu3C+ZX/wr1V8ZZgU7iw/ws
	DjqYq5UEaMetpwpr2WAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7XWm-0000000Ctop-22yr;
	Tue, 31 Mar 2026 11:45:00 +0000
Received: from mgamail.intel.com ([198.175.65.20])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7XWj-0000000CtnE-2YzZ;
	Tue, 31 Mar 2026 11:44:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1774957498; x=1806493498;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=B+8qcdkZoXchrsX7i0pthoUR4luw67BnA7+Ei8884jY=;
  b=H7Lq6HFdxVrNntPzdM3GmT9yzqe9QPS/+0spkeST2ev+mpak2/+3ldGT
   BwkZ9Xl3Fgq72fkVfZInQX7vKWs+mKHXArbXtBjBZchQ7ZAXmTGK2QobL
   VQ5JKPXWg/+xQWqJ+de/gGlphZ2p+OH5HNrW0KhF53OIjcNgTBNLjFRb5
   lBlsapaaQ2/+q8TUqZ71isYS3R1ArOgRowBOXSTpecEnWxMAhSS9p8hAX
   cRSveuXwIxnu9X+gd4x6YWv9ME1Q+5hOfZPOnaQuL4mIMQgDiIFg0vXv6
   Z6DPWUYZ/dp+LEv4UEsbovrB+ws73YWvhgZga0oJIgofzKHEKPG293Gtg
   w==;
X-CSE-ConnectionGUID: Gs3+KqWKQNWmaHe31kERgQ==
X-CSE-MsgGUID: 7R5jjDtmQ/+X0N2/DfO6rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="75684700"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; 
   d="scan'208";a="75684700"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2026 04:44:55 -0700
X-CSE-ConnectionGUID: 6h6u+1WGThKi+KKqZ0aLgw==
X-CSE-MsgGUID: LxtBhquxT9ukvY131dMHYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; 
   d="scan'208";a="226222302"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.24])
  by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2026 04:44:43 -0700
Date: Tue, 31 Mar 2026 14:44:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Maxime Ripard <mripard@kernel.org>,
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
	Marius Vlad <marius.vlad@collabora.com>,
	Pekka Paalanen <pekka.paalanen@collabora.com>,
	Simon Ser <contact@emersion.fr>,
	Sebastian Wick <sebastian@sebastianwick.net>,
	Jonas =?iso-8859-1?Q?=C5dahl?= <jadahl@gmail.com>,
	Xaver Hugl <xaver.hugl@gmail.com>
Subject: Re: [PATCH v11 03/22] drm: Add new general DRM property "color
 format"
Message-ID: <acuznQkiF3ncvz3y@intel.com>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <acclgID7lSVNten2@intel.com>
 <acsNoCDsPtEhtkRn@intel.com>
 <5583906.GXAFRqVoOG@workhorse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5583906.GXAFRqVoOG@workhorse>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_044457_963383_F7C001A9 
X-CRM114-Status: GOOD (  74.69  )
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

On Tue, Mar 31, 2026 at 12:33:00PM +0200, Nicolas Frattaroli wrote:
> On Tuesday, 31 March 2026 01:56:16 Central European Summer Time Ville Syr=
j=E4l=E4 wrote:
> > On Sat, Mar 28, 2026 at 02:49:04AM +0200, Ville Syrj=E4l=E4 wrote:
> > > On Fri, Mar 27, 2026 at 01:56:06PM +0100, Nicolas Frattaroli wrote:
> > > > On Thursday, 26 March 2026 18:58:25 Central European Standard Time =
Ville Syrj=E4l=E4 wrote:
> > > > > On Thu, Mar 26, 2026 at 06:02:47PM +0100, Maxime Ripard wrote:
> > > > > > On Wed, Mar 25, 2026 at 08:43:15PM +0200, Ville Syrj=E4l=E4 wro=
te:
> > > > > > > On Wed, Mar 25, 2026 at 03:56:58PM +0100, Maxime Ripard wrote:
> > > > > > > > On Wed, Mar 25, 2026 at 01:03:07PM +0200, Ville Syrj=E4l=E4=
 wrote:
> > > > > > > > > On Wed, Mar 25, 2026 at 09:24:27AM +0100, Maxime Ripard w=
rote:
> > > > > > > > > > On Tue, Mar 24, 2026 at 09:53:35PM +0200, Ville Syrj=E4=
l=E4 wrote:
> > > > > > > > > > > On Tue, Mar 24, 2026 at 08:10:11PM +0100, Nicolas Fra=
ttaroli wrote:
> > > > > > > > > > > > On Tuesday, 24 March 2026 18:00:45 Central European=
 Standard Time Ville Syrj=E4l=E4 wrote:
> > > > > > > > > > > > > On Tue, Mar 24, 2026 at 05:01:07PM +0100, Nicolas=
 Frattaroli wrote:
> > > > > > > > > > > > > > +enum drm_connector_color_format {
> > > > > > > > > > > > > > +	/**
> > > > > > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driv=
er or display protocol
> > > > > > > > > > > > > > +	 * helpers should pick a suitable color forma=
t. All implementations of a
> > > > > > > > > > > > > > +	 * specific display protocol must behave the =
same way with "AUTO", but
> > > > > > > > > > > > > > +	 * different display protocols do not necessa=
rily have the same "AUTO"
> > > > > > > > > > > > > > +	 * semantics.
> > > > > > > > > > > > > > +	 *
> > > > > > > > > > > > > > +	 * For HDMI, "AUTO" picks RGB, but falls back=
 to YCbCr 4:2:0 if the
> > > > > > > > > > > > > > +	 * bandwidth required for full-scale RGB is n=
ot available, or the mode
> > > > > > > > > > > > > > +	 * is YCbCr 4:2:0-only, as long as the mode a=
nd output both support
> > > > > > > > > > > > > > +	 * YCbCr 4:2:0.
> > > > > > > > > > > > > > +	 *
> > > > > > > > > > > > > > +	 * For display protocols other than HDMI, the=
 recursive bridge chain
> > > > > > > > > > > > > > +	 * format selection picks the first chain of =
bridge formats that works,
> > > > > > > > > > > > > > +	 * as has already been the case before the in=
troduction of the "color
> > > > > > > > > > > > > > +	 * format" property. Non-HDMI bridges should =
therefore either sort their
> > > > > > > > > > > > > > +	 * bus output formats by preference, or agree=
 on a unified auto format
> > > > > > > > > > > > > > +	 * selection logic that's implemented in a co=
mmon state helper (like
> > > > > > > > > > > > > > +	 * how HDMI does it).
> > > > > > > > > > > > > > +	 */
> > > > > > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_AUTO =3D 0,
> > > > > > > > > > > > > > +
> > > > > > > > > > > > > > +	/**
> > > > > > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_RGB444: RGB ou=
tput format
> > > > > > > > > > > > > > +	 */
> > > > > > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_RGB444,
> > > > > > > > > > > > > > +
> > > > > > > > > > > > > > +	/**
> > > > > > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR444: YCbC=
r 4:4:4 output format (ie.
> > > > > > > > > > > > > > +	 * not subsampled)
> > > > > > > > > > > > > > +	 */
> > > > > > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR444,
> > > > > > > > > > > > > > +
> > > > > > > > > > > > > > +	/**
> > > > > > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR422: YCbC=
r 4:2:2 output format (ie.
> > > > > > > > > > > > > > +	 * with horizontal subsampling)
> > > > > > > > > > > > > > +	 */
> > > > > > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR422,
> > > > > > > > > > > > > > +
> > > > > > > > > > > > > > +	/**
> > > > > > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR420: YCbC=
r 4:2:0 output format (ie.
> > > > > > > > > > > > > > +	 * with horizontal and vertical subsampling)
> > > > > > > > > > > > > > +	 */
> > > > > > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR420,
> > > > > > > > > > > > > =

> > > > > > > > > > > > > Seems like this should document what the quantiza=
tion range
> > > > > > > > > > > > > should be for each format.
> > > > > > > > > > > > > =

> > > > > > > > > > > > =

> > > > > > > > > > > > I don't think so? If you want per-component bit dep=
th values,
> > > > > > > > > > > > DRM_FORMAT_* defines would be the appropriate value=
s to use. This
> > > > > > > > > > > > enum is more abstract than that, and is there to co=
mmunicate
> > > > > > > > > > > > YUV vs. RGB and chroma subsampling, with bit depth =
being handled
> > > > > > > > > > > > by other properties.
> > > > > > > > > > > > =

> > > > > > > > > > > > If you mean the factor used for subsampling, then t=
hat'd only be
> > > > > > > > > > > > relevant if YCBCR410 was supported where one chroma=
 plane isn't
> > > > > > > > > > > > halved but quartered in resolution. I suspect 4:1:0=
 will never
> > > > > > > > > > > > be added; no digital display protocol standard supp=
orts it to my
> > > > > > > > > > > > knowledge, and hopefully none ever will.
> > > > > > > > > > > =

> > > > > > > > > > > No, I mean the quantization range (16-235 vs. 0-255 e=
tc).
> > > > > > > > > > > =

> > > > > > > > > > > The i915 behaviour is that YCbCr is always limited ra=
nge,
> > > > > > > > > > > RGB can either be full or limited range depending on =
the =

> > > > > > > > > > > "Broadcast RGB" property and other related factors.
> > > > > > > > > > =

> > > > > > > > > > So far the HDMI state has both the format and quantizat=
ion range as
> > > > > > > > > > different fields. I'm not sure we need to document the =
range in the
> > > > > > > > > > format field, maybe only mention it's not part of the f=
ormat but has a
> > > > > > > > > > field of its own?
> > > > > > > > > =

> > > > > > > > > I think we only have it for RGB (on some drivers only?). =
For YCbCr
> > > > > > > > > I think the assumption is limited range everywhere.
> > > > > > > > > =

> > > > > > > > > But I'm not really concerned about documenting struct mem=
bers.
> > > > > > > > > What I'm talking about is the *uapi* docs. Surely userspa=
ce
> > > > > > > > > will want to know what the new property actually does so =
the
> > > > > > > > > uapi needs to be documented properly. And down the line s=
ome
> > > > > > > > > new driver might also implement the wrong behaviour if th=
ere
> > > > > > > > > is no clear specification.
> > > > > > > > =

> > > > > > > > Ack
> > > > > > > > =

> > > > > > > > > So I'm thinking (or perhaps hoping) the rule might be som=
ething like:
> > > > > > > > > - YCbCr limited range =

> > > > > > > > > - RGB full range if "Broadcast RGB" property is not prese=
nt
> > > > > > > > =

> > > > > > > > Isn't it much more complicated than that for HDMI though? My
> > > > > > > > recollection was that any VIC but VIC1 would be limited ran=
ge, and
> > > > > > > > anything else full range?
> > > > > > > =

> > > > > > > Do we have some driver that implements the CTA-861 CE vs. IT =
mode
> > > > > > > logic but doesn't expose the "Broadcast RGB" property? I was =
hoping
> > > > > > > those would always go hand in hand now.
> > > > > > =

> > > > > > I'm not sure. i915 and the HDMI state helpers handle it properl=
y (I
> > > > > > think?) but it looks like only vc4 registers the Broadcast RGB =
property
> > > > > > and uses the HDMI state helpers.
> > > > > > =

> > > > > > And it looks like amdgpu registers Broadcast RGB but doesn't use
> > > > > > drm_default_rgb_quant_range() which seems suspicious?
> > > > > =

> > > > > If they want just manual full vs. limited then they should
> > > > > limit the property to not expose the "auto" option at all.
> > > > > =

> > > > > amdgpu also ties this in with the "colorspace" property, which
> > > > > originally in i915 only controlled the infoframes/etc. But on
> > > > > amdgpu it now controls various aspects of output color
> > > > > transformation. The end result is that the property is a complete
> > > > > mess with most of the values making no sense. And for whatever
> > > > > reason everyone involved refused to remove/deprecate the
> > > > > nonsensical values :/
> > > > > =

> > > > > Looks like this series should make sure the documentation for
> > > > > the "colorspace" property is in sync with the new property
> > > > > as well. Currently now it's giving conflicting information.
> > > > > =

> > > > =

> > > > I take it the problematic information is in
> > > > =

> > > >     * DOC: standard connector properties
> > > >     *
> > > >     * Colorspace:
> > > > =

> > > > and probably specifically BT2020_YCC's (and BT2020_RGB's?) insisten=
ce
> > > > that they "produce RGB content".
> > > > =

> > > > I think we probably just have to change the statement "The variants
> > > > BT2020_RGB and BT2020_YCC are equivalent and the driver chooses bet=
ween
> > > > RGB and YCbCr on its own."
> > > > =

> > > > The "on its own" here would get turned into "based on the color for=
mat
> > > > property".
> > > > =

> > > > Speaking of i915, that patch is one of the very few (5) patches in
> > > > this series still lacking a review (hint hint nudge nudge). I'd like
> > > > to get some more feedback on the remaining patches before I send out
> > > > another revision, so that it's hopefully not just docs changes (I
> > > > know better than to think those patches must be perfect and won't
> > > > need revision.)
> > > =

> > > The i915 code around this is already a big mess, and I don't really
> > > adding to that mess. So I think we'll need to do some refactoring bef=
ore
> > > we add anything there. I already started typing something and so far
> > > it looks fairly straightforward, so I should have something soon.
> > =

> > OK, posted something
> > https://lore.kernel.org/intel-gfx/20260330235339.29479-1-ville.syrjala@=
linux.intel.com/T/#m7c349478ca6c856fbc68d5e2178f1aa31678a05f
> =

> Thanks! I'll take a look at this today to get a more solid idea of
> where the pain points you highlighted are.
> =

> I'll also rebase/reimplement my i915 color format implementation
> (sans the DP-MST part, as discussed) on top of this on the next
> revision. I was never fully happy with the current one due to the
> logic being shoehorned into the already existing i915 fallback
> format logic, so I'm quite happy to have another opportunity to
> implement it with less historic baggage.
> =

> > Are the wayland/compositor/color management folks on board with
> > these new properties? I don't think I see the usual suspects on
> > the cc list.
> =

> I don't know which precise group of people you refer to,

Off the top of my head, Pekka,Simon,Sebastian,Jonas,Xaver might be
relevant here. Added to Cc...

> but at
> least from the Collabora side of things, the userspace Wayland
> people are on board with these new properties. In Weston, we use
> it to implement the Weston frontend's "color-format" option in a
> WIP branch at
> =

> https://gitlab.freedesktop.org/wayland/weston/-/merge_requests/1859
> =

> I've also been made aware that LibreELEC is aware, and will look
> into making use of it rather than their own kernel patches.
> =

> Kind regards,
> Nicolas Frattaroli
> =

> > > =

> > > While doing that several questions came to my mind though:
> > > =

> > > * More interactions with the colorspace property, but I sent
> > >   a separate mail already about that
> > > =

> > > * Which conversion matrix to use, and the answer I suspect
> > >   should be "ask the colorspace property", as mentioned in the
> > >   other mail
> > > =

> > > * Should we flat out reject color formats (and I suppose also
> > >   colorspace prop values) the sink doesn't claim to support?
> > > =

> > >   If yes, then I think we'll have to forget about adding anything =

> > >   to i915 MST code. The way the MST stuff works is that if one
> > >   stream needs a modeset then all the related streams get modeset
> > >   as well. Thus if the user replaces a monitor getting fed with a
> > >   YCbCr stream just as another stream is being modeset, then the
> > >   entire atomic commit could fail due to the YCbCr stream getting
> > >   rejected.
> > > =

> > >   I think eventually we might have to invent some mechanism where
> > >   all the input into the modeset computation is cached somehow,
> > >   and said cache updated only on explicit userspace modesets.
> > >   Either that or we have to come up  with a way to skip some of
> > >   the calculations that depend on external factors. Either way
> > >   it's going to be a pain.
> > > =

> > >   OTOH if we don't mind feeding the sink with stuff it can't
> > >   understand, then I suppose we might add YCbCr 4:4:4 support
> > >   for MST. It shouldn't be any different from RGB apart from
> > >   the RGB->YCbCr conversion, which is handled elsewhere. But
> > >   YCbCr 4:2:0 is definitely out either way, the MST code has
> > >   no support for that currently.
> > > =

> > =

> > =

> =

> =

> =


-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
