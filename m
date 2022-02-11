Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E5B8C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Feb 2022 11:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E0i0DwAF3Yu46ALVOzBoRC9x+6jv4+7LetsB6OZb2Ao=; b=VdUrcAoAnCnBQha4V82wiI4fCx
	DTCRkCprwdV+hiiqfRQgcfOukK4A2jK1BeqOkOAXVt8JUxDRSShNNAbx1k9ytoy40G6v4X+Mawg6s
	5GUowfXythyWzdsSuBXmdNcjJXrMasQZwGBEKFAzyLkZvVrBsSuEdisg+gAHxzWRUaYoOqWOW+tGE
	KRrtqQ8jDxTabNmHsgZcK9uF4wI1Z2e7C7dWIigI98iKyZtfGfb2Ycx5lu/4XxTBSaVwPypZPS9dA
	SCIOy1J3rSDCETGCx+ITUj4z1OF66iNGl5JywtuxJPiyKrFAMK/Y7xxPrrRur6Vy3o182XQ+fMVwp
	rLtiyruw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIUQ8-006wyT-Oj; Fri, 11 Feb 2022 11:49:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIUPg-006wp3-Ii; Fri, 11 Feb 2022 11:48:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1A30360B80;
 Fri, 11 Feb 2022 11:48:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21A7BC340E9;
 Fri, 11 Feb 2022 11:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644580111;
 bh=YoCVOJggdhVgQz5b42wFoa68cSdGl/d4Njs42FeDO4s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HttKNvu1EEIIaVqh72OV3ri6kgbwsSa2NWzQhYw047IZmzoazzb4sryRTUc+rUd3+
 PzqwbJDBOJ53y3E4JV55CuwyD/ofxsisIYnCT1nmDqgTO7zg+nsrvKS5QDxzELKoUQ
 qFsiqc9SZoIu5btb3BmgM+BxlNbakU36kDt/G/c3dru6AED3pt0iOrFoKkqlE30z1S
 lpXWvRtOiqExiT0gr86ugKFJJvCENouYtXpw1FSBXNBuKiNqkiExl0yyKwcnaDjV6z
 V/4POKs+I1VS0SRDYfNk8IzuuWggjAITLOtF2O723xrpePyRvtEfgljQKZI2czGUB1
 zEcCkismY9I1A==
Date: Fri, 11 Feb 2022 11:48:26 +0000
From: Mark Brown <broonie@kernel.org>
To: Jon Lin <jon.lin@rock-chips.com>
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v10 5/6] spi: rockchip: Support cs-gpio
Message-ID: <YgZNCoYeArYTECYC@sirena.org.uk>
References: <20220211034344.4130-1-jon.lin@rock-chips.com>
 <20220211034344.4130-5-jon.lin@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20220211034344.4130-5-jon.lin@rock-chips.com>
X-Cookie: do {
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_034832_713243_B161C08C 
X-CRM114-Status: GOOD (  16.92  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5394834656590921188=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5394834656590921188==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JOcgAXEiGUZsEFyr"
Content-Disposition: inline


--JOcgAXEiGUZsEFyr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 11, 2022 at 11:43:41AM +0800, Jon Lin wrote:
> 1.Add standard cs-gpio support
> 2.Refer to spi-controller.yaml for details
>=20
> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> ---
>=20
> Changes in v10: None
> Changes in v9: None
> Changes in v8: None
> Changes in v7: None
> Changes in v6: None
> Changes in v5: None
> Changes in v4: None
> Changes in v3: None

Why is this the one patch in the series with any versioning information?

> -		ROCKCHIP_SPI_SET_BITS(rs->regs + ROCKCHIP_SPI_SER,
> -				      BIT(spi->chip_select));
> +		if (spi->cs_gpiod)
> +			ROCKCHIP_SPI_SET_BITS(rs->regs + ROCKCHIP_SPI_SER, 1);
> +		else
> +			ROCKCHIP_SPI_SET_BITS(rs->regs + ROCKCHIP_SPI_SER, BIT(spi->chip_sele=
ct));

This appears to be making the device control chip select 0 if a GPIO
chip select is used - that's going to work poorly if there's a device
using that chip select.  It should be fine to prohibit that
configuration if the hardware requires that a GPIO be controlled,
especially if the native chip select can be pinmuxed to a GPIO, but it
ought to be at least documented that this won't work and ideally
detected.

--JOcgAXEiGUZsEFyr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmIGTQoACgkQJNaLcl1U
h9DjPwf+OfcmObP2QW45XxCOJbf7uVjeWK5FG6A+YWwUTRr4kndfSY5uRxnkZLGC
Kat9Z5P6BA4GLywzjFEWEoMotmyycFVQUOi0wrcCt/0ApT1GT3CqQcd69iEOBxpl
KHgJjajQfjUt8N+sLjfVa4aX64khXYR6bIe9VwiVhGh4HgjKYaK1IeXVI/DvgGnl
3gDqab+XiU/6O9AByXRIeAJFKaBJldHaEqG5nLRMiFrzusZ6iVOfGRFLCkNTfak4
crACzQi+lc/Ue+ihwOpAHqZz4lJgY0k7GnIpULj+SqFH8aVPrRW+zUXXuGnHeamB
7GKhEofIYj5SFkrd+luilKBU36pHPQ==
=rrmN
-----END PGP SIGNATURE-----

--JOcgAXEiGUZsEFyr--


--===============5394834656590921188==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5394834656590921188==--

