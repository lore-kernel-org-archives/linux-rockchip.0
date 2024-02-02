Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA83BC48291
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Feb 2024 16:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7D9oM39tK70i+SFAJxNAqs6d1tQqBzE5LMlRlbanGPk=; b=LFQAhvL5BCLn7Y
	4+VKZ8Ttccmb2yO+IpVYL5Mz7Uf/Z6TwxGtbTvCKKq0TyCsehoU91neTyRgEm2pmQHdah/vCTaYRz
	7Bc10bdabyuSWK4vl93F1h1eHRokmZ8qop0tlvFgMkKR8nIbjRzh5sDiNT+GdegUgVFB6UdvIk28H
	hpX3/uYAWyH4yw7q+8jLyqVpqfROrF5nu5UE7eb01mGjZSnl9Cvc8iV6dFDdh6qzcDR+AQC4nZmn+
	GoMcLzbpBgNnXmvX+qcM4RfB0g8FcHZzZiqt/8uxes1DBMeAGr1bMya6jatiuzYDfbhU9/fBOzBZf
	KcKlYtiP8nVwvUFsgjCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVwVg-0000000CLMa-2spv;
	Fri, 02 Feb 2024 16:35:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVwVe-0000000CLLe-3pQv;
	Fri, 02 Feb 2024 16:35:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=nxXW7PmdeD8BRiB8rkXdyRDjjXEFuySIWt/j45Qmo/g=; b=UOkVOVkMB0KW7UMdH0jJQv1dGF
	m0vkFgvGWJoQdpZhn+RasXsPs8zy5KRHPhQ3nAkYQhzS9efHaTXry6a/3LID6rhN2+X+v3BBKmwQ1
	siwPKcAUvuaqIkKpdFhDEMNP0hHU+VjYPCIBpMamragJshdoRG3VhOCN5DTudGgyon8umSsf6PR8S
	29ZSBJlu4hOiGeYiXwvZ0jCq/5J6BY92tQwT3nAwWgIOqCNjLji3ZgRQHDlhdyLlhpK3DgXgGdtMs
	k4OpR3UStM6Y1wsbxYFFyndEA3C4PHbwWJyfUV/OcwATlRRcLVRAUOYk8u6djR8hL64cr7yXc35X8
	Nc/b62eQ==;
Received: from mgamail.intel.com ([198.175.65.17])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVwVb-0000000A5QW-1Fcj;
	Fri, 02 Feb 2024 16:35:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1706891720; x=1738427720;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=1lLd48O5ySvz7PNZFF6ltqKVz+fi3YrSX8Kst1Luccw=;
  b=Kp/dQCug54Fo74PpIh5IxD/Moh0xOYESaAgl9QLDyHnjfSvmO7I9Q079
   6kPSUrRJWedBUs0/W2pqRmt68p0lGdonb6eMM4f+h0XJYfkCFQRoWgnvY
   1g636LNUACVAGaRH6LUIaC2KJ5ZLlcKPoHYGHyyGhs1OmsNuWF5CHzqfR
   FnuGl8I9GRu6UoZ/JolUW7JxL8ZEEJzofMwkMkSavQW33RGfZBC1tqvMm
   Z7lFTHHaFFjrDyoggfdNNszZMv8Zt1aJwkG4yJN2KrP/WdSbXdrzp0sIo
   VGryx+RklcfuptA7P0VMZUOCiSB5fJBV5I85seOkZiHzaAXdSyf6eHH9o
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="354673"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="354673"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2024 08:35:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="823251099"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="823251099"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
  by orsmga001.jf.intel.com with SMTP; 02 Feb 2024 08:35:07 -0800
Received: by stinkbox (sSMTP sendmail emulation); Fri, 02 Feb 2024 18:35:06 +0200
Date: Fri, 2 Feb 2024 18:35:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
	Sebastian Wick <sebastian.wick@redhat.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Emma Anholt <emma@anholt.net>, Jonathan Corbet <corbet@lwn.net>,
	linux-kernel@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
	Sandy Huang <hjc@rock-chips.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	linux-doc@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org, David Airlie <airlied@gmail.com>,
	linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 08/44] drm/connector: hdmi: Add Broadcast RGB property
Message-ID: <Zb0ZujO9E_WH8Pm3@intel.com>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
 <20231207-kms-hdmi-connector-state-v5-8-6538e19d634d@kernel.org>
 <20240115143308.GA159345@toolbox>
 <874jerf7ot.fsf@intel.com>
 <c37e9225-3890-4f4d-b45c-919b907b184b@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c37e9225-3890-4f4d-b45c-919b907b184b@xs4all.nl>
X-Patchwork-Hint: comment
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240202_163519_843373_5805ED1C 
X-CRM114-Status: GOOD (  40.85  )
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

