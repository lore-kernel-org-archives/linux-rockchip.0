Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A97AC27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 22:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dKpgBRTzsvBfz7jZPG+4fs8GiCsiDePMyRhRiR+WMrc=; b=NvF+urqP8DVosAPwK2zIH1tgmJ
	WzPlJDtbitx+fOCU3tYtmea23z4yqEaTHFl8fi5xcLSWncMyBRvmRWBPbcJdddTPpuQVyIs+C0gV9
	9cHj3ow/lF0zWv/PaKY+q7HHk4NLAdliLrPECK1E/pDcKZhHM9Bw5nizqrYppsAPHTCYrKKZYP50i
	JNClb1C7zmEEm/RK5Wz2ZR+D6/ckkTWBXD5NHpRjRF63pFsKwN6aE3DrIFCiSkU5w8OFTTEPw6LuP
	8ipSCqGMf7kmirVQfjUu9ye3Qg/MwvMNG44sTbykFc2L7INnpD3fH8n1aVJrd1MyATK9DBQIFlcI1
	YLtz8sZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHWhv-0000000ENIt-2zYO;
	Wed, 12 Jun 2024 22:44:43 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHWhs-0000000ENIP-3wqN
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Jun 2024 22:44:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718232279;
	bh=3BxgOK0jJWH4MvqrDuL12E5Mcp8yWGXac4bSSPonAmU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ICZ7bLF4RWMq9xQO1IKI6TW1ooCB0kjkDK+QdmsYtRLzNNRlG7WogBzsIZivgAVfH
	 jIzMTUMCqjidC7GaeybXz8GFzJlQioSyVlk4dxXlyzrnPyNEknVnqUrjdbbY6ovdew
	 D+kVT2W+Q24uydwG1v/c2jnU4NYKbsgreUkBCxrTfBxvzZg10QDxdnIeVZrTn5zM7Z
	 NONzyoTreS4HPwZBGVSf41vTTBrxYsZ2siAsCVIyduE4VuLJoguJq7f7uchUVfMs6d
	 iCCAhTEQ21AiAEIsWVqx/5TUKIpx91IZHxDk0jXuxG4ZOP8oVnmrh61Ui/wsrA5RkI
	 BZvmoJgdUtEGw==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 0DBED37813C0;
	Wed, 12 Jun 2024 22:44:39 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 7869110608F7; Thu, 13 Jun 2024 00:44:38 +0200 (CEST)
Date: Thu, 13 Jun 2024 00:44:38 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jianfeng Liu <liujianfeng1994@gmail.com>, 
	Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v5 3/5] media: hantro: Add RK3588 VEPU121 support
Message-ID: <g3zzuwv2pti6oudc5xlab3cdjpqbhjsdxdsphzch4mtcaisqxl@iwkxgillwi2f>
References: <20240612173213.42827-1-sebastian.reichel@collabora.com>
 <20240612173213.42827-4-sebastian.reichel@collabora.com>
 <1739853.izSxrag8PF@diego>
MIME-Version: 1.0
In-Reply-To: <1739853.izSxrag8PF@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_154441_144155_4673EFA4 
X-CRM114-Status: GOOD (  34.29  )
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
Content-Type: multipart/mixed; boundary="===============0501311303324410389=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0501311303324410389==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o666ufvarx7zeimk"
Content-Disposition: inline


