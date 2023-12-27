Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D181C46CD4
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Dec 2023 22:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4DBtFPaKBnTeAfbGv4rh50w+tmBbadarTpIJlzKYSEc=; b=mnFs3OVbcvqQYNRvfErllC+egw
	IJVqXlphzTkQ+1iJP0vc/7qs+6VBvt84hn0+cwAeH8qph3zcuejh1mJ5mY2Ty2sra8RT+NywwIhqc
	CO8/X31FLzj7KVuUxt50W33xa9F4towr6OmFGXfZFsKvZZlFPBhqM/fPJhXj3a2v56OtGM994CLdp
	bKC6AMP8jxM1eY0gJeM/Kh+8loaO0HmvhBXoEdWrkcNvlweOxTiY7SO7GPSzhIknvB91e4FFLvOFe
	JG8K6Njl4h4ZQ3Z/o9nVoGjpLSA7jUPRi4nqwdojDt8HEPg2CQRoxjBmgfPGw8JZNfZZCy3x0APST
	y3EnTBKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIcOu-00Fbfa-1b;
	Wed, 27 Dec 2023 22:29:20 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIcOh-00FbbO-1i;
	Wed, 27 Dec 2023 22:29:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1703715541;
	bh=lVrc7pxkQHkTuollDpRgSMgm5cYN81tWN40U/e2kEUs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tqcXeBIQEcV3CNcZJ16qIstgq1OEJm881nbEZVThQzd9IBww5OuWVAof3T2xqS1hp
	 tB+EG2z+6ImNyrwIr8YUuBL0xDYrd+FbFwenLHY7uKsQOlqY5oVCUUIWDiBgndGrvf
	 Vrh2CCa1a3Vj4i9VNu4HkefX6rGg2N45Vs1m/CF/4cTZ+xNxRVo7MVoy+FaiAi8dSx
	 tTAaHKKmDqJayfeGlqpNRM3iuNIUZizxRNcki5vNHupAgQf7OQXKaGNmkj7t/uOJUA
	 lM5n74o63FkLtqZvpLS2WstF+QtK6c4tnKNj4nMIJ81vROjzjmto4xQLpLQU/4GfSM
	 VuvYrA4aOFHCw==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 2BEC43780624;
	Wed, 27 Dec 2023 22:19:01 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id CA6A4106CE00; Wed, 27 Dec 2023 01:16:01 +0100 (CET)
Date: Wed, 27 Dec 2023 01:16:01 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: John Clark <inindev@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	Thomas McKahan <tmckahan@singleboardsolutions.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] arm64: dts: rockchip: support poweroff on the
 rock-5b
Message-ID: <pqvmguq77qbxmuxsushrz4ykxtmvkugirbxnckmbfk47gx2u5n@cz2kllnjr6ba>
References: <20231225222859.17153-1-inindev@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20231225222859.17153-1-inindev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231227_142907_699478_B0ADD387 
X-CRM114-Status: GOOD (  19.02  )
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
Content-Type: multipart/mixed; boundary="===============2040692855235155970=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2040692855235155970==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kvxm4plewcxgwfam"
Content-Disposition: inline


--kvxm4plewcxgwfam
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Dec 25, 2023 at 10:28:19PM +0000, John Clark wrote:
> Allow the rock-5b to poweroff its pmic. When issuing a "shutdown -h now"
> on the rock-5b it reboots instead. Defining 'system-power-controller'
> allows the rk806 to power down.
>=20
> Commit c699fbfdfd54 ("arm64: dts: rockchip: Support poweroff on
> NanoPC-T6") similarly resolves this issue for the nanopc-t6.
>=20
> Signed-off-by: John Clark <inindev@gmail.com>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

> Changes since v1:
>  - added commit message with additional patch detail
>  - expressed the related commit using checkpatch
>=20
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64=
/boot/dts/rockchip/rk3588-rock-5b.dts
> index 74719aaf697c..dc7b88f29172 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -426,6 +426,8 @@ pmic@0 {
>  		pinctrl-0 =3D <&pmic_pins>, <&rk806_dvs1_null>,
>  			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
> =20
> +		system-power-controller;
> +
>  		vcc1-supply =3D <&vcc5v0_sys>;
>  		vcc2-supply =3D <&vcc5v0_sys>;
>  		vcc3-supply =3D <&vcc5v0_sys>;
> --=20
> 2.43.0
>=20
>=20

--kvxm4plewcxgwfam
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmWLbL0ACgkQ2O7X88g7
+ppLdRAAh2XPhGTc/H7YdLn4Qr1Z2zdInwHqPU48aPogwAwNH0X4GOjp+e05nCPG
umdF7rRq+ZQvwp5wADlZ76cGpJ1PhxyiXGXjv00EvflDBb0S/edJjvrhxj4MFJMl
e5UJH8pQNLaJlCk2wpz0nSEO7MiCM5xnukb8aUAuXJhunjqrFEXT4b8I88kmWlW5
YmcvT40usLIv7s9tyYyy0l9KE/BdPBQ/ANDhKfJaulN2s3+UdfIco8cgUuR2UaUX
Ry3cqQUm7jLi3iDVAwUTS8lCv+3gI//D890PEh4KDd5XCsU5q5Y0XYi/WcXWNmJQ
hgbfyWSgAXToOc1AKFj2STX+hgESqLMigV1MbZOeDBVUajJ9U9d9I0ewMlGxjNwB
reCEvU60sH6LrO37Lxmzwt+w1G8oD1NA6LWPglhh3CAPGnOXW0Fq53TIs9DdZ0x6
vVRXWTevFPYwXTUehJD1PzLmJ0vUEwHXBtErcOcfllAieRetQMr9A5RwDNao6nST
j3kxWh3ExyXX48sAOU3b0AhF+lbqojesaxtXweXj6Nn9hPz6qvDyqWHn9nd9bL2e
E4rW7i91zVuovFC1ExDsLkypFMm7Wxxkte82NgbWAMGXC0eosSs+246wQWMlNniZ
7nyYUW/tin2mfYvugbyYzgpsbI4nW8gtoE3JgMuM0gEQzQr+jjU=
=+bGO
-----END PGP SIGNATURE-----

--kvxm4plewcxgwfam--


--===============2040692855235155970==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2040692855235155970==--

