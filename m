Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE98DC35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 13:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=850TFTJfibGzLLXxXiy3Cvw1GgWTvj7rS4J+plwucwk=; b=esVrMwUBBDLr+53Ehm53N1tVps
	StXuZeXNw+xAnz02o0z5WOk/Io7qI+r4YDEgtt2e6STV3KMR8cBFSUT+8+HoGURwSmB4qN4U2cRzy
	ExcXs0Azy0dGE6fEq0iHaVJ/EmtYH8PrraE176ddCmPLrYkNPkYZKiOHEfPcab/+d9h46oTVknLCU
	BsQDe6SQM8IRE7zYI9lvKxfb/lsmRrDc089Z1PRBkJgWNDEipedF+qZt9nBip4d9MxCvt7HWW1z4u
	P3ttfBHmOngQUEbPJDFuSKrrXc+7HB7hOVvUxpJzNYZg1P1oaphhzfaUiYtd0ag81/wN4LzmaczLt
	rOBgasfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFDQo-00Aodi-32;
	Mon, 18 Dec 2023 13:13:14 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFDQl-00Aocc-10;
	Mon, 18 Dec 2023 13:13:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id E32A1B80EB6;
	Mon, 18 Dec 2023 13:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFB46C433C8;
	Mon, 18 Dec 2023 13:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702905189;
	bh=udY2ZVYbIZd5ZCe58uJ//Cte5cbMyGl062PfD6ipia8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JhWBueRnhK0JsdbnxH4+BY37nfhJ46YbxaBGKzscfg+bDukJ0xtuuKQhqZ90N+xrd
	 DnWZvroui0d1TjJ3YU7pR+v4T3FBVzMWB+XjOUgOT2f6xSgwV9VUgs0WUphcGe1Auo
	 Sz9vu2+Xthx4C7T3ckCWDWHLHKcLoUyC78mYi/WXmlF3yL9dvZL//Tp8WHE+VSmPlc
	 ZEiEvtV8thrqjPDo/6Br+rEmCItsTeVv0IU+WHQg5AafCOaVg1mxLwz5px90CYrVOo
	 H8Y8aGW7qZA6r/QldRxslG1Tc1BzajLkpTWXKZm4DxEpcv1fal+P4xDiNa3yYlheZr
	 oOYIxgBZw6OPA==
Date: Mon, 18 Dec 2023 14:13:06 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andyshrk@163.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 20/27] drm/rockchip: inno_hdmi: Correctly setup HDMI
 quantization range
Message-ID: <tceu6ks2twjowohui3tpik7fhgplua6zv22je4ikihugccqb7w@whq7zgvbh3tl>
References: <20231216162639.125215-1-knaerzche@gmail.com>
 <20231216162639.125215-21-knaerzche@gmail.com>
 <rrtknir3vizvcyamp3kfy47r6uppn3wwevb6a5gln2k533t52z@otm6vum6pg43>
 <c58b97ca-3faa-4bf2-8d7c-7ff34e0428ca@gmail.com>
MIME-Version: 1.0
In-Reply-To: <c58b97ca-3faa-4bf2-8d7c-7ff34e0428ca@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_051311_495674_DC44EB99 
X-CRM114-Status: GOOD (  16.87  )
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
Content-Type: multipart/mixed; boundary="===============0119400131955462205=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0119400131955462205==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jgxrix7gwqmw7nf2"
Content-Disposition: inline


--jgxrix7gwqmw7nf2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 18, 2023 at 01:37:47PM +0100, Alex Bee wrote:
>=20
> Am 18.12.23 um 10:05 schrieb Maxime Ripard:
> > On Sat, Dec 16, 2023 at 05:26:31PM +0100, Alex Bee wrote:
> > > @@ -431,6 +452,9 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
> > >   	else
> > >   		inno_conn_state->colorimetry =3D HDMI_COLORIMETRY_ITU_709;
> > > +	inno_conn_state->rgb_limited_range =3D
> > > +		drm_default_rgb_quant_range(mode) =3D=3D HDMI_QUANTIZATION_RANGE_L=
IMITED;
> > > +
> > >   	/* Mute video and audio output */
> > >   	hdmi_modb(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_VIDEO_BLACK,
> > >   		  v_AUDIO_MUTE(1) | v_VIDEO_MUTE(1));
> > This needs to be done at atomic_check time: the expectation is that by
> > the time you commit the state, everything is prepared for it.
> OK. I guess that also applies to the other members of
> inno_hdmi_connector_state (former hdmi_data) and was wrong all the time.

Yeah, this will apply to all the members of inno_hdmi_connector_state indeed

Maxime

--jgxrix7gwqmw7nf2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZYBFYgAKCRDj7w1vZxhR
xY2XAQCR6tCncnAWA8MdEVEaMfWfdUgSjMlsog4s3k0fwAsIlAD/cfsVKMaQvv/v
EP9lwRSub/nFdJFP70GUiOmW3sWmZgM=
=BBqm
-----END PGP SIGNATURE-----

--jgxrix7gwqmw7nf2--


--===============0119400131955462205==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0119400131955462205==--

