Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 608DCCCA470
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 18:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V7q1jj+hgwtWj7vVqDR9LRs9447Zw/SVT5gsZYZKs/s=; b=nkSW3GCwcki3L0qXydY39Ha0Kt
	F/L7AkIG7v0Vg0Q21ZjnqjoD5FaMGbbe30hcMqQTJvNzFmD2f20TSpSQRlEfO8tw2Qez6BQpeZ4dc
	+YKgMGpVPfAkLk7tSPos/3qnEmBZalioCZatiLd6l0xlqUck3RgNJaCGXBkfLunlJHLG34CR2rqGI
	BcKszbYQGYLr2H6CERXLmZxV52Fkh89UXFgFSME3Hg3SEapFCdI57r/7iitYkXntHFjYJQ5Y4LWj3
	hbOjnhhFp9WQB5pvmBguigiE8sPksI0MGLcxWTwT1xwGYMdnbq80FND47Edcxk008+lwAjZBe01t2
	pceQ8e0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6CpS-00000002d2k-14v1;
	Tue, 07 Oct 2025 18:54:30 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6CpP-00000002d25-34vG
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Oct 2025 18:54:28 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id 6a1803df08f44-79a7d439efbso60626066d6.0
        for <linux-rockchip@lists.infradead.org>; Tue, 07 Oct 2025 11:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1759863266; x=1760468066; darn=lists.infradead.org;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=fyqYBk39edhoU3hvwcDq4RniKRvu8ih3vY+jGbKyhzg=;
        b=kSYs1Dnd9r0N7pVfYEk9l8YgccXb8XWaK4L7+zOJXG6pN2qCinqy7q4K47+YXcpDuW
         gIAaWlUMFvUSkTgMn6moRN+ecGrjizGK/hH0tQ+aZYDkyVlFD5dVy8huG8zB4tbA4rQI
         pI0+h06pZvffmnfmUO0yk/Bk68GU3aJtxsi9PakOxBGoLjJaNGr9W2PuqSRukCYVd4is
         d4ejt/ayART3Ir3aso01O/qTp3gR3rsPGeGEfZ/annEp5Sbbla6UQrZovFy3BM4aw9WE
         qcwR5fVhVkc6thMquaYLuAgcRZ+DXaPyOJqwLYBsB+BYsXv6+CWgCd24rYG1DRfwPo6h
         gHeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759863266; x=1760468066;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fyqYBk39edhoU3hvwcDq4RniKRvu8ih3vY+jGbKyhzg=;
        b=hRNkve1wFo3UwIheAiNxGoAXP2BkIqtvURFnlZT8eF/Kkr0hBYMgsrXDBUd6Hj6HoO
         3jG+smwl2Db068Zw1082V/LnZ2eCH+Vt0gAaAe9flaptsHsznqWZEFJR6yQYUMLSQpDH
         aU9LtrzC0QnOZ61X5fYPDJSrc5mdojuJJiFkL8DiC2D0kS7cdd84Jwb7RfidfrBm8DwU
         0n7M9qfsssb1024/KPsAv4ClPQxHm/7nbjKGdmBxtgexgB81DmITx7eIF3VHfy/iLGhq
         yS+Z5HEncqHkRNj+L/l7iZVhIxnLvsO9Zt0L+wiZoR/uqnesogdbjJJxnDyJtATumt58
         54uA==
X-Forwarded-Encrypted: i=1; AJvYcCUYXAK4NSdRkulpCE51ixFSBD6OUdz/z5POakR/w8WdtW7HT1tZjkrXGC+EohhrC2mZCt3WGW45HSjOqY1VSQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzmVDBWPuXwehBcFdUWGxHiQPivnpvTtjhDVmfDGA/OLOYVitf7
	kvQdRKaetCP35vchFwf6QUO5qR95Vu1T1TYjlc1222b8BPriV0sUXfGQplP2WH1WMIQ=
X-Gm-Gg: ASbGncsKuyLyaohCFjWdWwMtOKOtVbQCfourxC5X0XBfdQvsb3BYm0fHhv1Ox5o2+Gh
	jayeOTjq3v1RZ91L6kuZhT03caSSxxscpg3DVNKGCAnyLSVEHMpMiEiBvsGqwKdOFn8iEvfwPe4
	BVjr7Qxs+wkDMMd2DBhocs4sSZryuTboJ5ZRy2YUfje28gzGZRGqP9zdF/Cfy/sl2jzWCKtrENn
	OCPpzt7TDPWWL7nGFMwqD6BJUD9SXJenCai6ZkbRFr8dSH4B3rZnKqEDd8c9+OAeUkfiwj8NL88
	9VJ/BaUFYAF2mBKOROboiDnPotoyznnlihAywenSs7mJB6yufJ6zzlZNUDqCKO4FhxjXZcUlYNJ
	UGbIHZisxo5gSdn1PFre+tJsbVgPIjJRM3jtTLTj0QO7fl4py8oDN
