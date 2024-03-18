Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36EE6C54E5D
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Mar 2024 12:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CwLY8epdEUz6WwqOlpyaDkrXCXSorZzSwb4DQWQC5mU=; b=rRg3/eznsSmH39mHjsUJq3C32i
	8hAcPAYlOkSuqtyAG1UApoPD13HTCn6PVHTupusxXfoZPWD6RcUXjx+VfMiu+K/jkGeDMmWTy1W29
	UsZogyj9wAXLJIOsGMaWAK6S5MyvG2GFJxsQCX2UcPEbRQvnwYlscDI2b3j3zk29/Z5ZdX7AcGQej
	brP+qR46hYfXWNSQ1RF64gPFetxxxU1gaKTG0bs4ZoEy+CNc3fkUW5qvk2EuK9FK6HvQp9+5pEZQ/
	0oFMrV+1nP3ufcPPX8HBvQYvVTJtmBDnxhw1itd7Kow0zXxWCCnQQeD3YJM6uw+EhQjrzSui/3FfL
	Db/Mhxvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmBkG-00000008T0a-0872;
	Mon, 18 Mar 2024 12:05:36 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmBkA-00000008Sxf-3x4L;
	Mon, 18 Mar 2024 12:05:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 08119CE0174;
	Mon, 18 Mar 2024 12:05:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7343C433F1;
	Mon, 18 Mar 2024 12:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710763525;
	bh=spmrgaz+d/ratRJa6u45mh5Puc6y8qRKDT0QzweebPA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xzowg3dCqvKCrmwUvVrmZOIsNPFQ91DMwOyBdDwGAkpb3RjqIXONdZL/m7DCkru99
	 nnjm+uEuQtmkeSWSj3GzxIuM+dZZ0Kx+zqXahFUwqZkIvf64vdCUKhMh77dS/roHQ3
	 17uG5BGhjDelIH0ETt/cjidm7xdOybiRTez3lmLKVoes/btZ1ZL7/ji+evkLIN+JKr
	 NnD0elvM1gzu5WMMuFSQKsn/ttxyB1UOKTVnJU4YJ/GeFxq2FZHzNzq7ky5cFW1tfs
	 yyjDyZhHd8YmM5FDcEZ3UkpqfH4GAgFqvEQ09BZlo6fnrxT+fnGzcsae8xxNGBr9SE
	 bm99p/nQn5vZw==
Date: Mon, 18 Mar 2024 13:05:22 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Sebastian Wick <sebastian.wick@redhat.com>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v9 14/27] drm/connector: hdmi: Compute bpc and format
 automatically
Message-ID: <20240318-organic-debonair-beetle-b2817b@houat>
References: <20240311-kms-hdmi-connector-state-v9-0-d45890323344@kernel.org>
 <20240311-kms-hdmi-connector-state-v9-14-d45890323344@kernel.org>
 <ZfQBPHoAvI1dquEY@intel.com>
MIME-Version: 1.0
In-Reply-To: <ZfQBPHoAvI1dquEY@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240318_050531_370133_2EC7CFF1 
X-CRM114-Status: GOOD (  36.90  )
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
Content-Type: multipart/mixed; boundary="===============5191136262044119983=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5191136262044119983==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xdawchznocicixqa"
Content-Disposition: inline


--xdawchznocicixqa
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Ville,

Thanks for your review !

