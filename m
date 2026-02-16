Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6ED84E81A3C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Feb 2026 16:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PwpWcpTBfbz8jlkpbKED94Q9fJifS+IcEc3lECexgK0=; b=VBMoJQEvudw9Vld0UxsnfudqXm
	fhJwoO4yFc+w4fybSe1oS8UdlTu341Q9rxGC+BVTU7HYaiXNkCsz1JKgEp9kD6sgCoSWuTV7NzpHJ
	QdEzKA1DBNPx5edXjB7/aZ+EqyHbkn7/j+MeQiLefENets3NqZDObAqbXgN3vuf9RziQaxGNGfeST
	odX9E2a4wqh8uETUPYcJueGF6SqGkNJsoYtNYiJi8DieIBYy57sknBGc5ZUmBJYl0QbIB9scW4pyQ
	xPwZyjEMdsT+p5VPJbZ5izdQYV7fwxu5By3/keoN6hY45Sd+TynK9o+SvUvrtk25XBpzfZ9yBFAbv
	IS1qlk6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs1I3-00000006zSC-05zH;
	Mon, 16 Feb 2026 16:17:39 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs1Hz-00000006zR1-2umV
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Feb 2026 16:17:37 +0000
Received: by mail-qk1-x733.google.com with SMTP id af79cd13be357-8cb3bae8d3eso353897985a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Feb 2026 08:17:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1771258654; x=1771863454; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=yx5A2gw99GEH72oJ5J3K3NBwM48Lr9vgSpEF2S1mSc0=;
        b=mMTteU2Ewpuw7RLnCU9QGkRU3K1EzI75oTIHseK2nbMsxyptI2bd7ZJhJ1qMdyHo5W
         T73gsoxEHeby/EIKj7cyQfwFjYKJJDTAGj+hOHzshhhsCLQNvLxDZXcve8fp5v8pNtAR
         94VYnAagO5/5yhHsngpYvL/nwwDVfdxszMIvFCYx5SSbWx9Q+h941Gq/H4feTni6jmDV
         T+exB2XQUJofKClZO3CwyOE795R7i3FnYooZ+2+QHuguOrvbNcGYchNiXrhrXCRSjXqw
         yTCnK4wAwdh7F+kyhR9ePsYkfqn6JwXefrBuzDyxLHCoVkqaEKK5UrkEAqXyJiLHhiSY
         sDjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771258654; x=1771863454;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yx5A2gw99GEH72oJ5J3K3NBwM48Lr9vgSpEF2S1mSc0=;
        b=cKibycLc0Ltsx4+IP4S2L/tUODM9D6S8WHxa1gRogHjy+qIoFSH9uETmbfZ+Wsp9q4
         VADhOhAQ7+UH17U7WthvAtV/QZ416pGhOq0ErgL06mBGQRLsNU18QG8Y/4mFRKV699kY
         a7HJRwFWVV6wVi8jko7H5Je9jYgk7PnpUTZJgWMGmfYKBMpaB6t7slqhQmiU80WDLjME
         sKJsg3QnbSRDrmJ69iD2z4kL+mPTy7wpZJLWclFApAGAAbsQ2Awz/64FE8L25cFKPE0T
         JyqVXVkGTItKt31TcE6A7Du4jbULXNZ7mjklnnGu1GU24VOkNKzOf+SUvjrYhOTE4fxk
         c2Ng==
X-Forwarded-Encrypted: i=1; AJvYcCXjwVzfU3sx4h+X7wjZUi2pzdQbvPrw7lAsQ6NmdBWnTK8y6ojOBji2gaWKwIdFYei2z97V9QH7NcLV8M4Uvw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yybp6Lpyqc05ghNrd8AOIA53WsoJ+uLEVRZJz4kujI660fImZ68
	ShyEsenp3DiDQ3JkMIZaRPY0PDYPGBWWXBe//diMyHMV1yuuHDWw3ri/j4ylkhlNFhk=
X-Gm-Gg: AZuq6aKFp90m/QmQyNKEk6dIsHWBQD7C8dg8shBtPPS6hHPTK7EnmdJL5zr6tyRa/Hu
	3vN0n+UADo88FnywsRmB4GxvhLFDdiJYh84ZJ6h55XfYEdn74MjNS+8DQz7wxczM9bLjGCEG2jR
	R568JUD31WrJDzPnof5rGLFzarbXffIMuiGZKNRonmUm7HiZ7zjaC/r+MV9zW3Bog9SdND7HI7n
	113g42Zz+tfdLDC2iOe5aSDsVE2t/X6A0KxaiLoqiOv2Iwk/W7/q2NQcbcEzijQ30eBvmBwNXWU
	IMxxlIvSZAzJmpb52nAKLEergDo26CHTa3TWbmGB60ojTadnlREXw+YYjPFLbjKPYEt5XoLSTRB
	//h4YpQX6m39wA3kWasopBRw6NjD1JcwE/hStIHK3Jyhi0LTRDX6gLKrkaBps+P73k2tO5B8g+b
	8MsHNVkxnjCsJtaFLZT/r5tbmC2FlH
