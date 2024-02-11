Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7240C4829A
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Feb 2024 17:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xhp4Pn1vQ1g/Un2dTE3kqtEe7seAqg8+T1l/Mb0+oXQ=; b=iFmfbZBh7nnPWySZH5b4KQQ+hi
	LDnmmjJT5A4EykM4PG4uE2dbJwW2DIVSAtPLP8dn2UAYkr0v8t5qlwDF6+XzwEO/swTGwt41k9SfR
	z1EPMbx4YK/fQ7zsxLt5xXMnCVPozwjrxJoUAA2NguAFKkWBqR7r/dBM75gp2572pScb2n9Gyy1oX
	fypmB2gob6y8AiCdPQXqS8LEiHC3hnyz/g0JzSFQAHA9kOQT9TnV8nEJq+jOKV38K4E139Uuih/6T
	nfUnH7Od8P0ZQScmeTC49kFkMPDashqb5tLs9kT7nCZa8aTW5jS8+bUaC6Xecp3WfflLcMJM+a0Nl
	2x0uIHSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZDcc-000000034a8-27uN;
	Sun, 11 Feb 2024 17:28:06 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZDca-000000034Z8-1BqP;
	Sun, 11 Feb 2024 17:28:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 41E13CE00A0;
	Sun, 11 Feb 2024 17:28:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE375C433C7;
	Sun, 11 Feb 2024 17:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707672480;
	bh=y3Ubh8Tiy/3GXFRMEO7G2rV3CZjY88WuRV3Wp5PzzDI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CTdfnmJvnCiNQvdHkps0Ks2HdAvbzApLljwwnm3gbxYR0ZQLXhKCZCPTZVLUrhUYh
	 nvju9BcIbLtpUJ7TBD3vWey6DaXZUjJUEDIHOXmNKqk808gsS60eEFx4FCw1JK2nCB
	 WjVN4P9M92Y4PJwIR/JTE/rOTQkKACMYaSsUFo1lhmoRdwnS+BfYNzuoKElXV8kUJA
	 8QplHqD42dU54ydjPQXGSR27zsae7cKdwf2f8lBLmCK1G437M3zfV1RgLUahLlrxGM
	 UiFoKpIVhSg4xdGBV5Iy09ifOuHirbL8swqGIulfaYLL959DhzujemjWkrIQdvDQ3F
	 soNAy+Ov+GkiA==
Date: Sun, 11 Feb 2024 17:27:55 +0000
From: Conor Dooley <conor@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v1 01/10] dt-bindings: soc: rockchip: add clock to RK3588
 VO grf
Message-ID: <20240211-overexert-balcony-4b4f723f379b@spud>
References: <20240209181831.104687-1-sebastian.reichel@collabora.com>
 <20240209181831.104687-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240209181831.104687-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240211_092804_528213_BD441081 
X-CRM114-Status: UNSURE (   9.64  )
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
Content-Type: multipart/mixed; boundary="===============2421901873099867433=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2421901873099867433==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5y37wf+p5Z3zLdFR"
Content-Disposition: inline


--5y37wf+p5Z3zLdFR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 09, 2024 at 07:17:17PM +0100, Sebastian Reichel wrote:
> The RK3588 VO GRF needs a clock. This adds the clock to the allowed
> properties, makes it mandatory for the RK3588 VO grf and disallows it
> for any other Rockchip grf.
>=20
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--5y37wf+p5Z3zLdFR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZckDmwAKCRB4tDGHoIJi
0tewAQDkk7fL2nq9A6z8MR0y3mv1cBi3+NjU+Pdb7KteJlol+wEAo6K+1cPFIeat
2QXq/2f/kFWrRLjib7eqeWWVp8cs8A0=
=w+EU
-----END PGP SIGNATURE-----

--5y37wf+p5Z3zLdFR--


--===============2421901873099867433==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2421901873099867433==--

