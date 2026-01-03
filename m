Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B64F0FC617E
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Jan 2026 14:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N39HO5td806hNwnFOvjdE77WMn4VHxzonIlCcRrf9xM=; b=jGRqk5pSYz1DwsprOJ0YAiaIVp
	jgL09HI66JuLcsi731RhtWs6qqSsdFcUiJOm7CI7pbHqUh4lG2Ji2W4KywK0c98iiOPY1gjP0PXwi
	VBMVK/KyvqI+9A09F3FqNsaMFP5uFwYtzFvb5enmeV+eMPsKQ5Iaz1W6eV3oOlJFkFBCMUSrNBqOt
	/lXg0+yWaRGZtVND2oNbJq02yctWK/kLN/S6EMkqQXuqw+l6TNSmv7NWQ9ln8utF7SphXD2Oj2gNi
	iXwWkNf88Fz9T8QaCkZFV02CK/ju150l49/5/NB629jb6UZwbLuvrw/PIXEDfR3XAhvIjY+xpB7WB
	+SoCRSSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vc2Ft-00000009OfS-14oc;
	Sat, 03 Jan 2026 14:05:21 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vc2Fb-00000009Oeb-3rpZ;
	Sat, 03 Jan 2026 14:05:19 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1767449095; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=YRa4h1EQKHxjfU+6npG5r/xqTnNpN/jB8rwYJCF4nuXy/jqrnz48j+gkSIT3TXr62gF2IzoI8DRp9RzVZt5Ic5Qv5MHQ3xjd8nrM6JoF/V4CuGzntnfX9fPpbP2dqIpAtPBw5Dgq3yWkEVvCkG6XCc1UkEulfnZ7KBh8+NqtkYc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1767449095; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=sclPIbTuFBUw6SwfyH8YCc5Ug5qVUgcMP6TFoeELZHA=; 
	b=KaEoR/UEk1mtY1aH711qYegTdXg4jVe51X8YBcwTHbogmd0M+GnHPwBOJKhRLIILQZJSTRA3SidEA4RwI0XbtDTAPbLSPx912pVBLGL4Fs1bB8upJSI0mpR/KyrcqoNuBcIX72eRuDxR0y9S6YKDURMc+VWGsuxz9c+ZSbSygXI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1767449095;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=sclPIbTuFBUw6SwfyH8YCc5Ug5qVUgcMP6TFoeELZHA=;
	b=ERkT8XduG5w+z9adyLzBkItLI3DKSMCSysdnGKEWlinvM453YMBXZamMDpjrKbOX
	aIksk9GW6cID8EQ2YURl6NI2nRtWrLZx5QBaiXu2AwDRGuVk6mcujM0n5L4/QIn3QAS
	c+XXiWDvJAEjmwWnj46ixxSmHAHVfzWM7towiuoE=
Received: by mx.zohomail.com with SMTPS id 1767449092519959.3621110978988;
	Sat, 3 Jan 2026 06:04:52 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id 4BEF418054C; Sat, 03 Jan 2026 15:04:47 +0100 (CET)
Date: Sat, 3 Jan 2026 15:04:47 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH v1 2/3] arm64: dts: rockchip: rk3588-rock-5b-5bp-5t: Fix
 USB host phy-supply on Rock 5b-5bp-5t SbC
Message-ID: <aVkfNBUDUumzV0-X@venus>
References: <20260103083232.9510-1-linux.amoon@gmail.com>
 <20260103083232.9510-3-linux.amoon@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260103083232.9510-3-linux.amoon@gmail.com>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.4.3/267.430.24
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260103_060518_569327_7BB2C0CD 
X-CRM114-Status: GOOD (  18.99  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, Heiko Stuebner <heiko@sntech.de>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "open list:USB TYPEC CLASS" <linux-usb@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, FUKAUMI Naoki <naoki@radxa.com>, Yongbo Zhang <giraffesnn123@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, "moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2891564994662359023=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2891564994662359023==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kv5ni5kly6ecqwne"
Content-Disposition: inline


--kv5ni5kly6ecqwne
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v1 2/3] arm64: dts: rockchip: rk3588-rock-5b-5bp-5t: Fix
 USB host phy-supply on Rock 5b-5bp-5t SbC
