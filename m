Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB75BE77180
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 23:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uvm2Dy/jd/JUzlVcfFy4+eJcFfpl+utSppDQPwVugcQ=; b=0eeV8Cx/TKAQy5dESWTHqpBrKC
	vfdTGvs3Y2FhJwqvlhbG76+azylOZ1t9GaXwwkJPKSBZ4AdvaNOXKn1AGYxjwKRx79aKWZ4fHHrmC
	AXNu7Bep6Xp1JVn7JiyPw9pWTMZkLFTAHn73v2to4LqW+N/eYnwzikW7m59PZXvquGnd3et9173Sc
	SxYC3rWIarrALkv/I3rVIseiJoz5Q0lFhXfie9MxhQRe/21l9oHbQjG3nwvfWO4w7Nqdf6mNrmwYX
	QmXWFwNASc57g9RqFrOhkatOj9Lj8WnDKy7azQDdr3hnMh6VqdBw1CHH7MCqo/TXpRcMb+8eORnwk
	oY9JDqCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL9dk-0000000DAAN-2Wey;
	Tue, 10 Dec 2024 23:27:40 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL9di-0000000DA9k-1Rmz
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Dec 2024 23:27:39 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1733873245; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=T8mwsCj1K4qwWnOKCe3SMccU8Ee2A9OLp88pJzI+MH+en/awE5CNLBeEO/pvHVYnFAwgGIm1Sjm9ckMVzdfGidIqN5GFWd0fJ4JNLdr184lS/izkbeUN3uHh11ttGiyxfGnE6RG6z5SPdrQMbHWa1KkiM8cRPlAQrxvXiiRadVA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1733873245; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=S5Y+gIihRXFWBQSH13/S3EIEmvAEO9vUhJ1pyTVGmIQ=; 
	b=YrVJGnKk5kp8/0z3KhHJ7MdaLvwCY6eE4mivEgobUI1JEmNdHvUBizSQtMfLTgg6bbmsRvqJ4+mJFzaOAuTytomUfCdw4vs0nkBZrpkFVk+gW4M1nTs0NPAVb7znjMtULrFbMPZ+O0hEa55yw4NzQdl4Kz7/2t+MMXr132fNI8A=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1733873245;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=S5Y+gIihRXFWBQSH13/S3EIEmvAEO9vUhJ1pyTVGmIQ=;
	b=RsRnJV2+l1Dn3E0d12RhK64YIRQDl4uN6YDfJdEPIVrBD27U9kSLyuq/yJXlufCI
	YhBg8p4e5RanCxvLKGKKdd0trEskEAKZJqycXkOHd6U/10D2tn8TQ+nMboqg8AmCO8Y
	D4DvXzestQDc9C7Y8IjYtbQ5R1uinbE991r5wqew=
Received: by mx.zohomail.com with SMTPS id 1733873242779286.3544610017565;
	Tue, 10 Dec 2024 15:27:22 -0800 (PST)
Received: by mercury (Postfix, from userid 1000)
	id 85DE110604B1; Wed, 11 Dec 2024 00:27:17 +0100 (CET)
Date: Wed, 11 Dec 2024 00:27:17 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Mark Brown <broonie@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>, 
	=?utf-8?B?QWRyacOhbiBNYXJ0w61uZXo=?= Larumbe <adrian.larumbe@collabora.com>, Boris Brezillon <boris.brezillon@collabora.com>, 
	Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v4 6/7] pmdomain: rockchip: add regulator support
Message-ID: <vkeenncm2azxe6topeajc5d43d7gqgqrjtqadaz6cxbe4f7ucm@c4nhv5rrjvhd>
References: <20241210171023.141162-1-sebastian.reichel@collabora.com>
 <20241210171023.141162-7-sebastian.reichel@collabora.com>
 <4082877.3daJWjYHZt@diego>
MIME-Version: 1.0
In-Reply-To: <4082877.3daJWjYHZt@diego>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.3.1/233.863.1
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_152738_464961_5874C74B 
X-CRM114-Status: GOOD (  28.94  )
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
Content-Type: multipart/mixed; boundary="===============2280581411630085297=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2280581411630085297==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6k6r4c3ojau36eyv"
Content-Disposition: inline


