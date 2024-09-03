Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00359CD37AB
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 18:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=766k46BGRxUwbdX34hQ+7UzjnfD2BJ07MrXp8hFLw6s=; b=afHokaGl9FwQiZIq4ZGj/juAaJ
	EeTAc0CR4vj8lo33HdSSp7DId6PICGhBlwgpP44fu2jkLuyop2c/HBSDBiXTIX9WMLF8NCUXR4tAC
	rIsQNMgTEXw4cjME45YkS6rES6oFLDLFpuUA7FuV/yooAsWpdk2NjEIDzl9qwGaKdnF856BWKFbuD
	CxvsF9HpeYW7MU23Gxt6hCQwumtKspUB50mV4ZD7ERI4vbk2/lvOmskGUmdFPrdOKR0JXk2g28QaF
	XAB1QG9dVbWnuDhelpAGW1hoPDIccic1K3dkEzOizer5bjcywQgwokEOveytvuGte9hHC52QZb81I
	O5E8mULQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slYYo-00000001VIV-2LY1;
	Tue, 03 Sep 2024 18:47:26 +0000
Received: from a7-32.smtp-out.eu-west-1.amazonses.com ([54.240.7.32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slYXK-00000001UwE-2JU1
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 18:45:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1725389150;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	bh=FUY9hYn5geADyH+kdrj52y9UIdFcNquhedRUD29Fsik=;
	b=U/yA3uiwzFGhejaMOTgEn71VUbXXA4FtBZKW+nooVzpoxugqe1P19DU55BH7S1pI
	2xC3f1sWZQBpmUiFkAOAdfRg9hD3BOze93fxdLv9Tr9C/gxW4zJTDoJ68wj0QJlFG0S
	A9/GnWCR3JXmCIF74c6CIXzscPSXtZYyUEIIdOEAnuCa172F8ymtsPs8PFwxImrKf98
	pwQjUzd7oWkwJqY9X3P0u2tgBW2ral/qnITw38Qwm0oQheOI/+YnKWy7qbkFSeKSjGD
	zDksJLtJYrlVCuQClX3U6exICA2fyJYhadYW7YSFiqtdDSnaq5BKOVWkNcSPg6iOPMm
	0swq0dJqng==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1725389150;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Feedback-ID;
	bh=FUY9hYn5geADyH+kdrj52y9UIdFcNquhedRUD29Fsik=;
	b=BZWB11Es4si9zzmuv6tVg/epWhn8fEnKy3A0X/YeeZ0hmSMFSO1jNpT2bOCcRkwy
	2ne/IOOnfd5KnghclRpq7Kk2+OUzCVhVKUTGQbGSgPWqsEfzFR0uLX9VbUrkdKwDHj2
	024+N72czJ3qCAy2PFJjB/BQwKKJCu7cV2uU3Nwc=
Date: Tue, 3 Sep 2024 18:45:50 +0000
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: Detlev Casanova <detlev.casanova@collabora.com>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org, 
	kernel@collabora.com
Subject: Re: [PATCH v4 3/9] dt-bindings: i2c: i2c-rk3x: Add rk3576 compatible
Message-ID: <01020191b9351729-306930b8-deac-4ce7-a447-dfee781cf267-000000@eu-west-1.amazonses.com>
References: <20240903152308.13565-1-detlev.casanova@collabora.com>
 <20240903152308.13565-4-detlev.casanova@collabora.com>
 <bnpwnuhikwkqyf3jos67qwywhfge3vm6tfmlfitypd5k62jzdn@fri4swkl2zbq>
 <12506188.O9o76ZdvQC@bootstrap>
 <ycbhqmkwz2hirnvp6j47kz3cxnli3db3i5ah76gngrezs5ww2r@57x2gxnr5hyk>
MIME-Version: 1.0
In-Reply-To: <ycbhqmkwz2hirnvp6j47kz3cxnli3db3i5ah76gngrezs5ww2r@57x2gxnr5hyk>
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.09.03-54.240.7.32
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_114554_757903_EACAACA4 
X-CRM114-Status: GOOD (  16.68  )
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
Content-Type: multipart/mixed; boundary="===============5882653203786612702=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5882653203786612702==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zv4mythi77pto3d4"
Content-Disposition: inline


--zv4mythi77pto3d4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[remove a bunch of people from Cc]

Hi,

On Tue, Sep 03, 2024 at 06:47:17PM GMT, Andi Shyti wrote:
> On Tue, Sep 03, 2024 at 11:59:34AM GMT, Detlev Casanova wrote:
> > On Tuesday, 3 September 2024 11:46:00 EDT Andi Shyti wrote:
> > > On Tue, Sep 03, 2024 at 11:22:33AM GMT, Detlev Casanova wrote:
> > > > Just like RK356x and RK3588, RK3576 is compatible to the existing
> > > > rk3399 binding.
> > > >=20
> > > > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > > > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > > Acked-by: Heiko Stuebner <heiko@sntech.de>
> > >=20
> > > I will apply this after 1 and 2 have been merged.
> >=20
> > Sure, although it is not really dependent on 1 and 2.
>=20
> yes, but I want to be sure that everything is coming in.

Why? Patch 1 is not even for RK3576 itself, but for a specific
board. I would say the ordering is pretty much arbitrary for
patches 1-7, so I2C could have been the first patch.

(no pressure, I'm just trying to understand the rationale)

Greetings,

-- Sebastian

--zv4mythi77pto3d4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmbXWVkACgkQ2O7X88g7
+pom8A//QngGZOrAOUAOYiA0FZniXpg8o7yPHD/P8hQ5TZ/Ul2p9fO4AI4a3/qZZ
oVZ4zwzw6cEFu25LgelCfbhfdxk5UmKVW1iZDOXBnTej5SKSxWKghFAl4IUxxdrw
2heZBl5ay8rN/o8VYVfQT6uxJ5mnE/aM57/2In/3FAg+8ENPgVnCUY1t5pPA3bkf
aRO6dcVivniOgi1MU1xsTkMvH6ronX1MQquePQUdXusaxL1OLPL5Ic6rzczalqdX
OGyRjuJXLoEEdz59W7fissu3yDzGL0etSNsrM8fFQTdLTh3dQPnLeOwlhtKrvKfF
sPYUlGflQYRwwt3FFIDU7/Mt82WIA72f9EOhIMLBO84FvAnxYcFbTlvPGdsiW4z+
907lrBZovjLVUEppl2jTYN8wdL7DGguJ7l8nHRnXmQPkD3JoNuevmSTNnsbDPL0s
I6fgxjImNPtcA2HSHoZw9Vj+M8T7vQsOIFkgEAV4cFwFrefAXsVM7h0fGTT3gp+O
z/KkoLisffVnY9p1VsEUyRluA30kV+cL7P7yIdimZEzqn71CzJwP4nyXQ26iIZtk
WYd2/43OewrskJraciciiKok5+U5WBYZcUWellWDYhkwaCV0+WpZGzIV0zXEIFtt
+fa1D/WGGCx7EBovacX/EgocLiUkKbSqzQ1DQuje5OZRtGiZCQ8=
=vDja
-----END PGP SIGNATURE-----

--zv4mythi77pto3d4--


--===============5882653203786612702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5882653203786612702==--