X-Received: by 2002:a05:620a:40c9:b0:8ca:105b:86b6 with SMTP id af79cd13be357-8cb409219e2mr1421526385a.88.1771258653567;
        Mon, 16 Feb 2026 08:17:33 -0800 (PST)
Received: from ?IPv6:2606:6d00:15:210e::5ac? ([2606:6d00:15:210e::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cb4120f939sm883143485a.44.2026.02.16.08.17.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 08:17:32 -0800 (PST)
Message-ID: <90e62bf797b0532e5556adaf9e15cc7b73e18411.camel@ndufresne.ca>
Subject: Re: [PATCH] media: rockchip: Disable VIDEO_ROCKCHIP_VDEC when
 compile testing for Hexagon
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Nathan Chancellor <nathan@kernel.org>, Detlev Casanova	
 <detlev.casanova@collabora.com>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>,  Mauro Carvalho Chehab	
 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Brian Cain <bcain@kernel.org>, Nick Desaulniers	
 <nick.desaulniers+lkml@gmail.com>, Bill Wendling <morbo@google.com>, Justin
 Stitt <justinstitt@google.com>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-hexagon@vger.kernel.org, 
	llvm@lists.linux.dev
Date: Mon, 16 Feb 2026 11:17:30 -0500
In-Reply-To: <20260213-media-disable-rockchip-vdec-hexagon-v1-1-3f903398cc83@kernel.org>
References: <20260213-media-disable-rockchip-vdec-hexagon-v1-1-3f903398cc83@kernel.org>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_081735_993451_1769086A 
X-CRM114-Status: GOOD (  14.90  )
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
Content-Type: multipart/mixed; boundary="===============5967132649575778366=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5967132649575778366==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-g0IOH3/wXifty34RwVB5"


--=-g0IOH3/wXifty34RwVB5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nathan,

Le vendredi 13 f=C3=A9vrier 2026 =C3=A0 15:10 -0500, Nathan Chancellor a =
=C3=A9crit=C2=A0:
> Building rkvdec-vdpu383-h264.c can take a few hours to finish building
> with Clang 20.1.0 or newer when compile testing for Hexagon. While this
> is further investigated and understood on the LLVM side [1], disable
> CONFIG_VIDEO_ROCKCHIP_VDEC when compile testing for Hexagon.
>=20
> Link: https://github.com/llvm/llvm-project/issues/178535=C2=A0[1]
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
> =C2=A0drivers/media/platform/rockchip/rkvdec/Kconfig | 3 ++-
> =C2=A01 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rkvdec/Kconfig b/drivers/med=
ia/platform/rockchip/rkvdec/Kconfig
> index 5f3bdd848a2c..d03689464206 100644
> --- a/drivers/media/platform/rockchip/rkvdec/Kconfig
> +++ b/drivers/media/platform/rockchip/rkvdec/Kconfig
> @@ -1,7 +1,8 @@
> =C2=A0# SPDX-License-Identifier: GPL-2.0
> =C2=A0config VIDEO_ROCKCHIP_VDEC
> =C2=A0	tristate "Rockchip Video Decoder driver"
> -	depends on ARCH_ROCKCHIP || COMPILE_TEST
> +	# !HEXAGON: https://github.com/llvm/llvm-project/issues/178535
> +	depends on ARCH_ROCKCHIP || (COMPILE_TEST && !HEXAGON)

This is clearly not a pleasing change to make. As this specific data struct=
ure
and usage of bitfield has been discussed (along with the numerous issues in
clang/llvm around these). We also agreed to move away from bitfield for thi=
s
data structure and use a bitwriter. I would favour delaying this change to =
give
devs the time to port instead. Ping again if nothing moves within few weeks=
.

best regards,
Nicolas

> =C2=A0	depends on VIDEO_DEV
> =C2=A0	select MEDIA_CONTROLLER
> =C2=A0	select VIDEOBUF2_DMA_CONTIG
>=20
> ---
> base-commit: c824345288d11e269ce41b36c105715bc2286050
> change-id: 20260213-media-disable-rockchip-vdec-hexagon-eb67c47292c5
>=20
> Best regards,
> --=C2=A0=20
> Nathan Chancellor <nathan@kernel.org>
>=20

--=-g0IOH3/wXifty34RwVB5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaZNDGwAKCRDZQZRRKWBy
9PhBAPwMxt2qHIuuv8Re3nGYyjxclF1akWrq8joXpNiryhAGZQD8DZ31iVeXv3Jn
qIdzhD88lbsc2tAt4dDx0Aynb0/hEQw=
=AYDo
-----END PGP SIGNATURE-----

--=-g0IOH3/wXifty34RwVB5--


--===============5967132649575778366==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5967132649575778366==--

