Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1A68C27C79
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 15:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TUqtTspWbIzInNBqPQIlm7ic5s/l67DVRm7vZw00cB4=; b=H3CzcpaJX4Fq0nfqwUl9fqaFsw
	pXVpo1mBg+r5TnY+AkPerdC0y1suhd3u7IV9P0hKH2WGuU2ZQ+3nbpp1Xb9QjzNZwF21uGkk92l/R
	8bi9CqynaHztQUvcwJTqYeLKtIOgSK28NJwtogdxhxSggzyuNx91musgt0pAa9WEfNajwZ0+DtXhC
	CZ9EtT61pwXcdt89olmLync158Mawglqq7CbdfbpwRHZER+kn1qS1WanNU4M126ADVXVuhBXvRSTn
	zKmBOcWPeOjNOcKrEEPjNUYmo3FD5rbA53YNjTTZNbFo8nwO/SR09cf6bgQKhngERP/Aped/rjnYh
	kU1YX+oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJEjP-0000000Bbmq-3mCk;
	Mon, 17 Jun 2024 15:57:19 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJEjN-0000000BblS-0MEX
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Jun 2024 15:57:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718639835;
	bh=0wIyxmLxLkxiV2ls/vWSOXhwHAL+8v39e9Vuc+L8F9M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kmBYTSJaDI1EGWrT7P9D4OF1MT1GPPF0sf/UyELvXKxNhoWAkFKQXvInwek/aqw17
	 AaJWnxAFdtxM9T9znAVXrPRYfIEml0eu2Lv6dDIEoz0mQzxAxxwL0+ts005VBwJWyZ
	 3Dbq6AtvF90vNOpmlz2PF9VLgzZHHVHahChDyfrh9unEOb47dqVZG/7gom31UjumoC
	 JtanMfIT/XiUko+9A3Uhbjz0CYcvRruBSZcdgqQe5wOn8vgPIJiNsNKRyjJ4KGDU7e
	 Zw5nKNmuTBt2PZ5CYtqB41nimv1795QSciRBkaE1WC08zj/xMfkKEp2z5mBWmaURsZ
	 WwFPPWAn+s10Q==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E07003782113;
	Mon, 17 Jun 2024 15:57:14 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 8690B1060734; Mon, 17 Jun 2024 17:57:14 +0200 (CEST)
Date: Mon, 17 Jun 2024 17:57:14 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org
Subject: Re: [RFC 1/2] arm64: dts: rockchip: disable USB3 host port on ROCK 5B
Message-ID: <ydpl2hqllbmpnatg7mhp2mk4aoyccgvogzyblix7rosflbpije@j3twwfos6sku>
References: <20240615070904.625-1-naoki@radxa.com>
MIME-Version: 1.0
In-Reply-To: <20240615070904.625-1-naoki@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_085717_290188_A6378C83 
X-CRM114-Status: GOOD (  17.13  )
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
Content-Type: multipart/mixed; boundary="===============7482471564646172201=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7482471564646172201==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rvhcml5sabvizmvt"
Content-Disposition: inline


--rvhcml5sabvizmvt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Jun 15, 2024 at 04:09:03PM GMT, FUKAUMI Naoki wrote:
> USB3 host (upper) port on ROCK 5B is not working with USB3 devices.
>=20
> error message:
>  usb usb6-port1: Cannot enable. Maybe the USB cable is bad?
>  usb usb6-port1: Cannot enable. Maybe the USB cable is bad?
>  usb usb6-port1: Cannot enable. Maybe the USB cable is bad?
>    :
>=20
> $ lsusb -t
> /:  Bus 001.Port 001: Dev 001, Class=3Droot_hub, Driver=3Dehci-platform/1=
p, 480M
>     |__ Port 001: Dev 002, If 0, Class=3DHub, Driver=3Dhub/4p, 480M
>         |__ Port 001: Dev 003, If 0, Class=3DMass Storage, Driver=3Dusb-s=
torage, 480M
> /:  Bus 002.Port 001: Dev 001, Class=3Droot_hub, Driver=3Dohci-platform/1=
p, 12M
> /:  Bus 003.Port 001: Dev 001, Class=3Droot_hub, Driver=3Dehci-platform/1=
p, 480M
> /:  Bus 004.Port 001: Dev 001, Class=3Droot_hub, Driver=3Dohci-platform/1=
p, 12M
> /:  Bus 005.Port 001: Dev 001, Class=3Droot_hub, Driver=3Dxhci-hcd/1p, 48=
0M
> /:  Bus 006.Port 001: Dev 001, Class=3Droot_hub, Driver=3Dxhci-hcd/1p, 50=
00M
> /:  Bus 007.Port 001: Dev 001, Class=3Droot_hub, Driver=3Dxhci-hcd/1p, 48=
0M
> /:  Bus 008.Port 001: Dev 001, Class=3Droot_hub, Driver=3Dxhci-hcd/1p, 50=
00M
>=20
> Fixes: f97d78b9f6cf ("arm64: dts: rockchip: add USB3 host to rock-5b")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---

