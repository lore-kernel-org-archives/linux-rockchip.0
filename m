Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6465BEB64D0
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jun 2023 16:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YLJShe8SKeWGAQeyha8wjvzI5k03yuuCx5wrB601R8M=; b=Cw2prqrdpwSO1l1NyyVm+j6MNk
	W0iS0CXHH34jeMDjQ67Om5X+LaoYjmOsQDXmmFJR3ustIdHPg7ftcBkytJC9JyrASk1iEZLOwcJAg
	jhg19RK/m0ugRTcTXToWqjuAxtGOLn31tuv6hP85j5vph3wybkq808MaY6nQyJ7/HAwBExEsRnRSI
	0MTd1IoD9erLpqcIp9iiWhTZ7zi9r5VSwzFSw2VJM+CwopHzSmbpOQUZzGzgXUF7NJO66XpU141M+
	2tEjXT/edckpCrKZjaGD7xOs/CDiAPv4jIpA9lv2YjN8GXi4Uw6L+GsrzG4xCPnGWCTlTbtDCF4gx
	AO3h4pWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q97CG-008dJt-36;
	Tue, 13 Jun 2023 16:48:44 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q97CB-008dIp-0y;
	Tue, 13 Jun 2023 16:48:42 +0000
Received: from mercury (dyndsl-091-248-189-170.ewe-ip-backbone.de [91.248.189.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0DB0D6601F5E;
	Tue, 13 Jun 2023 17:48:38 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686674918;
	bh=UM8nq6DIfeVXzuGe8Mu+HR6x/D6bXctg1tCfl1Vqr4A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=odAMs67/mgBUzTAqe1jgEJzn3GTduzjfDe+MIbE5KkkWyTxaJ8X8WlLpiIcaAEQKm
	 CT3h3rXtGJ1SGFfQlF8u+KEO+nEtumZ5YoyUU97+1vxIRwT3SprEJ/66pS7FmwEYDE
	 x6LdaOlY8Rsed9JW3lVH9o0oNXUy67raaxiF25FkHGBjlUxYmkFtS76F6b0JxO3OQz
	 XZkmkqe0f7RyAmN2Vmyb2quynNwznjDhn3676ynbGLvJTWXifp70dYkEzmt48qpvvD
	 Uv/wjva2Nc5CH+qVS13rI6zGA1jztIh8PiDivILm0TvdLv68Gu0InEgcLrFgz14Pfj
	 3aK+J+K1XC2Yw==
Received: by mercury (Postfix, from userid 1000)
	id 89FF51066FBA; Tue, 13 Jun 2023 18:48:35 +0200 (CEST)
Date: Tue, 13 Jun 2023 18:48:35 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH v5 12/25] PM / devfreq: rockchip-dfi: Handle LPDDR4X
Message-ID: <20230613164835.ok477e5igrj36xka@mercury.elektranox.org>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
 <20230524083153.2046084-13-s.hauer@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20230524083153.2046084-13-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_094839_465297_C626A394 
X-CRM114-Status: GOOD (  19.73  )
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
Content-Type: multipart/mixed; boundary="===============1661907320799239316=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1661907320799239316==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uvrpf3lezyyj6znr"
Content-Disposition: inline


--uvrpf3lezyyj6znr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

hi,

On Wed, May 24, 2023 at 10:31:40AM +0200, Sascha Hauer wrote:
> In the DFI driver LPDDR4X can be handled in the same way as LPDDR4. Add
> the missing case.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  drivers/devfreq/event/rockchip-dfi.c | 1 +
>  include/soc/rockchip/rockchip_grf.h  | 1 +
>  2 files changed, 2 insertions(+)
>=20
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event=
/rockchip-dfi.c
> index 16cd5365671f7..0a568c5551699 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -89,6 +89,7 @@ static void rockchip_dfi_start_hardware_counter(struct =
devfreq_event_dev *edev)
>  			       dfi_regs + DDRMON_CTRL);
>  		break;
>  	case ROCKCHIP_DDRTYPE_LPDDR4:
> +	case ROCKCHIP_DDRTYPE_LPDDR4X:
>  		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR4, DDRMON_CTRL_DDR_TYPE_=
MASK),
>  			       dfi_regs + DDRMON_CTRL);
>  		break;
> diff --git a/include/soc/rockchip/rockchip_grf.h b/include/soc/rockchip/r=
ockchip_grf.h
> index dde1a9796ccb5..e46fd72aea8d1 100644
> --- a/include/soc/rockchip/rockchip_grf.h
> +++ b/include/soc/rockchip/rockchip_grf.h
> @@ -12,6 +12,7 @@ enum {
>  	ROCKCHIP_DDRTYPE_LPDDR2	=3D 5,
>  	ROCKCHIP_DDRTYPE_LPDDR3	=3D 6,
>  	ROCKCHIP_DDRTYPE_LPDDR4	=3D 7,
> +	ROCKCHIP_DDRTYPE_LPDDR4X =3D 8,
>  };
> =20
>  #endif /* __SOC_ROCKCHIP_GRF_H */
> --=20
> 2.39.2
>=20

--uvrpf3lezyyj6znr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmSIneMACgkQ2O7X88g7
+prvgg//asxiF9OnaP2bITXrgtEsRhV8k04A5U+WXJ0d/fjI+EoTUe5aB9T/gZOy
6Mh/d1RGqMZKe5CgE+PFjvBf9ig1x7Ux13tNjg9QUQSRfgAuCGbgflRwMIfeU2pS
12SGUoOaF/PR55Ep5+tqwtAQIF5hoet8eYd3aJKI5J+1YokC23q0oydcgDWNTtiB
m48p5D6uqG+S4ZcGrhQU8lvUCA5nG6+JvzGBfc8LWQjyA1Qtj8ve2XQ6wTt62fsT
8OWwX2YGucFnLjBPYSLyR9p1wG87V86/SPgxILP7jB778LlslxkV4axNlv7XcGcx
VbyFw5VcWL96WSm7aDcHB3QCYULxr4WFfo+gtnb3LIQaRPRVJfAImnQ3aw9QMUIk
3gq1ZLP5TSDw/++TDSAO5dS+YHp9RrcwXPxje8IOnRM6QcvwJsZ3Rxugp2ch0AaG
SycBzttpIIaC1c1vccLHgM8p+MSnpJ7l+/oR6UmhdmxyLZsgHZUIGjsAWFGwD6z+
wkZvzn+ay+WsweuhJ+vPDtuS/O0I7t22l2AaX9GWB+9OzzpIfUWlHJ9ZnqYhLWRO
VsryDlDT7pD8AN1KAUmSWQisa1hHPXOj4/OTRLFFPXKrmxYnRmbXdVjfZZGebUUJ
ZQUTBzfJPBiqsOefhtaL0Ek5nbBE0Y8Ze0gZixaB+p6D9GgLDqk=
=UVoD
-----END PGP SIGNATURE-----

--uvrpf3lezyyj6znr--


--===============1661907320799239316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1661907320799239316==--

