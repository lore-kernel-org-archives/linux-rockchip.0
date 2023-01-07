Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C64C2C54EBD
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Jan 2023 00:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OVNusAv6CsZUds7/64mpth6+pX5rtzYriZBqJjjbPao=; b=boAiFD90Wu/1pUrVchDDbTRttB
	G/S4AQGKqTCybjqqhW2BocP4aKQHUH0qwmjlb05ymPA4WsNvOYYq7UqbPIU0E3N7guqzVjwc6+PTA
	Zka7V3tlb4RK0c+BRCRI+PTcB2d1bu/RgW1oOsZKM8tZO8zbjkuT81O2gj9rv2MILqUFSFF1e2D1r
	0qpAz6TbMWPoTofAK7rG5v+3YhantOXeOZmi2EHyZS8dfSGH9zDmQyOoIxrP+OQQ3xp2Ly15M63HN
	ciZKWy0lXnLswc0o5mrq5GybeWAHbqwF4kkhgJShspKjwKM3c6Sdqzx13ZcqaMaRPCtMyIfHl1YM6
	fXUg9K5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDx58-00FxGK-A5; Sat, 07 Jan 2023 00:29:06 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDx55-00FxDt-85
	for linux-rockchip@lists.infradead.org; Sat, 07 Jan 2023 00:29:04 +0000
Received: from mercury (unknown [185.209.196.162])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8063E6602CAC;
	Sat,  7 Jan 2023 00:28:57 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673051337;
	bh=1gl6LsVhIq96ZvOtzi/5rdnwKeeM8tSg6bsAsZ1suWA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HFK4hFO7xOyr1PT4XPsBdzM+lun8jkcBY22HYJTak1hsAODkRAS4BLzkgnH2yaucu
	 LBzx+JZ50fIxSmrYF6zzs4j/WCEIgBvJd3bwKZQeL1Fp/SivG9P/nZ14g8mrslBAcf
	 5gNOyBimm+fz+/Xci2nj+EomP4bIGhVHvNohfFS6372Y5mn/vngul42Sts3PsECsqf
	 yKBGv6ub8/mziaMJaBRkrPW7fxlS/6exCGMxYrh3krZAxpgfEc+t9v5dKl22Oeyy/+
	 7w2BfGCe+5GOeflTM0yH/VLSDNH4V3ml+kKMypnpK/WRahGtiyCTEQn5NI+6T3bSac
	 CaWfnsldItLCQ==
Received: by mercury (Postfix, from userid 1000)
	id 56ABA1060774; Sat,  7 Jan 2023 01:28:54 +0100 (CET)
Date: Sat, 7 Jan 2023 01:28:54 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Christopher Obbard <chris.obbard@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Marc Zyngier <maz@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCHv6 4/7] dt-bindings: arm: rockchip: add initial rk3588
 boards
Message-ID: <20230107002854.2kok76qdvl4a3hzw@mercury.elektranox.org>
References: <20221214182247.79824-1-sebastian.reichel@collabora.com>
 <20221214182247.79824-5-sebastian.reichel@collabora.com>
 <d12fc3f83ace9285f7e1153003b14bc351ce95de.camel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <d12fc3f83ace9285f7e1153003b14bc351ce95de.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230106_162903_439789_4D6166B2 
X-CRM114-Status: GOOD (  13.75  )
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
Content-Type: multipart/mixed; boundary="===============8706105450391784598=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8706105450391784598==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6j42mnurxmtewttt"
Content-Disposition: inline


--6j42mnurxmtewttt
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Chris,

On Thu, Jan 05, 2023 at 07:20:19PM +0000, Christopher Obbard wrote:
> > +=A0=A0=A0=A0=A0 - description: Radxa Rock 5 Model A
> > +=A0=A0=A0=A0=A0=A0=A0 items:
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0 - const: radxa,rock-5a
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0 - const: rockchip,rk3588s
> > +
> > +=A0=A0=A0=A0=A0 - description: Radxa Rock 5 Model B
>=20
> Hi Sebastian,
>=20
> To better match other boards from this vendor (e.g. RADXA ROCK 4)
>=20
> would it be best to capitalise this (and obviously the model field in
> the respective DTS patches) the same?
>=20
> So it would become "Radxa ROCK 5A" and "Radxa ROCK 5B".
>=20
> It's also capitalised this way on the documentation website [1].
>=20
> (I think the vendor has specifically dropped the Pi reference from
> these boards, but I don't know why)
>=20
> Thanks!
> Chris
>=20
> [1]: https://wiki.radxa.com/Rock5/5B

The current format has been requested by Radxa:

https://lore.kernel.org/all/892CB3E963AEF095+eaed7498-2324-9476-6a24-f940d6=
2adb74@radxa.com/

Greetings,

-- Sebastian

--6j42mnurxmtewttt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmO4vMIACgkQ2O7X88g7
+ppftRAAlohUlNVG/PaH92svsxQN7OG3repg8J+5tm2b9VZK2n97plcrsMvYLz2F
UXLJ+iNvKEaMCLRwD/SlMa1mimAZXL64yukEss4Gh3ZAiLHaA5xUB0Jpop5GO+y5
AGE05YbUoU3c4UfM+9lkNYq5eHphu136CVPrv2H98SxQjA7XZentQ7O94u+Uz11X
n5J94Rd2RQs2zAvblHEt1yq84bgC+55pdNdMIgUewnFBEOW9Fts+INcjWh2O3gGb
avgBispVRaoGMQntYcgfKp4b9xaaAkQxC92Yjo3Z22rp9i3s6ab7krZCWLQuplqG
moSn3xNfLev0N0CWhHgIXVosifWsG9v2RP12MiAZ5xQUfU21svEkFXyn8wvCf78+
hZM6kxSGWuupwro1s7YCkRnDc1QKSHFjrVptOBHiPwu2szh0XH0s34pFdCcuumT0
x2oQYfzDViMaIAhF7Q0UOBBLh3P6b0IcDai0MXSMpWohSERba4hi5rmOIdnFIIvg
ylFmtNB/KKLGEG/H3BveYzY695liF9cQlChU7smVFnRyuytb22jwYZ6qPRuczH1F
FGs4F28YJg49IjFiugGwDBJOTb2fOFcW613nEUob/vhyVG0TI7sjwL4Y91q00pbO
UMWxaT8Pp5T4N06k9YmiE2GqAG2lOP1E/7HMSV0HiwDYZtqemJU=
=UWT0
-----END PGP SIGNATURE-----

--6j42mnurxmtewttt--


--===============8706105450391784598==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8706105450391784598==--

