Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98F39C54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 21:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w8INEFigRaR+cTbZ5wEw9ZhMJBydqKq4iiKFTZcdFbU=; b=XAL9bxt4gp4Lju1bhMuDqwoa7b
	4Vl4iwxQc27NM1FIJaLCfDS/6nKEyaD/O/xnMZFnbQONsdk0mQ+egv0Y1NrZ5/fX/bCu6u1fOEsOB
	sX4+wOVlFQNjrxdePxDSg3fWyZFJZ7kVWOL/3fb57Pgki6JsLAaL/SgFF7/3rS+PaDfsdQJtlc84x
	5pti+4Nzr+4IEpuKfJ+3PIpnJ1PsqJovRx4PrkZ2iO14wVz+GZb5Y74fL8zorIMqDRfZaj9DTsBq8
	R3R/ni41WeQVOsgfvWEtAtDiQXIq3S70op2tx7PlxKHF3Et19H1MCOfBoyoDKKEg/s3p82F6m9BEs
	XcqW+epA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf5BX-00000006wM9-1qD8;
	Tue, 27 Feb 2024 21:40:23 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf5BT-00000006wL2-3O7V;
	Tue, 27 Feb 2024 21:40:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1709070009;
	bh=tNDUIvOq6BAUo+1Fnc/47jT95I/fjfMb6fNIGDdHixw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MBNqgmJ3vTCayyccmsP4kU34XbRWodQwtQrIqNZ9M/xh3/+5RukYsGaMpH0/278Jk
	 j2jEfU0YWSwbJ+wLmYR6O6rr80BbLyPGPi4pwfh5uk6O3hPuaNTuFEKX6OkNgDo4pT
	 qm8Vr/rWb4EqMW72h0kbKM/z+LI+U/vIO/CxRXGVehu0iySxktIYRQQWhoNIXYQv/V
	 AfGb2sc0lLkPrwS9ukUS9UlS1UO9vD+ohjRKnhVGk1q6oMWgIgVevoQiFv+7OdMgjV
	 y6AXAoDCP4e6GYaHned1Gs4VW4WtPc+uCc/TiIncARJuPWoaCtW/4/GUhMLgFCTtxz
	 8fOZKHzjVVgbg==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 1751A3782051;
	Tue, 27 Feb 2024 21:40:09 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 846DB10606FC; Tue, 27 Feb 2024 22:40:08 +0100 (CET)
Date: Tue, 27 Feb 2024 22:40:08 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add clock to vo1-grf syscon on
 rk3588
Message-ID: <np7rvqdvyaucomexi2ckmzkrqpgrxc22mvxnjrqhjm3nriybbq@xrvdzkpdkwwq>
References: <20240227210521.724754-1-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20240227210521.724754-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_134020_051339_9BD24BF3 
X-CRM114-Status: GOOD (  17.83  )
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
Content-Type: multipart/mixed; boundary="===============0927552093528446401=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0927552093528446401==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rgkle252hkhd7jgj"
Content-Disposition: inline


--rgkle252hkhd7jgj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Feb 27, 2024 at 10:05:21PM +0100, Heiko Stuebner wrote:
> The VO*-general-register-files need a clock, so add the correct one.
>=20
> Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
> This goes on top of Sebastian's series [0] cleaning up the some VO clk-
> handling.

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

> [0] https://lore.kernel.org/linux-rockchip/20240126182919.48402-4-sebasti=
an.reichel@collabora.com
>=20
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/=
dts/rockchip/rk3588s.dtsi
> index 36b1b7acfe6a1..7e40958b5174b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -519,6 +519,7 @@ vop_grf: syscon@fd5a4000 {
>  	vo1_grf: syscon@fd5a8000 {
>  		compatible =3D "rockchip,rk3588-vo-grf", "syscon";
>  		reg =3D <0x0 0xfd5a8000 0x0 0x100>;
> +		clocks =3D <&cru PCLK_VO1GRF>;
>  	};
> =20
>  	php_grf: syscon@fd5b0000 {
> --=20
> 2.39.2
>=20

--rgkle252hkhd7jgj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmXeVqwACgkQ2O7X88g7
+prWuA//dl6HoLZaafzCXgndDkiQHVQwpl01dAwXMxA7sJ04/6ODfw+R9SWnoVog
lyTlrJy+9mUcmKAUktm+wJGbP/hncwu4+8TUQmjue14UOEEJ0CPJUAR8m2GJjyfH
WKQJYFTnwtE7zaUz8dEUv5NnLodLre/DByZ81/Z66o7FT//uteD6+6NOojbgBY61
T1BFarkl8F+GiOQLL74t00/i9fu1ZRkTGXAUXV9h2N34ipqW2mrkAtamN3Lv7fCv
16WkelYDQZy/PiS0mJ0yoaFeCcpoX32KnuZypuw8Zjm+mwnlFKJ0MfGezKyo2olX
hrWQd25zueU3DGUIifgW4+6dFWV+o44YNGzgTOnb6US4OwcuUN1sBMDweuW0MGAi
WWLzDJYhnN+rEvIepOjiDXRNbJYzJigKmqZ8EMYM4ZWrgP6Yk0OOz8JNQas/HpCD
nSJATRU4o3Z45sjjn9+mq9R96R1wCNZBxc3z2Pc0OvMu0KCH0dLoBlddmcM2L/up
gCf1W5+Zv6auchzB6hzPnbO+harGqSJ1BWZBywrwWmOFxzxLJD0Tj4u+CooYHjy3
D5NuaQrNKr8tJ5PUOaSx4TWCngmvVje24ILE7R0cQu5Muxz/vy5c6h1XEl1U0MpW
qgquXfYOlT0J9BiHWKMx8MCyA0ao+oIwsSQKoS4kSqkqsF2D8Os=
=6fLz
-----END PGP SIGNATURE-----

--rgkle252hkhd7jgj--


--===============0927552093528446401==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0927552093528446401==--

