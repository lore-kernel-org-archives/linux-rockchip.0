Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3531C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jun 2022 10:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XAH88IMrzu1xCHJ1OLgxRD380dfBtHjMNWjdyncdj4I=; b=yeJP6ek3qGwspHr5gUauP6IXFX
	y98/ZCvVVKWdRbbcSVZoEdkVPoaxc4g9g3yvkPj63BTZh2IbSE1P4SE7k+UNAbnIWNwWXsZUMRDqU
	AfqE2BCgkjm8T2qLcFNGeixrgHrLgckJhlTmKOMQ/oscVnudMqxgcNljHaqgZYYtYUlCm5+146PFX
	i49D9MbAv61sHRAnXEQM5CxrUWs2PAWGCdxB1Tsc+pADnw/adil8wXF5qINPOOaWafvYzMgApuNgz
	M3t8VjTP8NP2kR025jqro2bwX+EhUNsdL5BrByvQ3N8U/lwJDg7V2XiNPVFiNvWWgZOND9ItUA2Sy
	3U1oey2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o682r-005cOi-Dz; Tue, 28 Jun 2022 10:02:09 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o682g-005cMT-PI; Tue, 28 Jun 2022 10:02:00 +0000
Received: from mercury (dyndsl-095-033-152-169.ewe-ip-backbone.de [95.33.152.169])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AC26566015BF;
	Tue, 28 Jun 2022 11:01:54 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656410514;
	bh=B+3J166mE7yKiVnjSIyWp3uT7KdPeBK+33FGGWy9RJg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M8saON4JHL9YGPUFK1egyrxL/8I/qsYZXe6LxdIs3ftZ5nLVb6f2GxpvYQYI1gwXE
	 Er8Li0/WGkZydvB3Qk+R21aLPz2KZjEa6eNgiMKI3M9PCTptid9HYSTA4v0K3RiT2a
	 Wf3GfKywmOT0WhMh4JB0oY1imBpu9Ec7LZr3NlfxSzqqSyExNPROSxXYtxGUtP7PXQ
	 16+dtthw8a12V5kqJcR2MSWd+obty7RK9U+4z6eAkllpVo1zcElPZwtUoL8j7vabIh
	 tCNs1KxSZUZcERzPF8Lu3fgWl/NKynNBUwfyCOPO9CXGLn4coDOwYj7SuJwa1PIIo+
	 TrMiFE8+UMOMQ==
Received: by mercury (Postfix, from userid 1000)
	id A946E106069D; Tue, 28 Jun 2022 12:01:52 +0200 (CEST)
Date: Tue, 28 Jun 2022 12:01:52 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	David Wu <david.wu@rock-chips.com>, kernel@collabora.com
Subject: Re: [PATCHv2 1/2] net: ethernet: stmmac: dwmac-rk: Add gmac support
 for rk3588
Message-ID: <20220628100152.hpugcvxtqdq7pfic@mercury.elektranox.org>
References: <20220627170747.137386-1-sebastian.reichel@collabora.com>
 <20220627170747.137386-2-sebastian.reichel@collabora.com>
 <7314b028-3cda-d70c-80a1-25750235a907@linaro.org>
MIME-Version: 1.0
In-Reply-To: <7314b028-3cda-d70c-80a1-25750235a907@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_030159_074356_531A4077 
X-CRM114-Status: GOOD (  19.58  )
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
Content-Type: multipart/mixed; boundary="===============7925680896311096532=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7925680896311096532==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c2yjj25avm3cvkmr"
Content-Disposition: inline


--c2yjj25avm3cvkmr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

On Tue, Jun 28, 2022 at 10:55:04AM +0200, Krzysztof Kozlowski wrote:
> On 27/06/2022 19:07, Sebastian Reichel wrote:
> > From: David Wu <david.wu@rock-chips.com>
> >=20
> > Add constants and callback functions for the dwmac on RK3588 soc.
> > As can be seen, the base structure is the same, only registers
> > and the bits in them moved slightly.
> >=20
> > Signed-off-by: David Wu <david.wu@rock-chips.com>
> > [rebase, squash fixes]
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> > Krzysztof asked what "php" means. The answer is: The datasheet
> > calls the referenced syscon area "PHP_GRF" with GRF meaning
> > "general register file". PHP is never written out in the datasheet,
> > but is the name of a subsystem in the SoC which contains the ethernet
> > controllers, USB and SATA with it's own MMU and power domain.
>=20
> Maybe there was a typo and name is PPH? Like some kind of short cut of
> "peripheral"?

Maybe, but then it is consistent throughout the datasheet and the
vendor kernel. There is a few hundred instances of PHP_ in the
datasheet and PPH is only found for Displayport PHYs (DPPHY).

-- Sebastian

--c2yjj25avm3cvkmr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmK60YgACgkQ2O7X88g7
+poNGA//fEqVCXbx8RU3oSYO8REyv6/VZBK5mmbgFGTRgfx6saGdL23ygwT5CwJV
ONdL3BuHUBeSIOEVCe9HaTiE4LezWtdmNijAQm5dV47TIOyA2LYyoXtW+uYpWcc8
G0Mv547WfztVhClFCP+EjNuP/krXiNOaQU+JsvtFEzGK3t2RiPzCzFqMCkDke4F1
xE7Oz9UAgiFCFDxwKZdON1hP1rTYYBSKqiWT+6HuWY/kwSOPJxMK5/AQhKoEm9lC
j3yPpI82w4lN1E643IdJ/OWmiQb7NFLJ3RL2BgNiy/RQ8UyrlXaNCn557KX+tD6A
DFIIMVBmsjMwMxqb5tUanEydIH6I93vTBhKwRcztmJ6Gl6XZF0CuKXy5FqrhIABy
nYmb2Bonj9wU0SGoOYd4OX6nrCZ/nwbjHLO+xBxgKdX5s109WOJL0VX637p6mTmZ
XhweYOjZZGu+Or741RxiIfjoUjGKpbElbAbKApM7BaDmqO5VWhcZakq8oJ4TtH66
B4Otqi/5YJJLmyizWNZsfJHI7K7rvB+pc4L896Ve77SXJZaePzA/9/zr7X45h+rW
KfSiiP82YulVWYNXRNX5A1pMqOx8AG2P4R11IDZ3FnI+wVzDsAuz51IWFSk6q6XF
NLHlLM70E9ZoVWIR9MDF6AenyA2iTNqgMVoN7GlynUCi8x5yqGg=
=lyNm
-----END PGP SIGNATURE-----

--c2yjj25avm3cvkmr--


--===============7925680896311096532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7925680896311096532==--