MIME-Version: 1.0

Hi,

On Sat, Jan 03, 2026 at 02:01:18PM +0530, Anand Moon wrote:
> The USB host USB2 and USB3 on the Rock 5B, 5BP, and 5T is powered by the
> USB_HOST_PWREN_H gpio pin which is used to enable vcc5v0_host host
> regulator which ensures proper power sequencing and management for onboard
> Double-USB-HOST.
>=20
> Update the u2phy2_host node to reference the correct phy-supply.
>=20
> Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---

u2phy2_host is connected to an onboard USB hub chip, which is
powered by &vcc5v0_sys as the comment says.

You can see this on page 9 of the v1.45 ROCK 5B schematics (page
name USB2HUB). The usb hub chip uses VCC5V0_SYS + VCC_3V3_S0 and is
connected to USB20_HOST0_DP, USB20_HOST0_DM. The related USB
controller for that in the upstream DT is &usb_host0_ehci, which
in turn is using &u2phy2_host. Thus at least for the ROCK 5B the
existing DT is correct. Properly describing the downstream port
VBUS regulator would require something like the following series:

https://lore.kernel.org/all/20250911-v6-16-topic-usb-onboard-dev-v4-0-1af28=
8125d74@pengutronix.de/

Greetings,

-- Sebastian

>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/ar=
ch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
> index 0cd8ac7bf538..886d788572fc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
> @@ -981,8 +981,7 @@ &u2phy2 {
>  };
> =20
>  &u2phy2_host {
> -	/* connected to USB hub, which is powered by vcc5v0_sys */
> -	phy-supply =3D <&vcc5v0_sys>;
> +	phy-supply =3D <&vcc5v0_host>;
>  	status =3D "okay";
>  };
> =20
> --=20
> 2.50.1
>=20

--kv5ni5kly6ecqwne
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmlZIfsACgkQ2O7X88g7
+ppfnBAAlkhFx+COcza3lA5ddFOvmfszMCpFeKSBHkXDGlL5a12sMSXTlQqO0S0A
LR2IHlvQWQy+k0gRuh12FByzc+UmFcfw9BF27Hyk6sSZLfiivT1bD6P7/99+4qwJ
NO7O8GrJDH4FRacbTQy1qi4Yv/S1R4juSsdHUHL5Zi/Y+Yc6YjW5c+d0shZ661kd
kEfw1KuNGdeG4DDrgGqKgUTd+Cy82VicsBw8gqoG/Ur1I65HLFZtJSVLjN4oK3HM
pE9fixoWUR0GPsmDEEFjy5jnWs9hc+bW8Zb80QbUFPBLRe+0P8rcm9M/zOVzibX4
A2MRLqOmq8JEwPIaxjL3KI1xerbMGjeK+V6qBKJxRv6TTDMGNh+IbbDoq1N5APJv
1xaTUPXZxYnu3HasyGpjytPzYeP3W5T0T1OWgQ28TruwPqHtvMM61xxLMjM3Wpa9
3EibGeXO2VzPJBPq6z2SxguIY3uPG7hTznTMMAq9yantUdhCBkevDncyXJjja/Wd
gYzkXhCokKk2JzlvExvkjzkhQSrFuFaiDF1vHkxykGnWjdxuBUkMDcCNYieMuUHx
cFwHljZUeM7wImpi/4kYaSAiEN+IArTtWDusptTaCOC0nMYd6tjn7YV12jFDaRZM
h2o1H0TPQ9cXOMv5of6qEpichDrcuU9fN8D+0cR7PW17yfDzvr0=
=j8HA
-----END PGP SIGNATURE-----

--kv5ni5kly6ecqwne--


--===============2891564994662359023==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2891564994662359023==--