On Fri, Feb 02, 2024 at 12:20:21PM +0100, Hans Verkuil wrote:
> On 02/02/2024 12:04, Jani Nikula wrote:
> > On Mon, 15 Jan 2024, Sebastian Wick <sebastian.wick@redhat.com> wrote:
> >> On Thu, Dec 07, 2023 at 04:49:31PM +0100, Maxime Ripard wrote:
> >>> The i915 driver has a property to force the RGB range of an HDMI outp=
ut.
> >>> The vc4 driver then implemented the same property with the same
> >>> semantics. KWin has support for it, and a PR for mutter is also there=
 to
> >>> support it.
> >>>
> >>> Both drivers implementing the same property with the same semantics,
> >>> plus the userspace having support for it, is proof enough that it's
> >>> pretty much a de-facto standard now and we can provide helpers for it.
> >>>
> >>> Let's plumb it into the newly created HDMI connector.
> >>>
> >>> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > =

> > [snip]
> > =

> >>> @@ -1655,6 +1678,26 @@ EXPORT_SYMBOL(drm_connector_attach_dp_subconne=
ctor_property);
> >>>  /**
> >>>   * DOC: HDMI connector properties
> >>>   *
> >>> + * Broadcast RGB
> >>> + *      Indicates the RGB Quantization Range (Full vs Limited) used.
> >>> + *      Infoframes will be generated according to that value.
> >>> + *
> >>> + *      The value of this property can be one of the following:
> >>> + *
> >>> + *      Automatic:
> >>> + *              RGB Range is selected automatically based on the mode
> >>> + *              according to the HDMI specifications.
> >>> + *
> >>> + *      Full:
> >>> + *              Full RGB Range is forced.
> >>> + *
> >>> + *      Limited 16:235:
> >>> + *              Limited RGB Range is forced. Unlike the name suggest=
s,
> >>> + *              this works for any number of bits-per-component.
> >>> + *
> >>> + *      Drivers can set up this property by calling
> >>> + *      drm_connector_attach_broadcast_rgb_property().
> >>> + *
> >>
> >> This is a good time to document this in more detail. There might be two
> >> different things being affected:
> >>
> >> 1. The signalling (InfoFrame/SDP/...)
> >> 2. The color pipeline processing
> >>
> >> All values of Broadcast RGB always affect the color pipeline processing
> >> such that a full-range input to the CRTC is converted to either full- =
or
> >> limited-range, depending on what the monitor is supposed to accept.
> >>
> >> When automatic is selected, does that mean that there is no signalling,
> >> or that the signalling matches what the monitor is supposed to accept
> >> according to the spec? Also, is this really HDMI specific?
> > =

> > Automatic is based on the mode as described in the specs
> > below. Basically certain modes are expected to be broadcast range, and
> > others full range.
> > =

> > I don't remember why we don't use the full range if the display
> > indicates it supports selectable quantization range in Video
> > Capabilities Data Block. It's quite possible there are displays that
> > declare support but don't. Cc: Ville.
> =

> I have not seen such displays. Enabling RGB Selectable Quantization Range
> is something that a vendor has to do explicitly, so it is reasonable to
> expect that it works, otherwise there would be no point to that flag!
> =

> Transmitting full range if possible gives a better picture quality and
> so is recommended.
> =

> > =

> > - HDMI 1.4b section 6.6 Video Quantization Ranges
> > =

> > - HDMI 2.1 section 7.3 Video Quantization Ranges
> > =

> > - DP 2.1 (and earlier) section 5.1.1.1 Video Colorimetry
> > =

> > - CTA-861-H (and earlier) section 5.1 Default Encoding Parameters and
> >   section 6.4.3 Quantization Range
> =

> Note that CTA-861-H deprecated the use of Default Range in the AVI
> InfoFrame, instead the source should always signal limited or full range
> in the Q field.

Only because the QS=3D1 is now mandatory IIRC.
We do always set Q bit explicitly when QS=3D=3D1.

But yeah, I guess we could always go for full range
by default when QS=3D=3D1. Or maybe we even did that at
some point in the past and it broke some things?
Can't recall anymore.

Anyways, QS=3D1 being mandatory is a clear improvement
in CTA-861, but some other CTA-861 rule updates are
more or less pointless as you can't in general detect
which version of the spec the sink claims to implement.

Eg. we already had cases where following the new CTA-861-F
rules for the YQ bit when transmitting RGB broke some
displays. And we are now forced to use the presence of
HDMI 2.0+ capabilities as a heuristic to detect CTA-851-F+.
(see drm_hdmi_avi_infoframe_quant_range()). It's pretty
nasty.

And I think there is some other infoframe related issue
(something to do with VICs IIRC) where we'd need to derive
the CTA-861 version eg. from the set of advertised VICs
in the EDID. I might have even written some code for that
at some point but never finished it. So it's still
broken in the current code. Can't recall the specific
details right now unfortunately.

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
