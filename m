Return-Path: <SRS0=z8Nv=M7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956F9C4338F
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Aug 2021 23:49:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 23F7460F0F
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Aug 2021 23:49:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 23F7460F0F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+CnTAcmHqvcX4islMjtB3OE8yj0bYjb84KfKrdjsiZg=; b=FxqDH28zdBFOrW3wYBpeb5daFF
	ZC+noxbzcdIQXZn3wJzPXnicryq+WbOfb/lVUIzCHGI2C/G5f+LXjZGymWvqhoA6ratpRUu7S58CK
	leKsM+V72GigWB2Tj/51ut8ISqLUseRF0hTpF9+47WVVDjxNQxDN5zkwwQWZyWWO0cZ2FB7z3PPmQ
	LCSdZl0mJyQ/XI1quZ3xNVwDM6DHrrIAwLFJXqvofLd8xakV2renYWfeewy+Ib/rraIKZmz4rj7OT
	oeEOGqunRsxaxUJRdk68D6YjsStuu/zQzAseX9MQNnyhm67Q1ilaxHRfIglzgwz7eBgMhX8l8ZtYg
	kAjnWqUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mCsY2-00GiqH-NL; Sun, 08 Aug 2021 23:49:42 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mCsXo-00Gine-Rg; Sun, 08 Aug 2021 23:49:30 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id A50451F422A7
Received: by earth.universe (Postfix, from userid 1000)
 id 7D3F93C0C99; Mon,  9 Aug 2021 01:49:25 +0200 (CEST)
Date: Mon, 9 Aug 2021 01:49:25 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, maccraft123mc@gmail.com,
 heiko@sntech.de, robh+dt@kernel.org, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [RFC v2 1/4] dt-bindings: Add Rockchip rk817 battery charger
 support
Message-ID: <20210808234925.rgd77x4nheom2bx3@earth.universe>
References: <20210726190130.1973-1-macroalpha82@gmail.com>
 <20210726190130.1973-2-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210726190130.1973-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210808_164929_197093_1C0982C4 
X-CRM114-Status: GOOD (  25.52  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1108959812473746362=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1108959812473746362==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pntqqh5scteorx5d"
Content-Disposition: inline


--pntqqh5scteorx5d
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 26, 2021 at 02:01:27PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Create dt-binding documentation to document rk817 battery and charger
> usage. New device-tree properties have been added.
>=20
> - rockchip,resistor-sense: The value in microohms of the sample
>                            resistor.
> - rockchip,sleep-enter-current: The value in microamps of the sleep
>                                 enter current.
> - rockchip,sleep-filter-current: The value in microamps of the sleep
>                                  filter current.

please use common property units:

https://github.com/devicetree-org/dt-schema/blob/master/schemas/property-un=
its.yaml

-- Sebastian

> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  .../devicetree/bindings/mfd/rk808.txt         | 35 +++++++++++++++++--
>  1 file changed, 33 insertions(+), 2 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/mfd/rk808.txt b/Documentat=
ion/devicetree/bindings/mfd/rk808.txt
> index 23a17a6663ec..fa42b6253d26 100644
> --- a/Documentation/devicetree/bindings/mfd/rk808.txt
> +++ b/Documentation/devicetree/bindings/mfd/rk808.txt
> @@ -70,13 +70,37 @@ Optional RK817 properties:
> =20
>  - vcc8-supply:  The input supply for BOOST
>  - vcc9-supply:  The input supply for OTG_SWITCH
> +
>  - codec:	The child node for the codec to hold additional properties.
>  		If no additional properties are required for the codec, this
>  		node can be omitted.
> -
> -- rockchip,mic-in-differential: Telling if the microphone uses different=
ial
> +- rockchip,mic-in-differential:	Telling if the microphone uses different=
ial
>  				mode. Should be under the codec child node.
> =20
> +- battery:	The child node for the charger to hold additional properties.
> +		If a battery is not in use, this node can be omitted. If a
> +		battery node is used, the following values are required:
> +		rockchip,resistor-sense, rockchip,sleep-enter-current,
> +		rockchip,sleep-filter-current, and a phandle to a
> +		monitored-battery node that contains a valid value for
> +		charge-full-design-microamp-hours,
> +		charge-term-current-microamp,
> +		constant-charge-current-max-microamp,
> +		constant-charge-voltage-max-microvolt,
> +		voltage-max-design-microvolt, voltage-min-design-microvolt,
> +		and a valid ocv-capacity table.
> +- rockchip,resistor-sense: Value in microohms of the battery sense resis=
tor.
> +			   The PMIC only supports values of either 10000 or
> +			   20000. This value is used by the driver to set
> +			   the correct divisor value to translate ADC readings
> +			   into the proper units of measure.
> +- rockchip,sleep-enter-current: Value in microamps of the sleep enter cu=
rrent
> +				for the charger. Value is used by the driver
> +				to calibrate the relax threshold.
> +- rockchip,sleep-filter-current: Value in microamps of the sleep filter =
current
> +				 for the charger. Value is used by the driver
> +				 to derive the sleep sample current.
> +
>  Optional RK818 properties:
>  - vcc1-supply:  The input supply for DCDC_REG1
>  - vcc2-supply:  The input supply for DCDC_REG2
> @@ -459,6 +483,13 @@ Example:
>  			};
>  		};
> =20
> +		rk817_battery: battery {
> +			monitored-battery =3D <&battery_cell>;
> +			rockchip,resistor-sense =3D <10000>;
> +			rockchip,sleep-enter-current =3D <300000>;
> +			rockchip,sleep-filter-current =3D <100000>;
> +		};
> +
>  		rk817_codec: codec {
>  			rockchip,mic-in-differential;
>  		};
> --=20
> 2.25.1
>=20

--pntqqh5scteorx5d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmEQbYUACgkQ2O7X88g7
+pp23A/+LfEKSuvv0Gu++WqrdOYO5aozobC75hO29l/vAooU8hXId98PEDnNiDIi
kv9WyULSLJxqbDaY6GGyQ8XpVeQbUoE4leuM0kqLpDsa2SK6zLOxQBkIUMXTZd6g
KGaYYcjmSaBkEDUPLZdjtbP4I+CCOhbbHw7swUrfeqddJu5xiTxn6dgWAdNDAUR0
XU7PmnUzOaYfHOHPKlhj495dvfX3JPTryLB/jdhCybyTzS2opehTFw+DfQMrHcVH
Gnt4Cr6cWp0t2w7OcuNUnAvirg1Ct8OnCSt6SgNif0c+/VFQH7/+eGq2dVWuzv0w
VrGcywG15Y45cbwHGq8XJRcfK0SVUjr3uPZhNVzXQ73hwbf6aGy3w2ELmFLxl6oA
T7Ja3gIsY90yY0ugundwMF5SudJ7I/QXWPIBxTzYPCQAP9+OqevSeMVNlC6Wd5sK
p4FrsR5jxHMcPArqIEBjC2ZvSJWqQ+wmfZYxsN94RE18OdAvLEquPG5X8E6YOopA
nYlNQ1qHXktlCFeDH3nZVly6OLwhrAF1fs9O8LdSZQ+m+tomlcZsnMXRD9QOQ4qq
MhPm4zCt0j0dKe6G3+3pHBcbeWdPumP6s5c90vjNoUwpgairkdM/wGRgwUpTN85+
ue0hWagMf9KX7semQ7Pb921i5a49Xwsj3Cdmoy4m+CczBdVIfpk=
=XGiK
-----END PGP SIGNATURE-----

--pntqqh5scteorx5d--


--===============1108959812473746362==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1108959812473746362==--

