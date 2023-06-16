Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE852EB64D7
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 19:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T4rTOe81ur3QaHzut5LDvxOqNqUQMyN7JSuO6bGmklY=; b=UIciYfrbnL9r2BRemYS/nOi0bM
	eyWcWe+H69uXIeqw1SsQ9OIrWs/cF62zqvi++7EDgB4j5zQd3yq/3BHODcU863obfkkl3EqMjz1k3
	P3lcObUlgs+Za6SSMW0IdS/zw/R7X/OAeNzjjIgupMwBzrFmlhsiFmkQsfedyUWnogx6eVMf1lLlj
	pYN2MjBeQhZ4U0YPMwuInHJIGUqcbXHs9CahUrARuHjUuwlZEwFGb0McOceNNZzr3xCJvSiDXYsny
	vqQjVEje7FCotF1wn6gOOMOtgvWiJfA9oCY9QnFof1rZifcGEZlIxbKyeK66eoLyzIZ7xSZ9eYXAI
	xMTmM7RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAEh5-001WdC-2l;
	Fri, 16 Jun 2023 19:01:11 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAEh3-001Wbs-0X;
	Fri, 16 Jun 2023 19:01:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AD6B162BE7;
	Fri, 16 Jun 2023 19:01:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 855ADC433C0;
	Fri, 16 Jun 2023 19:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686942068;
	bh=k7TL4/bEtYnlDoFIRBngv3fhHMXqUW4iN9W+YmmLUhY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aodvJaD58Y+8lUTMXpB+bGwpR4phhlnX+6Oh5PnMDn3MAiV5RYJFIv+KjZLQnAY0Y
	 IEW69W3BETBuIJatjMnz/A/Xeb6JidIvdDB2zGceX2LdWxPw5XDyD/HoZiae83A5EA
	 rFCGHggp6UO8oX+zbaJM1Pumsr4gBAT2YdfGbHTGf/T/5pVYFvOPZafZYn3PEUbc5w
	 Lk8k0PvJbAojM73H786e7KeJk75vSEh9JxatHIJTFPqnDB3RXNIW+DUN7rdHfem7Oi
	 68KrV5zWDb13L1BqzBWAplwxLJMFaRY9EMj4ejW3DLmU3QU8IZY8vwz/dexGHxzsQ2
	 spuA6P6lAoz9A==
Date: Fri, 16 Jun 2023 20:01:02 +0100
From: Conor Dooley <conor@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v6 23/26] dt-bindings: soc: rockchip: grf: add
 rockchip,rk3588-pmugrf
Message-ID: <20230616-gargle-spotless-9d04000106b0@spud>
References: <20230616062101.601837-1-s.hauer@pengutronix.de>
 <20230616062101.601837-24-s.hauer@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20230616062101.601837-24-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_120109_246576_85BCF897 
X-CRM114-Status: GOOD (  10.56  )
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
Content-Type: multipart/mixed; boundary="===============7988192310637232002=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7988192310637232002==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="NpVXOp9NH7FQ7UcR"
Content-Disposition: inline


--NpVXOp9NH7FQ7UcR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 16, 2023 at 08:20:58AM +0200, Sascha Hauer wrote:
> Add rockchip,rk3588-pmugrf compatible string.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--NpVXOp9NH7FQ7UcR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZIyxbgAKCRB4tDGHoIJi
0hRCAPwIBYDKio6eKwjALxf7btC6cRpqymJvrXVISsExsJ2rGgD/ZsjJuro0F/cO
PcC1ID8rsPY3eXz6PZ75Cx2uYr3Dogo=
=NrG2
-----END PGP SIGNATURE-----

--NpVXOp9NH7FQ7UcR--


--===============7988192310637232002==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7988192310637232002==--

