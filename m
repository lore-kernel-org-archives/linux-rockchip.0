Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9797D1099B28
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Mar 2026 17:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gD1OvCtyJ1VzP2+T4yXqQiSL76fwap5AcFjn8VoinDU=; b=gsO7AJ3GRn7Wu+gLDn558yMdOs
	rRyGGdGowphz1BGRjzFmAUQ7UK3cghRiFL9KkTI0HqvURkspcNbf8z2QEm1j9CHu66v0unGmwSnlw
	gujnzCE1MvHDyiYfz3hwRakZUtPsz8H8kw8EwNRAvLJs/LVs3GEXjOnqQ33SxxKPoNZcLo5Pet1T+
	qb6yuyyCZ/SEjAni1aUqKaaD/Q45aTV7XxcWTZ21FK9l9++S/zLpIV1Wxml1Yn4XbtTwJ/TQLYY88
	p9FM6aZZh1z8RyT9szn/hrm8b9YTR5f0FBg+A0wETzdmKblTXAat3eXvhuPT+qyixGljM41PHOkLk
	gc5x/oNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3dom-0000000DHLo-14fB;
	Fri, 20 Mar 2026 17:39:28 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3doj-0000000DHLC-0nBs
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Mar 2026 17:39:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9D43D4166F;
	Fri, 20 Mar 2026 17:39:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B35E9C4CEF7;
	Fri, 20 Mar 2026 17:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774028364;
	bh=EmC83LvhVJvYi3xuGFTcrFTglNSFltf0KMf7Ig8lPtU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JuNz7bzhidytfCq09kZKJwyJBYvyYes9xox3rnttDS0EG7HYV+aZWVNhJ2MMHjugV
	 UgxKzyFi4ZnvNG8+sEUDFGqBNwTDW3msGJxrIw9u42xAPc9C0kyufBdGv0zO5vowdT
	 1Lij6usCBGSv5b7Ay1RLCztXcmmmf7JzFf16rUjfrvM9Qj/qzuhQqRIzKHKn8ef9Mg
	 ceWH+RopObuNAJ4bimSbSCDWC1PPPCBgvK7LHR1bbtQxXfp64ZPow79gmBBzwXMp8O
	 4LIZOIMEBnzM4BTbC/X/Kf8ypKcCxFB50EHggzEB8+E9rV+lIUfVP42G8iL+GG8TZJ
	 AuX1X47T5xX/w==
Date: Fri, 20 Mar 2026 17:39:19 +0000
From: Conor Dooley <conor@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 1/5] dt-bindings: iio: imu: add icm42607
Message-ID: <20260320-carless-puppet-995866998b8a@spud>
References: <20260319182956.146976-1-macroalpha82@gmail.com>
 <20260319182956.146976-2-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260319182956.146976-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_103925_238960_26F0EE6B 
X-CRM114-Status: UNSURE (   4.75  )
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
Content-Type: multipart/mixed; boundary="===============6417927022561850022=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6417927022561850022==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aTCYQb8hepuZFpMC"
Content-Disposition: inline


--aTCYQb8hepuZFpMC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--aTCYQb8hepuZFpMC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCab2GRwAKCRB4tDGHoIJi
0n+2AQDOoSl2g8nQdYhadOyLnaeDez9zFjMDbF9Zq3NrhrkC6wEAlg3H0iNaDpQY
qvxM143+V4mX/Pk/IhhYY/lb/2LBOQ4=
=RDUK
-----END PGP SIGNATURE-----

--aTCYQb8hepuZFpMC--


--===============6417927022561850022==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6417927022561850022==--

