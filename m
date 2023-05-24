Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19B1FC77B7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 19:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ptuAthzjcRPWN5uUdu8+5N0IV3yR5Tb5vsLUNP/kYrE=; b=i1z6vmx224/nb8k9yqOPdOsCO1
	mhKkiJ02DveDHlHn7mYR6PZL8lu838qmCAbOgxGwuFtFxgakA/IGYecPsi+n+XfTet6Hpl9jUiWf/
	MeqOc2t62eoeClYcHD9i4u8fOnWimA/e77gKdEHoapj1UCmuIL9hE4wejFS8oNFRWqi0s6vIPdWpz
	LWrYwTVJzkEms/Q67pbiUvb3Tn4Lbe1eW43YHIJU/GcbnzLN/s2kE4fuC1YqKfRe0BbEjGUtjienk
	Se5/fiMny3xIqMhAiC4J8iKJyYbQUzPDi2jYaodvNQgI0QMSZCgj+HCdN19SLf2VRjYb9D4AnrZeQ
	H9xfyAwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1uNl-00EVMY-0M;
	Wed, 24 May 2023 19:42:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1uNh-00EVM0-0h;
	Wed, 24 May 2023 19:42:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4612E6405B;
	Wed, 24 May 2023 19:42:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3685AC433EF;
	Wed, 24 May 2023 19:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684957362;
	bh=yZ++4rmAz/binbPZ2raZ7oKQBeGS4KnGAb2gGZ8Sg9s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GnpAesAX1Mplqldy+UcyxvjJnee2n29HLmjvyzYkREAddxM1xqMyZHkEm3L1R65gx
	 JkENY78Gjqxwr2sOUI2GcM9NeMaUb1urWDGiIVayse7u/RxpuUSy/hAuTrUL6urxM/
	 6OPpwlIZtAyL2IGwXWWTLUuPJRqpAjCnbKAXT04tQWe5AlapwwpDXDHZPOExWjjyhJ
	 Vb1n4nSEgV2CrbBLeYVpLMP3m9j8ABzHhKNRnuV5X/2w0PSecXvAM4DfCYMWTHhAOj
	 0nIWnDQZJPDN0HOAqFjl0bPjbMBkuNcHAGeVbly/rKew214e3daRAZ0z400dW995YG
	 Ek+4YxLXKUHeQ==
Date: Wed, 24 May 2023 20:42:36 +0100
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
Subject: Re: [PATCH v5 21/25] dt-bindings: devfreq: event: rockchip,dfi: Add
 rk3568 support
Message-ID: <20230524-cleft-dial-80d6af1444b1@spud>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
 <20230524083153.2046084-22-s.hauer@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20230524083153.2046084-22-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_124245_353637_96E83EB4 
X-CRM114-Status: GOOD (  19.77  )
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
Content-Type: multipart/mixed; boundary="===============7882488252112694758=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7882488252112694758==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="e2+WROMaYECLcWsp"
Content-Disposition: inline


--e2+WROMaYECLcWsp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 24, 2023 at 10:31:49AM +0200, Sascha Hauer wrote:
> This adds the rockchip,rk3568-dfi compatible to the binding. Make clocks
> optional for this SoC as the RK3568 doesn't have a kernel controllable
> PCLK.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

This one looks fine to me,
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  .../bindings/devfreq/event/rockchip,dfi.yaml      | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi=
=2Eyaml b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> index 7a82f6ae0701e..e8b64494ee8bd 100644
> --- a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> +++ b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> @@ -13,6 +13,7 @@ properties:
>    compatible:
>      enum:
>        - rockchip,rk3399-dfi
> +      - rockchip,rk3568-dfi
> =20
>    clocks:
>      maxItems: 1
> @@ -34,11 +35,21 @@ properties:
> =20
>  required:
>    - compatible
> -  - clocks
> -  - clock-names
>    - interrupts
>    - reg
> =20
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - rockchip,rk3399-dfi
> +
> +then:
> +  required:
> +    - clocks
> +    - clock-names
> +
>  additionalProperties: false
> =20
>  examples:
> --=20
> 2.39.2
>=20

--e2+WROMaYECLcWsp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZG5orAAKCRB4tDGHoIJi
0ucHAP9IMyFG6czvO674KoDL2bxtyJclg3iXK5ERZj5OwBBCgwEAjKj4CDc0G7VZ
3Sw9LBW8vUtkMyeqs1or9GnhhepHAg0=
=eVHC
-----END PGP SIGNATURE-----

--e2+WROMaYECLcWsp--


--===============7882488252112694758==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7882488252112694758==--

