Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79CF1C4725D
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Jan 2024 22:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vYzd/0QZY/hG9BbLWc7an+7hfPVBytD9SWBWvICtBAc=; b=IbMUQFqJQHpoO91uYNYQuwNDwm
	l02zRcL02b9UoDvUDNf4vhbzS/53Bt0YSiumBy59f+tjEtAjcF8GiE6WPlzJLddcmEbiTZzn+YovP
	Zlm9u0HPPHcGbMaNEzlTxBvZIMuc33ET4EfsnbAlYY4AM6DFfK2/GvnQg74ZPhseCDXQ/NPUNOQLr
	BuImuZcASJgFshoGuh83CgjnlRdDWrGf3a++YQgyXnzvQMHulC5q5JmO3EMFIhTlYqKVhmHY/3u/H
	yt8wsbJ6SgM3UR9EmGIfQi+1qXYgsIt8U3knA/keBMwVlqFbwbmJkuftf0B+eDG/TaPV65TnLiP+V
	eyfjKF4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQxe4-006oJS-1Q;
	Fri, 19 Jan 2024 22:47:28 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQxe0-006oIS-31;
	Fri, 19 Jan 2024 22:47:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1705704438;
	bh=VjppsFpbyCWxgORJcPpUoA4qYbTq4NNlOZd+L1VwhMw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=5I8brMRsyz14hP+kX8WRzO8EbIC5sNnul5fNCCC0rUXq6NdphWWXy4m28JaUND2sR
	 XeK/RCtp/nJn5FdwzHYqBT8bdDZtaAGagm1r2Sxv0qJuMOhks7Q+zGvU0+FPTwPxfJ
	 6res/AScL1rWZMnoyneFaD1DswIJfvtN2wlZVFGFh8roBcPB3rIRV84H7UoulIzpwB
	 9qgweRcUDOohiNPOppHAaje9XVZIoTM0qiC+CT3i+SjnW5pPKfBIlo0eSXVBtqq4Ek
	 tIUDD/BvzJEzzqY9TbKs871vMvLc0vFV8wstEPdcSxOqtox0qWhZHYEC9hIrVq8CQk
	 BhsPshCEW5RAg==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id BEE4A37813C4;
	Fri, 19 Jan 2024 22:47:18 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 2FE2510609DF; Fri, 19 Jan 2024 23:47:18 +0100 (CET)
Date: Fri, 19 Jan 2024 23:47:18 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Johan Jonker <jbx6244@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Algea Cao <algea.cao@rock-chips.com>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH 3/3] phy: rockchip: Add Samsung HDMI/DP Combo PHY driver
Message-ID: <eodlujrytdm6gugcbaz3efnjvgg7sbvsqedwllmleh4ar6e7cr@3ejicokdjzcd>
References: <20240119193806.1030214-1-cristian.ciocaltea@collabora.com>
 <20240119193806.1030214-4-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240119193806.1030214-4-cristian.ciocaltea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_144725_178329_2706AF5D 
X-CRM114-Status: GOOD (  17.30  )
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
Content-Type: multipart/mixed; boundary="===============1241703398658050310=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1241703398658050310==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h4tpubuhecincak7"
Content-Disposition: inline


--h4tpubuhecincak7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Cristian,

On Fri, Jan 19, 2024 at 09:38:03PM +0200, Cristian Ciocaltea wrote:
> Add driver for the Rockchip HDMI/eDP TX Combo PHY found on RK3588 SoC.
>=20
> The PHY is based on a Samsung IP block and supports HDMI 2.1 TMDS, FRL
> and eDP links.  The maximum data rate is 12Gbps (HDMI 2.1 FRL), while
> the minimum is 250Mbps (HDMI 2.1 TMDS).
>=20
> Co-developed-by: Algea Cao <algea.cao@rock-chips.com>
> Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---

The driver has multiple sequences looking like this (this is just one
example of many):

> +	hdptx_write(hdptx, CMN_REG0087, 0x04);
> +	hdptx_write(hdptx, CMN_REG0089, 0x00);
> +	hdptx_write(hdptx, CMN_REG008A, 0x55);
> +	hdptx_write(hdptx, CMN_REG008B, 0x25);
> +	hdptx_write(hdptx, CMN_REG008C, 0x2c);
> +	hdptx_write(hdptx, CMN_REG008D, 0x22);
> +	hdptx_write(hdptx, CMN_REG008E, 0x14);
> +	hdptx_write(hdptx, CMN_REG008F, 0x20);
> +	hdptx_write(hdptx, CMN_REG0090, 0x00);
> +	hdptx_write(hdptx, CMN_REG0091, 0x00);
> +	hdptx_write(hdptx, CMN_REG0092, 0x00);
> +	hdptx_write(hdptx, CMN_REG0093, 0x00);
> +	hdptx_write(hdptx, CMN_REG0095, 0x00);
> +	hdptx_write(hdptx, CMN_REG0097, 0x02);
> +	hdptx_write(hdptx, CMN_REG0099, 0x04);
> +	hdptx_write(hdptx, CMN_REG009A, 0x11);
> +	hdptx_write(hdptx, CMN_REG009B, 0x00);

