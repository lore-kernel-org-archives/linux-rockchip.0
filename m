Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4333CA9EDE
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2026 18:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WwJTC+ATeF4PXTNfEHT+kHZfE6+oA3YefgCnxXC5CSk=; b=xCBUFKu82nTwc4GcCELjYWiIr1
	Zpsn6auVM1qBFyQG8rrfWeCasyVG0ayzONg24ABhAgWpaS3AdFZIsfmG0am542jYsQSmYXodxnDTb
	e0lwWVgV9ROruikVyZAllWpqdARX6Wq3P53ZbqsK99dwyOrIybCtaKU5UFCTo9vGthVljcz0u7C9a
	ZvkdMJMMHOLP37yCYtWzB80doc5N95/voAwab6AFaniQVOafFsRQseymVTEPofHeGDjYSCobKa6yc
	7p/xsr1LHsWW5Bozjym2uuuImngvu6GpuFsubLn1LlxmPansmXqQitAKwSqMontysmJHES0xp+Jn1
	P6nFCd5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGLAu-0000000BIxb-0GE7;
	Mon, 12 Oct 2026 18:55:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGLAt-0000000BIx3-0OZu;
	Mon, 12 Oct 2026 18:55:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BC9DA40C02;
	Mon, 12 Oct 2026 18:55:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46E7C1F008A1;
	Mon, 12 Oct 2026 18:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791831302;
	bh=lsoi2vg2LB1YdOz216qy3fyKHo1xGtnZSa2C1EmzQQo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=N3ZZ6lS7EyvdRhDCSwPisPwBsfZDf2U/cgYy+PvafbsVnw+LlKjg0ZUagkVZwZD8x
	 tI9jNpHjsNM78BddwlUemK9w35pF5YQa2i7hTRy1ifBOgubuR0aGVvZ1TosSpnTXyK
	 39GAMsCQZnmBA1siaIrn9LTc+9nk+Pg/I4xieWN1PL0AGWNp0MI613afthXKXiTuq7
	 5B7Pjyy00/y0beE/3uIzUxHZdTYn7nf9L+OxxVg9emSgGzUZkYiKdH02aNYixp5gw0
	 bceU4cUVi6vW6jm4PWx1y67uj83qgIw4/x4dRSYlk6OevQ2E352Cz/buYJHTwBfNIv
	 fFH3BbjZ+LYNQ==
Date: Mon, 12 Oct 2026 19:54:57 +0100
From: Conor Dooley <conor@kernel.org>
To: Miotsuki Mizuno <founder@crepuse.com>
Cc: "heiko@sntech.de" <heiko@sntech.de>,
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
	"airlied@gmail.com" <airlied@gmail.com>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"jesszhan0024@gmail.com" <jesszhan0024@gmail.com>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
	"mripard@kernel.org" <mripard@kernel.org>,
	"noralf@tronnes.org" <noralf@tronnes.org>,
	"robh@kernel.org" <robh@kernel.org>,
	"simona@ffwll.ch" <simona@ffwll.ch>,
	"tzimmermann@suse.de" <tzimmermann@suse.de>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel-mipi-dbi-spi: Add
 UNIHIKER M10 display
Message-ID: <20261012-brunch-mocker-348f76eb943b@spud>
References: <20261012121718.53481-1-founder@crepuse.com>
 <20261012121718.53481-2-founder@crepuse.com>
MIME-Version: 1.0
In-Reply-To: <20261012121718.53481-2-founder@crepuse.com>
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
Content-Type: multipart/mixed; boundary="===============4537334996744785276=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============4537334996744785276==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l0Q0H+qNTOU6/PQ9"
Content-Disposition: inline

--l0Q0H+qNTOU6/PQ9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--l0Q0H+qNTOU6/PQ9
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCas0tAQAKCRB4tDGHoIJi
0kRKAPwKrVSpWbI+CrbQHAuW1z8jJHJOJ2kY7Fd65yZXVaWM/gD+MGhjR/tpHAvV
hoMubh6PI1wdQ4Mso389MlLQbINTdAc=
=CDyY
-----END PGP SIGNATURE-----

--l0Q0H+qNTOU6/PQ9--


--===============4537334996744785276==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4537334996744785276==--

