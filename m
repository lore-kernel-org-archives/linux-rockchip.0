Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F77ECCA476
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 18:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b/bWMUtzmQIbpuc+/5hSnOdklV8bOKP9fo+9PdQeY2Y=; b=Y66HYXqVL9/lRgyGTUYbylr47+
	MLbNLEK3IBD78UfkzlzhLnLqkM8AeJnbiN8eQ8hl0XdxLv63aZ3TLBRiu3IhqF9PiGWPg0SNezVSG
	6F1NmDLbsp1O96kwaI6cUSfl1cJfSeRe2N6X6oa2Dj9Rf9mmRY6W6/KPmfwj0zjr4xJODjiZnfX7n
	kwoaF579V0nmFFOm2yytXCQwShvIrlMa5PqDoW9QZYAcrYlkxVrr/fz4ME0NXTIklypuX71sjFCo7
	02mc15AXHFm+ibTp5LP5/iQysIu4r8mIZHsf+MP/LNM3GNrYmGS60oga0W7JHPymSmVL9O7Vbc1K3
	qlizeswQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6CBF-00000002YXh-1kG8;
	Tue, 07 Oct 2025 18:12:57 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6CBA-00000002YOb-0COs
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Oct 2025 18:12:55 +0000
Received: by mail-qk1-x736.google.com with SMTP id af79cd13be357-87808473c3bso849369585a.1
        for <linux-rockchip@lists.infradead.org>; Tue, 07 Oct 2025 11:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1759860770; x=1760465570; darn=lists.infradead.org;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=8SHmDoHdQmKTfiI5PMccAlbyA1V46slp40pEW9LImx8=;
        b=lkVfnqXHyX5PPXgSWaE3luVGYHYx/zEWR0Os2DIKritXG9ppgBPb9Rnc5M/lAClA2I
         TjinoBni0SgwCRDcFTq7+lvrtlcWp6yoGSI11kZWCf916wUKjJ4Q3R8AyuFhPTlNT2s+
         uF79n5HCKMy3Awfoh4y96vcmFbyAZ2bVlX8pWT+AYdOdL3dlvZzDZ3UtuvnPgmRPIFpO
         oHQH9kjDyA8XDxxTw4kCJ62IYq+C10D2LlMk4Ye9UcUg7yp/X+gqn3kWzTyX1Z7pm5tH
         QAJ9iEKFtK7HppIut83m/OhNCiptPz97tSZGZ0xG8dvtQyNEqQrLbJD1G923SxxynEN4
         tccg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759860770; x=1760465570;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8SHmDoHdQmKTfiI5PMccAlbyA1V46slp40pEW9LImx8=;
        b=gXn/5KgpEUjVOedWYLdq9Zm+PLIyY7gkoiqdHG2+vaPyvdayiQyUk4YwUbEr/vIYTJ
         vHCBkkrSF5j4KAZD+G1dxIDv0UrVxlzuzLTNBZWn1naoz3+vmD0EmuOZtQ8cHnj9aCBv
         kHp9zbRBKYd/Ly0h6yD5iIDnnynRe6Ok1P/SPMbuF042XC3jOQF+d1Qd0NDdk5XSHxlP
         KJo6+oy9hI9GoyokC0m+OMITYkj3qmnv/Fy8QeBg8sKx2wiptbbTKUbqNd4HgL9U6mRg
         PZx9iCJAxEkRxbMT1cP+OUymfTdiet/Vif/G0H2+iUBR6ulatwvPHseWvVMjQItYJo4G
         SaRQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkbOKs5DChuZ7Eir8UaK8fUCqJ42h/F75A2+pcV56Z7oVYZr7oLSKo9GZ1JPmEhyXLhMisUU0kAPwyzAKMTg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1W4WUZnmyu28SmsMlmDaEhCNMraPxznyj46egUIyHUfUwYBjE
	vPOa0M6FAij8GrBV0rFCaj9flqnbdCXCsia19n3eDi+ihykHNHRvBUp2z3LbvvJqhTw=
