Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 098A1CCF2C9
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Oct 2026 20:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WW+hB7zhudWTrKvoVMXZUGey65cHiyKMQz88n/fTs3E=; b=O3754efYm63aW6GTaKpfIkBI/G
	82sorTIjZnFyYtlfZswv+awv/xz7BYnU6LAsT0GsR7oKEZG6FomSKwS1XmnmVeAM9S6xLZ8zNbniV
	n6ybXzRf2+69p7wDYoZlPQ4Ik7fIJ8D7lg1vvYfhIAHAmMkSVTdPMkGoAEk+p3641QWWlotjOvVgG
	7t57CVPcAVxks9g/YCW88soCbOFYKsJXXlBHHj9OSxeiW4sMqkQgdTpr2aQqPulD4LxIBrRHH2hkh
	C+FN+EXBpg/YQfcqNCxa+9806/2V58E9imJvoUAsDNM+2xT4rxAazr5CdsbyLr4WFGLa2PxSwJdoK
	1O6hKQrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIAiH-00000005Cll-1g9o;
	Sat, 17 Oct 2026 20:09:05 +0000
Received: from sender6-op-o11.zoho.com ([165.173.180.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIAiF-00000005ClH-2G06;
	Sat, 17 Oct 2026 20:09:04 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1792267737; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=MV1Ihi5w65tETzvdAVruY+4iDWVUcyf52bMDv/scjrc/4U2y3Tce6fU2XQuDcLINvooMKGRU/IME7U+KasheiJr6740jM6AbN4U7n6RCq8Thmplz53qE+aV54eg0/R6Dp7NEc9j0uhXP8cktPl+EHM3kHIz2F7ZQ9IbVcLdQnzY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1792267737; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=dMd2Cnyzg2AY+6hcrzhQpnTa668bEMUasMPE/0oO2OQ=; 
	b=hHpwexE19pNHq5SQ0sbWpxgS8fW7BgUWEvy3n1rLI2JMpT1pP5gi68y1sQyxzxwakZqdL1qO1kXqIC5CUE/MXfQsh8Ul7lPQmk3JiCimynDgvS7Eoxvgh8ko2N9ox6gXEMuaMtfRf2va5IyuwQySJViJOnE9et6okIEmdFjA788=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1792267737;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=dMd2Cnyzg2AY+6hcrzhQpnTa668bEMUasMPE/0oO2OQ=;
	b=Mhwx1CWODXntMcsfwl/pzf4hjgInJ9YkSHHMb4+jv481dlldfxfT3DxApm0ls5Pk
	8PVbfAXwuoe7AzD7O38DBAePwaac2lZ+goXvDLQ3DhGBE64z+SV91gM7IksOtBhyx69
	3ey2F7WXGAucl9kibvmidAgHJsnqsbtnRzp3MZho=
Received: by smtp.zohomail.com with SMTPS id 1792267734140505.60928145954665;
	Sat, 17 Oct 2026 13:08:54 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 8ECDA182304; Sat, 17 Oct 2026 22:08:48 +0200 (CEST)
Date: Sat, 17 Oct 2026 22:08:48 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, linux-rockchip@lists.infradead.org, 
	linux-phy@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: rockchip: snps-pcie3: Raise the SRAM init timeout
Message-ID: <atPVLyxH8mPglzQ0@venus>
References: <1792047775-77954-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <1792047775-77954-1-git-send-email-shawn.lin@rock-chips.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.13.1.5.4/292.264.81
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_130903_637046_5262C6BF 
X-CRM114-Status: GOOD (  19.47  )
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
Content-Type: multipart/mixed; boundary="===============2507508848396683473=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2507508848396683473==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eirj7uqn7dp5um72"
Content-Disposition: inline


--eirj7uqn7dp5um72
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] phy: rockchip: snps-pcie3: Raise the SRAM init timeout
MIME-Version: 1.0

Hi,

On Thu, Oct 15, 2026 at 03:02:55PM +0800, Shawn Lin wrote:
> The SRAM initialization of the PCIe3 PHY may take longer than the 500us
> currently allowed, especially on a slow power-up such as at low
> temperature. In that case the driver reports
>=20
>   lock failed 0x..., check input refclk and power supply
>=20
> even though the input refclk and power supply are fine.
>=20
> Raise the timeout to 20ms and use a named constant for it, applied to
> both the RK3568 and RK3588 paths.
>=20
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
>=20
>  drivers/phy/rockchip/phy-rockchip-snps-pcie3.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c b/drivers/phy=
/rockchip/phy-rockchip-snps-pcie3.c
> index 4e8ffd1..bbbfd6d 100644
> --- a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
> +++ b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
> @@ -19,6 +19,8 @@
>  #include <linux/regmap.h>
>  #include <linux/reset.h>
> =20
> +#define RK_PCIE_SRAM_INIT_TIMEOUT		20000

#define RK_PCIE_SRAM_INIT_TIMEOUT_US        20 * USEC_PER_MSEC

Otherwise

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Greetings,

-- Sebastian

> +
>  /* Register for RK3568 */
>  #define GRF_PCIE30PHY_CON1			0x4
>  #define GRF_PCIE30PHY_CON6			0x18
> @@ -127,7 +129,7 @@ static int rockchip_p3phy_rk3568_init(struct rockchip=
_p3phy_priv *priv)
>  	ret =3D regmap_read_poll_timeout(priv->phy_grf,
>  				       GRF_PCIE30PHY_STATUS0,
>  				       reg, SRAM_INIT_DONE(reg),
> -				       0, 500);
> +				       0, RK_PCIE_SRAM_INIT_TIMEOUT);
>  	if (ret)
>  		dev_err(&priv->phy->dev, "%s: lock failed 0x%x, check input refclk and=
 power supply\n",
>  		       __func__, reg);
> @@ -187,11 +189,11 @@ static int rockchip_p3phy_rk3588_init(struct rockch=
ip_p3phy_priv *priv)
>  	ret =3D regmap_read_poll_timeout(priv->phy_grf,
>  				       RK3588_PCIE3PHY_GRF_PHY0_STATUS1,
>  				       reg, RK3588_SRAM_INIT_DONE(reg),
> -				       0, 500);
> +				       0, RK_PCIE_SRAM_INIT_TIMEOUT);
>  	ret |=3D regmap_read_poll_timeout(priv->phy_grf,
>  					RK3588_PCIE3PHY_GRF_PHY1_STATUS1,
>  					reg, RK3588_SRAM_INIT_DONE(reg),
> -					0, 500);
> +					0, RK_PCIE_SRAM_INIT_TIMEOUT);
>  	if (ret)
>  		dev_err(&priv->phy->dev, "lock failed 0x%x, check input refclk and pow=
er supply\n",
>  			reg);
> --=20
> 2.7.4
>=20
>=20

