Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D566EA8547
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Mar 2026 21:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wRyoJFbkvVFk3a9zgz04mCCLal3EKoxg4IRCyusgayA=; b=vm2vj7fSukZlP48aDFbbqFKfNO
	s7tVkuFK01gyTTP6wa06P5mL81tO6zWQDZdE+qSWhiJUSD7i2t7ayy1FlhWAYGfCV5klJ8Bp3vS5r
	3xeyQSIhLYN43RwnQW4EczDk0s96rznxNA2aFpog0fYuSY6Fuhyxeh7qsbyvjCQYb82Yn6pmW2V50
	PpjfwwOV6/LHTO5cI0HA6K39NeJG4M0doEfGBFNEx4hCGXbx98GPlgRJ6GUTjjRrSlSvksQsmdm0/
	z9CI8Q2pn3+91G2IWUfS/0fFpfGT3j0spAYIr3ypEei6NYlSHybQb/Vn/9moZGXnPr4dX6GBo7jT3
	JdWOefpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzLrK-00000006NYS-3DeV;
	Sun, 08 Mar 2026 21:40:22 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzLrF-00000006NXj-0g7Z
	for linux-rockchip@lists.infradead.org;
	Sun, 08 Mar 2026 21:40:22 +0000
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-8cb40149037so1167887385a.2
        for <linux-rockchip@lists.infradead.org>; Sun, 08 Mar 2026 14:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1773006015; x=1773610815; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=l/5v+Crp++VTBrLnHYqmqlg39N1g9UgV39jx8JRu1pY=;
        b=mdnnqSmCE65ls9SX9WcggWshLNHdeloZbEk5KllajWjFiCO16lGO8HQStfi6ej8Ncz
         WNLgAXvYCc0vyu89CCVn5b8f+X52wA0O+Ha6roA7RUyGiXJ8o1tD4qTxrX4EKLzzRvqb
         YJ+VIzwzxzgCrXJ2YYxC+oUIgaiYQ4VS4wTkZ75VDv3C6LI+yElsNopCOcZOFiGjuzv4
         qrQxGazvfIeOd6z3bIoFBZ/eAZks4qdllJ9P7MTE+ECTdojPWm6knSL1e5a1m1uyfp83
         NWWBuyTaYqMg/36NUKmG06maH6Uovr7CNoL37HwyA2W9imv9skpHF0Q0cexA8EtyZQey
         oAVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773006015; x=1773610815;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l/5v+Crp++VTBrLnHYqmqlg39N1g9UgV39jx8JRu1pY=;
        b=bv+I13TA7zQ/bSVq5Rgur5nDQVU63zohheT4a66s+K6SmAvjOIuVuOrO847I9MITbA
         wuI8aa9r5kcR9MhAsGCvTU0lt3tO2u1hTd9uDnOd5tfacR5NxZl9+k+s8OehheXlCgFo
         tXrf0Wtd4JWxSarPWFyVFewwdcWNT4UY6JWl3ME0iG++QjlLDiirUGpNFH6vfcgkB0Nt
         sN/bOK9nIBYzgzyii3Asz6W7DKBLXuS/R/lquP/rwRpZu/9TcHNfyfcV5sMlj35bkVOI
         4PRGPmD0zocg4dz4t+e1iRCurfDyd7iYGr3uFDqJbL7QFNMOCiz0cfeKTpd2JYchX1pc
         wFkw==
X-Forwarded-Encrypted: i=1; AJvYcCW/bi0hv01JK3/Hjo423ZJukuPzo8xh/YnwQgp8c015eoqYYNdiGfp4I47OFIoFZODquINIQ3hTe1T5Md8u2g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx26NkAyzJKxzKTdU/tC5gPDTPyowzoU6u9zGSKhTzNz/qMx6ou
	JJLFWW1GHTXqTfYWpa3erFcXoFkKogfuLwlsoBp8uS2aw20xh6O66NEi1R/U1wnPnk4=
X-Gm-Gg: ATEYQzyHNc6F2Y/lByO3h/gESLpDOnHTkhzkaQWdKc7Gm/wWL4sMmCGomI+SCeYEvGT
	Wz2JTiIV6LjXzUH9gVh4Ba2EZFzSriXtNSq55dECXSV0wEzWXXbARBaQoh1P1R06ErQHgRdKP0g
	4TuRAJ4Rln7YYidVhZZc5YdsQC0IDh8uThJbfXm62vHn89rK8hqa0gGVUfr/Wph/Qly4ejKcSdC
	65KPHW72g3ApDJhQxj+vbzK6Waif/JI8yzAf91CK5KyThJ59oG6F8OYQhweJWEkPuFAaEXU6uL2
	ganee/u6n6C6s5dhDuEjp3lM5y8CtcXt0iaMQ2BO9fUqNWzld+ucqua3opZxxVnPK7d26+vceuD
	njyXhO1XhrybuHsAxHu/pRfPZuQWXT9PB+fNVqDHl6jSTOEJzIrqxzi6lcPZf1oE8IE8TMM9NDY
	xBNZJbkMChCUclJCbbaiPo5/ehakU4
X-Received: by 2002:a05:620a:1a9a:b0:89e:99b3:2eaa with SMTP id af79cd13be357-8cd6d40d37fmr1134703485a.8.1773006014866;
        Sun, 08 Mar 2026 14:40:14 -0700 (PDT)