X-Gm-Gg: ASbGncsfxiMT4U8muWCJZgL/UyZPS2h7nw4uovaWvooshYX1hqTsKCbiqy8XTreuQaR
	QWOGgYWB+vJxDv0TsCzjJJwa02CzSRkRue1ZbpQevIeoYm7Ur0jM5/mDqW6jjQzzn9MaeOZb+SY
	26ba4mAmG0rHKnzvm79+74FgVUDz29pBqH/WtvecR+rJNw/z4vFlAKWREMJQJ67F6bBfqBCZgQT
	PdAJhUVBt3LfKT+RsIReBAPyY9U26YSY+wbwRzgHd0jfG4U4dPlHlsxnM0nV2mZdDdaD3dTB1Gu
	xhFQ3pgZcruL3BejrXbWwcn1iHKcE2Jwd47uaqY7T2vanCobGHal2Bp3CWck+uz/185yFvAE5Jh
	ZyJZloagSSbm88kmYsZTIKk2fSthNpw+p92zFsO6z8PgZpEAZr4ed
X-Google-Smtp-Source: AGHT+IFJwiFyqdn6vHfsVW5AqTzfPU59JdPTe9jsCTVyjegINt2FetoGEQEhtGUGJnu4FO7lY33Vsw==
X-Received: by 2002:a05:620a:1a8e:b0:878:671f:7395 with SMTP id af79cd13be357-8835410ff67mr108686985a.69.1759860770343;
        Tue, 07 Oct 2025 11:12:50 -0700 (PDT)
Received: from ?IPv6:2606:6d00:17:ebd3::c41? ([2606:6d00:17:ebd3::c41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-877794b8c0esm1649064985a.45.2025.10.07.11.12.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 11:12:49 -0700 (PDT)
Message-ID: <dd5f934f222116a29ef5ec19a52a9b3ae7433de9.camel@ndufresne.ca>
Subject: Re: [PATCH 13/16] media: dt-bindings: media: rockchip-rga: add
 rockchip,rk3588-rga3
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
Date: Tue, 07 Oct 2025 14:12:48 -0400
In-Reply-To: <c4b0f1d0-cebd-4381-b2c0-20c177c0732c@kernel.org>
References: <20251007-spu-rga3-v1-0-36ad85570402@pengutronix.de>
	 <20251007-spu-rga3-v1-13-36ad85570402@pengutronix.de>
	 <c4b0f1d0-cebd-4381-b2c0-20c177c0732c@kernel.org>
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_111252_165377_85C5325C 
X-CRM114-Status: GOOD (  18.18  )
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
Content-Type: multipart/mixed; boundary="===============2498506396634061254=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2498506396634061254==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-7gUIbCmFrGsfnm1LXQ2d"


--=-7gUIbCmFrGsfnm1LXQ2d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le mardi 07 octobre 2025 =C3=A0 17:38 +0900, Krzysztof Kozlowski a =C3=A9cr=
it=C2=A0:
> On 07/10/2025 17:32, Sven P=C3=BCschel wrote:
> > Add a new compatible for the rk3588 Rockchip SoC, which features an
> > RGA3, which is described in the TRM Part2.

Please write something here. You can't explain why RK did this, but at leas=
t
explain what are the differences and additional feature. It should also be =
super
clear through your patchset everything you didn't support, since when readi=
ng
your set, it really have nothing extra implemented.

> >=20
> > Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> > ---
> > =C2=A0Documentation/devicetree/bindings/media/rockchip-rga.yaml | 1 +
> > =C2=A01 file changed, 1 insertion(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> > b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> > index
> > ac17cda65191be047fc61d0c806f806c6af07c7b..11e86333c56aab55d9358dc88e45e=
7c1eb
> > faae9e 100644
> > --- a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> > +++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> > @@ -20,6 +20,7 @@ properties:
> > =C2=A0=C2=A0=C2=A0=C2=A0 oneOf:
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: rockchip,rk3288-rga
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: rockchip,rk3399-rga
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: rockchip,rk3588-rga3
>=20
> There is already rk3588-rga, so please explain in commit msg
> differences, including compatibility or lack thereof. I am confused why
> there are two completely different 2D accelerators simultaneously on
> that SoC.

It is quite strange hardware design, but this is really how the hardware is=
. I
personally don't expect an explanation from a third party. Its a mirror of =
the
VOP2 planes really.

Nicolas

>=20
> Best regards,
> Krzysztof

--=-7gUIbCmFrGsfnm1LXQ2d
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaOVYIAAKCRDZQZRRKWBy
9Go6AP9e4y2IiSL2I+67c8y9Mn1TNSV8ucapX8SFj5r6BqkeaAD/ebUK9jFL041m
do23vyGkPpDC61NKSkX4f+0FGc9xDwc=
=HOjH
-----END PGP SIGNATURE-----

--=-7gUIbCmFrGsfnm1LXQ2d--


--===============2498506396634061254==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2498506396634061254==--

