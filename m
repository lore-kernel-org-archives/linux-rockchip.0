Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FFD4C74A4B
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Mar 2023 16:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lCSbJxd/VIBdQpNpT2eZUI2v5h3NjmaVyI492PSEBZw=; b=iCbTV4/Yy5swbHwaXKNw+E3sm7
	RSukiXZ+NXfRrliMoT/2AhQM9pXi/953LDkoAykYH2zqFPk/vU2oWQeFxnFNg1LDl9AEPI4QJWwue
	a6/2fPzEfCq3aVPhPagbCKRFTsM/zv46EdRziHFKjN6LlrI55/bPNoqqJK3YlagEp3gSZNaFQArSy
	67OW98TQBvM4OCksQHRoUU3JMeXTIe57bDhbXudms5+ODpBJjfFNI+h5kDfLD19qdl5GjnhVaULeC
	sJYsm24U5A/YJxjuMEPZuoFSQGAJ9Bnnr/pdc06FGgJHoyRBpP0UfsdiS22BI2Df8Lm1TqDdCpF6X
	Z9SeDrlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc78a-00AjI2-2K;
	Tue, 14 Mar 2023 16:04:32 +0000
Received: from relay4-d.mail.gandi.net ([2001:4b98:dc4:8::224])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc78V-00AjEK-0J;
	Tue, 14 Mar 2023 16:04:29 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 50870E0017;
	Tue, 14 Mar 2023 16:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1678809862;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=VzvoSA87yEUtF+tV1RSI+R4AM6DEhHX5TP5UQ8plIOc=;
	b=Mf7kF6fAwocwFnRSgH139yTFgwuKjJqXByVHbKuJCYcIvus7Q+p+nnSARLdf2u3y1lhBvv
	E0giuU+tv2ElM8Ui7R5XfrCYAmsz9pn9BIENV+MyJrXvGw2AQRngo8ezPizJ8dzyYKGf//
	uBsF0SwJ3i7l/7u/3bRcm9RAuaJBvI18qel5c1uTvFp6nooDaCFqtS+buXYs8sZMmQfd9B
	bFWO/Am/FKbpGfrdBFN9/nSlRmAGeNbZCp+x2GxTxCmUwgXU1ybYHcp6Jq4jbZzUzUfL4J
	y0A04F7q1E8AU2+AcGLuJmWn1v820ubStPcmoSwWyiqMV3Tn0ZGioFcKi3k5fw==
Date: Tue, 14 Mar 2023 17:04:13 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Joe Tessler <jrt@google.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Michael Tretter <m.tretter@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Jacopo Mondi <jacopo+renesas@jmondi.org>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	Rui Miguel Silva <rmfrfs@gmail.com>,
	Wenyou Yang <wenyou.yang@microchip.com>,
	Bin Liu <bin.liu@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
	Houlong Wei <houlong.wei@mediatek.com>,
	Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
	Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
	Jacek Anaszewski <jacek.anaszewski@gmail.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Yong Deng <yong.deng@magewell.com>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	"Lad, Prabhakar" <prabhakar.csengg@gmail.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>, Sean Young <sean@mess.org>,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-mediatek@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 17/28] media: platform: sun6i-mipi-csi2: drop
 of_match_ptr for ID table
Message-ID: <ZBCa/SjuJj3LnZ55@aptenodytes>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
 <20230312131318.351173-17-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20230312131318.351173-17-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_090427_441368_1BA9DE68 
X-CRM114-Status: GOOD (  18.48  )
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
Content-Type: multipart/mixed; boundary="===============2837037387970396816=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2837037387970396816==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mCL4hlvlOht5eppU"
Content-Disposition: inline


--mCL4hlvlOht5eppU
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

On Sun 12 Mar 23, 14:13, Krzysztof Kozlowski wrote:
> The driver can match only via the DT table so the table should be always
> used and the of_match_ptr does not have any sense (this also allows ACPI
> matching via PRP0001, even though it might not be relevant here).  This
> also fixes !CONFIG_OF error:
>=20
>   drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c:751:34: =
error: =E2=80=98sun6i_mipi_csi2_of_match=E2=80=99 defined but not used [-We=
rror=3Dunused-const-variable=3D]
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Looks good to me:
Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Thanks !

Paul

> ---
>  drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2=
=2Ec b/drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c
> index a220ce849b41..0851b6b4e1ff 100644
> --- a/drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c
> +++ b/drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c
> @@ -759,7 +759,7 @@ static struct platform_driver sun6i_mipi_csi2_platfor=
m_driver =3D {
>  	.remove	=3D sun6i_mipi_csi2_remove,
>  	.driver	=3D {
>  		.name		=3D SUN6I_MIPI_CSI2_NAME,
> -		.of_match_table	=3D of_match_ptr(sun6i_mipi_csi2_of_match),
> +		.of_match_table	=3D sun6i_mipi_csi2_of_match,
>  		.pm		=3D &sun6i_mipi_csi2_pm_ops,
>  	},
>  };
> --=20
> 2.34.1
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--mCL4hlvlOht5eppU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmQQmv0ACgkQ3cLmz3+f
v9F4tQf/c8SNKs/s9jh+SCYcb7LnsBT/jMWTrMfcIpvS6n8ytOrw1m5hW2dErbKo
aA+ODD31BjqVISeN9aDhSGcu7KVahfkt5vb+izqXoHS8RiRFYN2ulUcCOUwf30kn
rzD4t0QhdFmfegTq2WfFbKMcUYBY39R3BbRE3ZbyuzNT63BO0mGcuoC1ssnekVxR
4lj/mfgmMjy4+S54g6x6mwn1v3aVK9xkoCxeQo+arhJt9HieG4B0AL2R2eOyoUDa
UdVjvYd8owBs+thW9y4oY2R+SWMPrGJcZNOjljHVzwT2j7RK6VGMOiiDQDzU8iAC
hllLNwa3mx5T3fw3QMPZ+NhvyPy6Qg==
=/D8E
-----END PGP SIGNATURE-----

--mCL4hlvlOht5eppU--


--===============2837037387970396816==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2837037387970396816==--

