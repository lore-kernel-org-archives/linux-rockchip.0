Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC976C00528
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Aug 2023 21:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ML/KGvNt84HBop/sR6pwmJ6mLkcyuK+Q/TIEs0njieU=; b=wzUMCCFh0yCAqoSropK6t4TQsS
	tfV4rojtE0K+NOl3P3fUTIOWVlIv8MlKf8JTsxMQvuNEP7DymkmHyCa82RBHEn/jaY7ktJmY+gO8a
	vJsNwg3lS2E1fKmq9ULxBT/qSd/T+L/XzFOspVv8sbB5BedQlMjcoEQK0R3wbMzyKFLxQPXQSgEcZ
	Tz+l0Drw4WP7i+Pzqs/UcBdPoflFEfifLKTbjGRa/OeSsqTXi8yIq/00aI9ZFYfiYgxal/ndQAWs0
	L/MrukSPNpS1xZ5Q5lZFme/9nM/HpNFEbaMXGfXRSSow815IAD+Bg+ZJVdg7L1q5eYVgYAQjg+BBw
	GMDV2/AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQwaa-003Jsz-2m;
	Tue, 01 Aug 2023 21:07:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQwaX-003JsM-1r;
	Tue, 01 Aug 2023 21:07:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 175F56170D;
	Tue,  1 Aug 2023 21:07:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17414C433C8;
	Tue,  1 Aug 2023 21:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690924048;
	bh=K0rsCfWkpm4/DZighE9w0PX9rgV/Bm9df7670wIl4FI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TgouPXXIzW0OROEdXovJXLRxq5PEsymVh6oJhJR0SpjVfvYJawFd4TNgXvJY5HaQ8
	 sq6xjOvapf4D+xf6vXlFcv8hEkhn/8tGlxDq0rdbgHAenJF5GwJURcJiaWgtQjLY/L
	 0Y0eJ/1uYzXUj/lwbjffZ6S9CqS7kmXg/wMM9naTX21Tja6KQCPycu+2hx00IaTJ8w
	 42bO/zujh5psu9kDxa3oOx1te1j5nokNZqh0j+OD0GX+/SWoSqUGFUS2xYRbWJdNKD
	 3LgZsAKykdIEkTIano3ByN1OlhQivydK4Tp7T9oc4Yu61jKBKRmG0t+ZrqUUSuqrpE
	 GdgW19uV1k1kw==
Date: Tue, 1 Aug 2023 22:07:23 +0100
From: Conor Dooley <conor@kernel.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 05/14] dt-bindings: display: rockchip-vop: Document
 rv1126 vop
Message-ID: <20230801-residue-tractor-5c63e4447f2c@spud>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
 <20230731110012.2913742-6-jagan@edgeble.ai>
MIME-Version: 1.0
In-Reply-To: <20230731110012.2913742-6-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230801_140729_678833_FD12E6EA 
X-CRM114-Status: GOOD (  18.50  )
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
Content-Type: multipart/mixed; boundary="===============0814898428972413889=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0814898428972413889==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ndrRpp+GVoLa+YWP"
Content-Disposition: inline


--ndrRpp+GVoLa+YWP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 31, 2023 at 04:30:03PM +0530, Jagan Teki wrote:
> Document the VOP for Rockchip RV1126.
>=20
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

There's no commentary here about compatibility with other, existing,
devices nor did you CC me on the rest of the series. How am I supposed
to know if appending to enum is the right thing to do?

Ditto the other binding.

Thanks,
Conor.

> ---
> Cc: dri-devel@lists.freedesktop.org
> Cc: devicetree@vger.kernel.org
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Sandy Huang <hjc@rock-chips.com>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
>=20
>  .../devicetree/bindings/display/rockchip/rockchip-vop.yaml       | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-=
vop.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.=
yaml
> index df61cb5f5c54..b339b7e708c6 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
> @@ -31,6 +31,7 @@ properties:
>        - rockchip,rk3368-vop
>        - rockchip,rk3399-vop-big
>        - rockchip,rk3399-vop-lit
> +      - rockchip,rv1126-vop
> =20
>    reg:
>      minItems: 1
> --=20
> 2.25.1
>=20

--ndrRpp+GVoLa+YWP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZMl0CwAKCRB4tDGHoIJi
0sMRAP94AAcG2k+QdviKRNxL+Z2cWoicgNyRkc73TT92zzHevAEAju+k5rogAoDj
aGIjmgDauCja1IFZGjTf7DzL03fFXAE=
=mxOH
-----END PGP SIGNATURE-----

--ndrRpp+GVoLa+YWP--


--===============0814898428972413889==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0814898428972413889==--

