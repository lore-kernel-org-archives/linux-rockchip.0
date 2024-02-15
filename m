Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B424C48BEB
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Feb 2024 10:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m17luDYmi3fHOTMZa58PypuLLoMtI1ulVHED3/EWUWM=; b=OEbvKrEG1RmPWL3EZoLxhEydIM
	jpsolk4/oz5SXbYzUyLvttWY/CTXC+eTDw+rMFaZZRE4wPw/mAVc6LzZbnUY0woDgEoySsxkWr75n
	FwdaZQqo4DJWKXchkXHiMbzLpH0YDSINIRh3UK/L9c7B9rFNOES5heLV/dMJFgdDoMRrj8eD2ffja
	9IEj3Iq2P24VES25QSFVyPuFeyOjHOO7spnGVveYfUo6bLMEBoXsqK72eWnx4NXsb6wdO8/28Sjsu
	EB2YHU0OYN3wqYWejKEFJ63o20/2GPLndOuOHIShLDkZEVO/A5NUL5wR9qv4l2l0jNGNa3lMoEPRu
	1VtFoHDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raZMt-0000000FtPt-23Ci;
	Thu, 15 Feb 2024 10:53:27 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raZMp-0000000FtOz-1xJs;
	Thu, 15 Feb 2024 10:53:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4F19CCE2569;
	Thu, 15 Feb 2024 10:53:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C24DC433F1;
	Thu, 15 Feb 2024 10:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707994400;
	bh=LzgZDdmJi87vl79IYM/Q5hPaD+AShpw1nj8TBggZ0Ew=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iAvZvcYkWQYQQip1hTxBWcsJdV+g319REl+SkMeXoSFei7HVnjzPdxp0EA4jJgz24
	 6e+JREhHhhz93fd1VBWmNVX++vaD7QcdUM6MFSD1mhtxAJYNO0LgOyQo0Zce4a3a6X
	 jcr5cbrC7w13FErx0BhzU2wORl9DNq3CU3CAxBOuDJpmAR8jcWfV85LpqwehSy2+LN
	 edtTn7GMJ01s0SAmq9Hi4XXQtFEyCGrihvuUsjs++8SH8fq77JBid6y08jAosnevkp
	 BSN3HNuFX2MNCyaFYhl57P/E97DIa2RkA5uiCiyBFpwS5kknFVycPm9RA0hllF649D
	 8vs3JTLT5lDhg==
Date: Thu, 15 Feb 2024 11:53:17 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Sebastian Wick <sebastian.wick@redhat.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, 
	Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	Hans Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: Re: Re: Re: Re: Re: Re: [PATCH v5 08/44] drm/connector: hdmi:
 Add Broadcast RGB property
Message-ID: <dti6zcuzszhut5m4g2bxiwfogwctfhktv2mwuqlij7wtvh3bny@ry4mxpiqidmt>
References: <73peztbeeikb3fg6coxu3punxllgtyrmgco34tnxkojtsjbr3s@26bud3sjbcez>
 <Zb0M_2093UwPXK8y@intel.com>
 <hez2m57ogqx3yyqk45tzdkvxvhrbdepgm244i4m2aty2xhf5b5@acqgvmxhmmvr>
 <Zb0aYAapkxQ2kopt@intel.com>
 <zml6j27skvjmbrfyz7agy5waxajv4p4asbemeexelm3wuv4o7j@xkd2wvnxhbuc>
 <20240209203435.GB996172@toolbox>
 <ahfl6f72lpgpsbnrbgvbsh4db4npr2hh36kua2c6krh544hv5r@dndw4hz2mu2g>
 <Zco-DQaXqae7B1jt@intel.com>
 <yx2t7xltxxgsngdsxamsfq6y7dze3wzegxcqwmsb5yrxen73x6@u3vilqhpci4w>
 <ZcsqoPCJDjA5PJUF@intel.com>