Instead of the repetitive calls to regmap_write, it's better to do
it like this:

static const struct reg_sequence some_init_seq[] =3D {
	REG_SEQ0(CMN_REG0087, 0x04),
	REG_SEQ0(CMN_REG0089, 0x00),
	REG_SEQ0(CMN_REG008A, 0x55),
	REG_SEQ0(CMN_REG008B, 0x25),
	REG_SEQ0(CMN_REG008C, 0x2c),
	REG_SEQ0(CMN_REG008D, 0x22),
	REG_SEQ0(CMN_REG008E, 0x14),
	REG_SEQ0(CMN_REG008F, 0x20),
	REG_SEQ0(CMN_REG0090, 0x00),
	REG_SEQ0(CMN_REG0091, 0x00),
	REG_SEQ0(CMN_REG0092, 0x00),
	REG_SEQ0(CMN_REG0093, 0x00),
	REG_SEQ0(CMN_REG0095, 0x00),
	REG_SEQ0(CMN_REG0097, 0x02),
	REG_SEQ0(CMN_REG0099, 0x04),
	REG_SEQ0(CMN_REG009A, 0x11),
	REG_SEQ0(CMN_REG009B, 0x00),
};

regmap_multi_reg_write(hdptx->regmap, some_init_seq, ARRAY_SIZE(some_init_s=
eq));

> +static const struct of_device_id rockchip_hdptx_phy_of_match[] =3D {
> +	{ .compatible =3D "rockchip,rk3588-hdptx-phy", },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, rockchip_hdptx_phy_of_match);
> +
> +static struct platform_driver rockchip_hdptx_phy_driver =3D {
> +	.probe  =3D rockchip_hdptx_phy_probe,
> +	.driver =3D {
> +		.name =3D "rockchip-hdptx-phy",
> +		.pm =3D &rockchip_hdptx_phy_pm_ops,
> +		.of_match_table =3D of_match_ptr(rockchip_hdptx_phy_of_match),

Remove of_match_ptr(). It's a nop, since the driver depends on OF.

Greetings,

-- Sebastian

--h4tpubuhecincak7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmWq++sACgkQ2O7X88g7
+pod7w//ThYbzmy1lztKq6Q/lBLNvHn771BBP8vGzErGsecU6e8sAv4yc8kjOk1X
Tj3MAlMP9jrl35kNCouj55qupzaaUO4+kWxKWGSB9M0J2uwPPlnxWBghYrvlLqpU
OpqdyhA2lY27WXb4opiG5WlO4fCka2gPvCmVaEgsRBzvGm8pE5XAEh6wFKyu1nQb
3rKNhUxDyvE6xsEub1qA6EU4LUz+L5MgnewjZgUo9tXQ8sXZtCnzmio89mjKXxqy
YZRJJeeMQo2lRD9CSMrrunqRMxfr++EAVfNabqjl6LeCj2LYUyquBVLrl5UWEgyl
U0I1OanUHZf6bnSxjq4MWQXzsvGJFT8u0WaBExHeFMmiza1u9UOw/OojOsiYgipy
82ZjkGUwrRRPFG9MR4gnFOAj6QRVcmGiuWcTpN7btyzYxkJok5mC3EJApnEhuSpQ
q/3/RJ/twqXnmXM0sBVk83SFak8A7JkqIQvpLdAYmpykyzp6jB03CpXsE+LCBQD1
BgHgTPwwYmd7cQPJO2hjMPYkxXDYYbPHCw+83UHmcDrA/AKO0cv75Y1Rvdtb/AxR
8W3h5yOHNL3azY7kwDuVyCBaozX5e0+cyMeDSmj3BA6QsygUKvij7oo4GGX1lH+w
AHedQgPgS8/v36Fe80myNNj/9bq691npdqKlsVJXXRIMI8mFL+w=
=833U
-----END PGP SIGNATURE-----

--h4tpubuhecincak7--


--===============1241703398658050310==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1241703398658050310==--

