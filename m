Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DF5FC4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 05:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PBFLre19WNXGWWlNPIFi+QUDY5CmlwQN78kQjSyroqs=; b=Cu8Y7DwhhrHAIZJBRmxRUFqcbV
	blJlgDYX12X5IaqvhlbhLsRjaUqktOqH9HzN9FKb91FlqJhLZFn5q4DEv//RefeJ5SYwIrImzCoOh
	jroP7TEQeWjOxLUqFlkymmDf+rm6tqMCtgJFary6WWofBZ/iHy0xnRXvLI+oNJff5IIepP0rHYXly
	7gg/53QahVvyo2P+OU5phPysmM5oqKEiwsNF/wv7jJEDJLLMvSCQMs5yWssPXiUyuozugoIFLbO46
	np3b//iIap+wxxMOhJslcCbqKD/VeD5R3JrLGbQh7R34japVNmH0aBgLZ5gJlWFLAn7eZBebAR3c6
	D7MpIbHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rz8ah-0000000G1Km-1Ggd;
	Tue, 23 Apr 2024 05:21:15 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rz8ac-0000000G1Ju-3eTV;
	Tue, 23 Apr 2024 05:21:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0CD1ECE0ECC;
	Tue, 23 Apr 2024 05:21:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53F16C116B1;
	Tue, 23 Apr 2024 05:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713849666;
	bh=ZswWhlTMmhko0aj4ivj2k/t60uuVf4PrmKJ7kTdBZeQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jnImTPJK9V2l9W1kMX9zxePnE2fgacYV46X5nbb7L1jGTqmCcw1ImUoCYc1V2CkNa
	 5ZuxQqwfAIPDQFAlyzCCst684a5xF1DbGDP2K/TLGiMY21AHsWgtlHM/ydeY2WUc2/
	 6bz6HIBH6JQkv9QnkRqTQ0oA6Ye7feWEP7tN3kP3KaLsBF1shsTURTmy9wDsa3OqBD
	 RhdSePRfYoK0cJdMKXWQKc8OJ7ocUn9zTZcBOqMEmytsdXDxaW19qQohz7xmVURmGl
	 BYYBdPUSNDhHGCQpNhLbu9hcBWKYSb53h9Z+CSwzj5BJXMJtdfd3DNjyNdXvzZUo4y
	 oKI4XqjNxpT5Q==
Date: Tue, 23 Apr 2024 14:21:01 +0900
From: Mark Brown <broonie@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH v4 4/5] regulator: rk808: Support apply_bit for
 rk808_set_suspend_voltage_range
Message-ID: <ZidFPcN6Pf-sUKfi@finisterre.sirena.org.uk>
References: <20240416161237.2500037-1-knaerzche@gmail.com>
 <20240416161237.2500037-5-knaerzche@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240416161237.2500037-5-knaerzche@gmail.com>
X-Cookie: TANSTAAFL
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_222111_116499_5AA759D8 
X-CRM114-Status: GOOD (  11.87  )
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
Content-Type: multipart/mixed; boundary="===============5829668646545813053=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5829668646545813053==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NUAfS35NA4QvAbRI"
Content-Disposition: inline


--NUAfS35NA4QvAbRI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 16, 2024 at 06:12:36PM +0200, Alex Bee wrote:
> rk808_set_suspend_voltage_range currently does not account the existence =
of
> apply_bit/apply_reg.
>=20
> This adds support for those in same way it is done in
> regulator_set_voltage_sel_regmap and is required for the upcoming RK816
> support

Acked-by: Mark Brown <broonie@kernel.org>

--NUAfS35NA4QvAbRI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmYnRT0ACgkQJNaLcl1U
h9CQVgf/TrO/tVGh24ZFos9SFprJuo81/na0GQNHnAi/NhojgiUcivEkDIp7r27Z
N8OHQW09loPotWNYBsIJDDA9WCfymwrYjdRBn1QUxK7tIdOiyJomYZTZmhpPLxQ1
8z6qA8n0eWDKZ2ZXPfuEwBUpN2N7EkwYlvwZz16K4aRv4zQGBG467/k2zi2Uslco
49NHDMGgsDWOCWJtkjf6VjaMuXdjB51hAUws10GPBsD3RpKnKyLVuoViDPdu2DC0
6bjSqpVke4soIk5DOCLV4qpT6oJjVAVLYLELc0Z7dornlY3BZ81H6cQKGsJ1ZNXQ
ityIeEg8GJIyvUHJQqB4aN9gvERu3A==
=yn2Q
-----END PGP SIGNATURE-----

--NUAfS35NA4QvAbRI--


--===============5829668646545813053==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5829668646545813053==--

