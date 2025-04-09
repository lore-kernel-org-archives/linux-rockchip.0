Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 458FEC36002
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Apr 2025 16:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Buc28ngDb5nwSE3JaRJqHItQxtEdZ32R3ql/kd/u/1c=; b=fbs48jAnYRvgLQLVF1vfy/WH8n
	7XnshlnjvDpnpv0KWPPBb8IeuAsp5+qr16s07AgJcov2RBZ06rDpljhl+UOldgDMavWiJIxPkY/T6
	HvcWwR9yinnBRzNWq8FKAYUE/TChOEvfscA2ebM8KUoDyPW+SveHYJrWZ9fHlCYuvrOkCL9/TzMzw
	PKrV0uVGKx+sb6IUPHEvsw4sa3EA05gtpTqMyAEQT7E9+DDy7fQ/MzQVicPWeD22+f6/I6cqzTOWw
	xV7a6P8BpqYuWd/BUkIL8ufsITv+1MxXb5iby6zPBnM5DyXpSU328Hi0ddYcP2KU0OI6LDgLkoL7F
	/LWsPvDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2YI8-00000007t3F-25BS;
	Wed, 09 Apr 2025 16:28:44 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2Y8g-00000007rYV-0HUA;
	Wed, 09 Apr 2025 16:18:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 44B2FA49AB4;
	Wed,  9 Apr 2025 16:13:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE6C7C4CEE7;
	Wed,  9 Apr 2025 16:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744215536;
	bh=wWoauvV634omXVvTO1Ej24sCxgOZyiirFlXx4Z2Ipk8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hFeVn/Wkb1sbnJfDSzEGTuZnMRG1DiweCjLGfSLKjgWLuVPEZmqN2F0h2n3ZR/okW
	 CbXNw/Wragqiyls2y2/k1araxJNZJoh5vpU/lHQYkPz8SHwT1WPinbk1ujAEf+uscN
	 nGtNUseYHkvLvuBrLMvEIEKjYUJMwoPrPAgwbyjS7VIDhiYvzxaenx/H3HczTabFm1
	 jn6hDQIDfjSGKRQVLb95UDIAQ4Y2M2hqDk+ac6gDpEV4zSZKE+nxAYZ3PQAeVl9wKN
	 LfMOtTfhKMOvvnBI8eOw+F4AKkaflgYrD7fFl0/mYMzFBoG3Bse9GIAFMQMVRtytSD
	 KLUc20VvdkE4g==
Date: Wed, 9 Apr 2025 17:18:51 +0100
From: Conor Dooley <conor@kernel.org>
To: =?utf-8?Q?=C5=81ukasz?= Czechowski <lukasz.czechowski@thaumatec.com>
Cc: Matthias Kaehlcke <mka@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Benjamin Bara <benjamin.bara@skidata.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Klaus Goger <klaus.goger@theobroma-systems.com>,
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, quentin.schulz@cherry.de
Subject: Re: [PATCH 2/5] dt-bindings: usb: cypress,hx3: Add support for all
 variants
Message-ID: <20250409-commend-brewing-7c541aec26a9@spud>
References: <20250326-onboard_usb_dev-v1-0-a4b0a5d1b32c@thaumatec.com>
 <20250326-onboard_usb_dev-v1-2-a4b0a5d1b32c@thaumatec.com>
 <20250326-fanatic-onion-5f6bf8ec97e3@spud>
 <CABd623tEGh=qtpF0h7PkRBBrR7V9EaxUv9HregqbPcLU_2Exbg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CABd623tEGh=qtpF0h7PkRBBrR7V9EaxUv9HregqbPcLU_2Exbg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_091858_248613_54916534 
X-CRM114-Status: GOOD (  30.23  )
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
Content-Type: multipart/mixed; boundary="===============3164275983138231374=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3164275983138231374==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="X2pwzW2tJYBQHmm7"
Content-Disposition: inline


