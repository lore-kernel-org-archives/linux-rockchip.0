Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82796C48291
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Feb 2024 15:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oCKDIcXqCZP+K92MkiD8mbgzziM5bN6pGyIQspKAxo4=; b=ArMFXVACtvTkE/U/X0Mx5a8D7Z
	ps7lf/XOEx1C281APGTBmcSvWKblvNKJ/zBWNdDXn0O9w+A1/LIT25hVepjVtXWygMFbza1dCS3mI
	2H4qdGqDpsOWSaFE+N4LqBSDJGZ7RgzB2nPgXBa0OvTyRgyCpM8DFY6CqFpEvMVEma61mV/q+LqAo
	pXNO0+z++JH+Cu0PEUfrIdSZ4xLyLwfSdnrpR/cQrCD/+vDCbZQ39zRFcXBnrr/pG9ziNkG75roz+
	ipS8kvIBmIzVRAM4cTa1UY+TjQ88j1tWQPMqXlBQh4RUsTx8u6Q4NAW8TFnYopcCK/3AraURDtCvn
	uHMWZtEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvn7-0000000C6R5-04Dn;
	Fri, 02 Feb 2024 15:49:21 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvmu-0000000C6Mq-0mwF;
	Fri, 02 Feb 2024 15:49:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B026162672;
	Fri,  2 Feb 2024 15:49:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09B84C433F1;
	Fri,  2 Feb 2024 15:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706888947;
	bh=xkn6mlA1ZU5+5715BkWojnUpqAm40lhMBurX+5VqgEU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s+5ynE/EC/KZE38XXLZPwn5/KHTmk/dVCUznzAwHklwsYlBroDBRUGX6QkuQoIB0V
	 yKy332GCm8YxMYnhjMLfcgUYSHys5dJ4AeYucDgSiYfKBGsK+VF56oPgoeFnibpEsT
	 YrgOisPWZbhK59iLlrcMWi908IicQxiZX0+NhlLHj+goXufPPB4vlGBpO6WjMkgOUc
	 QpubeQRxu1SfH9fop2FOtU5dlcf1q1d8tqBCuEKaDTik4e3dD6AlCCqFK6fwzA9Y2a
	 /VMLAU3IoGOsiNu5UNnbyrBVIZjpzdeO+xdPcYUyWdWeJJ80/ry8j4WF5JT+fROFEe
	 TimKGs6ZQfwJw==
Date: Fri, 2 Feb 2024 16:49:04 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Sebastian Wick <sebastian.wick@redhat.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, Hans Verkuil <hverkuil@xs4all.nl>, 
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: Re: [PATCH v5 08/44] drm/connector: hdmi: Add Broadcast RGB
 property
Message-ID: <niqn7eql5neyfp5ficdfisdpmlwrprovqn5g7lgcfwoe74ds23@7fr4yv2miqe7>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
 <20231207-kms-hdmi-connector-state-v5-8-6538e19d634d@kernel.org>
 <20240115143308.GA159345@toolbox>
MIME-Version: 1.0
In-Reply-To: <20240115143308.GA159345@toolbox>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240202_074917_201715_957AFBB1 
X-CRM114-Status: GOOD (  24.33  )
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
Content-Type: multipart/mixed; boundary="===============8314275101024890708=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8314275101024890708==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pmc24qettt5ad2pq"
Content-Disposition: inline


--pmc24qettt5ad2pq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Sebastian,

On Mon, Jan 15, 2024 at 03:33:08PM +0100, Sebastian Wick wrote:
> >  /**
> >   * DOC: HDMI connector properties
> >   *
> > + * Broadcast RGB
> > + *      Indicates the RGB Quantization Range (Full vs Limited) used.
> > + *      Infoframes will be generated according to that value.
> > + *
> > + *      The value of this property can be one of the following:
> > + *
> > + *      Automatic:
> > + *              RGB Range is selected automatically based on the mode
> > + *              according to the HDMI specifications.
> > + *
> > + *      Full:
> > + *              Full RGB Range is forced.
> > + *
> > + *      Limited 16:235:
> > + *              Limited RGB Range is forced. Unlike the name suggests,
> > + *              this works for any number of bits-per-component.
> > + *
> > + *      Drivers can set up this property by calling
> > + *      drm_connector_attach_broadcast_rgb_property().
> > + *
>=20
> This is a good time to document this in more detail. There might be two
> different things being affected:
>=20
> 1. The signalling (InfoFrame/SDP/...)
> 2. The color pipeline processing
>=20
> All values of Broadcast RGB always affect the color pipeline processing
> such that a full-range input to the CRTC is converted to either full- or
> limited-range, depending on what the monitor is supposed to accept.
>=20
> When automatic is selected, does that mean that there is no signalling,
> or that the signalling matches what the monitor is supposed to accept
> according to the spec? Also, is this really HDMI specific?
>=20
> When full or limited is selected and the monitor doesn't support the
> signalling, what happens?

Leaving the YCbCr vs RGB discussion aside, would this be better ?

 * Broadcast RGB (HDMI specific)
 *      Indicates the Quantization Range (Full vs Limited) used. The color
 *      processing pipeline will be adjusted to match the value of the
 *      property, and the Infoframes will be generated and sent accordingly.
 *
 *      The value of this property can be one of the following:
 *
 *      Automatic:
 *              The quantization range is selected automatically based on t=
he
 *              mode according to the HDMI specifications (HDMI 1.4b - Sect=
ion
 *              6.6 - Video Quantization Ranges).
 *
 *      Full:
 *              Full quantization range is forced.
 *
 *      Limited 16:235:
 *              Limited quantization range is forced. Unlike the name sugge=
sts,
 *              this works for any number of bits-per-component.
 *
 *      Property values other than Automatic can result in colors being off=
 (if
 *      limited is selected but the display expects full), or a black screen
 *      (if full is selected but the display expects limited).
 *
 *      Drivers can set up this property by calling
 *      drm_connector_attach_broadcast_rgb_property().

Thanks!
Maxime

--pmc24qettt5ad2pq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZb0O8AAKCRDj7w1vZxhR
xZ36AQCNK31NPILvOExPXTtQmvsilMXK8R/AVHsg6P4vcpksegEAg+oha+xD8C+d
UP6Lt6MNk9CpDL7eulXygAjWYKyLuAs=
=QPry
-----END PGP SIGNATURE-----

--pmc24qettt5ad2pq--


--===============8314275101024890708==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8314275101024890708==--

