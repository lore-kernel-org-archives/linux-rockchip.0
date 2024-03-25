Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72C7FC54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 16:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HXRXCifZNKaxBZlvKf5xc/1m1Iu4OJX4NaS8ijy8q1Y=; b=FB6UR0jB2X1mEu/4TsoVzIlp2w
	VvC/Yi/iYeNEDFlaGAdzcesDvh6/043db4Y1tUAcZNLDvyAm1aDFkEkMR4nUVlulxph71jzaM9X5Q
	nTSno3jFpvfPtZGp2CVgtSs8TgiRLTn5JY9dEvP5UVmv9yODpsPeBtdVlHFGmvXhXSxyU62eByI8R
	PTuKersXZM92mIMQ6vYTt0eUEAu3qSKgEOm9USGGQ/aUH3pGE4QGVuGOJR6l5H2u6JzOpdXghMnsj
	Cexqhq5hDitjBzz+oUgZWap1CU5YP5Ikr5pOR0e35mHY+GtcqtXMIiYBTIWC2Q67asCVmXm2ucrC7
	6r3fCbVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1romqO-00000000fFC-2qkM;
	Mon, 25 Mar 2024 16:06:40 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1romqI-00000000fBK-0Jcn
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 16:06:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711382792;
	bh=6R/YDODy0mvmEaE7xbmqBZ9G0H9VSOniImpYBdZb5us=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BhsgGyDX6O6ycfg4PMeg1+RsPU7ckHPQRIpR9JBaqzCP/pmXEMBSgs13FxK5M3kNU
	 y6zJwVvFX6HaeTUS04E324dpHPhuWJL7QmCyTIKuyNUg2kRZo7Mo4pzWBa8ZQYvf5G
	 bGyzQgeDlRSgb/YAW0Y+vT2O0oElGuHIGUQrK9Zyuz0TMJi6s5jXV2og/9REZlS9gK
	 hWr43W7GD4m+KJ5ZyuKUaLNATFbrrjbW2cJJvOnj4TOJZXyhd//ConRtHHJGppqY8q
	 HylaBPtGx2wPyiKsHUFVGCXsmv5yOSLn5QXM0Hv1v3Yk6GSyi5QvZXK94L0wUNu3Qm
	 scxifwE4k6I4g==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 8176A37820BB;
	Mon, 25 Mar 2024 16:06:32 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 152DF106074E; Mon, 25 Mar 2024 17:06:32 +0100 (CET)
Date: Mon, 25 Mar 2024 17:06:32 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
Subject: Re: [PATCH v1 4/4] arm64: dts: rockchip: rk3588-evb1: Enable GPU
Message-ID: <dskay7po64y7fewkf32yhfolxxwdubihdib54ytvg2senovum7@6v6qf3waija5>
References: <20240325153850.189128-1-sebastian.reichel@collabora.com>
 <20240325153850.189128-5-sebastian.reichel@collabora.com>
 <20240325165308.483b01b3@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240325165308.483b01b3@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_090634_283481_A43C9E21 
X-CRM114-Status: GOOD (  19.34  )
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
Content-Type: multipart/mixed; boundary="===============0295924126020807419=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0295924126020807419==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6t2fecdpx4yxkblu"
Content-Disposition: inline


--6t2fecdpx4yxkblu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Mar 25, 2024 at 04:53:08PM +0100, Boris Brezillon wrote:
> [...]
> > @@ -484,12 +490,15 @@ rk806_dvs3_null: dvs3-null-pins {
> > =20
> >  		regulators {
> >  			vdd_gpu_s0: dcdc-reg1 {
> > +				regulator-always-on;
>=20
> IIRC, this is only needed because of some bug in the power-domain
> driver (or elsewhere). Is there any other reason to flag those as
> always-on? I mean, it's working but probably not ideal from a PM
> standpoint, as that means the regulators will stay on even when the GPU
> is idle.

EVB1 needs it for the generic coupler infrastructure. The Linux
coupler code cannot handle non always-on regulators at the moment.
That's something, which could be improved, but I think for now we
can just make the regulator always-on for the EVB1. The EVB1 is not
running from a battery anyways.

Greetings

-- Sebastian

--6t2fecdpx4yxkblu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmYBoQcACgkQ2O7X88g7
+pp+rQ/8CbVqn3AIkLQp1cGlyaXbLIeiuWKBDLqqm+uO9zJIPLjt05HgBd2I9ULk
WYiqvzNlhjoFZG6a6NR7psLECc/PPhy2R+de5q5K7YZT+I4YpMgR2dc8KQkzAJMw
vDbq+WTPXshiKoNpcg4Snz6IUUFghFJygNbYD2GYD0RF0nBu1HNAVDAFOu/U6u5h
d8VWeJVJNYK23ak8Gf8cLvk6hpBw0GuijpH4nmundM2ZbWpIMniRj5N80zgBa6Dq
rPmfM0b29Ki1nYIcDtZH1p/EpOWKx0FE0xtBaQ54cd6i1q4mK5uBDJRFQVHE08bi
K/66sWZI0Mx5jFZyV8BLBIWArbX/8Lc4g2U4rDNq5bUehAiPfb/VAxR6m83dGR0W
4qTJIMoVbnq0ifJBHkecN9tYrbNoHcnL367ZwYfvvjk6dtWUKmJm4Wo4LbwaWUXz
meeH1p8OgOqueyW5x9kWBvGDG75MU6Wdu3cBvhyKlccQJuAocAUNf41GKKTpmUBz
Hk82Qj6XhsriaxGoiYKXb98sd7LnIzscQsNQpSNy50x0p8xqPIRL43QvW2FakCsv
ydhlocwajYAk66x12LHbD7TxE8TMreKVTeAuAv2wqbcdzRe7eL3lAjbGGIl+iLd0
BbANZL9w1VnEe8ck2U6U4WKslKyd5bFQj2kVsdynXau1FsMGirc=
=3mNC
-----END PGP SIGNATURE-----

--6t2fecdpx4yxkblu--


--===============0295924126020807419==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0295924126020807419==--

