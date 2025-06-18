Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7640C71157
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jun 2025 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:Subject:Cc:To:From:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LF6tEhZXev+Tcv303HA+GmkMnP+ose0j5Z6U+IcgJQM=; b=iiuO/grcUdX8dD6G2OcUU7OIyG
	uEDlpx7Rvac0okAgRyuwQS4vkVC9l4a4QxzKFjVMn7UkZIjZPjAtuN+5hUsKomzdhot7sqqfXJM0C
	RRjVho5TolH4K2OTinXpV7ONgU+DsMXatC4uZo+BGfjwMY2+Wplm9VO1l+BfXTA2YH9Uc5lufUaLM
	OHRmDYmaws0QrCnKEZFAJj9twnePR5A6o2cl7cq4HRvHgR9+i20XuynanBdwSWRbVq1iemT5adOwX
	g0e+G7vomW3HW0iIrT0yA/pjAxcnGyLYvskYHFcG8tLjdRl5jPVG7pC/jJmWwPc8n7V2xTj3zmJvo
	MU1gT5RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRupm-0000000AcAg-1a0J;
	Wed, 18 Jun 2025 15:36:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRtBy-0000000AMHO-3qom
	for linux-rockchip@bombadil.infradead.org;
	Wed, 18 Jun 2025 13:51:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:References:Subject:Cc:To:
	From:Message-Id:Date:Content-Type:Mime-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=wyRqvCiBUNreiVdu1C2ibSdtvPeHazL8eEH7UAzR7EU=; b=bxQTErCmskxfPnKo64gAcv9nSq
	t/Gu9fi9mI4qCCOkI4o+CpyZ8l84+h9F/hbOdTAM5+Br5VY3vfmcsAFBOlaBmF+4qW7jPo8AeXP8I
	hIlujJ1sYaZevK9IjkA+Qg9aq9vNXyBdJuqp4DUQQsA+6HHO/2HtokTDDHeCvJCgNTo5UvrA99PCu
	jZSMkQnPQ+E/rOAT/ASQ+gGB12G580RvMM3coQXNaAYzGR0rW9oiGtSNbJ+WWtOg4PQTS/SJMx7N6
	MaMtMEEC3h3gNkCUgP02i3spTR0q0+F3gWHkUbfXQ2aIHGHDJqEpABG9iJl8VKd7sFzW27/qeWxgL
	NynS+Ezg==;
Received: from out-180.mta1.migadu.com ([95.215.58.180])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRtBv-000000044SK-30ko
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Jun 2025 13:51:06 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1750254652;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=wyRqvCiBUNreiVdu1C2ibSdtvPeHazL8eEH7UAzR7EU=;
	b=PO8Pt/BtUik48+dNlnsyUpVPXJGAil3xpxAmvB3wa5plkjFiDY9SvLfpotgUxNiUpXi2Pn
	RHIceBY5WeG1CUgwC/ijnwS51ENTQqWsKBw0do/zDCK38mBHiBBM9HhYwKzKkRN61QQa0o
	/TXiW4L/qAhWOCdhCJalWaRPpApsfXSELtS/plOMwpSPPpS0YaQXV36Ecgu1WX40K0/4EQ
	uZrAid+s6JWpYmA4Q2PU8FPGATnipXAxOduV7UmOeWbtacFwARWb536WA8Qo9aAW17IPRd
	V0C8tzAic03D549Gox5ZGJ5poa6kbB89SGILMDoSYSVoYMqLl6p6ic2UTP2y/g==
Date: Wed, 18 Jun 2025 15:50:39 +0200
Message-Id: <DAPPHL6RPWWM.94C7P26AUCCN@cknow.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Olivier Benjamin" <olivier.benjamin@bootlin.com>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
Cc: "Thomas Petazzoni" <thomas.petazzoni@bootlin.com>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Fix the mipi port definition
 for RK3399
References: <20250618-dtb_fixes-v1-0-e54797ad2eba@bootlin.com>
 <20250618-dtb_fixes-v1-2-e54797ad2eba@bootlin.com>
In-Reply-To: <20250618-dtb_fixes-v1-2-e54797ad2eba@bootlin.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_145104_765758_1C56B19D 
X-CRM114-Status: GOOD (  17.59  )
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
Content-Type: multipart/mixed; boundary="===============2623545169613849178=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============2623545169613849178==
Content-Type: multipart/signed;
 boundary=bf878dc077ebb1f1135359669f74c117a74de9e39e80d44933d5744a26aa;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--bf878dc077ebb1f1135359669f74c117a74de9e39e80d44933d5744a26aa
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi (again),

On Wed Jun 18, 2025 at 12:32 AM CEST, Olivier Benjamin wrote:
> The RK3399's MIPI DSI has 2 ports: in an out. The definition of
> the port property necessitates the value of #address-cells to be 1.
>
> Signed-off-by: Olivier Benjamin <olivier.benjamin@bootlin.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch=
/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> index 5ebc380a24df86ba7172b0950b89cac56b61c507..5a7341fb6bcb0613af6f3ac31=
d99355a0f890e89 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> @@ -468,7 +468,7 @@ &mipi_dsi {
> =20
>  	ports {
>  		mipi_out: port@1 {
> -			#address-cells =3D <0>;
> +			#address-cells =3D <1>;
>  			#size-cells =3D <0>;
>  			reg =3D <1>;
> =20

In rk3399-base.dtsi there is already a definition for mipi-in and
mipi-out. AFAICT what this change does is require a reg property on the
endpoint and I don't think that's correct.

It seems to me that all you need is a mipi_out_panel definition.
So what I came up with is this:

```sh
$ git diff
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/a=
rm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 04ba4c4565d0..b175aeed99e2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -466,18 +466,6 @@ &mipi_dsi {
 	status =3D "okay";
 	clock-master;

-	ports {
-		mipi_out: port@1 {
-			#address-cells =3D <0>;
-			#size-cells =3D <0>;
-			reg =3D <1>;
-
-			mipi_out_panel: endpoint {
-				remote-endpoint =3D <&mipi_in_panel>;
-			};
-		};
-	};
-
 	panel@0 {
 		compatible =3D "hannstar,hsd060bhw4";
 		reg =3D <0>;
@@ -495,6 +483,12 @@ mipi_in_panel: endpoint {
 	};
 };

+&mipi_out {
+	mipi_out_panel: endpoint {
+		remote-endpoint =3D <&mipi_in_panel>;
+	};
+};
+
 &pmu_io_domains {
 	pmu1830-supply =3D <&vcc_1v8>;
 	status =3D "okay";
```

I don't have a PPP so I can't verify it, but ``make CHECK_DTBS=3Dy W=3D1
rockchip/rk3399-pinephone-pro.dtb`` no longer reports issues wrt
dsi@ff960000 (after I also fixed the panel compatible like in patch 1
and added a LCD1_RST pinctrl definition as indicated in my reply to
patch 3).

Cheers,
  Diederik

--bf878dc077ebb1f1135359669f74c117a74de9e39e80d44933d5744a26aa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaFLENQAKCRDXblvOeH7b
bv7jAP92BoaEAnzcznQlnluIJ5X4iWpd/HlBmdpadX6RnGY14wEAjkopAG+tNdwu
6H5yPB7qZUbPv1znf4zQjUKT3EQO3AM=
=DH21
-----END PGP SIGNATURE-----

--bf878dc077ebb1f1135359669f74c117a74de9e39e80d44933d5744a26aa--


--===============2623545169613849178==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2623545169613849178==--

