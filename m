Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B80EC19F4F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 16:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y2SMFOUzf7fD3b8zTIJZrlWx7XsUxnX/G2Dy+X7D0Pc=; b=EUdYkoo0imd2/FApVOZGLDcsa1
	4CEFPSGo/eX/YUpDv08sMd2wsQmIAQNbH+l3T58fvoO6PTG4vQOunp61d4jCzX0mQk3dBW6t1MZ/+
	71xUsVBR56kEJtmMC0Kdrur/uF+85l02Vr8Uu3+ciJXkvEQktN6VQ3wk7WbI223G8l77Ks0pEsxTO
	0wsPWvwW9QTcbcv1IRDA1cGeDPJDzrcC/NLbGNgQIb4D91rr7chla8RWDDQZBcZ9qE1c1KKSQ5gW/
	xBRwWwlj3nnLtdc1MwWMPvNcfqwj7YlplWcYatldIrwtozvWBctVdb7IKyC1U2eCyRqphitlrwGj6
	2ALJ9Rjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4k9O-0000000GBGY-3W6E;
	Wed, 08 May 2024 16:28:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4k9J-0000000GBCJ-0g8b;
	Wed, 08 May 2024 16:28:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 41F4C61CA5;
	Wed,  8 May 2024 16:28:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D4B5C2BD11;
	Wed,  8 May 2024 16:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715185688;
	bh=UYa9nQFbXFsPXVOkMa9L+1nCg7GuO4KyEPe7MnFS6Gw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GENxTopRekGLP/hpvKlsVPa/uM3UMefaKagfqUrxUv1AgSMFQrYTZ65RRMZiGt0bz
	 AnRMB47LJwr6GbmCWt7RMWoP9Mk+vuS5sdsdjenp9iCf5HtcxE3z8q+8cUtjTc27xu
	 Yx78/lzsuitziWFznkN8LKwJNUZ5DrmShAwGO1HAAf9cdGurgmG15c3HxSUVrUeBxM
	 i3LXC7vm/6ZQ/GVCn1qJ+2oZgQMRO99r/oYkBgYDJ7o30hcKbGy/weZ5jR3ShQlNd7
	 P3hAr+P3O81+lANvBLv7MuYKTeso51NDVU5o9M+UkfFcqUykBJNuscY2S0c7cVF9iE
	 9F5gZ+Bzx6/Xg==
Date: Wed, 8 May 2024 17:28:03 +0100
From: Conor Dooley <conor@kernel.org>
To: Markus Elfring <Markus.Elfring@web.de>
Cc: Jonas Karlman <jonas@kwiboo.se>, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	kernel-janitors@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH v5 2/2] arm64: dts: rockchip: Add Radxa ZERO 3W/3E
Message-ID: <20240508-blaming-kinfolk-7a0cf7f9a7c0@spud>
References: <20240508070611.4153602-3-jonas@kwiboo.se>
 <662d3052-d0ab-4034-84d3-fff4f985875b@web.de>
MIME-Version: 1.0
In-Reply-To: <662d3052-d0ab-4034-84d3-fff4f985875b@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_092809_277179_6B988BC5 
X-CRM114-Status: GOOD (  11.32  )
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
Content-Type: multipart/mixed; boundary="===============4670099479603916420=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4670099479603916420==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="p7P9ZT5PsCFLYhGM"
Content-Disposition: inline


--p7P9ZT5PsCFLYhGM
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 08, 2024 at 12:22:52PM +0200, Markus Elfring wrote:
> =E2=80=A6
> > This adds initial support for =E2=80=A6
>=20
> Please convert this change description to an imperative wording.

I think that sending a new version for s/This adds/Add/ would be a
complete waste of developer time.

--p7P9ZT5PsCFLYhGM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZjuoEwAKCRB4tDGHoIJi
0s48APwMPgOmyAXUppUMok08TEEu0Pz4L/HNda6y7HTL5uyrmAEAlCipL3IL9oOH
3dCsFvC7ldVF8jBqCdFSEl+5pu5BgQE=
=6FNx
-----END PGP SIGNATURE-----

--p7P9ZT5PsCFLYhGM--


--===============4670099479603916420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4670099479603916420==--

