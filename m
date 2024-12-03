Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65A36E74AC3
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Dec 2024 17:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YTDYXlZkhDHlHp+4WG5Ht9qktkh3E6IJfY/vd+nPsKo=; b=ihAK/zlGlZrj0ylMyNNluuLhd+
	nS/YHxzy5ULMGPwRB0whYYGBBltZncH6LFxvpsLSklCrHFyfY9LhMsSRPNrt0riTDbfNIRFu/vfSt
	B6hgcgx+cG0egwANpRTZPUqgUfSGfCtGLBSM12Z6Bc+YOARJQsj0G07h/VCE6jKIHw4XqPPB81IpJ
	kHyoq7U/eWrc7aXjmGkSGL69sC7EvRbekkdOysv/bRFcQyotyfd6UPZh2WwrKxxVUHcOMxZpYPg3Q
	Q9jfNWXIH5qI9exQh+h7R9k5PuQJwmfUv0OPKoKOpiRL3jOlArw4CfqqHnOKw+DJ+CpZLp1FlimUt
	4AkSFfLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIWJd-0000000ACT3-48mB;
	Tue, 03 Dec 2024 17:04:01 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIWHc-0000000AC5t-05oG
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Dec 2024 17:01:57 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1733245310; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=numseOsdhQcc20TlLgKhAGdOAP/FsN7DRO2YNp8jIKB5vH6lGDI1Lavp2jrnsPkOw2TDSBbh/8eVt3GpZjAOscivjnFlX8eQQhXYyq/6FEsasEADDDF8fx+r1Shxc86NUGm/pmeURbSoafx9PU6e1s2y7IVsoUwusjct9Y3siaY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1733245310; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Kyf6KoTV4aYOjmtorCp6wWe1Yu2Qg+h7m8Ze3MV8mqY=; 
	b=DxwQLghS6JWNSfV1BhyCq92qnuF19RIMozDmPBEGwcULIk+to++D1ZlzAOEybUM0G0gSdG2r8lkaMllTzWzK2K5PjarGnblyQnz3ZGn90zMczwui7n4VeJ/Z+Hrfbgo/+1xT/aMRe6V0IJPqZqrXZR6llgSMTqmjEvbRjQpmTrU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1733245309;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=Kyf6KoTV4aYOjmtorCp6wWe1Yu2Qg+h7m8Ze3MV8mqY=;
	b=VFr2Krx9RKjksE1wqqNvrV/uCUeeyeEWJ7WMuuXTPWdCINeQ+i7pNDeQHDEGhEMk
	VShEnI+5eviqkYg3P4Q5iUr08qxgpQc7pF08GYnK67aOVN2vF5nbbRbpDQ4uLT8uXFK
	Xd2ufDLSxs3fIyVshgKi6HHg0ADV+SSI2SDjWXfk=
Received: by mx.zohomail.com with SMTPS id 1733245308074238.60746126031256;
	Tue, 3 Dec 2024 09:01:48 -0800 (PST)
Received: by mercury (Postfix, from userid 1000)
	id A6FFC10604CF; Tue, 03 Dec 2024 18:01:43 +0100 (CET)
Date: Tue, 3 Dec 2024 18:01:43 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: fix USB 3.0 bottom port for
 Radxa ROCK 5B
Message-ID: <6o2nwuxemfrdnq74tsag3s5cbdeopk5cgoa2iqg3vpkh64xdvs@gpzehjwjioph>
References: <20241130014043.12942-1-naoki@radxa.com>
 <20241130014043.12942-2-naoki@radxa.com>
 <2724169.KRxA6XjA2N@diego>