Received: from [10.120.58.110] ([192.252.136.7])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cd8cad692csm21257585a.19.2026.03.08.14.40.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 14:40:13 -0700 (PDT)
Message-ID: <ee0fd1ecc6c940811cae743f087e96d348909c9a.camel@ndufresne.ca>
Subject: Re: [PATCH v2 0/3] media: rockchip: rkvdec: add support for the
 VDPU346 variant
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Christian Hewitt <christianshewitt@gmail.com>, Detlev Casanova	
 <detlev.casanova@collabora.com>, Olivier =?ISO-8859-1?Q?Cr=EAte?=	
 <olivier.crete@collabora.com>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>,  Mauro Carvalho Chehab	
 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski	
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner	
 <heiko@sntech.de>, Diederik de Haas <diederik@cknow-tech.com>, Dmitry
 Osipenko	 <dmitry.osipenko@collabora.com>, Thomas Gleixner
 <tglx@linutronix.de>,  Dragan Simic <dsimic@manjaro.org>, Chukun Pan
 <amadeus@jmu.edu.cn>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Sun, 08 Mar 2026 17:40:11 -0400
In-Reply-To: <20251226113140.573759-1-christianshewitt@gmail.com>
References: <20251226113140.573759-1-christianshewitt@gmail.com>
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
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260308_144018_738345_14D33AC6 
X-CRM114-Status: GOOD (  21.99  )
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
Content-Type: multipart/mixed; boundary="===============8808540136070012984=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8808540136070012984==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-8MH3FGNDEj7hU0SQaMwz"


--=-8MH3FGNDEj7hU0SQaMwz
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Christian,

Le vendredi 26 d=C3=A9cembre 2025 =C3=A0 11:31 +0000, Christian Hewitt a =
=C3=A9crit=C2=A0:
> This series depends upon Detlev Casanova's current v7 series for VDPU381 =
and
> VDPU383 support [0]. It adds support for the VDPU346 IP block used for H2=
64,
> HEVC and (in active work) VP9 on the RK356X boards. VDPU346 appears to be=
 a
> close relation to VDPU381 used with RK3588, except with a single core, ou=
tput
> limited to 4K, and minor feature differences, e.g. HEVC level 5.1 on VDPU=
346
> vs 6.1 on VDPU381. To handle differences we declare a new compatible.
>=20
> The device-tree changes are derived from prior-art in Detlev's patches fo=
r
> RK3576 and RK3588, the vendor kernel [1], and some earlier patch attempts
> from Piotr Oniszczuk and Diederik de Haas.
>=20
> The register differences between VDPU346 and VDPU381 appear to be minimal=
 so
> we currently and intentionally reuse the VDPU381 h264, hevc, and regs fil=
es
> to avoid duplicating code. There is some evidence of buffer size changes =
in
> testing which still need to be explored. If further register analysis nee=
ds
> separate files for VDPU346 the refactoring will be beyond my current n00b
> coding skills and I will either need some coaching or would be happy to p=
ass
> the series over to a more experienced developer.
>=20
> NB: Testing with the v1 series showed lower mbps bitrate performance. Thi=
s
> appears to be resolved though it's unclear to me whether this results fro=
m
> kernel changes or the ongoing reworking of ffmpeg v4l2_request support [2=
].
> However with my current Linux 6.19-rc2 test branch [3] I'm now able to pl=
ay
> Jellyfish H264 and HEVC test media over 100mbps.

A fluster score and explained error report is missing your this cover lette=
r.=20
This will probably highlight some of the instability issues reported in thi=
s
series. I'll mark the series are "Change Request", as you have few review
comments and now this test.

Overall, I'd like to see probably investigations of the problem before goin=
g
ahead.

regards,
Nicolas

>=20
> Changes since v1:
> - Drop DO-NOT-MERGE patch as changes included in Detvlev v7 series
> - Adapt to variant/capability changes in Detlev's v7 series
> - Add bindings ack from Rob
> - Add rkvdec ack from Nicolas
> - Rebase against Linux 6.19-rc2
>=20
> [0] https://patchwork.kernel.org/project/linux-rockchip/list/?series=3D10=
34794
> [1]
> https://github.com/rockchip-linux/kernel/blob/develop-6.6/arch/arm64/boot=
/dts/rockchip/rk356x.dtsi#L1539
> [2] https://code.ffmpeg.org/Kwiboo/FFmpeg/commits/branch/v4l2request-v3
> [3] https://github.com/chewitt/linux/commits/rockchip-6.19.y
>=20
> Christian Hewitt (3):
> =C2=A0 media: dt-bindings: rockchip: Add RK3568 Video Decoder bindings
> =C2=A0 media: rkvdec: Add support for the VDPU346 variant
> =C2=A0 arm64: dts: rockchip: Add the vdpu346 Video Decoders on RK356X
>=20
> =C2=A0.../bindings/media/rockchip,vdec.yaml=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 2 +
> =C2=A0arch/arm64/boot/dts/rockchip/rk356x-base.dtsi |=C2=A0 49 +++++++++
> =C2=A0.../media/platform/rockchip/rkvdec/rkvdec.c=C2=A0=C2=A0 | 103 +++++=
+++++++++++++
> =C2=A03 files changed, 154 insertions(+)

--=-8MH3FGNDEj7hU0SQaMwz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaa3suwAKCRDZQZRRKWBy
9P8tAQD6X8K1OVv800JKuX4SsoOPaPlRfvbbnmOa6xHYfpuvYgEAuMC1QOrMqK1D
hcJLVPMGRf61xg3w0Zlr9mqYZ8vjFAg=
=8LZ4
-----END PGP SIGNATURE-----

--=-8MH3FGNDEj7hU0SQaMwz--


--===============8808540136070012984==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8808540136070012984==--

