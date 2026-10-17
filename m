Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB1B0CCF2C9
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Oct 2026 20:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jouWYKknFFe13JYtbdBoiXH5imCmCD2HhePzAgJWdnY=; b=ZVPBiUDVwnk5TKwOqbUltd0Q5M
	sc/NT9mme91BuBrDLP2X6u0ecS4hDKevkUHNaFHGbECi/p9fc0BUiRRstFj18fh6uvovwe9Ken5To
	QdXuPHUL8mnyVMqjoVntqdGSNTgwvCmuiSKF9yjcadpz2mBavIsmyYd5J/EvAbczq+i1xPJOa72p4
	3863b3ZUrOc7PwrzfDj2fQT2mp0zKqsFlilGz3e8gvxhcMaIeLqWWWjDiFExrEQUmWQJaeVU96Xlj
	HVGu37KZqK1+HiP7GS9w2+kkpVCi6dHLi5EhK0CgnQhRPtN49uZ8OPZIYsFhVorII+pw1b6QL1nTd
	jekzHORw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIAcb-00000005CYR-2l5v;
	Sat, 17 Oct 2026 20:03:13 +0000
Received: from sender6-op-o11.zoho.com ([165.173.180.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIAcX-00000005CXs-2PjE;
	Sat, 17 Oct 2026 20:03:11 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1792267385; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Igo3uCDCkyYHWLIfZrGqYdhY2lvfVz7qXYwygG2HH5tUC3P0An0/2gg/RLjcFHIehbrgQ4a65SKRbp2zZRFxhQ+GIiOrx7FWup5wfBDpXC71pBgCMk8+ZnLWOVRFon/NlN2xhgGo/Rx9x4aVtYPRrSTFSugoxavgKLv0bVpfhYs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1792267385; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=HDbfx51p5XxyIurP4n8Jh9qNXSr08aSyHOnPDldz6es=; 
	b=BCAjgWBxyM5JFwJJjtwszIU94I3OAVFriJMWlhBFz6D2GZ5vNIhU/3KxPqr80ZM6McZIdm4OhEoz0PbOnTvZjMFljE18zAN6Ju7r41ZD/85vp4oBgoRlvsEbCLc5QV2Q92juhlXZ1W2bHfbpni8Pi+xZ/+9pNzdniu7+m9knF5A=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1792267385;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=HDbfx51p5XxyIurP4n8Jh9qNXSr08aSyHOnPDldz6es=;
	b=B6wI6mjg5+WMcsIGxn1kYkI5/i2pKKA83F83GxQtFIdo0Vt2aSbdtonpLzTrNyV1
	HUFyCGWx07BZHE7o4Y7EJuBQONIJoGRxWaFEf+wsX63AuBgmPty5vCjhME0vpASfeQF
	uVAW9d2CEGo1kAMpysZMKEPmqe//nsHQvUbRIjVM=
Received: by smtp.zohomail.com with SMTPS id 1792267383927317.9562881794884;
	Sat, 17 Oct 2026 13:03:03 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 38934182304; Sat, 17 Oct 2026 22:02:59 +0200 (CEST)
Date: Sat, 17 Oct 2026 22:02:59 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, linux-rockchip@lists.infradead.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: rockchip: naneng-combphy: Fix overwritten PLL SSC
 control bit
Message-ID: <atPUUusoWLVds9jL@venus>
References: <1792036787-37927-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <1792036787-37927-1-git-send-email-shawn.lin@rock-chips.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.13.1.5.4/292.264.81
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_130309_698736_4CB90186 
X-CRM114-Status: GOOD (  18.26  )
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
Content-Type: multipart/mixed; boundary="===============2522035880383617885=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2522035880383617885==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="amn6qqo5nchmrmqw"
Content-Disposition: inline


--amn6qqo5nchmrmqw
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] phy: rockchip: naneng-combphy: Fix overwritten PLL SSC
 control bit
MIME-Version: 1.0

Hi,

On Thu, Oct 15, 2026 at 11:59:47AM +0800, Shawn Lin wrote:
> rk_combphy_common_cfg_ssc() first sets RK3568_PHYREG33_PLL_SSC_CTRL on the
> RK3588 and RK3576 SoCs, then, for PCIe at 24MHz, programs the PLL KVCO
> adjust field. The latter used a plain writel() of the FIELD_PREP() value,
> which cleared all the other bits of RK3568_PHYREG33, including the
> PLL_SSC_CTRL bit that had just been set a few lines above.
>=20
> Use rockchip_combphy_updatel() so that only the KVCO field is updated and
> the SSC control bit is preserved, as the comment and the pre-consolidation
> code intended.
>=20
> Fixes: 0b31f297557f ("phy: rockchip: naneng-combphy: Consolidate SSC conf=
iguration")
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Greetings,

-- Sebastian

>=20
>  drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers=
/phy/rockchip/phy-rockchip-naneng-combphy.c
> index 3102a99..b6cc010 100644
> --- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> @@ -526,7 +526,8 @@ static void rk_combphy_common_cfg_ssc(struct rockchip=
_combphy_priv *priv, unsign
> =20
>  		val =3D FIELD_PREP(RK3568_PHYREG33_PLL_KVCO_MASK,
>  				 RK3576_PHYREG33_PLL_KVCO_VALUE);
> -		writel(val, priv->mmio + RK3568_PHYREG33);
> +		rockchip_combphy_updatel(priv, RK3568_PHYREG33_PLL_KVCO_MASK,
> +					 val, RK3568_PHYREG33);
>  	}
>  }
> =20
> --=20
> 2.7.4
>=20
>=20

--amn6qqo5nchmrmqw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmrT1HIACgkQ2O7X88g7
+prxjQ/+OYMRiDnXqbbhEGeraMuRgc+2Ie55Q3vzMGzMMPNOyCiLEC43IawflKar
EffRybxsBwH7b2fUSmnN7TgnRXvovNVMAEq4jICN04Axo+kTktnyl8VNx+hCcS6A
e9s5Us1Te80IFfHmfRerVgu4v+9fjPhAym2auNlLz8gbJtB6+qzuFSRoKAUpjVxv
CvqanEu0LnFoY5SdsoOwKhQkbNil1XkHRJ8nUZyDyzwCl4roEMnUJG0J9PvxKrSd
olRIKEYj1dOWZIj487wz8Dt1n6ATRHZga2KzGyrP0SNCZ7VG9nz2PBf2ozGXDuji
WWqjRFgWzAMWLGgQs5jnlrmtOVOS+Nl/fNkIpHjBuGnTMysGP50vqVdVAF2/bsgP
ux4dmBTfc/e5fDFtY6/wtuvSa1I9dhKUiANec2Wx8aT8t9dlj03LFZbnm7enkJgj
eHrVVRUjKRyAnCd1frYXyA4lluLeFcV44RkOhRIR7x6ETNEAzdY0jVFoLESlQH7J
DbQIXfNsSrV15bEmGHgVx4J2hUPYQp5xNpbXmYYfEaJ1NbzN7WhKz5oA9uCvnfDF
VEhZ370k4tElgRm2JklIrIqJAcwwKeeOVu+NQp18PReg3lizBjN/LPNgDbwh7jQN
nDXS7WiU5nl3B7qFS5Qr0VNqBx18oVitJuNSCNvJvlHX2C0p3U8=
=N1ZP
-----END PGP SIGNATURE-----

--amn6qqo5nchmrmqw--


--===============2522035880383617885==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2522035880383617885==--