X-Google-Smtp-Source: AGHT+IEixUIOgl0MCHeaJ3U9YoVpppcjNIJi8FhlBiYJXzIZViLBMX0i5qQwH5C+bK/YoahAmV9Giw==
X-Received: by 2002:a05:6214:5012:b0:879:db53:df0 with SMTP id 6a1803df08f44-87b2efe7106mr6252686d6.46.1759863266399;
        Tue, 07 Oct 2025 11:54:26 -0700 (PDT)
Received: from ?IPv6:2606:6d00:17:ebd3::c41? ([2606:6d00:17:ebd3::c41])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-878be61f6bcsm146805896d6.65.2025.10.07.11.54.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 11:54:25 -0700 (PDT)
Message-ID: <46a1915e81b027d1c344eed0477683dd3a68d810.camel@ndufresne.ca>
Subject: Re: [PATCH 16/16] media: rockchip: rga: add rga3 support
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Krzysztof Kozlowski <krzk@kernel.org>, Sven =?ISO-8859-1?Q?P=FCschel?=	
 <s.pueschel@pengutronix.de>, Jacob Chen <jacob-chen@iotwrt.com>, Ezequiel
 Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
 <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, kernel@pengutronix.de
Date: Tue, 07 Oct 2025 14:54:24 -0400
In-Reply-To: <bf989d9f-9e8e-4acc-b502-1674ce215318@kernel.org>
References: <20251007-spu-rga3-v1-0-36ad85570402@pengutronix.de>
	 <20251007-spu-rga3-v1-16-36ad85570402@pengutronix.de>
	 <bf989d9f-9e8e-4acc-b502-1674ce215318@kernel.org>
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_115427_780025_097468CB 
X-CRM114-Status: GOOD (  20.91  )
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
Content-Type: multipart/mixed; boundary="===============4861448851722267446=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4861448851722267446==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-I9QXmLgSnsRRCh9PPEnb"


--=-I9QXmLgSnsRRCh9PPEnb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

Le mardi 07 octobre 2025 =C3=A0 17:39 +0900, Krzysztof Kozlowski a =C3=A9cr=
it=C2=A0:
> On 07/10/2025 17:32, Sven P=C3=BCschel wrote:
> > Add support for the RGA3 unit contained in the RK3588.
> >=20
> > Only a basic feature set consisting of scaling and color conversion is
> > implemented. Advanced features like rotation and cropping will just be
> > ignored. Also the BT601F color space conversion is currently hard coded=
.
> >=20
> > The register address defines were copied from the
> > vendor Rockchip kernel sources and slightly adjusted to not start at 0
> > again for the cmd registers.
> >=20
> > Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> > ---
> > =C2=A0drivers/media/platform/rockchip/rga/Makefile=C2=A0 |=C2=A0=C2=A0 =
2 +-
> > =C2=A0drivers/media/platform/rockchip/rga/rga.c=C2=A0=C2=A0=C2=A0=C2=A0=
 |=C2=A0=C2=A0 4 +
> > =C2=A0drivers/media/platform/rockchip/rga/rga.h=C2=A0=C2=A0=C2=A0=C2=A0=
 |=C2=A0=C2=A0 2 +-
> > =C2=A0drivers/media/platform/rockchip/rga/rga3-hw.c | 490
> > ++++++++++++++++++++++++++
> > =C2=A0drivers/media/platform/rockchip/rga/rga3-hw.h | 186 ++++++++++
> > =C2=A05 files changed, 682 insertions(+), 2 deletions(-)
>=20
> Your order of patches is a mess. DTS cannot be in the middle. In fact,
> DTS should not be even in this patchset, because you are targeting media.

Indeed, order is broken, though I do appreciate having the DTS as part of t=
he
submission, this way I don't have to chase for them when testing. That bein=
g
said, a link or message ID in the cover later would be as good.

Nicolas

>=20
> Best regards,
> Krzysztof

--=-I9QXmLgSnsRRCh9PPEnb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaOVh4AAKCRDZQZRRKWBy
9O1JAQCgbiRyx2yEWIDJARh2LE+kwcz/R5TwyiD48kcAsBRc3gEAj9DcD7rTLpzu
68L0DpQYyIRrsE94HVozLhgCExOv9gk=
=P0io
-----END PGP SIGNATURE-----

--=-I9QXmLgSnsRRCh9PPEnb--


--===============4861448851722267446==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4861448851722267446==--

