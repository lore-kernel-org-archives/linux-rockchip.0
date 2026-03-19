Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 733421091915
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 20:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tGMxrutQGil3wlh1oE0pgIBKrSRdqw2qgCdoMI/ZSeg=; b=2RjiBPvewkE88wQBq2rlhKrszg
	oQmEnYjXcjhx5I7tYUer9lvNPIc+t6h9Tn6qOekRsPmTfrr1wFTwlPt44otwT7lzSGV+cJdjMNhMB
	jv6n1Wx+2tSqLUKoJ2qhX9HkBzyDScUBBH0os2TnUdolwySNOuLmaeruFaCVsoVJFasUWmqzQbqcw
	x1SVuMlINdRHE1Hvf3c/f+Kyh8R3W7Wl6LSRdCypM5jWrAO/dmI+94KfjUQ5nM+6qCPkwiDWoS/IM
	0wQF9CfpaU6V3Qyn1cfDBpkcvHs+zgG9uJnKChpgYoBJwNdrQa23airSxfUKhJqcjEAlS8PhcoLyd
	tvU0Dkcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3JfY-0000000BVGo-1mxo;
	Thu, 19 Mar 2026 20:08:36 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3JfU-0000000BVFT-3TGO
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Mar 2026 20:08:34 +0000
Received: by mail-qv1-xf42.google.com with SMTP id 6a1803df08f44-899ee87355dso12958016d6.1
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Mar 2026 13:08:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1773950912; x=1774555712; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ByHAIq8SKqFDrHlL2iXnLmh/0Lqol60jmXl6QH+csvw=;
        b=OEA4IdI6+GtMbchbWOhe/tl7+yD4d5VNguV639KVevmLWoyVPdgKcO1m2XRq0B5fWR
         +NkODN4wV+yPxF8Y6zlIU4GfZ3UTsNJxoNUyqfBrHiZy0EHZ+4T6Wr4LNg38nJB7wXV0
         V+Dk+t8LUl1mJwDoWC1j9gMFTypF/fdrmL210fsKKy2cHbZXeil1UyHGRHT2NXsrvbeN
         NJf8YeoPX4+7EeO+XrddcJ3otlOM73aR3kigd0rVhoD3caSxUqOJB0PPVlEJH55L4Btu
         2TebhS8meS0Jrf5/0wz2FHrNQ6+s9n1ftDadtCJ+KLbjZlDo1AjIvV2XL0ElYqB6iDVS
         MYRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773950912; x=1774555712;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ByHAIq8SKqFDrHlL2iXnLmh/0Lqol60jmXl6QH+csvw=;
        b=GNLlhsI5FbsIXl61zYdN1zRGmf2l6FK+HISRnzY5NcE83OYUK+nXJgB9tHJFlf99lH
         zRHYh3FgGOBRuMnx7rBCIdspnc41GzepeZkK/8tJP89uR6JjVy1uOaWA7Yh5Zd9M+EAT
         g/gpqtg9viFvIY7Vl6GHFKLFXRSK4pekyYVDJRzssAJxYlo/BQx9kHyjsoufUGN4daXZ
         26cL23nhVActE57ikwol68VGqp50pMiZHNfprqxakFQC9qwH0iDhIBy5+SVNbswGjebR
         /TG8kBsXeFbe74IInaMNmUoZgUY58C6LHm9PGjzkTouS1yBa9WqmiOtE2SGYnyUHHGxS
         22Mg==
X-Forwarded-Encrypted: i=1; AJvYcCXt4TQNxppTmeb/PXpTmYAzkbmmZzUuyi5CNpYvyOFp+nbg1o5D6C2BDWFILMo3xhQZkNAwack7ysqi3jw0Uw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwZekfgsSOqLMfGVfjrWtYY6okeKUcPoaNu8De5HUgauaJ/Xe/z
	87irGaHoBliOJ/gRU+taJqkKBJd6+5IVndU4BsLoUxcJYyPORV/Fl0lloPYTYI8icu8MTFc0cLK
	GtUKOK4GMvyf1
X-Gm-Gg: ATEYQzwkKLW96f76Cz+NRPE4Yi5F0/P9BmtuTPJIvjHK46o16NWtEYfcrijVA2A1B9r
	vtMYViXSD3T/+dZvvwhvvBzyp97m322kNqNRozOE92MyGbOoki2jPMs8O2H9zV7UbX0fgTXlbTW
	u8IoMSkQRHiZpIHrEM6QmQSqekfnFmfItz5OwbyFXZV+jb9jXR+FPumFMOdEvG2HtFDlk/Y+Ox1
	hEnbQ7P2xyJZlJX5cwYVUvOAL/UOsoSMzVdeYpUSedgMX8YxlkiST26AiVsnAgrm9YxMaNfnyUx
	s9WgAimW1Ovsjq5yT49DRfZBq1UJ07N9kX+8WtjHyAbL58sGSkaoUL0D0vk8OZRCowaYnrl8bfL
	i7AXf+OJx3jOuL6KF+7MdeBN2ayU9/p5w7WqrSCxGJ6yEDVIGJmo5E+qM+l2AFV4lcYEdzr/lLw
	/ovd6NKssTSDVdU+poMVSg1GrTXB2T
