Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50FC8C46CA2
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 21:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=43QbWkOgsRlyZ3Unii9cngwoA9T5Ehmd1Ac8hO1rYrw=; b=ZYGyzymvMDMw7fe+m5AYOX6T63
	34a22ak4vjQpbTs7nRFTfs0nRv1Pr0MvVNX3uYeA0RmJ7NndWgu6Hoh7I4y66ywL5m0U8sp+yPXHz
	bq9fSJZCcqyj1UZTTsqRq61rwzrZXQh5cMHY9cy3cZPqfy8mn3C2utpeUcIQn7XrQgTzqInNJz2o4
	0j0K2AXwFbi3qdl5G4cbikioG+2xwNVUYqelLiL9SDS518/8WMK/Ka0xWOS1esLbcbFjhmFbvUFti
	4BsnS7dGLDxSL6p7G0gwvAulnZC9QZqXJLsXvPIqFQatClSuUWhLJB0kBOlGAf2v2hEVpHPZvmLOC
	4uPFOeiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFhDX-00FSS3-2s;
	Tue, 19 Dec 2023 21:01:31 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFhDU-00FSRT-3A;
	Tue, 19 Dec 2023 21:01:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D68EC61486;
	Tue, 19 Dec 2023 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A46BFC433C8;
	Tue, 19 Dec 2023 21:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703019687;
	bh=lCKCo7ckizVWRpPEUPMezC6c+Ikwd4cEM0GhD64Wcpw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Pe1h/d2NiKPz8zQPLeOKd+xemnO6jG6C1KnaaD3bcF5PqRauc/XAqHAYvSx4ELXZ3
	 JItABcOM2aTcR7CIzxhsuPc63t9NvHYVdnSjb+Bo3h0H1BeGuSAYkAar1XD7toX99K
	 2pxCq9W11iUUFEALv4fPfM/3qKGSmru0lWmAD/fQzFh+BNYpf19nbTVu+XTsQjuW8F
	 C43FS4U9Xlu4nu0PFOoKUC3pd7QsLnm4gqKF4G0M9Hg0CKBev3hItdsirnG2oZMEC3
	 s9v6zwq6tveNd70P/UEFE/Hjq/GxtEJrcrxP18nlBN4P2gMNSnn9PU4E3sTgIA2jpL
	 rwKf0FyPEPaSg==
Date: Tue, 19 Dec 2023 22:01:23 +0100
From: Wolfram Sang <wsa@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>,
	linux-i2c@vger.kernel.org, linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] i2c: make i2c_bus_type const
Message-ID: <ZYIEo8H6Vz0psGOB@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>,
	linux-i2c@vger.kernel.org, linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
References: <2023121942-jumble-unethical-3163@gregkh>
MIME-Version: 1.0
In-Reply-To: <2023121942-jumble-unethical-3163@gregkh>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_130129_129015_3C0A93FC 
X-CRM114-Status: GOOD (  14.28  )
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
Content-Type: multipart/mixed; boundary="===============4804889187649860690=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4804889187649860690==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gJv6Wj12fyHLJMkX"
Content-Disposition: inline


--gJv6Wj12fyHLJMkX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 19, 2023 at 04:22:43PM +0100, Greg Kroah-Hartman wrote:
> Now that the driver core can properly handle constant struct bus_type,
> move the i2c_bus_type variable to be a constant structure as well, placing
> it into read-only memory which can not be modified at runtime.
>=20
> Note, the sound/soc/rockchip/rk3399_gru_sound.c also needed tweaking as
> it decided to save off a pointer to a bus type for internal stuff, and
> it was using the i2c_bus_type as well.
>=20
> Cc: Wolfram Sang <wsa@kernel.org>
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Jaroslav Kysela <perex@perex.cz>
> Cc: Takashi Iwai <tiwai@suse.com>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: linux-i2c@vger.kernel.org
> Cc: linux-sound@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Applied to for-next, thanks!


--gJv6Wj12fyHLJMkX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmWCBKMACgkQFA3kzBSg
Kbbzvw/8DPBh44kdD/FS9nh7venOLDxhoqI+4TPeK6q6PfcV5hYrx5IA0J35w3r4
eYBdFl6McEWJvQnUwhPAj3UAiUcMxNbEIbnBH/HB1OawmqyTlzuLD+c0arONMWEe
eWCyBiqadts9huWTsy/WN1BZXDPF/QDzLA5sfn5L7kGbjcVi5iLQWsQ7h5FD06H8
hbYFG+PkejM3XwNKbrY2M+N2nhcJpmpdVKntoHSNE4oF0LSp/FY40zgcTgwW6txX
Bd83AYDqwEtKDefGYoYu+FefhdMyiIV7GJhf/A2Tg/Zt1a5Aah5i2dGIb2gmppZr
fF6WiElKjh2bSdihivyYviwpidVtzwv2ZQnkLarY+zLKcu2GXv3QrZBzy2zJz3Qd
CPuwwLv6MEeue2aEc49LUgsq83AenKmDxUwi37FNBDGhI3WOdC92AZipdqptbES/
Z9yNoJamBfn26kBVq8NyIUjg4XR9eO7WD9GC1q+WgM4hY30KglREC0xL3pJUgGfu
mlI+4t2A9k40qEOKSS7l6QdbHq1tcz4bt5NlIU4TBGwiUDdvLgXgo0fhqj9KD3kc
+tgdNT8e/ADcIvv0auqyzMjyF3ff/p4WkJxBLeqWEgAA5xvTZEw1qzgzdVPYYOGs
WWjco3V8ZTAKy3V8qkX9hsKZIUtuLl1DvdbZMQeSgxTr8aNJMw0=
=f8qM
-----END PGP SIGNATURE-----

--gJv6Wj12fyHLJMkX--


--===============4804889187649860690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4804889187649860690==--