MIME-Version: 1.0
In-Reply-To: <ZcsqoPCJDjA5PJUF@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_025323_872693_74C236BA 
X-CRM114-Status: GOOD (  48.09  )
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
Content-Type: multipart/mixed; boundary="===============1421939725178426423=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1421939725178426423==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n6osyj5ryoqybs6l"
Content-Disposition: inline


--n6osyj5ryoqybs6l
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 13, 2024 at 10:38:56AM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
> On Mon, Feb 12, 2024 at 05:53:48PM +0100, Maxime Ripard wrote:
> > On Mon, Feb 12, 2024 at 05:49:33PM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
> > > On Mon, Feb 12, 2024 at 11:01:07AM +0100, Maxime Ripard wrote:
> > > > On Fri, Feb 09, 2024 at 09:34:35PM +0100, Sebastian Wick wrote:
> > > > > On Mon, Feb 05, 2024 at 10:39:38AM +0100, Maxime Ripard wrote:
> > > > > > On Fri, Feb 02, 2024 at 06:37:52PM +0200, Ville Syrj=C3=A4l=C3=
=A4 wrote:
> > > > > > > On Fri, Feb 02, 2024 at 04:59:30PM +0100, Maxime Ripard wrote:
> > > > > > > > On Fri, Feb 02, 2024 at 05:40:47PM +0200, Ville Syrj=C3=A4l=
=C3=A4 wrote:
> > > > > > > > > On Fri, Feb 02, 2024 at 02:01:39PM +0100, Maxime Ripard w=
rote:
> > > > > > > > > > Hi,
> > > > > > > > > >=20
> > > > > > > > > > On Mon, Jan 15, 2024 at 03:37:20PM +0100, Sebastian Wic=
k wrote:
> > > > > > > > > > > > >  /**
> > > > > > > > > > > > >   * DOC: HDMI connector properties
> > > > > > > > > > > > >   *
> > > > > > > > > > > > > + * Broadcast RGB
> > > > > > > > > > > > > + *      Indicates the RGB Quantization Range (Fu=
ll vs Limited) used.
> > > > > > > > > > > > > + *      Infoframes will be generated according t=
o that value.
> > > > > > > > > > > > > + *
> > > > > > > > > > > > > + *      The value of this property can be one of=
 the following:
> > > > > > > > > > > > > + *
> > > > > > > > > > > > > + *      Automatic:
> > > > > > > > > > > > > + *              RGB Range is selected automatica=
lly based on the mode
> > > > > > > > > > > > > + *              according to the HDMI specificat=
ions.
> > > > > > > > > > > > > + *
> > > > > > > > > > > > > + *      Full:
> > > > > > > > > > > > > + *              Full RGB Range is forced.
> > > > > > > > > > > > > + *
> > > > > > > > > > > > > + *      Limited 16:235:
> > > > > > > > > > > > > + *              Limited RGB Range is forced. Unl=
ike the name suggests,
> > > > > > > > > > > > > + *              this works for any number of bit=
s-per-component.
> > > > > > > > > > > > > + *
> > > > > > > > > > > > > + *      Drivers can set up this property by call=
ing
> > > > > > > > > > > > > + *      drm_connector_attach_broadcast_rgb_prope=
rty().
> > > > > > > > > > > > > + *
> > > > > > > > > > > >=20
> > > > > > > > > > > > This is a good time to document this in more detail=
=2E There might be two
> > > > > > > > > > > > different things being affected:
> > > > > > > > > > > >=20
> > > > > > > > > > > > 1. The signalling (InfoFrame/SDP/...)
> > > > > > > > > > > > 2. The color pipeline processing
> > > > > > > > > > > >=20
> > > > > > > > > > > > All values of Broadcast RGB always affect the color=
 pipeline processing
> > > > > > > > > > > > such that a full-range input to the CRTC is convert=
ed to either full- or
> > > > > > > > > > > > limited-range, depending on what the monitor is sup=
posed to accept.
> > > > > > > > > > > >=20
> > > > > > > > > > > > When automatic is selected, does that mean that the=
re is no signalling,
> > > > > > > > > > > > or that the signalling matches what the monitor is =
supposed to accept
> > > > > > > > > > > > according to the spec? Also, is this really HDMI sp=
ecific?
> > > > > > > > > > > >=20
> > > > > > > > > > > > When full or limited is selected and the monitor do=
esn't support the
> > > > > > > > > > > > signalling, what happens?
> > > > > > > > > > >=20
> > > > > > > > > > > Forgot to mention: user-space still has no control ov=
er RGB vs YCbCr on
> > > > > > > > > > > the cable, so is this only affecting RGB? If not, how=
 does it affect
> > > > > > > > > > > YCbCr?
> > > > > > > > > >=20
> > > > > > > > > > So I dug a bit into both the i915 and vc4 drivers, and =
it looks like if
> > > > > > > > > > we're using a YCbCr format, i915 will always use a limi=
ted range while
> > > > > > > > > > vc4 will follow the value of the property.
> > > > > > > > >=20
> > > > > > > > > The property is literally called "Broadcast *RGB*".
> > > > > > > > > That should explain why it's only affecting RGB.
> > > > > > > >=20
> > > > > > > > Right. And the limited range option is called "Limited 16:2=
35" despite
> > > > > > > > being usable on bpc > 8 bits. Naming errors occurs, and his=
tory happens
> > > > > > > > to make names inconsistent too, that's fine and not an argu=
ment in
> > > > > > > > itself.
> > > > > > > >=20
> > > > > > > > > Full range YCbCr is a much rarer beast so we've never bot=
hered
> > > > > > > > > to enable it.
> > > > > > > >=20
> > > > > > > > vc4 supports it.
> > > > > > >=20
> > > > > > > Someone implemented it incorrectly then.
> > > > > >=20
> > > > > > Incorrectly according to what documentation / specification? I'=
m sorry,
> > > > > > but I find it super ironic that i915 gets to do its own thing, =
not
> > > > > > document any of it, and when people try to clean things up they=
 get told
> > > > > > that we got it all wrong.
> > > > >=20
> > > > > FWIW, this was an i915 property and if another driver uses the sa=
me
> > > > > property name it must have the same behavior. Yes, it isn't stand=
ardized
> > > > > and yes, it's not documented (hence this effort here) but it's st=
ill on
> > > > > vc4 to make the property compatible.
> > > >=20
> > > > How is it not compatible? It's a superset of what i915 provides, but
> > > > it's strictly compatible with it.
> > >=20
> > > No it is not.
> >=20
> > The property is compatible with i915 interpretation of it, whether you
> > like it or not. And that's what Sebastian was referring to.
> >=20
> > > Eg. what happens if you set the thing to full range for RGB (which you
> > > must on many broken monitors), and then the kernel automagically
> > > switches to YCbCr (for whatever reason) but the monitor doesn't
> > > support full range YCbCr? Answer: you get crap output.
> >=20
> > And that part is just moving goalposts.
>=20
> No. Allowing users to get correct colors with broken displays
> is the sole reason why this property even exists.

HDMI 1.4, Section 6.6 - Video Quantization Ranges:

  If the sink=E2=80=99s EDID declares a selectable YCC Quantization Range
  (QY=3D1), then it shall expect limited range pixel values if it receives
  AVI YQ=3D0 and it shall expect full range pixel values if it receives
  AVI YQ=3D1. For other values of YQ, the sink shall expect pixel values
  with the default range for the transmitted video format.

So, the only concern you have is if the EDID has QY set to 1 but the
monitor doesn't actually support it? If so, could we qualify the monitor
as a "broken display" and thus would require that property to apply to
YUV too?

Maxime

--n6osyj5ryoqybs6l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZc3tHQAKCRDj7w1vZxhR
xbBYAP9ZltKFtiZtVibhzK531scwE2+TBHIUt6gHc1GZlUgg6gEA7bQXDY/gyU5H
uzPISsemHv3JMSR4hBL2y5Ql8gCJfgk=
=pR0a
-----END PGP SIGNATURE-----

--n6osyj5ryoqybs6l--


--===============1421939725178426423==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1421939725178426423==--

