Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16255C52D6F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Aug 2024 17:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=taNkVGCMKddKnr6JCY8hAZ/KCWf4cTCBBKjGcyaAcPQ=; b=w3JoCSx4BEhNgOqnXwQzitnmdZ
	7DFQ4T4U0XcA/kmTl5YPvVIa8Rd3tjdyMh74zacihdDktd+qvXaKq9EPHq3JK+y/RSpNRx1ky4xWp
	kW4M64mtA5Kn6UpUuT45V1OnIOv8CK5Me4BSLbV37aAujnOvyu1s6DPaX+xK0C8TdmxVUmiupToC3
	niMLdk79h5CHMRxu57CcCXvKn7PCKM+Mc8JlMwTIqkayFpZu7NTwT5hLqWGMlaqYQY0oRvI2Rwrp5
	s9+mSUXRjdoXyS74e8uP3BQBBRmY9OJ4A+90GbsrQ1H9toVzmJUTxOsJplpT9tlsrHCK3gca9xVxw
	40wHyMPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg62N-00000002Nc3-3ieP;
	Mon, 19 Aug 2024 17:19:23 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg5tJ-00000002KrJ-2LWc;
	Mon, 19 Aug 2024 17:10:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D5C46CE0B00;
	Mon, 19 Aug 2024 17:09:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A86CC32782;
	Mon, 19 Aug 2024 17:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724087398;
	bh=y0BPApxZk4aDhMX97Jwl8VXXrKnby22KdqpU7J1bQkI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pa+h8DrxLeHfDGJrBQVitsYHqB/pyw1h/FU0HbRVRFVEk4hghLNNTBVKgDOWYPEuN
	 2uVkgPVbgel/8HaR5+UTrszeOkYA79Ma3wUzx4flbhRf2KyLXMQoO5KFi7GmsV9wRg
	 8DJve+xTwvD9HqTnl8lU7kMKalPzevXJ2XaUj68fOEdHNKCuQlElpz2LQunfj/Uy/j
	 cFVyiuG29X10hY61G2aQGwfGVKih4ZNLyPQYyeXcuDGjLW5cGKArqIFAtCNpN0gSKF
	 iM4BMKPTN1SIQRBwZ3VZGfbCaTcu4cU1/kfmr/rrJht7nlMj89/APVdA+cR3Ravw6p
	 xP7SCYrgGG6TA==
Date: Mon, 19 Aug 2024 18:09:52 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Serge Semin <fancer.lancer@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Magnus Damm <magnus.damm@gmail.com>, patches@opensource.cirrus.com,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Gabriel Fernandez <gabriel.fernandez@foss.st.com>,
	linux-mips@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 3/5] dt-bindings: clock: renesas,cpg-clocks: add
 top-level constraints
Message-ID: <20240819-troubling-player-29e310e19708@spud>
References: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
 <20240818173014.122073-3-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20240818173014.122073-3-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_101001_799907_EF758212 
X-CRM114-Status: GOOD (  10.06  )
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
Content-Type: multipart/mixed; boundary="===============2540762647324366494=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2540762647324366494==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sVIeHr/i4zviJEQI"
Content-Disposition: inline


--sVIeHr/i4zviJEQI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Aug 18, 2024 at 07:30:12PM +0200, Krzysztof Kozlowski wrote:
> Properties with variable number of items per each device are expected to
> have widest constraints in top-level "properties:" block and further
> customized (narrowed) in "if:then:".  Add missing top-level constraints
> for clocks and clock-output-names.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--sVIeHr/i4zviJEQI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsN8YAAKCRB4tDGHoIJi
0lwuAQDKkWVinmbagVwudZnRiljGI+aqE2s4bM/77Eu7ju0UkgEAro7GK2SEKlT1
Y+3SDLYFT01P134qXysfSawdu8ozOgo=
=ekTV
-----END PGP SIGNATURE-----

--sVIeHr/i4zviJEQI--


--===============2540762647324366494==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2540762647324366494==--