X-Received: by 2002:ad4:5749:0:b0:89c:4c6b:4615 with SMTP id 6a1803df08f44-89c859b56b1mr7040446d6.8.1773950911430;
        Thu, 19 Mar 2026 13:08:31 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:b76d::5ac? ([2606:6d00:11:b76d::5ac])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89c85334b61sm4468026d6.26.2026.03.19.13.08.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 13:08:30 -0700 (PDT)
Message-ID: <1a618af9b6c311e8fe5db64ff6fb7c1872c7b2b6.camel@ndufresne.ca>
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
Date: Thu, 19 Mar 2026 16:08:29 -0400
In-Reply-To: <90e62bf797b0532e5556adaf9e15cc7b73e18411.camel@ndufresne.ca>
References: <20260213-media-disable-rockchip-vdec-hexagon-v1-1-3f903398cc83@kernel.org>
	 <90e62bf797b0532e5556adaf9e15cc7b73e18411.camel@ndufresne.ca>
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
X-CRM114-CacheID: sfid-20260319_130832_901659_43B3C5DB 
X-CRM114-Status: GOOD (  21.02  )
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
Content-Type: multipart/mixed; boundary="===============1065806450462158148=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1065806450462158148==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-aLX8AP+3kvv0mY+uT9HF"


--=-aLX8AP+3kvv0mY+uT9HF
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le lundi 16 f=C3=A9vrier 2026 =C3=A0 11:17 -0500, Nicolas Dufresne a =C3=A9=
crit=C2=A0:
> Hi Nathan,
>=20
> Le vendredi 13 f=C3=A9vrier 2026 =C3=A0 15:10 -0500, Nathan Chancellor a =
=C3=A9crit=C2=A0:
> > Building rkvdec-vdpu383-h264.c can take a few hours to finish building
> > with Clang 20.1.0 or newer when compile testing for Hexagon. While this
> > is further investigated and understood on the LLVM side [1], disable
> > CONFIG_VIDEO_ROCKCHIP_VDEC when compile testing for Hexagon.
> >=20
> > Link: https://github.com/llvm/llvm-project/issues/178535=C2=A0[1]
> > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> > ---
> > =C2=A0drivers/media/platform/rockchip/rkvdec/Kconfig | 3 ++-
> > =C2=A01 file changed, 2 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/media/platform/rockchip/rkvdec/Kconfig
> > b/drivers/media/platform/rockchip/rkvdec/Kconfig
> > index 5f3bdd848a2c..d03689464206 100644
> > --- a/drivers/media/platform/rockchip/rkvdec/Kconfig
> > +++ b/drivers/media/platform/rockchip/rkvdec/Kconfig
> > @@ -1,7 +1,8 @@
> > =C2=A0# SPDX-License-Identifier: GPL-2.0
> > =C2=A0config VIDEO_ROCKCHIP_VDEC
> > =C2=A0	tristate "Rockchip Video Decoder driver"
> > -	depends on ARCH_ROCKCHIP || COMPILE_TEST
> > +	# !HEXAGON: https://github.com/llvm/llvm-project/issues/178535
> > +	depends on ARCH_ROCKCHIP || (COMPILE_TEST && !HEXAGON)
>=20
> This is clearly not a pleasing change to make. As this specific data stru=
cture
> and usage of bitfield has been discussed (along with the numerous issues =
in
> clang/llvm around these). We also agreed to move away from bitfield for t=
his
> data structure and use a bitwriter. I would favour delaying this change t=
o
> give
> devs the time to port instead. Ping again if nothing moves within few wee=
ks.
>=20
> best regards,
> Nicolas

I haven't heard back about the port to plain bitwriter. I guess I have to p=
ick
this patch, but I really don't want to have to maintain too many of these h=
acks.
Anyone else with an opinion on the topic ? Or a better idea how this can be
workaround differently ?

Nicolas

>=20
> > =C2=A0	depends on VIDEO_DEV
> > =C2=A0	select MEDIA_CONTROLLER
> > =C2=A0	select VIDEOBUF2_DMA_CONTIG
> >=20
> > ---
> > base-commit: c824345288d11e269ce41b36c105715bc2286050
> > change-id: 20260213-media-disable-rockchip-vdec-hexagon-eb67c47292c5
> >=20
> > Best regards,
> > --=C2=A0=20
> > Nathan Chancellor <nathan@kernel.org>
> >=20

--=-aLX8AP+3kvv0mY+uT9HF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCabxXvQAKCRDZQZRRKWBy
9LPWAQDjmQG+J8NCldLkt5e0YHN+eY/oOMY+4gtMMaOv1QmtXgEA2xvzyNJj6OQ1
hF9ceJ9F7RRvzrexm9h/QWzmjT6UUwM=
=rPsi
-----END PGP SIGNATURE-----

--=-aLX8AP+3kvv0mY+uT9HF--


--===============1065806450462158148==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1065806450462158148==--

