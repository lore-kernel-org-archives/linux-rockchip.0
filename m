Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF33CC7EE26
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 21:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XxKlZRtMDgjUSgOJsi7BDMaYRfqpoVWti89WFBPncjA=; b=0YfeTapgMX8GQQwfyj3e3HzEDL
	T6Egx9ZtOGaopFEGAl6Ay3slUL0r2O+HFqoNetNHmhA3nT8Zeq79zxv2F9da+YL+fK5RjSM/BQQ4q
	qud/1k7oXJvcg7uxyYBaDRj3uTmk+zM4KPhUPlsFBCLkDpnskcBuFS3Y7nFL4eoFozJbonfqHgmfP
	+rRnPgkJtaRqjd5BoEYYqgM/37ORWNCzGe30fc9MuuFHwfzB2CPgxlEZ0ZJmvyFxgp+u2+ECEHaH1
	qjhu4AKGa+rYGrbSVIpbayCScentEil9BtHDNBGd6yoOWyo4TpVuyNGT1UaUF6uQTwo9GmgDuz75Q
	c/lG8vfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1ZvN-00BXns-1V;
	Tue, 23 May 2023 21:52:09 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1ZvK-00BXnB-2g
	for linux-rockchip@lists.infradead.org;
	Tue, 23 May 2023 21:52:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2C7A963661;
	Tue, 23 May 2023 21:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 524C3C433EF;
	Tue, 23 May 2023 21:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684878725;
	bh=Q7Cfr0P4JrgFbeW6Lss/x27KCWc3NQnkwpmV1bMsJko=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BhgpD96fUG6XX5nLgvCkOJqbrtkEXkh9ZWfhRo6SaGPraqQ4um5v/iQJ9cigo9D71
	 LMFq1CH09FvTqUpbRdjWer1gOveDipuZ+KciU7Se9VKTCyw3MwmoV2xkhqKIpKLsVv
	 3NJa0sZ7Ra0CiJMsg6C2i2RUNWKVRsuxPHwXwWZXgJOH+tTvvnAFAVIyw8MKZCKg8d
	 nl74Q+CFewYespiRJyLQfJJvxT8879v/zogt9/N5juU2gRlemaDSx+zERHT1g+2MCh
	 azlcDBLIVAbucxT9skYHlqDiVOlGRbHK4Iwm3zpDKzxe17dZO2ZaHxEm+zKYwLIkfI
	 yQ2KOXJvwmUDQ==
Date: Tue, 23 May 2023 22:51:59 +0100
From: Mark Brown <broonie@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org, zyw@rock-chips.com,
	sebastian.reichel@collabora.com, andyshrk@163.com,
	jagan@amarulasolutions.com, perex@perex.cz, tiwai@suse.com,
	lgirdwood@gmail.com, heiko@sntech.de, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/6] ASoC: es8328: Enabling support for 12Mhz sysclk
Message-ID: <b64c91e0-1dab-4ae1-8fcc-512da08856bc@sirena.org.uk>
References: <20230523213825.120077-1-macroalpha82@gmail.com>
 <20230523213825.120077-2-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20230523213825.120077-2-macroalpha82@gmail.com>
X-Cookie: Beware of low-flying butterflies.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_145206_910092_84890289 
X-CRM114-Status: GOOD (  12.46  )
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
Content-Type: multipart/mixed; boundary="===============3047332564811968359=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3047332564811968359==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MEioEb2XHIcEnWAi"
Content-Disposition: inline


--MEioEb2XHIcEnWAi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 23, 2023 at 04:38:20PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Enable support for 12Mhz sysclk on es8328. This sysclk value is used on
> the Indiedroid Nova rk3588s based single board computer.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Chris Zhong <zyw@rock-chips.com>

If you're sending the patch your signoff should be last in the list.

--MEioEb2XHIcEnWAi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmRtNX4ACgkQJNaLcl1U
h9DKXAf+PmCPuedgkWKSejXYwuSyAr/YT9+cJ/FMkwbGhCdYTQkQGbX//jFXuj4r
fajuP100UTTCcpLlkb0QiIaIC0rNeLTvxgxKErj0W/PN3GGnzQXWCiOmADPhUwqS
pgmOnVv7DDojIAHgC2eWC3dItIl8tDDhhHunyoTJhQU46ghg8X6ewltUfwwwaJER
J+kESa5vrYFY+1FMHSARmoIiT1iXNC4b0zX3Ahtmf1i2u8dgI3pJHC+R7r41Ohpx
J+XydzeMne5mle8InUeIR3VIyY8sjxwyuA8sNekXtzsEj8YUix0PEbGb4ScxroT3
QIx0zUt71BJZhow4qXkmRS0jnKSA0Q==
=zOUN
-----END PGP SIGNATURE-----

--MEioEb2XHIcEnWAi--


--===============3047332564811968359==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3047332564811968359==--

