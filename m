Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 348DBEB64D9
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jun 2023 20:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yohDb7U/CAieYar0qmm3mkPYkD3yAqdQml4tzE3EIL8=; b=Wy4a0mOFhXVT79fIihnJ59+i6/
	b/vQOBTYpy+9gvnomdvQDMwhDkvY20HG1DuhyuQwz9cvFOaPbQCPpN1dhHzeGJBDIHjwFntvBBf2A
	yKjTIFW0REXifVkZjxjhjWP1iDgIUmKwc22E2eMj13NMEo0+Qv2Tuzzj/1QQcFKieF226x8cFkc3J
	jvCKM+U9pDIT4KUVYC4uJUmTMEcvtapEkPYO9IMKA45leFpMJMQ+X+IJT2Zk8HKr/jIqQlegkZk/W
	wL93aqHfBhRQrMomxt5yt9BNbzy9wLjlE+7BQ2SV+KLT3aaOcLx3G5vE5bLsNZcsW+iqQimIbbcpp
	7eMZ1TNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBL4p-009NlK-0U;
	Mon, 19 Jun 2023 20:02:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBL4m-009Njt-04;
	Mon, 19 Jun 2023 20:02:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E23C960C55;
	Mon, 19 Jun 2023 20:02:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B920AC433C8;
	Mon, 19 Jun 2023 20:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687204930;
	bh=9NBp15KwicgsQJyh1dHfVi2DhDDL418j6RnxZUcFcuI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CEJIriEJADcNmDFXV57agfmhyzUJffmTr67B3b2WYgKy1EGaiTpR68WtllUQyi20t
	 4Bv7kBvKyewyrW3CMFcErfvPxkubrsqqvBxhILyy5SGe7kKMlPepVzF4kADayolbSx
	 rYvLYvX9kBjnmqVoV+b5jhjtd8k0Z2C53848pSp43QpVtGGm3LJhONOd9bsRmgvLx/
	 SDh2KZLct0sduYaFafJ3X9eP1zsOGIM1oIV4bn5wyDmw+PzprTp3IBkANu/Jho85SW
	 qvzv2PRSQDyVq4y+xWi5gBagkdjImlm33tjzkHwflbbI3DpXKAFSD5hEYzN3k4rWOr
	 1FwL6Le3F/zoA==
Date: Mon, 19 Jun 2023 21:02:05 +0100
From: Conor Dooley <conor@kernel.org>
To: Furkan Kardame <f.kardame@manjaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, heiko@sntech.de, broonie@kernel.org,
	deller@gmx.de, dsterba@suse.com, arnd@arndb.de,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCHv3 1/2] dt-bindings: arm: rockchip: Add Firefly Station P2
Message-ID: <20230619-threefold-gotten-44bdebe98aff@spud>
References: <20230619184856.23066-1-f.kardame@manjaro.org>
 <20230619184856.23066-2-f.kardame@manjaro.org>
MIME-Version: 1.0
In-Reply-To: <20230619184856.23066-2-f.kardame@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_130212_119667_3CB0B651 
X-CRM114-Status: GOOD (  15.07  )
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
Content-Type: multipart/mixed; boundary="===============0866330765890333855=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0866330765890333855==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uEc1/TnukgkzcaQ5"
Content-Disposition: inline


--uEc1/TnukgkzcaQ5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 19, 2023 at 09:48:55PM +0300, Furkan Kardame wrote:
> Station P2 is a single board computer by firefly based
> on rk3568 soc
>=20
> Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index ec141c937..fa21640bc 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -185,6 +185,11 @@ properties:
>            - const: firefly,rk3566-roc-pc
>            - const: rockchip,rk3566
> =20
> +      - description: Firefly Station P2
> +        items:
> +          - const: firefly,rk3568-roc-pc
> +          - const: rockchip,rk3568

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--uEc1/TnukgkzcaQ5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZJC0PQAKCRB4tDGHoIJi
0kupAP9h6AkR4L0o5eMWUIxtT1P7UcyXEzXKFWp10ErYkbPWiwD9EhEFu9qqXMyj
I6VMiQnWvGJPZ4gdEM2Ri5lwWllZ/Ag=
=Sf1a
-----END PGP SIGNATURE-----

--uEc1/TnukgkzcaQ5--


--===============0866330765890333855==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0866330765890333855==--