On Fri, Mar 15, 2024 at 10:05:16AM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
> On Mon, Mar 11, 2024 at 03:49:42PM +0100, Maxime Ripard wrote:
> > +static bool
> > +sink_supports_format_bpc(const struct drm_connector *connector,
> > +			 const struct drm_display_info *info,
> > +			 const struct drm_display_mode *mode,
> > +			 unsigned int format, unsigned int bpc)
> > +{
> > +	struct drm_device *dev =3D connector->dev;
> > +	u8 vic =3D drm_match_cea_mode(mode);
> > +
> > +	if (vic =3D=3D 1 && bpc !=3D 8) {
> > +		drm_dbg(dev, "VIC1 requires a bpc of 8, got %u\n", bpc);
>=20
> Use of drm_dbg() for kms stuff is surprising.
>=20
> > +		return false;
> > +	}
>=20
> I don't think we have this in i915. My original impression was that you
> can use higher color depth if you can determine the sink capabilities,
> but all sinks are required to accept 640x480@8bpc as a fallback.
>=20
> but CTA-861-H says:
> "5.4 Color Coding & Quantization
>  Component Depth: The coding shall be N-bit, where N =3D 8, 10, 12, or 16
>  bits/component =E2=80=94 except in the case of the default 640x480 Video=
 Timing 1,
>  where the value of N shall be 8."
>=20
> So that does seem to imply that you're supposed to use exactly 8bpc.
> Though the word "default" in there is confusing. Are they specifically
> using that to indicate that this is about the fallback behaviour, or
> is it just indicating that it is a "default mode that always has to
> be supported". Dunno. I guess no real harm in forcing 8bpc for 640x480
> since no one is likely to use that for any high fidelity stuff.

My understanding was that CTA-861 mandates that 640x480@60Hz is
supported, and mentions it being the default timing on a few occurences,
like in section 4 - Video Formats and Waveform Timings that states "This
section describes the default IT 640x480 Video Timing as well as all of
the standard CE Video Timings.", or Section 6.2 - Describing Video
Formats in EDID "The 640x480@60Hz flag, in the Established Timings area,
shall always be set, since the 640x480p format is a mandatory default
timing."

So my understanding is that default here applies to the timing itself,
and not the bpc, and is thus the second interpretation you suggested.

I'll add a comment to make it clearer.

> > +static int
> > +hdmi_compute_format(const struct drm_connector *connector,
> > +		    struct drm_connector_state *state,
> > +		    const struct drm_display_mode *mode,
> > +		    unsigned int bpc)
> > +{
> > +	struct drm_device *dev =3D connector->dev;
> > +
> > +	if (hdmi_try_format_bpc(connector, state, mode, bpc, HDMI_COLORSPACE_=
RGB)) {
> > +		state->hdmi.output_format =3D HDMI_COLORSPACE_RGB;
> > +		return 0;
> > +	}
> > +
> > +	if (hdmi_try_format_bpc(connector, state, mode, bpc, HDMI_COLORSPACE_=
YUV422)) {
> > +		state->hdmi.output_format =3D HDMI_COLORSPACE_YUV422;
> > +		return 0;
> > +	}
>=20
> Looks like you're preferring YCbCr 4:2:2 over RGB 8bpc. Not sure
> if that's a good tradeoff to make.

Yeah, indeed. I guess it's a judgement call on whether we prioritise
lowering the bpc over selecting YUV422, but I guess I can try all
available RGB bpc before falling back to YUV422.

> In i915 we don't currently expose 4:2:2 at all because it doesn't
> help in getting a working display, and we have no uapi for the
> user to force it if they really want 4:2:2 over RGB.

I guess if the priority is given to lowering bpc, then it indeed doesn't
make sense to support YUV422, since the limiting factor is likely to be
the TMDS char rate and YUV422 12 bpc is equivalent to RGB 8bpc there.

dw-hdmi on the other hand will always put YUV422 and YUV444 before RGB
for a given bpc, which is weird to me:
https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/bridge/synop=
sys/dw-hdmi.c#L2696

What is even weirder to me is that YUV422 is explicitly stated to be
12bpc only, so there's some invalid configurations there (8 and 10 bpc).

And given that it's order by decreasing order of preference, I'm pretty
sure it'll never actually pick any YUV or RGB > 8bpc format since RGB
8bpc is super likely to be always available and thus picked first.

If we want to converge, I think we should amend this code to support
YUV420 for YUV420-only modes first, and then the RGB options like i915
is doing. And then if someone is interested in more, we can always
expand it to other formats.

> > +
> > +	drm_dbg(dev, "Failed. No Format Supported for that bpc count.\n");
> > +
> > +	return -EINVAL;
> > +}
> > +
> > +static int
> > +hdmi_compute_config(const struct drm_connector *connector,
> > +		    struct drm_connector_state *state,
> > +		    const struct drm_display_mode *mode)
> > +{
> > +	struct drm_device *dev =3D connector->dev;
> > +	unsigned int max_bpc =3D clamp_t(unsigned int,
> > +				       state->max_bpc,
> > +				       8, connector->max_bpc);
> > +	unsigned int bpc;
> > +	int ret;
> > +
> > +	for (bpc =3D max_bpc; bpc >=3D 8; bpc -=3D 2) {
> > +		drm_dbg(dev, "Trying with a %d bpc output\n", bpc);
> > +
> > +		ret =3D hdmi_compute_format(connector, state, mode, bpc);
>=20
> Hmm. Actually I'm not sure your 4:2:2 stuff even works since you=20
> check for bpc=3D=3D12 in there and only call this based on the max_bpc.
> I'm not convinced max_bpc would actually be 12 for a sink that
> supports YCbCr 4:2:2 but not 12bpc RGB.

It's another discussion we had in an earlier version, but yeah we lack
the infrastructure to support those for now. I still believe it would
require an increased max_bpc to select YUV422, otherwise things would be
pretty inconsistent with other YUV formats.

But yeah, we need to provide a hook to report we don't support RGB >
8bpc for HDMI 1.4 devices. Which goes back to the previous question
actually, I believe it would still provide value to support YUV422 on
those devices, with something like:

for (bpc =3D max_bpc; bpc >=3D 8; bpc -=3D 2) {
    if (!connector->hdmi->funcs->validate_config(mode, RGB, bpc))
       continue;

    // Select RGB with bpc
    ...
}

if (connector->hdmi->funcs->validate_config(mode, YUV) &&
    hdmi_try_format_bpc(..., mode, 12, YUV422) {
   // Select YUV422, 12 bpc
   ...
}

What do you think?

Maxime

--xdawchznocicixqa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZfguAgAKCRDj7w1vZxhR
xYX7AP9YL4GNF0yRNJ7z070+Yv3mLmj5X5hTspQ7QEnH+S7OjAD9Fq5i530AZlv4
skxZS8QVnm8P0o92d7zjzIdrvZFL/QQ=
=HIYX
-----END PGP SIGNATURE-----

--xdawchznocicixqa--


--===============5191136262044119983==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5191136262044119983==--

