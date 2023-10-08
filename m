Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 505AAE95A67
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Oct 2023 18:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cy6m3Pd93Vw5FAxIct+hCJtXL09xdUr+6bgQlsJJ1oI=; b=Ty/h6AE4/wJnWWXj3g+icQ8GXq
	rCKjNUNJLcuLsaQ1JjeRfnZ2tMOrvY+MdlbTojstyWpcO8OUsFl5a3TCn25VY8r3bODYQOmBpPlb0
	Z0kKz+p8oiDVOWfL3f9utwmXRpHghClZRdjzhZz+fhOLNBCEsicd6F18t3Z5k829P3QXRBogUaeeI
	gf5vZs7WO9VP56RTx4F+PdobU6HtEnx7ohDvHrU+5TmLhdbmtI7wX1VyIy+pyavmmLwvQPzDQf0Wu
	xTx8tnv6Z1hKqk91CQyKfrCFy3Ne775fxSkR2dzzUZjgQGitf8KyzyB7aCrpEyU0ia3Qcw6WEWJlt
	X1GJ5Dbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpYwo-0098V5-1E;
	Sun, 08 Oct 2023 18:56:14 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpYwj-0098Ty-0M;
	Sun, 08 Oct 2023 18:56:12 +0000
Received: from mercury (unknown [185.254.75.45])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9C73366071D4;
	Sun,  8 Oct 2023 19:56:02 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696791362;
	bh=gt4Exn6iOJIWBUB0OHgfxmKnEuCowU/63ggtVZCjHsE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e3aZ0T6v4vatk1sYcD591IVGCUulnUQRmani9eArQHl7I3HCtYGDca9ZFEQWvlUcw
	 2S3w8kv77Zo/FHdo/gQYhZV592VvcpE/7t6aw7u92ZR75a5gd+SkSK+Z2tjguOnPp2
	 yz54vxb6Cllf7DfOVBbOJkIauLD2Z0c1nfoGGPaJy9tm45/z7Gn3e0jf/MjE3IHqXb
	 5UUP/nufYlGpz2HfVfrNqVQ+9KbxikF6dFIHQ7AdieLqcDmEk+y05V/7hbbT6DZZIa
	 J2fnXua9XF918sKgUwlSNvcWXFM0TDGvGC8RiIWPJRIHx6+uleIRnP5/bCAcTfhGZO
	 +YQUyq/2BqShQ==
Received: by mercury (Postfix, from userid 1000)
	id B9F6A10605A3; Sun,  8 Oct 2023 20:55:59 +0200 (CEST)
Date: Sun, 8 Oct 2023 20:55:59 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
Cc: linux-kernel@vger.kernel.org, Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] dt-bindings: mfd: rk806: Allow
 rockchip,system-power-controller property
Message-ID: <20231008185559.ros34cft2dxoewqe@mercury.elektranox.org>
References: <20231008142118.1174090-1-megi@xff.cz>
MIME-Version: 1.0
In-Reply-To: <20231008142118.1174090-1-megi@xff.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231008_115609_328063_27B7E946 
X-CRM114-Status: GOOD (  16.93  )
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
Content-Type: multipart/mixed; boundary="===============6220857764972856645=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6220857764972856645==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6zim2mk3kknk5btg"
Content-Disposition: inline


--6zim2mk3kknk5btg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Oct 08, 2023 at 04:21:17PM +0200, Ond=C5=99ej Jirman wrote:
> From: Ondrej Jirman <megi@xff.cz>
>=20
> Declare support for this property.
>=20
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> ---

This is missing the accompanying driver change. Right now
this property does nothing for rk806.

-- Sebastian

>  Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml b/=
Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
> index cf2500f2e9a0..e8c9f17f6ea8 100644
> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
> @@ -29,6 +29,11 @@ properties:
>    '#gpio-cells':
>      const: 2
> =20
> +  rockchip,system-power-controller:
> +    type: boolean
> +    description:
> +      Telling whether or not this PMIC is controlling the system power.
> +
>    vcc1-supply:
>      description:
>        The input supply for dcdc-reg1.
> --=20
> 2.42.0
>=20

--6zim2mk3kknk5btg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmUi+zkACgkQ2O7X88g7
+prxlQ/4ld3VXPVQRdqI6RELUj1wba+qhndly/3MAe1Nzfrfdn20YB0ipliFHM7r
66CJWz0usea0FYo1GwnFIiqPSUCRq76ROyWm6VpR1b1AJuTBJk1AauAp4xUnRqqo
xMcq2s0tFcjqElm7zyZwVgAD1bXu5A8eX0y469Ioz+jUdU1d8p+dDNLkcMd2iUPw
zyec48d277MEx1QopWd3UNUKSGaCCAYwKbkTxnjZFn6/cSWAY4etgX7FQNmGxNPK
syEW4XZMSOcMNY3mPYCLT1KKwMTnROiIkkkeEj4wUI0Odx0VQHYs9rom/H9w3Il9
9H2ILOUuxCTEckVwCV/bGGMhl0WbrFuTDTpDfb1CySA10xvTo4U8JVSLzSLlsTxv
erKhd3nLDgUk795vBLII6rtLIDb3AvDHAtdawLCZff6Nynbumw1/KCSACYv2Arws
ze1TUYC2nXpl6ZKKRvfAvw/2FNRWhJWckEiRUAvDfJM/JgnoAuDBoChQjzvIhjJo
+60U/3idNsswoPDziFSdcFhHH0+ds+Z5XSrAXJOQcVZIhBzbc3/UM/RUwXVBlY1L
bXj83DKOe7oalLWPtyhADAj88i+IWy40p6fZRg//WwdwRDlCWfXrJnx+PQuxo6It
YiDYnkoIBNpvHIxMkHCaRqXvg/I3jZGKS4I3i3nKjhccw7sUqw==
=siPi
-----END PGP SIGNATURE-----

--6zim2mk3kknk5btg--


--===============6220857764972856645==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6220857764972856645==--