I plugged a USB dongle into the upper and the lower USB3 port of
Rock 5B and they both work fine for me:

after plugging into lower USB3:
kernel: usb 4-1: new SuperSpeed USB device number 2 using xhci-hcd
kernel: usb-storage 4-1:1.0: USB Mass Storage device detected
kernel: scsi host0: usb-storage 4-1:1.0
kernel: scsi 0:0:0:0: Direct-Access     Intenso  Speed Line       8.01 PQ: =
0 ANSI: 6
kernel: sd 0:0:0:0: [sda] 122060800 512-byte logical blocks: (62.5 GB/58.2 =
GiB)
kernel: sd 0:0:0:0: [sda] Write Protect is off
kernel: sd 0:0:0:0: [sda] Mode Sense: 23 00 00 00
kernel: sd 0:0:0:0: [sda] Write cache: disabled, read cache: enabled, doesn=
't support DPO or FUA
kernel: GPT:Primary header thinks Alt. header is not at the end of the disk.
kernel: GPT:15124999 !=3D 122060799
kernel: GPT:Alternate GPT header not at the end of the disk.
kernel: GPT:15124999 !=3D 122060799
kernel: GPT: Use GNU Parted to correct GPT errors.
kernel:  sda: sda1 sda2 sda3 sda4 sda5
kernel: sd 0:0:0:0: [sda] Attached SCSI removable disk
kernel: usb 4-1: USB disconnect, device number 2

after plugging into upper USB3:
kernel: usb 2-1: new SuperSpeed USB device number 2 using xhci-hcd
kernel: usb-storage 2-1:1.0: USB Mass Storage device detected
kernel: scsi host0: usb-storage 2-1:1.0
kernel: scsi 0:0:0:0: Direct-Access     Intenso  Speed Line       8.01 PQ: =
0 ANSI: 6
kernel: sd 0:0:0:0: [sda] 122060800 512-byte logical blocks: (62.5 GB/58.2 =
GiB)
kernel: sd 0:0:0:0: [sda] Write Protect is off
kernel: sd 0:0:0:0: [sda] Mode Sense: 23 00 00 00
kernel: sd 0:0:0:0: [sda] Write cache: disabled, read cache: enabled, doesn=
't support DPO or FUA
kernel: GPT:Primary header thinks Alt. header is not at the end of the disk.
kernel: GPT:15124999 !=3D 122060799
kernel: GPT:Alternate GPT header not at the end of the disk.
kernel: GPT:15124999 !=3D 122060799
kernel: GPT: Use GNU Parted to correct GPT errors.
kernel:  sda: sda1 sda2 sda3 sda4 sda5
kernel: sd 0:0:0:0: [sda] Attached SCSI removable disk

-- Sebastian

>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 4 ----
>  1 file changed, 4 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64=
/boot/dts/rockchip/rk3588-rock-5b.dts
> index 4e2bf4eaef2b..61c7046435cc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -805,7 +805,3 @@ &usb_host1_xhci {
>  	dr_mode =3D "host";
>  	status =3D "okay";
>  };
> -
> -&usb_host2_xhci {
> -	status =3D "okay";
> -};
> --=20
> 2.43.0
>=20

--rvhcml5sabvizmvt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmZwXNUACgkQ2O7X88g7
+pq2Bg/+NERgl4duqurfJSxNeLonmhJgUb9Xq/KLUeFLA4dRVPth0PCHgE95c/LS
rSqqZB/LzzjvXX1B42OdSMXfudu7d52t3CvYvxS61Fw8rjWcjQKf8ZvwceMKhcYh
tgl+dVgs+uqNRUptrTnh162gwZpOHYas7CoGpIwtBqMuPV3ZwK/9R94HjctWvnzp
fpnSyBjeaCpwngtQqHbOFCnzLz08WzGqRCgrQopYPNySsTfFNZWluOcNwHkNHOBa
aSTOIiuU2Uq1KeXJt9+4dC/CBm7RzkYdcB9OFDG1+I7QVUJie1xJj2qBFAocoDSj
SVh0Hr3GRbfEQJ79Ep9EBkMQNnQd1Negn6Bt55yUvQDGoK09TgKlewGfj252D0/v
ib4sCdrd/pNsG7vAeX19uK5jZzVyozuzt/V0t476eFMv+cYFwsgi5H+EXTc+HaXj
edi3ZOj2GqnUA+nFd/nV1FA6tGuY+B+T/1PhqhR8EbIOy7ZQFdYGl5EwP9jG887b
8BSFyut0imtIdU4/0qL1UlPuQaTnCUbWTTUjyEo3EbNuZt+Gy4K28gZF/6oTh2Ho
tgrwpSC3s+jbYFp8liFVfnTXati/LH9/EBPrYPNIAKeca0kKQ4gdigILkruOM17C
CqRsdzE+YPRCKxcuqFsYRFBpCUBvMfhx4MnpJSL1lvCkY4sbxRQ=
=yF9q
-----END PGP SIGNATURE-----

--rvhcml5sabvizmvt--


--===============7482471564646172201==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7482471564646172201==--

