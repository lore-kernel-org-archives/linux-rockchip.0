Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 296F2C54E67
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Mar 2024 20:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8fmGF+aqqoG/nDTUmnihuoLYYZT02Su23qVMJadckKw=; b=HTDQXe26N05yvsiapMRMtoFCtt
	9I0i6hqBRvsrqcj3x6TfpdAkvkOXdMDDxtSDnggzJ8U7exdbCZfL3NL4Iq9p5EKcod8mdmi+uRZcT
	k3RDGPYuHRX3VKas6mM6z++eZYzoPw0v8oq8jeJhv77ba+FNUKesdREklm3/xyBqYfrxTxQhVsGG7
	qNhYtyiVZ6uLedWKZCXP1hqzJKtxYrw8hypPfFrUjNHJBfClEcJHQ+Tx0DVdBjncj3a9jYdpAoy1g
	mZwZZCmYDKXZcB+Xe6wUa4UpMl6TnqUziZOmrnsicvMxvP8qPNtMma/E+wh+Ux1NqIPk8Rl2jAIZU
	LNyG8YbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rn2N0-00000000sCG-47vt;
	Wed, 20 Mar 2024 20:17:06 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rn2Mx-00000000sBG-3WWs;
	Wed, 20 Mar 2024 20:17:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1710965817;
	bh=nj7MzyFExeNZhnwzBI8kDS3G0ZyqJ2Qb0WQL/c4YNTQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=xR4qmmjmVsPHZiwnD1RdLOW7zqjrJdorBZiwzDr7tAN4XceB3s8mavvGGo/RQpYbq
	 NErdndNsfObCsEajJM53XCuwRLGcmy53XT9RFdZTSH4PbU0himWp5bJ6ziSE6/gwZP
	 C+3wBjpB+7JYKlT9V2UvkOAawuOAjtG47Vn/INijwJydYJtYlKn1YjaMJ9KMRhBYOi
	 0gexHeXZAZViBT6JVTZzrmy3WYVRDysem/ZwN1/lwkMbWa5LfMAOOKPzCA7feecy/A
	 gzWzdXJxx9r6eEj1gU7PBa9Hud6lVpNwRFiE+hXGibLtyr3PO+MHEey9XOkFsgFNhO
	 cgoeR/01S4SaQ==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 762FA37814A4;
	Wed, 20 Mar 2024 20:16:57 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id F3F9B1060704; Wed, 20 Mar 2024 21:16:56 +0100 (CET)
Date: Wed, 20 Mar 2024 21:16:56 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
Cc: linux-kernel@vger.kernel.org, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	Dragan Simic <dsimic@manjaro.org>, Shreeya Patel <shreeya.patel@collabora.com>, 
	Chris Morgan <macromorgan@hotmail.com>, Andy Yan <andy.yan@rock-chips.com>, 
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev
Subject: Re: [PATCH 2/4] media: dt-binding: media: Document =?utf-8?Q?rk35?=
 =?utf-8?B?ODjigJlz?= vepu121
Message-ID: <uxdndbyetuxxt6icjw7ptlsq6h2ltup7dc35vwbs2i3qvmid2c@33gztzqf7ehm>
References: <20240320173736.2720778-1-linkmauve@linkmauve.fr>
 <20240320173736.2720778-3-linkmauve@linkmauve.fr>
MIME-Version: 1.0
In-Reply-To: <20240320173736.2720778-3-linkmauve@linkmauve.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240320_131704_027957_3D2421A2 
X-CRM114-Status: GOOD (  16.96  )
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
Content-Type: multipart/mixed; boundary="===============7527991183304255357=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7527991183304255357==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h5b2n4ltpigo6emq"
Content-Disposition: inline


--h5b2n4ltpigo6emq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Mar 20, 2024 at 06:37:31PM +0100, Emmanuel Gil Peyrot wrote:
> This encoder-only device is present four times on this SoC, and should
> support everything the rk3568 vepu supports (so JPEG, H.264 and VP8
> encoding).
>=20
> Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
> ---
>  .../devicetree/bindings/media/rockchip,rk3568-vepu.yaml          | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu=
=2Eyaml b/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
> index 9d90d8d0565a..947ad699cc5e 100644
> --- a/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
> @@ -17,6 +17,7 @@ properties:
>    compatible:
>      enum:
>        - rockchip,rk3568-vepu
> +      - rockchip,rk3588-vepu121

Looks like they are fully compatible. In that case it's better to
use a fallback compatible (i.e. like the iommu binding), which does
not need any drivers changes. So binding should be like this:

compatible:
  oneOf:
    - const: rockchip,rk3568-vepu
    - items:
      - enum:
          - rockchip,rk3588-vepu121
      - const: rockchip,rk3568-vepu

Then in DT (i.e. the following patch) you use

compatible =3D "rockchip,rk3588-vepu121", "rockchip,rk3568-vepu";

And patch 4/4 can be dropped.

Greetings,

-- Sebastian

--h5b2n4ltpigo6emq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmX7RC4ACgkQ2O7X88g7
+pq/5g/+IlGV2VBxSGO7OhBFSPRfHCOwTmN5HMpgyVmMQ0b/V+5c4KFuNR5EJJL/
X0ysDd35GBI8qi8M9h3SziSkGjMqyW+HEWKvsTX+nk+AiQav93ze2cVJdcbbHvh8
HGJc1Wu3FxvjIpTGResLeDEPxYxJLtABD+jUE7/897Ra15JBmVRkhutCMljxKZve
lu4/9vWD2D0gDLOlo3Foxrt4zPrGzQuRQQ+0ATrc+auWQmxgXqztnNJXjDBvOfoo
+6822tBJH03S0dp1/i+rmkZO9qPSqh2dcLURkAThhr5YI7fmHhjGjKfo/aDXvmBD
olNJcBjTtkswotDHN/i/arBcQIgPyYAZgoKSwVGR9yq+PbRJyliF63pFVlXZSfIc
rOEU3+5j5ydliUe8VKV1mVJBzvTB47xnccHSS89CjhhrovYl2u8wDNexy9YWo4WN
tB2msuOHWH+m3YbVAln6IYRt5OxX0MF5rhoFiB5HFWY9xpfmhUFAaUKPfwCibWDp
WjH4S2VHQh2kFfyjPvTMSZME6QPCKkgCaxOkyEJFVUABge2Bb/fZHx2yekNghF7i
GpEYx+FuzFMkli7dcJ+gPX4rEQLkb4wEiUnW0+yIvB+5L660JARx7i+uDakR/C9Z
59dOdJSv6tFDkvu/rqTeQBKssjO5505TiDVwYcn55iFKCMGcUk0=
=pn+0
-----END PGP SIGNATURE-----

--h5b2n4ltpigo6emq--


--===============7527991183304255357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7527991183304255357==--