--X2pwzW2tJYBQHmm7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 08, 2025 at 06:36:04PM +0200, =C5=81ukasz Czechowski wrote:
> Hello,
>=20
> =C5=9Br., 26 mar 2025 o 18:58 Conor Dooley <conor@kernel.org> napisa=C5=
=82(a):
> >
> > On Wed, Mar 26, 2025 at 05:22:57PM +0100, Lukasz Czechowski wrote:
> > > The Cypress HX3 hubs use different default PID value depending
> > > on the variant. Update compatibles list.
> > >
> > > Fixes: 1eca51f58a10 ("dt-bindings: usb: Add binding for Cypress HX3 U=
SB 3.0 family")
> > > Cc: stable@vger.kernel.org # 6.6
> > > Cc: stable@vger.kernel.org # Backport of the patch in this series fix=
ing product ID in onboard_dev_id_table and onboard_dev_match in drivers/usb=
/misc/onboard_usb_dev.{c,h} driver
> > > Signed-off-by: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
> > > ---
> > >  Documentation/devicetree/bindings/usb/cypress,hx3.yaml | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/usb/cypress,hx3.yaml b=
/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
> > > index 1033b7a4b8f9..f0b93002bd02 100644
> > > --- a/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
> > > +++ b/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
> > > @@ -15,8 +15,14 @@ allOf:
> > >  properties:
> > >    compatible:
> > >      enum:
> > > +      - usb4b4,6500
> > > +      - usb4b4,6502
> > > +      - usb4b4,6503
> > >        - usb4b4,6504
> > >        - usb4b4,6506
> > > +      - usb4b4,6507
> > > +      - usb4b4,6508
> > > +      - usb4b4,650a
> >
> > All these devices seem to have the same match data, why is a fallback
> > not suitable?
> >
>=20
> Thank you for the suggestion. Indeed the fallback compatible appears
> to work fine in this case,
> and I am able to avoid additional entries in onboard_dev_match table
> as added in the first patch in this series.
>=20
> However, after I've updated the cypress,hx3.yaml schema file and
> rk3399-puma.dtsi file,
> I get the following warnings, when running "make dtbs_check":
>=20
> linux/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dtb: hub@1:
> compatible: ['usb4b4,6502', 'usb4b4,6506'] is too long
> =E2=80=83=E2=80=83from schema $id: http://devicetree.org/schemas/usb/cypr=
ess,hx3.yaml#
> linux/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dtb: hub@2:
> compatible: ['usb4b4,6500', 'usb4b4,6504'] is too long
> =E2=80=83=E2=80=83from schema $id: http://devicetree.org/schemas/usb/cypr=
ess,hx3.yaml#
>=20
> Below is the diff of my changes:
>=20
> diff --git a/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
> b/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
> index f0b93002bd02..d6eac1213228 100644
> --- a/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
> +++ b/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
> @@ -14,15 +14,22 @@ allOf:
>=20
>  properties:
>    compatible:
> -    enum:
> -      - usb4b4,6500
> -      - usb4b4,6502
> -      - usb4b4,6503
> -      - usb4b4,6504
> -      - usb4b4,6506
> -      - usb4b4,6507
> -      - usb4b4,6508
> -      - usb4b4,650a
> +    oneOf:
> +      - enum:
> +          - usb4b4,6504
> +          - usb4b4,6506
> +      - items:
> +          - enum:
> +              - usb4b4,6500
> +              - usb4b4,6508
> +          - const: usb4b4,6504
> +      - items:
> +          - enum:
> +              - usb4b4,6502
> +              - usb4b4,6503
> +              - usb4b4,6507
> +              - usb4b4,650a
> +          - const: usb4b4,6506
>=20
>    reg: true
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> index d0d867374b3f..7fac61f95fc6 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> @@ -594,14 +594,14 @@ &usbdrd_dwc3_1 {
>         #size-cells =3D <0>;
>=20
>         hub_2_0: hub@1 {
> -               compatible =3D "usb4b4,6502";
> +               compatible =3D "usb4b4,6502", "usb4b4,6506";
>                 reg =3D <1>;
>                 peer-hub =3D <&hub_3_0>;
>                 reset-gpios =3D <&gpio4 RK_PA3 GPIO_ACTIVE_HIGH>;
>         };
>=20
>         hub_3_0: hub@2 {
> -               compatible =3D "usb4b4,6500";
> +               compatible =3D "usb4b4,6500", "usb4b4,6504";
>                 reg =3D <2>;
>                 peer-hub =3D <&hub_2_0>;
>                 reset-gpios =3D <&gpio4 RK_PA3 GPIO_ACTIVE_HIGH>;
>=20
>=20
> Do you have any suggestions on how I can properly update the schema
> files to avoid the above warnings?

The diffs you have here look okay, not really sure what you're asking
for.

--X2pwzW2tJYBQHmm7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ/ad6wAKCRB4tDGHoIJi
0jrNAP4tzAb9G6tOUw4KN0R7QQ40SNApkGvNQB/Fxx52uf8a9wD+MLdRTeLTe7tm
0ktgPhNJ+lKYFUSGXf/Y8ONOODNY4w4=
=0FDn
-----END PGP SIGNATURE-----

--X2pwzW2tJYBQHmm7--


--===============3164275983138231374==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3164275983138231374==--

