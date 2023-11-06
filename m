Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58F4EC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Nov 2023 17:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tSn7cbmquh22Ye7PNu3Kl1oAqEVUhH6bX0s7WoqkWUg=; b=wazw8Y0yPIG3m2LYwYqpZLR3+D
	Fi3O7jrSHHOriUwKxV/PLn5GRwq+cN26TDasC7Rj5YV8DWyXnMbPQrERp78XLQvZzleP5VNrUKHqz
	5Atfiz21eXo3WXG3N/ROIeyHRnNW0aTiRWB4R/u9kl6F+AyiZo2E0ZsMazRrfoWaiu+i4WT/zmxw6
	L56egIuTFA+goWzgzsbYJ4fCaEFrVOILkgXuXIOdSLtpH8QNT4y4Ur17CDuxaGWYssZQ8rJniWtus
	IGDnuSaajxiqSSgcdpZQgkg/2SvB3Ii959BIdIBeuRp+/ZNoyljk08XnCFLVizgo0zvwIJdhZZ9Y9
	TQBU06AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r038R-00HCL0-2q;
	Mon, 06 Nov 2023 17:11:35 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r038O-00HCJ7-0P;
	Mon, 06 Nov 2023 17:11:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id D3529B8113E;
	Mon,  6 Nov 2023 17:11:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92D5BC433C9;
	Mon,  6 Nov 2023 17:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699290689;
	bh=xusVlf2bPpkS2PxlobjXC4orjcybspLeRLkKRoSVFco=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XkcaW3mII+LuoahYljzVUZljrlfW8ZwFt1ANIK8NuKpTpwDUtoX4iRDX+zmGVIezt
	 XRs7E9nZ+CotROXaDkDdhcu7nUMlz2IM7bM4mN0msXffkcfww2ucyJa3BKoHmO+Frh
	 2son5iW99BOQlRDFeutmx17PlhIaHBmWvP5laTUwdFA1fMvQyeQ0MdENn8/tjAYq3v
	 CMlMJb7WR9D5suuhbTTGt8OA9528NvRhw4vxaweo7Z/kOtFrotXzTYNp3qp9H6mtZt
	 YE8Jt9odyDVsoGGr2/tOSA28ECCP/0FILClEyCSSXBTs66KGE0Cro849SD4gBehocH
	 liQRx1l0hf+qg==
Date: Mon, 6 Nov 2023 17:11:23 +0000
From: Conor Dooley <conor@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Alex Bee <knaerzche@gmail.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Sebastian Fricke <sebastian.fricke@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Christopher Obbard <chris.obbard@collabora.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 6/9] media: dt-bindings: rockchip,vdec: Add RK3288
 compatible
Message-ID: <20231106-mongrel-aground-bd559a461ed0@spud>
References: <20231105233630.3927502-1-jonas@kwiboo.se>
 <20231105233630.3927502-7-jonas@kwiboo.se>
MIME-Version: 1.0
In-Reply-To: <20231105233630.3927502-7-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_091132_312320_C7169BAA 
X-CRM114-Status: GOOD (  16.12  )
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
Content-Type: multipart/mixed; boundary="===============2546110382683294566=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2546110382683294566==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fGrMI8XIaRiy8S6e"
Content-Disposition: inline


--fGrMI8XIaRiy8S6e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 05, 2023 at 11:36:13PM +0000, Jonas Karlman wrote:
> Add a RK3288 compatible for a version of the Rockchip VDEC IP that only
> support HEVC decoding.
>=20
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b=
/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> index 08b02ec16755..0f00e9c86737 100644
> --- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> @@ -16,7 +16,9 @@ description: |-
>  properties:
>    compatible:
>      oneOf:
> -      - const: rockchip,rk3399-vdec
> +      - enum:
> +          - rockchip,rk3288-vdec
> +          - rockchip,rk3399-vdec
>        - items:
>            - enum:
>                - rockchip,rk3228-vdec
> --=20
> 2.42.0
>=20

--fGrMI8XIaRiy8S6e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZUkeOwAKCRB4tDGHoIJi
0lr4AP9aW5NhxtpSLd4D73zYMC0XsxpeB3bwz7XcktPhtsuHKwEAjOIaEXKcLSUJ
5fdyRess2G11op/gkXF5bLmu2Kde8AQ=
=9q4o
-----END PGP SIGNATURE-----

--fGrMI8XIaRiy8S6e--


--===============2546110382683294566==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2546110382683294566==--