--6k6r4c3ojau36eyv
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 6/7] pmdomain: rockchip: add regulator support
MIME-Version: 1.0

Hi,

On Tue, Dec 10, 2024 at 06:51:34PM +0100, Heiko St=FCbner wrote:
> Am Dienstag, 10. Dezember 2024, 18:06:46 CET schrieb Sebastian Reichel:
> > Some power domains require extra voltages to be applied. For example
> > trying to enable the GPU power domain on RK3588 fails when the SoC
> > does not have VDD GPU enabled. The same is expected to happen for
> > the NPU, which also has a dedicated supply line.
> >=20
> > We get the regulator using devm_of_regulator_get(), so a missing
> > dependency in the devicetree is handled gracefully by printing a warning
> > and creating a dummy regulator. This is necessary, since existing DTs do
> > not have the regulator described. They might still work if the regulator
> > is marked as always-on. It is also working if the regulator is enabled
> > at boot time and the GPU driver is probed before the kernel disables
> > unused regulators.
> >=20
> > The regulator itself is not acquired at driver probe time, since that
> > creates an unsolvable circular dependency. The power domain driver must
> > be probed early, since SoC peripherals need it. Regulators on the other
> > hand depend on SoC peripherals like SPI, I2C or GPIO. MediaTek does not
> > run into this, since they have two power domain drivers.
> >=20
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>=20
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
>=20
> sidenote:
> part of me is asking, why we're limiting regulator handling only to
> specific individual domains when all domains sort of have supplying
> regulators - just ones that normally always stay on.
>=20
> But, the binding is generic, so we can extend that later on in the driver
> if needed. Especially as this fixes a problem that happens right now.

I agree, that this should probably be extended to some additional
power domains, like the NPU in the future (as mentioned in the commit
message). Specifying the full requirements for all internal power
domains would result in some dependency cycles since the regulators
(for RK3588) need the SPI PMIC and for SPI controller needs some
power domains to probe :) We are also missing the necessary
information which regulators are needed for each particular power
domain. I don't think its worth the trouble.

Greetings,

-- Sebastian

--6k6r4c3ojau36eyv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmdYzksACgkQ2O7X88g7
+poMUA//Z2Lub03b71/y64gXVTcpEunaBBeUzXwykw75YBgwV4DgdWbU7pSNKqXH
cyvQB3s9AcyeiW+qkww0CG9DOSTxNW2Ce44VEeoFP1/TMMxk4iLcjCUWyRDUfGiN
MDYlMX9LLgdJpwKvw5LsUduzpDcSc3TLgM90m7Zk+G+qxHThst6F7seiiT4Y2oX3
bmbIVQ9jSirM4mTTCyLQM/ekpD7rTiwjEVbka3n6bCD9O9VeN+bujUogtm6MWUwq
VX/PknC8B7aL1wzcqd38PMueA2WBLkNJJJGMD/RWY4LJGZj6/Ons1Rk5mKOuMxyg
HBwOpUyZhK/8I21j5QSnOvkq1NtCg35WFnfdlv8Ih2S+nHH3Og1yeSanuMCz3kSW
W7BsOaDpX+0oFBE0Bl31uohykfTmGvJfV6+Urn3NrseYLatGJ8ywLtv7zBfijhfp
2gOP7IOwlzlbwGHJyPWlwo7U3vSRdsFQLZliTTuaxQg3hKpk+mM3hu+wYRgeAWCm
ZeFclbVkgBkWUoFha42eNOHJ9SEKav0oqfnowBVOFfG90y+yzQNmes6gL75w2JFZ
loTX3O3I3iEgLcSXWN3vCuH0NuVsykVjPCIByXzOzSPZhz/S2CE8RByxaMkh6C5J
gf/tLVo4mOsqQYitJNWnySLTVjSapJ8sKgdm4PGzRvxx+3lwDmk=
=rwns
-----END PGP SIGNATURE-----

--6k6r4c3ojau36eyv--


--===============2280581411630085297==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2280581411630085297==--

