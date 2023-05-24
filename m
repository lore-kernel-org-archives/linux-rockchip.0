Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AB37C77B7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 19:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I8uNhS2/b17br2+WOWb6YB0uCpmcWIJvvl/qqzsb5Y8=; b=im98Sy9fjc2aX9Bx3Y67rA1t6w
	dPjHt76w+5QEfTERr4mK3KzgPbJSsqPvUuNQnnph1ZcNJgawiUWRK8s1FjfOnUDVZNq9tzDcXsETv
	6VvMnV7pDVVLhEFKiciukNUmRXAOa1QpVFatulq16FaZRZQhA8/r6QG+ON8uKNCCcALOpAM8crg1b
	W8kcyueeucqlSGSA5mhnaTOL0GNOEVAKyzb50/NpVVvgzz6cB1d78sDp3TmftMhGVTpC+uAkQMVvp
	5Vb/WVKSBiP2YHmwMWT6GNXtTnN8Zzb+Zz6cM1/fT9pZd/b+WCCYPJ+G6+g6HOlssNY1JInmWXi5J
	9maGa+Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1uIg-00EUQ0-1A;
	Wed, 24 May 2023 19:37:34 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1uIc-00EUPO-33;
	Wed, 24 May 2023 19:37:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 76E51634D5;
	Wed, 24 May 2023 19:37:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70EE0C433EF;
	Wed, 24 May 2023 19:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684957049;
	bh=W7a/E/JmcLp7eemBI11m1MdaS39Qaf9Q1E7uRiBdevA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T37qhazCENR9JuPMlWE7t4OivKMYBhCBP3INUNmST7+0LodR6iMQPmN9u/tFYMPXb
	 EepvcoB/h+WHChUe9clMGWIfX13Ya8UCHwlMeLeruKNd7BTHLyu5uuAFqRAVydvyQF
	 Vdl0BYLnL4arDYBnTuHd+iDBX9RM6CFOGcZJeMDaaWMMl1lkIPIYyTcduMR8HbbZ3H
	 2Z7hxSGBnTnx5dMZp6DJMc7lbGT21YRzJhRv007UOjr2WwFI0qlS2qNTIvC/mA+pRp
	 460N8wN91UPCHRl2MgCO5c5QBlp2BTfyPmN9zgibFAsaZxxwjCbtfi1A/r/UVtaZAW
	 yyHcUNmazeVzw==
Date: Wed, 24 May 2023 20:37:23 +0100
From: Conor Dooley <conor@kernel.org>
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
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 22/25] dt-bindings: devfreq: event: rockchip,dfi: Add
 rk3588 support
Message-ID: <20230524-reptile-reexamine-187d778443d2@spud>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
 <20230524083153.2046084-23-s.hauer@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20230524083153.2046084-23-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_123731_078670_47850E03 
X-CRM114-Status: GOOD (  20.45  )
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
Content-Type: multipart/mixed; boundary="===============6913042240720773869=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6913042240720773869==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/2uqOHRXXrjZKaKe"
Content-Disposition: inline


--/2uqOHRXXrjZKaKe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 24, 2023 at 10:31:50AM +0200, Sascha Hauer wrote:
> This adds rockchip,rk3588-dfi to the list of compatibles. Unlike ealier
> SoCs the rk3588 has four interrupts (one for each channel) instead of
> only one, so increase the number of allowed interrupts to four and also
> add interrupt-names.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>=20
> Notes:
>     Changes since v4:
>     - new patch
>=20
>  .../bindings/devfreq/event/rockchip,dfi.yaml       | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi=
=2Eyaml b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> index e8b64494ee8bd..4e647a9560560 100644
> --- a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> +++ b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> @@ -14,6 +14,7 @@ properties:
>      enum:
>        - rockchip,rk3399-dfi
>        - rockchip,rk3568-dfi
> +      - rockchip,rk3588-dfi
> =20
>    clocks:
>      maxItems: 1
> @@ -23,7 +24,18 @@ properties:
>        - const: pclk_ddr_mon
> =20
>    interrupts:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 4
> +
> +  interrupt-names:
> +    oneOf:
> +      - items:
> +          - const: ch0
> +      - items:
> +          - const: ch0
> +          - const: ch1
> +          - const: ch2
> +          - const: ch3

Is it worth adding restrictions so that only the new compatible is
allowed to have more than 1 interrupt?
Heiko?

--/2uqOHRXXrjZKaKe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZG5ncwAKCRB4tDGHoIJi
0snjAPsGu+sRgh8DdDX+QFO1l4XLF6inu5NEmhRvEaPxXF/EfgEA6Gs+tEOw+1bE
A44YiDjl2lV7sQ2e0kzLndSsi+WkhwQ=
=UYXc
-----END PGP SIGNATURE-----

--/2uqOHRXXrjZKaKe--


--===============6913042240720773869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6913042240720773869==--

