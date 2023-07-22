Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6AD0EB64DA
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jul 2023 11:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LpYPXSi+cIgCap1VS0OfmQasUqlFoka2wDdGg1EvoxU=; b=M56z985Z6ESIy79CjloMcKbiJP
	cK41Vwc0L8UoGB0Vy3xf79SPhX+FnEBBH3OEk0v66PSifS2/pG4TUmk1KFOvFtbPVMu7Wc+rJpM4d
	wsPBaF3G8b4hYJUviUmubuaPoDu0FFdDjTcuagVOgaLI6ftmWk/Y2f+cM3Y9npA6To1hoin1e5Knb
	30PBeCGUt9rWndvj76AJAi6Mv7B/n6FN95aJ9KzW13oqkgDMzo+JOtDpXLoY+zPUQkyhWyIYDNtqw
	VqGagJ5Ub+RW71rmqDV5XYrEtIxUDztndgOF470DVYl+dPbbPQaFWjNdIhQ/m3FfMwl2c4KQfeImL
	utrxq7bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNAdj-00GZPi-0P;
	Sat, 22 Jul 2023 11:19:11 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNAdf-00GZOt-31
	for linux-rockchip@lists.infradead.org;
	Sat, 22 Jul 2023 11:19:09 +0000
Received: from mercury (dyndsl-091-248-215-103.ewe-ip-backbone.de [91.248.215.103])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 081D96606FCE;
	Sat, 22 Jul 2023 12:19:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1690024744;
	bh=IqlLAm0th2VNzib4bxcKsgAJD78NTh4xvMowHr4aSFM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bkibUCfZjp99HiDXoRobNACRBVHnel3SdmFudUMRxAQOo58nCsUYHkqt7tIX6lwAj
	 kzY4Jsvw9l3cCSPMECsXGW9BcJWSZZyz502bZiMDRMAjmIyF3Vt15Kg8Snvzb5Uk1K
	 XIC4PoEL+UDQsAfxiQnm525oI7eLZ+FXCwsXcsSWKrfOGKu8eYRrR+4ofxc7g1jidg
	 5nOO+FW8SwTJsa7nzafZyNIa6f8aMI4HDAsD40taHsQTjRSoctPONaGSwuST0BgCB1
	 d/nhRSQiCd1+QYijC+gDFRpWMnfC5kLGpos4U4z1K5+oc2JkW/3+ia5K64ZEOCU2n7
	 fbWpTdSQKRkKQ==
Received: by mercury (Postfix, from userid 1000)
	id C543E1067516; Sat, 22 Jul 2023 13:19:01 +0200 (CEST)
Date: Sat, 22 Jul 2023 13:19:01 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, lucas.tanure@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: rock-5a, rock-5b: fix/update sdmmc
 properties
Message-ID: <20230722111901.ivpnzgucbrw5pwg2@mercury.elektranox.org>
References: <20230722065129.3039-1-naoki@radxa.com>
MIME-Version: 1.0
In-Reply-To: <20230722065129.3039-1-naoki@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230722_041908_191940_158B5112 
X-CRM114-Status: GOOD (  15.15  )
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
Content-Type: multipart/mixed; boundary="===============2224372237267450200=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2224372237267450200==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gqjkicpasfoaudje"
Content-Disposition: inline


--gqjkicpasfoaudje
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Jul 22, 2023 at 03:51:29PM +0900, FUKAUMI Naoki wrote:
> add alias for sdmmc as mmc1.
> make card detect work.
> define pinctrl.
>=20
> Fixes: ea3e66e7ad0d ("arm64: dts: rockchip: add SD card support to rock-5=
a")
> Fixes: 2a6d4af5f157 ("arm64: dts: rockchip: Add SD card support to rock-5=
b")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts  | 4 ++++
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 4 ++++
>  2 files changed, 8 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64=
/boot/dts/rockchip/rk3588-rock-5b.dts
> index fae91522c6fc..da8f43c9b255 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -11,6 +11,7 @@ / {
> =20
>  	aliases {
>  		mmc0 =3D &sdhci;
> +		mmc1 =3D &sdmmc;
>  		serial2 =3D &uart2;
>  	};
> =20
> @@ -229,7 +230,10 @@ &sdmmc {
>  	bus-width =3D <4>;
>  	cap-mmc-highspeed;
>  	cap-sd-highspeed;
> +	cd-gpios =3D <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>  	disable-wp;
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det>;

pinctrl is identical to the one defined in rk3588s.dtsi and can be
dropped.

>  	sd-uhs-sdr104;
>  	vmmc-supply =3D <&vcc_3v3_s3>;
>  	vqmmc-supply =3D <&vccio_sd_s0>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm6=
4/boot/dts/rockchip/rk3588s-rock-5a.dts
> index a6dff117b459..05628299e331 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> @@ -13,6 +13,7 @@ / {
> =20
>  	aliases {
>  		mmc0 =3D &sdhci;
> +		mmc1 =3D &sdmmc;
>  		serial2 =3D &uart2;
>  	};
> =20
> @@ -319,10 +320,13 @@ &sdmmc {
>  	bus-width =3D <4>;
>  	cap-mmc-highspeed;
>  	cap-sd-highspeed;
> +	cd-gpios =3D <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>  	disable-wp;
>  	max-frequency =3D <150000000>;
>  	no-sdio;
>  	no-mmc;
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det>;

same here.

>  	sd-uhs-sdr104;
>  	vmmc-supply =3D <&vcc_3v3_s0>;
>  	vqmmc-supply =3D <&vccio_sd_s0>;

-- Sebastian

--gqjkicpasfoaudje
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmS7ux8ACgkQ2O7X88g7
+pqHJg/+Kh01WFMvwiR8Vhw1djDinzWXRQ3kBnQnKJPwnXUxh4cHzwUYTWNFtW2+
AVO2J+wX9JtpL5FroewZH/ew/2cdUPINuF070h9NLe11Qmzmd1ULGq+ZaTz4n0a9
lkorSplYgCbE6ybaxvgsxWBDGmr6NzwguZESvGPGn7sfZ7nE/22XZhHtspGlW3jp
Lkh8C8RnH9CIX+rt8HQ68hnvmda7f9jdOdZWHgDVO55BrQsnVBzkPs8ejsWJAzQM
f44n5+6azUTNjni3xTJTtAqHhcQW51D5oxDLwgH8sjr1tustf+3VvpyiUxs/v1vG
tS6amPqiTIi4Iqd8BCW+lGMCQvLkC8FFS1lxDLesihboZCFVhP7anETrRzTI8SVN
/ygZdrPmE2ubV5fbkYMbG0KRBlIIMLidWdLy39xli59bq8Mtmmq2NjYjKgXlzc+l
BUVwAktYHGW2W+nf6pbilo4Ev1UgbiZZnL0n14W8LWpTwY02eg6C/MhFkGatgpXH
5I3X2vV+4fRkmLN7LZtmvI0SEfvcoobqnNei4kTPhBuXj7KXs5PqcvIAsN/cwqix
Gu+hN7Mn1ITTNgYpsUBnJFHSGoaHUQbSf+Y8jZhz5ZlmBn8ai6qFlLUxwocfz26m
3QVSQftI2jO9iDqWnvD4NbcQ+dXqLAlDCFHwEZw2zDZ/rmBY2UQ=
=ChAb
-----END PGP SIGNATURE-----

--gqjkicpasfoaudje--


--===============2224372237267450200==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2224372237267450200==--

