Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81D73C47DA2
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jan 2024 17:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ahKUF9nSuFW/RZB7PTjVw9kCkveMaEMFnc11CE2ag28=; b=gcjeXiSxDgB4YACgBNcDP//geV
	8IqArqB7WL5ug3AZ0wC4UYvH7boqwjk86Gjq2x/4TdhBTcqqlt8ognfuXDq3CHrMQXVm5kr6fl7R/
	awdKbr2F9bMJENxMmq0f3RNt5DryLr8LKTy8Md19KyAXhusFTfx3CkOUISDove/Bufk27m2sjeTR+
	F9QrDk7XW6niTOA3n1IYqtrm+s3g7U9xJixr7mLGX5UErpdVre23HjLEIiaMeUoUhSnOG4+7K1bQb
	Awe2udnliUSCmkqob8T+oq1zCwPohKyb4hDypNrR3jK+NlgrPk9J7unKF2J3oYjwe+3tQ2LDXYKcF
	dWmxatcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmun-00Chw5-1k;
	Tue, 16 Jan 2024 17:07:53 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmug-00Chpx-0B;
	Tue, 16 Jan 2024 17:07:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 320A2CE1A32;
	Tue, 16 Jan 2024 17:07:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 105ADC433C7;
	Tue, 16 Jan 2024 17:07:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705424863;
	bh=+J6OFZXz7AZ/IBScI79H1TDKdTdYLnQ20QFDaLANvjY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FYvDD04nkNrSO8ZRyS7yRyGFsjR6Z7Y96CF44xNwonJpYfFMEdbBgYaqs7aReVNX5
	 66UQXzE9JBMftPjbAsPj82gySETMtBRo7dSd0COGTzOnhHk5seBW6cwe627prxXvFQ
	 2XihRMGBDHrIBVArT7mMRmsHfJnUHp8p4sKNIuv6kM/Gcj9/FKZt0Wql2bXftTLQ2s
	 /d60jK/oNgYRPEADnVLFEqy6i4Q+5K/Rfy5AWR8RKuFeZMw3cp8olskt4Y4hR89hJ2
	 77Oo2pej9I6APxNc6rz0l5X/g5Kekzh+a3PfUB19SUgP6c2IZ3PTUVO+IrFacrr1es
	 u5bXDdFojtaYg==
Date: Tue, 16 Jan 2024 17:07:38 +0000
From: Conor Dooley <conor@kernel.org>
To: Tim Lunn <tim@feathertop.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Chris Zhong <zyw@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Zhang Qing <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: rockchip: rk809 fix existing example
Message-ID: <20240116-flick-ungraded-b36f8db15dcc@spud>
References: <20240116132102.3272682-1-tim@feathertop.org>
 <20240116132102.3272682-3-tim@feathertop.org>
MIME-Version: 1.0
In-Reply-To: <20240116132102.3272682-3-tim@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_090746_349075_CC906977 
X-CRM114-Status: UNSURE (   9.52  )
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
Content-Type: multipart/mixed; boundary="===============1423339359630246954=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1423339359630246954==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="BDyGpo91jO6xcf5l"
Content-Disposition: inline


--BDyGpo91jO6xcf5l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 17, 2024 at 12:21:01AM +1100, Tim Lunn wrote:
> Fix typo in the example specifying wrong compatible string for rk809.
> Remove additional vccX-supply properties that dont exist on rk809.
>=20
> Signed-off-by: Tim Lunn <tim@feathertop.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

A fixes tag would be nice too I suppose. Not worth resending for IMO
since b4 will pick it up if you reply with one.

Thanks,
Conor.

--BDyGpo91jO6xcf5l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZaa32gAKCRB4tDGHoIJi
0uG0AQDC2ImT5MjKTf4HGa7Ioch+YiRhKQ18P0S1aRyfoi7xPQEAoaDxLxpXf1JJ
Ownp4v0mP3JoN5oGLPMAitAyk9wdYAY=
=PzrD
-----END PGP SIGNATURE-----

--BDyGpo91jO6xcf5l--


--===============1423339359630246954==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1423339359630246954==--

