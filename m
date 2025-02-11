Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AB58C0219B
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Feb 2025 17:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OvcLcE5l6SpsgTbPoOvIssSJUD3OAPaZyCUdXWmvd8I=; b=lb/a8Rtt03fEJlQpzKzvYKS9NU
	eHA1LcPdaZx7yskvE4LUfhXDixNBdQ92e4IfrkJTVWk/mmPBL2nsjrmUmQuyUkjhJEkIigRwTk6zb
	/+VSDrznEmNgPA/7zP4IJ9aOZL0nLWOPbiRS9BZ9K4fNs39vaIboNMtpRAoFDXgqwJ418Uuk1AX12
	4OLX/1bEm2WuGIUPLddulXpckSdu7dEHzJE8Cghvlk6IuYIwuux41PC8OOh6b0ZhIsJJ1LLcz8CiW
	aF7JJJ3v3/SzUy0wXIjSTQrxXs4MiAuT5vIbmHqyWyi3/FtlZbnB8YgJjT96DvHUbKXRkGNogOPRb
	M1jiKk/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thuXl-00000004mHe-1gA7;
	Tue, 11 Feb 2025 17:59:33 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thuUj-00000004lpv-3sI0;
	Tue, 11 Feb 2025 17:56:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 9C02EA40B9B;
	Tue, 11 Feb 2025 17:54:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5928DC4CEDD;
	Tue, 11 Feb 2025 17:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739296584;
	bh=N9OiVq4lA3y1Ju2JdD3nDT1kWhrKFhscMSwrUVrrf7s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hwdj3RK2bdWxTm2v9oFP02HODkeYrya7V5OzHTSLUNab2QJiADsQxpSkj8DLZfdeT
	 Lyn7Wqgqu+84u4FO44yZysLQhrNO+Duk12k+9prs2N4ZGb5MMJpKqyY9eGHIuQpiW5
	 TK4v2VR3CN38WVQzxjX6H3aPV+pTwAyNC2EqnxyX3BQa1eX3KU1WhE8f7IodQaGaDc
	 hueuv0Bezgbe1jOAwOcEoZwmE2k4kk3IpgSIHMOj8SEuIIAw9oie200aKIzsKdnJxK
	 xO8QtW8xJsfBcASUxu9f9emGW5I7NUemIkwwY+sHq5Tgkil748cOC6ZBMqxmNFDTMp
	 b/jLO9dx9WoOw==
Date: Tue, 11 Feb 2025 17:56:20 +0000
From: Conor Dooley <conor@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: srinivas.kandagatla@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org, detlev.casanova@collabora.com,
	sebastian.reichel@collabora.com,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH RESEND v2 3/6] dt-bindings: nvmem: rockchip,otp: add
 missing limits for clock-names
Message-ID: <20250211-brownnose-pancake-ec8010226e71@spud>
References: <20250210224510.1194963-1-heiko@sntech.de>
 <20250210224510.1194963-4-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20250210224510.1194963-4-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250211_095626_032306_0BA270F4 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============6554879940523792402=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6554879940523792402==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5lHI6jXJr/khkXOI"
Content-Disposition: inline


--5lHI6jXJr/khkXOI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 10, 2025 at 11:45:07PM +0100, Heiko Stuebner wrote:
> The clocks property correctly declares minItems and maxItems for its
> variants, but clock-names does not. Both properties are always used
> together, so should declare the same limits.
>=20
> Suggested-by: Krzysztof Kozlowski <krzk@kernel.org>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--5lHI6jXJr/khkXOI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ6uPRAAKCRB4tDGHoIJi
0n4bAQCGaE+a3c4Ovuh/Je2FzH7HyaSdzuOzAQjfzUqy896TMQD/aS3ACMxHzh+R
1ApLMMa2YdgCgtVGxmRBzbOAD76khgs=
=T9CO
-----END PGP SIGNATURE-----

--5lHI6jXJr/khkXOI--


--===============6554879940523792402==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6554879940523792402==--

