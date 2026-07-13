Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F290FC44501
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jul 2026 16:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LmYEiJec5cAXV2jNl451jSsxg9ygaNJ9e8hPw9Jho5M=; b=aQwHgqfgLICDbR0oGU1LrR19Lu
	jdtg7E3rWk7lTaFcr7Yz5BB8hTEB+ZxnSHh/0fTwf3oZ2zGSExdO0Oci1g0DzsjCkUy4hs/QezUpa
	6UeKaduWN3g1LNOmYBef40kHSi3iZOZ9Z4bJMZfa9qi6Q2IYvm5kFJdc5rl+K1Lbkl4dEfFW7tHrH
	/b7VMCFfDb600/7i7Ib8Dz7OUh0mHGoVMRNpxzE5f+UxN9rpZvgJmqpxUWxuFjYE+wWKc/JZe7hZX
	e+6lDgU0uUHSCzVo9t8evPmgBGe6TcaZg8untyOuEfOAV9ZJa1CHSpdcKMUh76Ij9hc8CUkORa4kC
	zwqsafdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjJOj-00000009wYq-3MQv;
	Mon, 13 Jul 2026 16:20:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjJOi-00000009wYB-0ham;
	Mon, 13 Jul 2026 16:20:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 89184601DE;
	Mon, 13 Jul 2026 16:20:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED6421F000E9;
	Mon, 13 Jul 2026 16:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783959647;
	bh=cSSW4ypFGq89oPs396o1/zwUZHbiHKzC+PaNOuaLAck=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BaVOvfIRnG7IO+xMF4flH3S1TjP0VHwfFHsXIxwWQR8r9Re/RPNTE82fyCkByMqrO
	 MSckTdLVr7pwyD3Y6o4+7df42JhooFcBHokOa1haAKlVB+E+LzcRuvmxG0ixjJRR1i
	 JAvyeCMNx77QKkSXHt4+yVLM/xvG8zqXQXGKwcXYhk0BRSKh4Ujrw8QhmiBWhMziyC
	 hRFNXcPalCOMr9pSlsPA/11Om4t3K5Ldufv3SgAMGwWsLnF+zIsUThpCOjKB3ZISTp
	 kV0ZNUDCBGQ/iXDLqSfGHFaEDPjAcvD15XEcEqZjjJ2aiBa/7oY4EFdI9il8D0JT+W
	 yhLDYRUeqYF9w==
Date: Mon, 13 Jul 2026 17:20:43 +0100
From: Conor Dooley <conor@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org, Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: leds: Document "gpio" trigger
Message-ID: <20260713-thorn-usher-c469ff4af0de@spud>
References: <20260711192842.845048-1-samuel@sholland.org>
 <20260711192842.845048-2-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20260711192842.845048-2-samuel@sholland.org>
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
Content-Type: multipart/mixed; boundary="===============6513372615214665263=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============6513372615214665263==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UNnpKZMutGUXxLoK"
Content-Disposition: inline

--UNnpKZMutGUXxLoK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--UNnpKZMutGUXxLoK
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCalUQWgAKCRB4tDGHoIJi
0r7LAQCHZuS4ULfa1CohKUZKkj2cCcWXgBcGporY4iLJ5z+ZCAD/WVVFLEp85JrL
yHft5d3vx+rXL+xfyengmxXxeZZDpQg=
=G46P
-----END PGP SIGNATURE-----

--UNnpKZMutGUXxLoK--


--===============6513372615214665263==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6513372615214665263==--

