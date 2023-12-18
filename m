Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 866E2C35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 09:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GsNTw8y9Qzfl5Hxqbe120c4JAlLBje5Gruuia+/OWYY=; b=DDEF55UVzZJvzGolNidHfT9A/y
	haxrbZzU6kaz6HwhIN6Akp/nXp0FK26zcy2TWohHwuYO66e1KLtmAab6YRxXxchNxjHq6SVUrS7fE
	DxI3Ma0UnGBeR0iFD1YLax6d/HBd/KZtXeUnm2oC9+i5nx8v/l2nwoIMXdzl+gP2on9a4OMbkQwxf
	zf2bEWeNJvuzGEyKrxYHsO7ecFOd+/SGH9PmC2vyZnDZ+FX6Y7uopzkvZuex1lAt6n6Y01PEuIpft
	FOX4urS3yrITF7fKPzWF2W2MDDhcHhvPMoW6HP4AqSBaEZJGGQG63276iclDX3XDkCGb/sgOcl8KE
	XllEgNiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rF9Yq-009aHO-0A;
	Mon, 18 Dec 2023 09:05:16 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rF9Ym-009aFj-2G;
	Mon, 18 Dec 2023 09:05:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 1AC3FCE0FB3;
	Mon, 18 Dec 2023 09:05:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF990C433C7;
	Mon, 18 Dec 2023 09:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702890310;
	bh=yAr4KLt08A7Iall+6S1OSy+IFrkOCzjW+AgOrCIVPKA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DbjhWmQvIZQyVfYOkuJm8tHcyZGWKsv9OSBNiZq31GpFDSNrmj6IgTFqSkvkSMgfn
	 +nCjAAhsczAAma4vp42q/dCqJozoRxZMeF7cMgdTjNKOXkHIerUIbeJeMNuJN3q/Qu
	 rCe+WdEyOoCgGsS3nt1B5vSVNQ7w7141J/DRAI/stPKR2mG/GLsU+1ylIArQL/PvIk
	 RJheNYZxKmhuC1/IHXHsIif9QERvDPYQFwu3cCF0TA3QGHPqO33eAarcagtA71p0DH
	 cb5CqNQIYLqPErT8KehTNCSRiljhSJy345vACn3bUGNU74NZdflBt7MDuu9vLw52Mt
	 gT8Oy6c/Hgw0Q==
Date: Mon, 18 Dec 2023 10:05:07 +0100
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
Message-ID: <rrtknir3vizvcyamp3kfy47r6uppn3wwevb6a5gln2k533t52z@otm6vum6pg43>
References: <20231216162639.125215-1-knaerzche@gmail.com>
 <20231216162639.125215-21-knaerzche@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20231216162639.125215-21-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_010512_911915_FAF34A7C 
X-CRM114-Status: GOOD (  11.45  )
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
Content-Type: multipart/mixed; boundary="===============1257046982815091950=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1257046982815091950==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="syuqoz5ybbowf3nd"
Content-Disposition: inline


--syuqoz5ybbowf3nd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 16, 2023 at 05:26:31PM +0100, Alex Bee wrote:
> @@ -431,6 +452,9 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
>  	else
>  		inno_conn_state->colorimetry =3D HDMI_COLORIMETRY_ITU_709;
> =20
> +	inno_conn_state->rgb_limited_range =3D
> +		drm_default_rgb_quant_range(mode) =3D=3D HDMI_QUANTIZATION_RANGE_LIMIT=
ED;
> +
>  	/* Mute video and audio output */
>  	hdmi_modb(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_VIDEO_BLACK,
>  		  v_AUDIO_MUTE(1) | v_VIDEO_MUTE(1));

This needs to be done at atomic_check time: the expectation is that by
the time you commit the state, everything is prepared for it.

Maxime

--syuqoz5ybbowf3nd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZYALQwAKCRDj7w1vZxhR
xQzzAP0YVFac7ehXKiTwVJRxtQYeIMZmYW1VoSFT4wGJVIk8ZAD+PBIYdoQZJl7b
X7Gv0oBzZzU9IKJ+0sxAUitZEgq+5w8=
=+z9c
-----END PGP SIGNATURE-----

--syuqoz5ybbowf3nd--


--===============1257046982815091950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1257046982815091950==--

