Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8831AEB64DA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jul 2023 05:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kUxpp32xgghk7PM61a1Mky4I6ETXzJXWWfOPp63svT0=; b=QPCgESFXr9b5bNoYRB31WGfF0d
	oJZKrlK+O88oJpYWrKEBO4/uQHE3nNpXrrqo5T1aN5Ywq4RKyU0vwYLbGvfTpJEG3mtt2aSA6q8i4
	/DenLAHxpMzLAqN/qZyuVDM/6jQpU40oqKrVMdLano3CMfPhgTUltTu2l4ZAM+Yrd4DmNSToISA7t
	UqL+VrA9DJoiQ7ZfeXNlSYXPogTXLIfRCagbqgPMh96Weddb8MxBdQrJVs6no7R/EDocI/KMcIe5s
	P2+JYDuKEppGwzR7Q95EZOizj2NYni3KMaoGtHWXGIjn3NhGMFv2XpehSpTgLLjYoFybHvOR09BUG
	uZ2kqJJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM07v-005Rsy-1s;
	Wed, 19 Jul 2023 05:53:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM07t-005RrF-0c;
	Wed, 19 Jul 2023 05:53:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=SKDO8fLABEy4nIQ1F8M+WG1j17Tp8D6xm4F5bsxJbUc=; b=VAJGrnXhF31THrS7vUVoArvCwS
	ymIODJzLOMrjJoh7stP4CiOrEiHsJ2ILHgNG6N7kPLqEGa/AriSZGPk8KNFZZ0MH4T/X/1da7vbLW
	CwcAAFASvskRRJyKtOvCCUVDzpYJBfLmg12fVBC0E3x4BcBD6n6oGDO3HOV9aI8WZjUVEeQQZOlA6
	9F/i7KI/f+//6IiIi0iRd9uvOP0Gv3P5xUw4X8Lz8bUmZtaLSAxhj/FTwSSuut+hmFvMXVp0llDCf
	5E3PMNCGKtUJM0jpBZx02UQofYPX0eElqWenCGKiOG0/gqVz74RRo6oC7hBQNWNkcxOBPj4Qyn2Go
	gvQMlyuw==;
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLh6K-00BMcx-1x;
	Tue, 18 Jul 2023 09:34:38 +0000
Received: from mercury (dyndsl-091-248-212-239.ewe-ip-backbone.de [91.248.212.239])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E103A660703C;
	Tue, 18 Jul 2023 10:34:31 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689672872;
	bh=pDdoHgD/R4j/O2UCXvRlSSP9z0NmI3OdmRQNP6aFg30=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OfHkRS1Fnn2sxv+9ZYTgwkAvWjw4/zzVsMiwQ/4Gdpil0vhSHhiMpF70TpvqNPRCx
	 czb43+nlO876FJId7eHvLkuwNv6XEl/S6KOT68IL8Fcjnob0znAhqOdrmilUseyPyF
	 paXOpv93DV1txJfP089cQv2Am6jjhnAVapnajoZwekrfj1bT5eewHDaFZdM48oGVCb
	 MlzuY8rPaDY4UWxlhgVSFcwKUIHazMS5FFU/t5xQm3nWKJohWUUxGqAPjvowUioQnp
	 R8MdzbuPa1jyx/Jq1SGdRLfQ79aIynMdmkAoX19cfJSVUhqrUNCXIZF4bSACbuGZZY
	 /zsNQJjMMkXLg==
Received: by mercury (Postfix, from userid 1000)
	id EEF551060D95; Tue, 18 Jul 2023 11:34:28 +0200 (CEST)
Date: Tue, 18 Jul 2023 11:34:28 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Eugen Hristev <eugen.hristev@collabora.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	netdev@vger.kernel.org, david.wu@rock-chips.com, heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org, kernel@collabora.com
Subject: Re: [PATCH] dt-bindings: net: rockchip-dwmac: add default 'input'
 for clock_in_out
Message-ID: <20230718093428.ofld4ywhwbpmnw5w@mercury.elektranox.org>
References: <20230718090914.282293-1-eugen.hristev@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20230718090914.282293-1-eugen.hristev@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230718_103436_797343_6BBA9530 
X-CRM114-Status: GOOD (  19.11  )
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
Content-Type: multipart/mixed; boundary="===============2362498791814970003=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2362498791814970003==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p4uagyzg7ikm4k3p"
Content-Disposition: inline


--p4uagyzg7ikm4k3p
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jul 18, 2023 at 12:09:14PM +0300, Eugen Hristev wrote:
> 'clock_in_out' property is optional, and it can be one of two enums.
> The binding does not specify what is the behavior when the property is
> missing altogether.
> Hence, add a default value that the driver can use.
>=20
> Signed-off-by: Eugen Hristev <eugen.hristev@collabora.com>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/=
Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> index 176ea5f90251..bb943c96c196 100644
> --- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> @@ -80,6 +80,7 @@ properties:
>        "output" means GMAC provides the reference clock.
>      $ref: /schemas/types.yaml#/definitions/string
>      enum: [input, output]
> +    default: input
> =20
>    rockchip,grf:
>      description: The phandle of the syscon node for the general register=
 file.
> --=20
> 2.34.1
>=20
>=20
> --=20
> To unsubscribe, send mail to kernel-unsubscribe@lists.collabora.co.uk.

--p4uagyzg7ikm4k3p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmS2XKEACgkQ2O7X88g7
+prE4xAAmh5G/otIOOGE3B28pMwGVdmjdOwa1BRNEfNCHvSeWkh12GQ+Eswe5kqG
BSB2DE/QqMNTqcrBTOlarZ0BWEMGKnWlpm2W0cBzDHro9ASDyikGy5MyNFtb6Pa2
kc8L9JGhZB8NN/GD+qWLTnkg0HB056GGBcZF4pediWVSjJERDM8WXEVkEMjxARa2
PRMpAknIO5kZpHzsekietpLOW4RpfuYCiVVmnCQpURUNK0FH3+la4hLWjvzuiEcM
rUyTJ9MZwx73KEuKDrCPhRfS8bk6gC+QwSbtjTiIn/ZsUOWbcz0ovkzSpEg3ytrM
pwLOCNM127Pvhitp9hV3lqad1yn5cioVfM4lmHjBNKxGxBPdQdiFBVWlczWT//p0
Mg90MJtmkWMqF5OzLQ5UZhRS9Vf9rFROwnrGo6Pl++zAzIesUe62+oSvv2hMo/XG
0UKo1Xwnl8edOORpjuSMtHbyJXIcpQ+hXRF+C21gZT268wWmxC6mBJi5r6Iunp/I
uxqYNAxd3Jtd4Kq3D8omE6f0fewzQL+t4cegcKqEdngl9c+a8FwzkEOHa2RDRReB
1t6XWKsHbgRbrWjt+PmatvnN8Ei/V4gFszQSIWYMhalviQCwqcqBqDKOi33kpFfh
OZFltVUI6Fj1SZCMsAGBaozAXQ+FZF73haMosgXiWPUwQmr52EM=
=9u/K
-----END PGP SIGNATURE-----

--p4uagyzg7ikm4k3p--


--===============2362498791814970003==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2362498791814970003==--