--o666ufvarx7zeimk
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jun 12, 2024 at 08:08:51PM GMT, Heiko St=FCbner wrote:
> Am Mittwoch, 12. Juni 2024, 19:15:43 CEST schrieb Sebastian Reichel:
> > Avoid exposing each of the 4 Hantro H1 cores separately to userspace.
> > For now just expose the first one.
> >=20
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> >  .../media/platform/verisilicon/hantro_drv.c   | 38 +++++++++++++++++++
> >  1 file changed, 38 insertions(+)
> >=20
> > diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/=
media/platform/verisilicon/hantro_drv.c
> > index 34b123dafd89..b722a20c5fe3 100644
> > --- a/drivers/media/platform/verisilicon/hantro_drv.c
> > +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> > @@ -722,6 +722,7 @@ static const struct of_device_id of_hantro_match[] =
=3D {
> >  	{ .compatible =3D "rockchip,rk3399-vpu", .data =3D &rk3399_vpu_varian=
t, },
> >  	{ .compatible =3D "rockchip,rk3568-vepu", .data =3D &rk3568_vepu_vari=
ant, },
> >  	{ .compatible =3D "rockchip,rk3568-vpu", .data =3D &rk3568_vpu_varian=
t, },
> > +	{ .compatible =3D "rockchip,rk3588-vepu121", .data =3D &rk3568_vpu_va=
riant, },
> >  	{ .compatible =3D "rockchip,rk3588-av1-vpu", .data =3D &rk3588_vpu981=
_variant, },
> >  #endif
> >  #ifdef CONFIG_VIDEO_HANTRO_IMX8M
> > @@ -992,6 +993,39 @@ static const struct media_device_ops hantro_m2m_me=
dia_ops =3D {
> >  	.req_queue =3D v4l2_m2m_request_queue,
> >  };
> > =20
> > +/*
> > + * Some SoCs, like RK3588 have multiple identical Hantro cores, but the
> > + * kernel is currently missing support for multi-core handling. Exposi=
ng
> > + * separate devices for each core to userspace is bad, since that does
> > + * not allow scheduling tasks properly (and creates ABI). With this wo=
rkaround
> > + * the driver will only probe for the first core and early exit for th=
e other
> > + * cores. Once the driver gains multi-core support, the same technique
> > + * for detecting the main core can be used to cluster all cores togeth=
er.
> > + */
> > +static int hantro_disable_multicore(struct hantro_dev *vpu)
> > +{
> > +	const char *compatible;
> > +	struct device_node *node;
> > +	int ret;
> > +
> > +	/* Intentionally ignores the fallback strings */
> > +	ret =3D of_property_read_string(vpu->dev->of_node, "compatible", &com=
patible);
> > +	if (ret)
> > +		return ret;
> > +
> > +	/* first compatible node found from the root node is considered the m=
ain core */
> > +	node =3D of_find_compatible_node(NULL, NULL, compatible);
> > +	if (!node)
> > +		return -EINVAL; /* broken DT? */
> > +
> > +	if (vpu->dev->of_node !=3D node) {
> > +		dev_info(vpu->dev, "missing multi-core support, ignoring this instan=
ce\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> >  static int hantro_probe(struct platform_device *pdev)
> >  {
> >  	const struct of_device_id *match;
> > @@ -1011,6 +1045,10 @@ static int hantro_probe(struct platform_device *=
pdev)
> >  	match =3D of_match_node(of_hantro_match, pdev->dev.of_node);
> >  	vpu->variant =3D match->data;
> > =20
> > +	ret =3D hantro_disable_multicore(vpu);
> > +	if (ret)
> > +		return ret;
> > +
>=20
> I think this might be better as two patches?
>=20
> As this patch stands, the disable-multicore handling is done for _all_
> hantro variants, so part of me wants this to be labeled as such.
>=20
> The whole reasoning is completely ok, but somehow having this under
> the "add rk3588" umbrella feels strange ;-)

I can do that, but the 'rockchip,rk3588-vepu121' part is only needed
because of the multicore handling. If the kernel already had this bit
in the past, the RK3568 compatible could be used for RK3588 (as a
fallback compatible), just like for VPU121.

-- Sebastian

--o666ufvarx7zeimk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmZqJNIACgkQ2O7X88g7
+prmng/+J+JQCs2l7H63PNhtj8waUB5VunmXRE0huPYvni5LWJM+E/nyl8LuDi1i
9ksj+NMfDEH7QNG5tF5AY328o58wgyxPeO5i0d2jBvffgxA3qTY7SWImNWTsRMe2
VHKRXanGyC5Z6sg00UbEnfps4b88sVAl1n7CHxq7IQD+q5tBOjYpL6kNu7oUPS32
oSsTUsrTP9bRe5EduCIRHXIDRbQxRVYCLb6LfCzjXA/3YNvSmctG+lfEqR+5DA/d
bWh3O0eIx3SvUYA6jYbB4P1L26SZ3SsveyYiRtTx7DnUp8WT6jmVZBs++s+PLWRX
t2dMzA6WBEUBAtvq+tjeVHbUs3L9LZlwUJq5p0wTFX46a0horY5JmVHqsxuCwMlL
C2tJ8KIDpDtcDRslsqZZKU014fobeVmNPhX9eaiyjVQk4s7zNcIM/LxUoHX3px1g
0lD8YlYZS3Q5Ejsai25CSBRFAHf+unovtualEIfdElOvosAWCUH/y5esJ2Pfvjr6
acKGw42KOmxeVTaVNeVkfCEvVzuBHE1i4NcUrLuWvsRQPy0cYXvC2i41BQJtQQoE
RU06DS3sO07G6/6V6V5ZQ8UF3BBeymd56976Wq597ZPT6J3cMWHSEsKk5duycOpc
dZ+xzX7m7+fJc/0SdjciE4PEX4NJviqnfetiylfJHLpAyyOPYPw=
=k1nu
-----END PGP SIGNATURE-----

--o666ufvarx7zeimk--


--===============0501311303324410389==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0501311303324410389==--

