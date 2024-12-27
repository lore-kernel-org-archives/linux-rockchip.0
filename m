Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1EABE77191
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 08:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WuHHzaEstOHgEVfahdO9AZB44OHeAbptAACDyVAYsVg=; b=ql4nKIvrUXFYtcq4FN93I77tsm
	0ABz8o0G9lqUfqa0jrESscialCnRa9iZOG2kEPTEhyUuN/fRFTC+bQFWgFSrHyKP+jXKrRhrBdFoQ
	cFK7itmnHGux7+0uHlZ0lFXlsyyu52JuXy5F8wA6EQAPn7SU2im4vy/MTCKVY6+k6HYGna9S/1114
	z0SN1d5YisFqnPjgDDJlbHHWs4PDiSLlNhP0OrW2uRw9THpTMfsJtQ9ToMYxmghlJ2FFjtx6SahIZ
	SCi5H2Fx8fipqhJamdwnucbh4Kd6l0NPrHyMtRWmmxq5tbKfvVlcpmyqUdmdxWbhAulQDOpAWSsx1
	uNEZXKhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR5my-0000000HNpY-26nE;
	Fri, 27 Dec 2024 08:33:44 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR5ke-0000000HNPE-2CIS;
	Fri, 27 Dec 2024 08:31:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4B9F45C61EE;
	Fri, 27 Dec 2024 08:30:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4864DC4AF09;
	Fri, 27 Dec 2024 08:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735288279;
	bh=t6i9LsXrCNZdkn0JqXrHROkhocyHz9nVVmksqSxkRyY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y1l+gTFHXyfRw1KcF/IE90IITO7MP6jj95xejl/xLPEOq1Tpo0EAfBZkB7TI0xNYJ
	 9ZiFCnw+WAddEuErtdO0NqeMZFwYtUKKb7yz/oq6zDISGchbVdYP1sqKCAip2CWSIu
	 0fNVJemOxubW9sK0y3ZaQWx86mo6IASZ0cT/gwrdg1p2wYS6n6tniKkkqrWmIwRkNa
	 GpH27sgdIF7taEP3+ZmNQgrFkxeM+DI7dwW3OIwaIe92/1L+dP/xrUVVe3CjMeuA/o
	 c3X9ach43dVXAZdqfeT/LhJDP8cbK0O/ezlX2XCOW68QhWNJvAWzZcngclN+9wXmrE
	 Js3TwfnWnokrA==
Date: Fri, 27 Dec 2024 09:31:17 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Kever Yang <kever.yang@rock-chips.com>, heiko@sntech.de, 
	linux-rockchip@lists.infradead.org, linux-pwm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 11/17] dt-bindings: pwm: rockchip: Add
 rockchip,rk3562-pwm
Message-ID: <jjz7dk3rr3sruyks6yduwo37fcxqcut3vuqax2m43nvipnqdsu@zxzbddrlzk6j>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
 <20241224094920.3821861-12-kever.yang@rock-chips.com>
 <c3r3ezqr6sg7vtvomngjchzlk6btyzrjtukezjvuqxesqbtrh5@cmlu3bw7dyzl>
MIME-Version: 1.0
In-Reply-To: <c3r3ezqr6sg7vtvomngjchzlk6btyzrjtukezjvuqxesqbtrh5@cmlu3bw7dyzl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_003120_612167_4DDE405C 
X-CRM114-Status: GOOD (  11.52  )
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
Content-Type: multipart/mixed; boundary="===============8884142296427462936=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8884142296427462936==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lmyousutwch2mlvv"
Content-Disposition: inline


--lmyousutwch2mlvv
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 11/17] dt-bindings: pwm: rockchip: Add
 rockchip,rk3562-pwm
MIME-Version: 1.0

On Fri, Dec 27, 2024 at 08:42:30AM +0100, Krzysztof Kozlowski wrote:
> On Tue, Dec 24, 2024 at 05:49:14PM +0800, Kever Yang wrote:
> > Add rockchip,rk3562-pwm compatible string.
>=20
> This we see from the diff. Say something not obvious. Where is the
> driver change? Why devices are or are not compatible?

There is no driver change necessary because the newly supported
compatible is

	compatible =3D "rockchip,rk3562-pwm", "rockchip,rk3328-pwm";

Indeed this could be made more obvious in the commit log, something
like:

	The PWM core on Rockchip's RK3562 is the same as the one already
	included in RK3328. Extend the binding accordingly to allow

		compatible =3D "rockchip,rk3562-pwm", "rockchip,rk3328-pwm";

Best regards
Uwe

--lmyousutwch2mlvv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmduZdIACgkQj4D7WH0S
/k6bHQgAmJuXIe1VQFxkvHw5JKicPt+23knzVTUjC6wiRnM5+QOPyr9dr67rhTBp
nwb9oaMsP5hVO7uudNyixkCGVq8E3OTacwrEoDISRRWNY3KxtRpVrckq3YKK+XLt
/l8KIHJJmtbuH/++BSN24uwF00Q9wJwK+zlywac/eCEsHaa49D/HLx8fiuCxP6VE
KqMngyX5pwLRSMVjT6pdcoyQJnLW6kQkXhI2phvaY8bKiuPNkx2mbJ6tRGi+Xuez
XGIv4vo7WZQLRFn2+yMpIKlvFUnIDSZ43Mru1MRmLUi+1kvXpWyjDYOHmqbEkBM4
NgnN3wwTA85srqToKTxT3JMRCDAu8Q==
=7X1D
-----END PGP SIGNATURE-----

--lmyousutwch2mlvv--


--===============8884142296427462936==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8884142296427462936==--

