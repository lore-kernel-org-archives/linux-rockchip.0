Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E1A1C4706C
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jan 2024 16:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xc0wgk2Ne38jVUz1EajfWzgHwhSMgkFlN5vtDf0LbXE=; b=hx9KLD4KADI+ypIqj/w12yjQx6
	MR7B2yxkf150T00BBBg/eHEluhKlx29X8bFXnRivtvK+hzk2RCIDLMshvx6Xxplx0YSQFQ3+LTIHI
	Lr71WS4ly8v2/VYMGs42+IstxtnFAlUbn3MUqPN5DXGGqTd8/BNrWTT0eQv+PnEhpwomDYB8WCzpA
	LhJwNkLD+srbO419uztRzGZGSeGzpxyVQ47W97IR8pulAXeLeFd4PweT7yZf+DlgCZNFIjXdQbLI1
	Ajob5luR+gxt1y17saonFJzq/9c5O16LrLDSPfqATUgUtw97sVVEpPjEZnQmeUOuFWqDyOSWpBakd
	QuCiy7Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOKrH-003NBc-1O;
	Fri, 12 Jan 2024 16:58:15 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOKrE-003NB4-1R;
	Fri, 12 Jan 2024 16:58:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id EC2CACE2082;
	Fri, 12 Jan 2024 16:58:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7067AC43390;
	Fri, 12 Jan 2024 16:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705078689;
	bh=R017C35XZgULOTl/xha7MyuS1RZo/GZh2uHIhJvPTbM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sryWrizcLFiIRtjL2T2O6J7y4Xf1KNRTjVhxcm6onbBPZtNH00DpE2nWImgF/qG90
	 Ez4H++i94x6WyBeSN83a+c5wPpBwvKUtxeeb/jd+RGn5zmF2Tf0D/iquqSX4iJns7M
	 /wMfqFRKTi9z77H8BuEOmD18h4fE5G0KOBhZqRt86tmOg1gcouFERrO3ihwf51HSnx
	 QVjcn8ILDd40b+hv9NeRCMs9P6MmY/rDOpj6JJUz6ESYxRHnLJlK49B/5bafsjOia3
	 JUNWm5H6MniZio06IaTuyedkZ8zoObTyH4H1orTW07gFL7FyWD0iBZE02oA2/8x/f1
	 6marEdWt9+q6A==
Date: Fri, 12 Jan 2024 16:58:04 +0000
From: Conor Dooley <conor@kernel.org>
To: KyuHyuk Lee <lee@kyuhyuk.kr>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jagan Teki <jagan@edgeble.ai>, Tianling Shen <cnsztl@gmail.com>,
	Andy Yan <andyshrk@163.com>, Ondrej Jirman <megi@xff.cz>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: rockchip: Add Hardkernel ODROID-M1S
 board
Message-ID: <20240112-granola-underline-36a525dc789c@spud>
References: <20240112134230.28055-1-lee@kyuhyuk.kr>
MIME-Version: 1.0
In-Reply-To: <20240112134230.28055-1-lee@kyuhyuk.kr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_085812_687252_D0C466DE 
X-CRM114-Status: GOOD (  15.46  )
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
Content-Type: multipart/mixed; boundary="===============2959505617154999048=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2959505617154999048==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="8SF8l+0YFEFPpEIl"
Content-Disposition: inline


--8SF8l+0YFEFPpEIl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 12, 2024 at 10:42:30PM +0900, KyuHyuk Lee wrote:
> Add device tree binding for Hardkernel ODROID-M1S board based on
> RK3566 SoC.
>=20
> Signed-off-by: KyuHyuk Lee <lee@kyuhyuk.kr>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index 5cf5cbef2cf5..cc37d2118131 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -566,6 +566,11 @@ properties:
>            - const: rockchip,rk3568-odroid-m1
>            - const: rockchip,rk3568
> =20
> +      - description: Hardkernel Odroid M1S

if the vendor for this board is hardkernel...

> +        items:
> +          - const: rockchip,rk3566-odroid-m1s

=2E..why is the vendor prefix here rockchip?

Thanks,
Conor.

> +          - const: rockchip,rk3566
> +
>        - description: Hugsun X99 TV Box
>          items:
>            - const: hugsun,x99
> --=20
> 2.34.1
>=20

--8SF8l+0YFEFPpEIl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZaFvnAAKCRB4tDGHoIJi
0n/AAQDkHzkEpbkEcPgsWiysuI7BEp4nrEoSAcQvm/4eChZuegD6Aztb5FfajYfD
gJvPbsipxJ9PyVMsiM5/pyUwU68MZwk=
=bjqJ
-----END PGP SIGNATURE-----

--8SF8l+0YFEFPpEIl--


--===============2959505617154999048==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2959505617154999048==--

