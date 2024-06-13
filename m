Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B9C5C27C4F
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 16:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x6CgJguFxeiadkLA6ayhF5KAwx/BWvGs6m0JN6AdI6g=; b=qQweuMpKTJbaiMRtnsPIVDIGWM
	gNuTETOJKTYSFDL+5QLIdfW3nUU+xbOLgBkOC9nT4clk3XH2ZhIdQJ5JB+OlVNPv2KB8BRnhhOyrY
	7kMUWmwkjWYx5xMOZSiycGCPhjARvXwGxYKFmnHVp2Mmscla5v+F7+y68+v32iXjdgyVnEPlyPmAO
	Ik4ylZnixh9dGevfLPAEovgHP8ZRp07Oez544SPW1QFrAME5AtBM/LnFvxplvcvOMHPibkgT5J6Eb
	x7N2ObO2fES7BJzfs+hflxQmMhqljw4Co3EvoJY9QdNHuW6J9mOaq8v8UIe2bgrIaymqZB/Au3ely
	qFXf5SQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHnEA-0000000HKwq-3hc3;
	Thu, 13 Jun 2024 16:23:06 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHnE7-0000000HKwM-41nu
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Jun 2024 16:23:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 45517CE26D3;
	Thu, 13 Jun 2024 16:23:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C1E7C2BBFC;
	Thu, 13 Jun 2024 16:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718295780;
	bh=CaSs0G8SCymztITpnEmaJu4oDolKWOuq3R35mdA3tSw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SuMeOK4Ae2gyFrmprMHhPo1xo6LSMBDurIm+Bhl2d4jtSU0w4XjJe/f4p+SOy8Y5/
	 IIRYkGMY6ESQcVyoQ2E7FJ5w+fmkG0kPDE2eyNMpwhXsDrcMybCPeg76JbDxT9Z75F
	 ewMR/WlxiyRkV4LLMj1gYtlNeBTED2qoM1IsmYUoXXnl4cL5ZzdKwycxcu3fbOs0cv
	 0LjSFS1jZvZkoDWJRL2H7lkoL9qQCJxxEWTjBbFqzKcTb/ZYEN/ny9BYuGp77iM5th
	 TxiqeYf0got2GZkr7dqpwZgEodLEgTKZuYDEjaMOKaCxfT+nyasLGGVuN7+JKxRPwf
	 aUl0qkSeb1QPg==
Date: Thu, 13 Jun 2024 17:22:54 +0100
From: Conor Dooley <conor@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v6 1/6] media: dt-bindings: rk3568-vepu: Add RK3588
 VEPU121
Message-ID: <20240613-cresting-septum-60086a69f5d0@spud>
References: <20240613135034.31684-1-sebastian.reichel@collabora.com>
 <20240613135034.31684-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240613135034.31684-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_092304_211238_23221524 
X-CRM114-Status: UNSURE (   9.82  )
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
Content-Type: multipart/mixed; boundary="===============1061892010099226465=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1061892010099226465==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kE+syxWACWgZIXw3"
Content-Disposition: inline


--kE+syxWACWgZIXw3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 13, 2024 at 03:48:42PM +0200, Sebastian Reichel wrote:
> From: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
>=20
> This encoder-only device is present four times on this SoC, and should
> support everything the rk3568 vepu supports (so JPEG, H.264 and VP8
> encoding). No fallback compatible has been added, since the operating
> systems might already support RK3568 VEPU and want to avoid registering
> four of them separately considering they can be used as a cluster.
>=20
> Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--kE+syxWACWgZIXw3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZmsc3gAKCRB4tDGHoIJi
0mj7AQCv4rlubtb0cKZKwFzNNoGAdnbist3T9iqEa3NB16WrfAD+Jqf79c6F+HbV
7Vsb/Cx0dtWN57PjSuAwDRU5t+awIww=
=BcWx
-----END PGP SIGNATURE-----

--kE+syxWACWgZIXw3--


--===============1061892010099226465==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1061892010099226465==--

