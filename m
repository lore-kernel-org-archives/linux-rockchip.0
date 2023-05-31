Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85F3CC77B7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 May 2023 16:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cfPNM2Ib9S6NFbyK37p9CnOhuA/bzWclYQYPFPoR9zI=; b=GRgYpsSjH0/6tRcc1Cf25oYuv5
	4aXbtgw4hQoR13sJ2m2rzfcxlvgMK9dSgM22vEQt9aB+129X7VHucFPIiJDKEPY/OODuqunJRWMLm
	fHit3t2E5pMPCbrCZ03nafUaZcXq/jq65U5GJBBql0ma6Bcmow2mx+1npXaPtQ7qthv7WRf3NWDht
	X+NPV79ojhQFnxrhDFItclUpv3ERroDA0SRaBk3RvYYUaKIb0jrhEf1j5AxdbddrDbQ33YFPx9/GK
	1Yr53BAD4t+MFIPRSWiXZTGr4Xh8hOdO2cgMIHFBUHHSDtqXQVFdG3Z/T210IO0QJQh2mzPCLw6oO
	ijliZodg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4OhG-000TIu-0t;
	Wed, 31 May 2023 16:29:14 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4OhD-000THf-2M
	for linux-rockchip@lists.infradead.org;
	Wed, 31 May 2023 16:29:13 +0000
Received: from mercury (dyndsl-091-248-214-208.ewe-ip-backbone.de [91.248.214.208])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1439D6606EB5;
	Wed, 31 May 2023 17:29:08 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685550548;
	bh=B4JrijyeBWKHLM41eWs9XN2LOSSnJrBLonXarw4fV5M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BPHE4k3v3a7f1+wyWHqLB85XX+TLjZVnS/H8yuQHM4Z+pybGsrPsmE3sxqoi5tp7v
	 EIRvnYZAer55h4d9oyyHEmugAspc4ZMB82cXGK8rbVb+gQYZth66Fr5zg6ii6dDqW4
	 wyZm1v6zeXJKRFR9jmpNfT9uTMEVYI3U3R4j9zVzEG5U4F8F71PzdUn0xmUzSyW/M0
	 Ry946hPd4c+ScobmXjN+VMP8UC28iT79spyEyTTwFgGVYAONDQoyZ+54F804oSuOgy
	 7vadnOAoQyaXCKOkogGFsS/61C4TvtJV6Xe0h0EqME8qds73qt1FVFYeC4/6FcKml+
	 LnMZqpK5bEPig==
Received: by mercury (Postfix, from userid 1000)
	id B074A10607D5; Wed, 31 May 2023 18:29:05 +0200 (CEST)
Date: Wed, 31 May 2023 18:29:05 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	lucas.tanure@collabora.com, kever.yang@rock-chips.com,
	yifeng.zhao@rock-chips.com, andyshrk@163.com,
	jagan@amarulasolutions.com, heiko@sntech.de, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	broonie@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 1/5] arm64: dts: rockchip: add default pinctrl for
 rk3588 emmc
Message-ID: <20230531162905.rf4sephnrim4a6xg@mercury.elektranox.org>
References: <20230531161220.280744-1-macroalpha82@gmail.com>
 <20230531161220.280744-2-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20230531161220.280744-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_092911_930264_A6ECA353 
X-CRM114-Status: GOOD (  15.24  )
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
Content-Type: multipart/mixed; boundary="===============7401455375900771409=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7401455375900771409==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jezy76cm4esww4g3"
Content-Disposition: inline


--jezy76cm4esww4g3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 31, 2023 at 11:12:16AM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add a default pinctrl definition for the rk3588 emmc.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

> ---
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/=
dts/rockchip/rk3588s.dtsi
> index 657c019d27fa..571cdec24a66 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -1187,6 +1187,9 @@ sdhci: mmc@fe2e0000 {
>  			 <&cru TMCLK_EMMC>;
>  		clock-names =3D "core", "bus", "axi", "block", "timer";
>  		max-frequency =3D <200000000>;
> +		pinctrl-0 =3D <&emmc_rstnout>, <&emmc_bus8>, <&emmc_clk>,
> +			    <&emmc_cmd>, <&emmc_data_strobe>;
> +		pinctrl-names =3D "default";
>  		resets =3D <&cru SRST_C_EMMC>, <&cru SRST_H_EMMC>,
>  			 <&cru SRST_A_EMMC>, <&cru SRST_B_EMMC>,
>  			 <&cru SRST_T_EMMC>;
> --=20
> 2.34.1
>=20

--jezy76cm4esww4g3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmR3dcIACgkQ2O7X88g7
+poFaQ/8DgWbCuM2C/2ClIypRzMvWvUwZ1qdmSezWeHiMuwfYWBSEqiA8XeTx2QD
6NwIHWBo7Bum/AcqvLn/YMJYqIe2THPDbeN/nMqu2i7C/h00zrPwVGn5p5gx2+ea
5R10j4U2J5D0qSX7si0vZcY+kJ9Q9lEoB10bSqMgwqW13n15UlVabU/WcJkLAvDZ
qh13yv35rqO7hrUlLP13GAXCNAQ2cKUFHUHuBhPfy7Va32+BlJFzsWai9IC5YgCI
8C2zOOLocnAGVEGxnKKSxqdsgJqvtu08D2G9GNetvMo60KmLhtFWgDlDUvsgu/Ld
zkFCx8x/tbz7mMiTzYawWAeXl3/bPpZwNSmDu8JmnyAVxOSsmH5yZQy70HmhkDJv
6MIFb/unY6SymrZROjG+pd+x2ykZyyATGmi/ky7FGRgDi4ngB9Yg8sbwrxHHgLHf
H+Yrwp1WXxaYlkCx00/7ej1nRg+s2LSUHn/X69PHi3qUS37M77yOtzskeGuAvg5P
gdzrwvMNr6EqU0rVc0TLWjwzh1tL5NCbauI+Tu1QqJauXZFX6iyOk2i34DeulWdp
MflZXBDatjxEjW/EuRihr9CphNvOSy72lOP56aVRkiNwnBgkdw6PVd2HXStT6Tlg
IBsbRVh7tO+EGUxQpuJ21JEGZjzOoIMVnrbCrMwjBWP5wjg6A50=
=8DIv
-----END PGP SIGNATURE-----

--jezy76cm4esww4g3--


--===============7401455375900771409==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7401455375900771409==--

