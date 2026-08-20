Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38D35C5DF86
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2026 18:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KuvgVNIWFUdS4Mz9dA8gO/vCQLZKhjZfjXo3fZ3+0rw=; b=ZVed8MNsRvUizDdokcqCKXaMU0
	XeKFKSWRmL0OTbsiZm/MAz5PiMSzx+7MCZZEvvNr0Rnk11vyId5fuwuIcufZNQb9/Euv9e1aME/aL
	X2bHsDnZp4zFvmZo/oWU9D/1u+bkuUDenqAe593aYlJZzcg02+iyZgdv14PpI/oxfDr+61l8XGoPd
	8R4A+xxtUHkZRaSaNQF+06Q6xDkbySJExo4Tvh6yu9w1sjTYHh9Ku8uuQw6M1L64SVDekFvNie/ST
	zuNh7nSUpPtYg/aNllgdYi28+JS0mYf0PB2TWX0ZMbuhndQfAd/5Wuoqvn131GL/MTZ6hiPafYpus
	LUR9kzjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx7Le-0000000C2Su-3P00;
	Thu, 20 Aug 2026 18:18:42 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx7Lb-0000000C2S7-1fSL;
	Thu, 20 Aug 2026 18:18:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0BDDD41260;
	Thu, 20 Aug 2026 18:18:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 762DA1F000E9;
	Thu, 20 Aug 2026 18:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787249918;
	bh=93OHTCytmh6FAE/zzMZCdNOuhYQVgYRFmXM3tqinirU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=CESHc8s2XeawxyjSJyqDZpIy2FPMkAJjDvpijPrWdl3t23vGkkChaPcKicwEf6vgX
	 qll54izY/9kMyJKK5cSi7Rre7P3ltjztaA7EOP2gxA4wd1Jg5UIjHSsXm8HNB8wM/8
	 Le0o74nflmXasN+KURJIHg1G4QUW0sMMNfI0g5C+qhi0pDUn8DI7KYgzX4suWLj8Rq
	 xSrFEZNgjyDc2+FMJWUr9Yv1exgqJKCwKUK82GH2qJgPau5K2sMXKzyCQXrmeVeCFA
	 geC0ZoI02Ai1m7gq+a2HIRqMweEg4/7/0oDm6EhOyi9KbNs5PlBlZqrAE5iVU7mySH
	 KiMfLMS6njJwA==
Date: Thu, 20 Aug 2026 19:18:34 +0100
From: Conor Dooley <conor@kernel.org>
To: Amin Gattout <amin.gattout@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Michael Riesch <michael.riesch@collabora.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/4] dt-bindings: phy: rockchip-inno-csi-dphy: add rk3576
 variant
Message-ID: <20260820-legwarmer-thursday-11a8f853830d@spud>
References: <20260820-rk3576-dphy-v1-0-70e25e8d5e78@gmail.com>
 <20260820-rk3576-dphy-v1-2-70e25e8d5e78@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260820-rk3576-dphy-v1-2-70e25e8d5e78@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============7967773279259114387=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7967773279259114387==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JawdN6ClVs51NZeG"
Content-Disposition: inline

--JawdN6ClVs51NZeG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

An explicit note about why it cannot use a fallback would be nice, I
thought from the commit message that it'd not have some specific match
data.

--JawdN6ClVs51NZeG
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaodE+gAKCRB4tDGHoIJi
0uKIAQCDoYEcNXugLdysUBiv8Dfk3mnN2iReD1BUgcrnKJUKrQEAsopJPUUiczBJ
NkXA7cVVjrhwhsl1kTJQMCJFMDPkJQM=
=ZzYw
-----END PGP SIGNATURE-----

--JawdN6ClVs51NZeG--


--===============7967773279259114387==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7967773279259114387==--

