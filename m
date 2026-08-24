Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66078C5DF9C
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Aug 2026 16:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7ByvzfifDkjrhGNIxKYh5siN6JYBcSjk+pXSG5MT8nI=; b=UGeGRnAnyeBjrgqGryBUL3zZIL
	2TPIPOPrX2N/qOjXP0quDbhApr9VYuWTCHm9nHptT3me50EKI9haIotCJPmU0RA+3M6DKsSoQV84N
	XChvCtricVJPhIv8N6oKVG0OVv7iURwNqbYQUoREvbCjyq9bXM7HkGP/jzZiQ81aqspcKRy68NQFJ
	18N3OHZDU9PXRQAS3kAFW8GQIojJJEsGRi3utC7Y7o83Mm45MJnQoVxH6oB0PPjatnMV8OQ8TsQp4
	zG4m9yrsyn7mqK8gvQ5ia4hJD4vSaWk8i35YHaSBv+CONSYKftzCiWX4FlfuPg43YrR3Fh6H5bOw4
	QE6JPEvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyXUE-0000000H2hp-2fO8;
	Mon, 24 Aug 2026 16:25:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyXUB-0000000H2gr-0Pmm;
	Mon, 24 Aug 2026 16:25:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4F55543E26;
	Mon, 24 Aug 2026 16:25:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7EFB1F000E9;
	Mon, 24 Aug 2026 16:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787588722;
	bh=eOwcnwcBgL2171fXf1o4A56Z56V4W/kvFkYHiWltHnM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bOi8rxGCRtIsp72YOkwt5Otm/GuE2t7ZjXMmvAAa1OHC/8X7N7SFXkR4Ajpf3C7da
	 XLrJGfHIpIrsdqp7dHaviqhfo4GG7VCOO72XqbL9U+IHRUfkO+sGPBoPvyBJDd1KI+
	 77MyhHgvTydsbuP0oeEzNmuA0TPSkBUT9Nw10a6dOlnePpEdd/Ck/d4jaN97NTaEJy
	 lH11SLFiGjzz/5vsvJZDvLjMS+dTtxDlrzff1/MJmQF/hf07bsr1VzzbEGLENCvwOY
	 oTGha4vxnG3+0toCy2IryrMHp5Hh+q3/P4HwyV2W1XD5lxit0XZSJQZ6rk4c+2lljI
	 0w7Mrd1aNJsqw==
Date: Mon, 24 Aug 2026 17:25:15 +0100
From: Conor Dooley <conor@kernel.org>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: tomeu@tomeuvizoso.net, heiko@sntech.de, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, joro@8bytes.org,
	will@kernel.org, robin.murphy@arm.com, ulfh@kernel.org,
	p.zabel@pengutronix.de, ogabbay@kernel.org,
	zhangqing@rock-chips.com, royalnet026@gmail.com,
	u.kleine-koenig@baylibre.com, chaoyi.chen@rock-chips.com,
	diederik@cknow-tech.com, alchark@flipper.net,
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
	iommu@lists.linux.dev, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v9 07/13] dt-bindings: iommu: rockchip: describe the
 RK3576 NPU MMU
Message-ID: <20260824-escalator-troubling-faf3f76c6f1b@spud>
References: <f1805c2bce56c89d8ace35f67c665b24bab90965.1787568944.git.gahing@gahingwoo.com>
 <34a972915214bfc4034c797df1c4a033f3b03e2a.1787568944.git.gahing@gahingwoo.com>
MIME-Version: 1.0
In-Reply-To: <34a972915214bfc4034c797df1c4a033f3b03e2a.1787568944.git.gahing@gahingwoo.com>
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
Content-Type: multipart/mixed; boundary="===============7413236160003258200=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7413236160003258200==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gIsQ7pRGBBCsrD0n"
Content-Disposition: inline

--gIsQ7pRGBBCsrD0n
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--gIsQ7pRGBBCsrD0n
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaoxwawAKCRB4tDGHoIJi
0r4ZAQCgvqwxN4H0y9vjDm6H5Qz9wNkjzupTdKxbNmtqb5quIQEAhNrHBdyG9MkZ
rPagrV/g3+iX9zZ0bfM6xTN/98yU1wM=
=CG+w
-----END PGP SIGNATURE-----

--gIsQ7pRGBBCsrD0n--


--===============7413236160003258200==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7413236160003258200==--

