Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 217E3E9B262
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 13:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gecSH6yLLYQMnU+gDAtxmuHD63pXBpE6fPR6i5ID2tg=; b=gNUOzQrain8jyNG/9S8cabVNJn
	eFr1kRFAFy+1BxmY2rmSFXCCLGPrgrSpXimECD+KohlzdhelSD+YquRgr0ZXsb10KZhtHMTOiWBB8
	ZO0eMIDnVaIIWCtz/zyN6XWu25cydFGDRjVs3Yzylxgh3H2hoZ6+MMSKwPvUyCenPiaDf9f5gmiEg
	ePsqEWqC3U9PLqGDLyl04ZD21HmLxXZrgViOI9112XP3eQcZR1hjMAiStygybdr61mwMeqMXDIJX5
	4a9qqQw1cDhRuicZz7M8P8lT1qDW4j2lI26iwL3bNFrtdWH+hE1h1H3i0LP8LRN0Wr0rAvrgY/+cL
	HEBezw9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vusmB-000000029vN-30gw;
	Tue, 24 Feb 2026 13:48:35 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vusm9-000000029tv-1DPH;
	Tue, 24 Feb 2026 13:48:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771940910;
	bh=XK3lnbLHp3F3TbLRCuI+YUBc8vSBWoCNj/X6pk8dVkc=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=jK0AhPrl6tzyPGx/IPxrNIVlT1S8y+7dzRyJQ2Rxjg1y5uylL0ayRaWlW2dFUudW+
	 K775pjD9Stvb4jDTUT4uZkyf0scm5pUprsFo5tsVoSiGH/1K0WAPKIbXgMUy2LZNqQ
	 pPUl3aB/Z7YS8p0bEqGfZOWuewJc5wVg4PwJyluCJGvYdR1cibPi2tWuj0zhneG2rm
	 Ixjk7eKezwxhU6SmYwX5TQvkGX1dq6l972fvKk0+NEonTRSUV0mWcuFgH6/FXl1UAA
	 kIPT2JFrAQ4auARaW3QGOki7HXfuWJPDSiTtIY5vQzhH657ICu8pmoWSpDGDDoXvr8
	 UTwZ37MUOMA0Q==
Received: from [IPv6:2606:6d00:15:210e::5ac] (unknown [IPv6:2606:6d00:15:210e::5ac])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C948717E0C21;
	Tue, 24 Feb 2026 14:48:28 +0100 (CET)
Message-ID: <e73da0713587ad5380344afa686a13431d07e232.camel@collabora.com>
Subject: Re: [PATCH v2 1/3] media: dt-bindings: rockchip,vdec: Correct
 reg-names order for RK35{76,88}
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Cristian Ciocaltea
	 <cristian.ciocaltea@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Detlev Casanova	 <detlev.casanova@collabora.com>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>,  Mauro Carvalho Chehab	
 <mchehab@kernel.org>, Hans Verkuil <hverkuil@kernel.org>,
 kernel@collabora.com, 	devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, 	linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Conor Dooley	 <conor.dooley@microchip.com>,
 linux-media@vger.kernel.org
Date: Tue, 24 Feb 2026 08:48:26 -0500
In-Reply-To: <0874bb3d-b38d-4ea3-a5b0-2da2484cc3e5@kernel.org>
References: <20260223-vdec-reg-order-rk3576-v2-0-daf4942dfc02@collabora.com>
	 <20260223-vdec-reg-order-rk3576-v2-1-daf4942dfc02@collabora.com>
	 <20260224-saffron-peccary-from-heaven-2d5e6e@quoll>
	 <244b22d3be77047163b4e47c4ed33b5b1befb4b4.camel@collabora.com>
	 <0874bb3d-b38d-4ea3-a5b0-2da2484cc3e5@kernel.org>
Autocrypt: addr=nicolas.dufresne@collabora.com; prefer-encrypt=mutual;
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
Organization: Collabora Canada
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_054833_484903_4067A322 
X-CRM114-Status: GOOD (  11.36  )
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
Content-Type: multipart/mixed; boundary="===============1724746826417145567=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1724746826417145567==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-wqbx/pwaKIk3hdLCdlUe"


--=-wqbx/pwaKIk3hdLCdlUe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mardi 24 f=C3=A9vrier 2026 =C3=A0 14:18 +0100, Krzysztof Kozlowski a =C3=
=A9crit=C2=A0:
> On 24/02/2026 14:14, Nicolas Dufresne wrote:
> > > > =C2=A0
> > > > =C2=A0=C2=A0 reg-names:
> > > > -=C2=A0=C2=A0=C2=A0 items:
> > > > +=C2=A0=C2=A0=C2=A0 oneOf:
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: function
> > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: link
> > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: cache
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - items:
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: li=
nk
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: fu=
nction
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: ca=
che
> > >=20
> > > No, ABI break without point.
> >=20
> > Its not released yet, otherwise both order would need to be allowed.
> >=20
> Also, not true.
>=20
> git describe --contains=C2=A0 c6ffb7e1fb90
> v6.17-rc1~90^2~3

Ack, I thought this was part of 7.0, it would have been logical to be part =
of
7.0-rc1 I must say. Whatever happen, backward compat will unfortunatly be
needed.

Nicolas

>=20
> So clearly released.
>=20
> Best regards,
> Krzysztof

--=-wqbx/pwaKIk3hdLCdlUe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaZ2sKgAKCRDZQZRRKWBy
9DjdAQC7PXhY6Nr/tOZ3xzAPxraz8WRtCF9zWoAIekH6dEkvWQEAsQmcLYG1cCa4
mITxqDZT+4fNpHh8CzpXP3D67Px23AA=
=A2Yx
-----END PGP SIGNATURE-----

--=-wqbx/pwaKIk3hdLCdlUe--


--===============1724746826417145567==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1724746826417145567==--