--eirj7uqn7dp5um72
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmrT1dAACgkQ2O7X88g7
+pqxcg//Vo/x9r1Rt9Y4F7K6g++zkELgZxMOI/hGgSejnF10Ctfi7/7c2RT+PJZG
qj91qrr6ATEiwzSAJh85eKGxD2SzmT/3yNxo2QyjQtCgBaz4+7dwcvRgI4KZ4sRJ
WSgrzLiyTmJD4U1I0akKsKAOkIKEv8+UlNWBZKK3XKw4EFQ38gBWvPpY5NzUtdSQ
WrmGL0wHPLlyT6kzAVDop5HUJ+lqFSY+qD8PGWH1K4/q0fbGXu3WjiDd8z25ol8+
F8PJPgnBOGTI58xVR1dzfUij8FVFSmNsN+cfRtcFRxXeZ19m1N/Mk2rvPyUsyl1R
c+l4ICzUrgv3A97NoTdRISaJuMN4fwd2kwJWnwVM6vsR6T/17a6MZQmVdiYK80C2
PmzCI8dVmQg6wEr1fZs2PPWb6HVUjZq+fqnXYLvByv31NsYgRTq6Nyw3wpF7e5Lo
zNwDCGjROmSdFlgoJcMNH6IBTxiUSebxn2Ko3rXthyD6LgbptvdKlhzebxOxnMbE
n8PQxMZFnzVJBhucQsUcTT3SaafWjXJJQUTXXIM5LVsmgkTVWAKV+XBxKbe2qEje
tudRq9OHO1JtQ0uP7Nw16CHmgNAxqM5XpTFkstHhOqtujiqwRYfsSSFAZHULOJ3S
jBkGYvg0ogV/rDNAqneztxXkqRywwcDViwC4cZWi4oe2DQ6qcWQ=
=rkYy
-----END PGP SIGNATURE-----

--eirj7uqn7dp5um72--


--===============2507508848396683473==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2507508848396683473==--