MIME-Version: 1.0
In-Reply-To: <2724169.KRxA6XjA2N@diego>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.3.1/233.129.81
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_090156_136130_D7506BA1 
X-CRM114-Status: GOOD (  21.19  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, alchark@gmail.com, FUKAUMI Naoki <naoki@radxa.com>, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: multipart/mixed; boundary="===============2068466720288716782=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2068466720288716782==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xudzaf2neodbwtso"
Content-Disposition: inline


--xudzaf2neodbwtso
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: fix USB 3.0 bottom port for
 Radxa ROCK 5B
MIME-Version: 1.0

Hi,

On Tue, Dec 03, 2024 at 05:19:55PM +0100, Heiko St=FCbner wrote:
> Am Samstag, 30. November 2024, 02:40:43 CET schrieb FUKAUMI Naoki:
> > add rockchip,dp-lane-mux to usbdp_phy1 to make it work properly.
>=20
> Make it work properly is not an ideal commit description.
>=20
> I guess the lane assignment for the dp port should be discoverable
> in the device schematics, so the commit description should explain
> as much.

Rock 5B does not have SSRX2P/SSRX2N and SSTX2P/SSTX2N connected to
anything, so this description is just wrong. The other lanes are
connected to a USB-A port and thus no USB-C controller is involved,
which takes care of any muxing. Not specifying any
rockchip,dp-lane-mux configuration sets mode to UDPHY_MODE_USB,
which is correct.

Naoki, if you see any problems, it is most likely a bug in the USBDP
PHY or DWC3 driver.

Greetings,

-- Sebastian

>=20
> > tested with ELECOM U3HC-A424P10BK[1]:
> >=20
> > $ lsusb -t
> > /:  Bus 001.Port 001: Dev 001, Class=3Droot_hub, Driver=3Dehci-platform=
/1p, 480M
> >     |__ Port 001: Dev 002, If 0, Class=3DHub, Driver=3Dhub/4p, 480M
> >         |__ Port 003: Dev 003, If 0, Class=3DWireless, Driver=3Dbtusb, =
12M
> >         |__ Port 003: Dev 003, If 1, Class=3DWireless, Driver=3Dbtusb, =
12M
> > /:  Bus 002.Port 001: Dev 001, Class=3Droot_hub, Driver=3Dohci-platform=
/1p, 12M
> > /:  Bus 003.Port 001: Dev 001, Class=3Droot_hub, Driver=3Dehci-platform=
/1p, 480M
> > /:  Bus 004.Port 001: Dev 001, Class=3Droot_hub, Driver=3Dxhci-hcd/1p, =
480M
> > /:  Bus 005.Port 001: Dev 001, Class=3Droot_hub, Driver=3Dxhci-hcd/1p, =
5000M
> >     |__ Port 001: Dev 002, If 0, Class=3DMass Storage, Driver=3Dusb-sto=
rage, 5000M
> > /:  Bus 006.Port 001: Dev 001, Class=3Droot_hub, Driver=3Dxhci-hcd/1p, =
480M
> >     |__ Port 001: Dev 002, If 0, Class=3DHub, Driver=3Dhub/5p, 480M
> >         |__ Port 005: Dev 003, If 0, Class=3DBillboard, Driver=3D[none]=
, 480M
> > /:  Bus 007.Port 001: Dev 001, Class=3Droot_hub, Driver=3Dxhci-hcd/1p, =
5000M
> >     |__ Port 001: Dev 002, If 0, Class=3DHub, Driver=3Dhub/4p, 5000M
> >         |__ Port 004: Dev 003, If 0, Class=3DMass Storage, Driver=3Dusb=
-storage, 5000M
> > /:  Bus 008.Port 001: Dev 001, Class=3Droot_hub, Driver=3Dxhci-hcd/1p, =
480M
> > /:  Bus 009.Port 001: Dev 001, Class=3Droot_hub, Driver=3Dxhci-hcd/1p, =
5000M
> >     |__ Port 001: Dev 002, If 0, Class=3DMass Storage, Driver=3Dusb-sto=
rage, 5000M
> >=20
> > [1] https://www.elecom.co.jp/products/U3HC-A424P10BK.html
> >=20
> > Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 1 +
> >  1 file changed, 1 insertion(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm=
64/boot/dts/rockchip/rk3588-rock-5b.dts
> > index c5776e3b4aab..43fc1f24dfc9 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > @@ -918,6 +918,7 @@ &usbdp_phy0 {
> >  };
> > =20
> >  &usbdp_phy1 {
> > +	rockchip,dp-lane-mux =3D <2 3>;
> >  	status =3D "okay";
> >  };
> > =20
> >=20
>=20
>=20
>=20
>=20

--xudzaf2neodbwtso
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmdPOW0ACgkQ2O7X88g7
+poGMw/6AyXAAl4S2usD+CNFXZ17ES3gpPTlPrXI6gzeT7xeNCVFh2ilV9lVLVH8
JzjqQvg1sBRC9TzBm8agP+f6cMZs7v75JTNFrV1Pkrvef+CIXoWJXJa7JF7MLYPX
PEY+Bcz4DQcCQi50d8OIhEd0PPTH/yYn6ts0C4okgPUIBdh1C9VA3btZ4wjWQ4F0
2pFpzZdFY8Rw6PzwMJiPAAavQ+6Bbcp8xXvC0Ci7CFc83XQPnRqBVth6ilMiFyC7
75ENShSCZBfaO+IDmVnb4im29MnyeI7ZR0rWa0a+O2YoCLLBdMzwKXhlqSfStDs3
tGg8aGlH5iwDrNrU3e2G7dRVMsffJG7QA3H2bmxsUuFQj0z2K97O7Q6TpEyHO4hJ
u5zIwE1oQlvE1Csn/O9cdzmA/6phWsgmgParvom2Bc6C2XkJPY1W4hxj1oirvAS1
HW9QWMafGxwcsgRgyQWcsOstImpI3s8pe3N77ydLMLzaUZ7cbiakDAR8pHp0K5Um
SSc6dqXlE/nEOwJ3T5u7BpKzEK6AjeaaiuX29hkCvORQFx6AfES+wR4M5EV93A2o
FfpUHGzk4UY06wm8ZCMbvnJPHWlKSG6xFMT+jnRePNKMZTAubbhzBKuvuXgg6UJv
mgR+ex4o8eJKgn1EcO3/RnI6yliLvHVGQCfqjzQhJp99boWIclQ=
=J1ty
-----END PGP SIGNATURE-----

--xudzaf2neodbwtso--


--===============2068466720288716782==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2068466720288716782==--

