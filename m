Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05299CD6E60
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 17:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZIvKhaCkmAL8SBW7GvHJXpXMfexLUAiKDcQIluN3r5s=; b=j7Y9toCcllQaBOxl0Vw9FDsLA6
	25sg9tqTo3IotLV8kn9mVqqbqWWgRG/Pzt4IMWgCqnOzqo4RrWyb54Qbrw0xxED0AIaGd5Nu41S/m
	Zrmz9YBY/cz29U/F4XfAH3idFwEl6Tf6YrlurF+bhnqSGkiXahvqF4zeszkZK+PEfncm5k9ON2jfY
	DiUiq6BlOjmCvvRxPjsjk1wvU5jacqSQiz9LzcLwfv3tgn8+mn+5i9lZsd3QxPsV1eTAYBpBMdrE7
	EYsK+jffJKAXlK8qkLpX9UEmlwc9ZTw+HqUkU2qIF1CHbE52JuX31OrDclIrc6ankbaX81NsmfNwA
	CeccfLDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUSV1-0000000DWpS-0FaX;
	Tue, 02 Jun 2026 17:01:55 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUSUz-0000000DWnu-1CJL;
	Tue, 02 Jun 2026 17:01:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B6D2660098;
	Tue,  2 Jun 2026 17:01:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3568C1F00893;
	Tue,  2 Jun 2026 17:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780419712;
	bh=DFC1w7p/0qB073AfNGNffsBQG0WW8QDMDzU+cxdEF3I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bky1Jb/NZnBNnpwQWDthgWcFz+0+/2sBzSQPyI4DBzbC+DqHPsQmwq0TIDeA3S8YQ
	 4GztI70qPsv4c3cr5aC9lAbt9fvpuEXpELLyzEc17RtM1X4AQ0n58ujkkJRUENg1D5
	 9wu/KclcM6CCvBteSIE0h4HHUOHL1NChBZsVLDtJAAEphTkxQcHBiivFS9f+9tFvrA
	 ZIQjPG/h0IYzH10Q7LnC4m1+j3RhmjVqGPcAAW0deWQCP/Iw6YnShJVWe9nxvH0c3G
	 3UeILGuiQ3G2yL7WwjrlStDjgys4kA/sU0Lrn3ALZ2c9yROXndGMFuL0RZ3LcyzYla
	 dVsXrxwU/V46A==
Date: Tue, 2 Jun 2026 18:01:45 +0100
From: Conor Dooley <conor@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v10 01/11] dt-bindings: display: rockchip: analogix-dp:
 Fix hclk as third clock for RK3588
Message-ID: <20260602-cranial-aerobics-9db5af2159ec@spud>
References: <20260601065100.1103873-1-damon.ding@rock-chips.com>
 <20260601065100.1103873-2-damon.ding@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20260601065100.1103873-2-damon.ding@rock-chips.com>
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, dianders@chromium.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, m.szyprowski@samsung.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, luca.ceresoli@bootlin.com, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, linux-arm-kernel@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org, hjc@rock-chips.com, linux-kernel@vger.kernel.org, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, nicolas.frattaroli@collabora.com
Content-Type: multipart/mixed; boundary="===============8474936440325862470=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8474936440325862470==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tXJ/OuPN5ucFNEVK"
Content-Disposition: inline


--tXJ/OuPN5ucFNEVK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--tXJ/OuPN5ucFNEVK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCah8MeQAKCRB4tDGHoIJi
0qXGAQD9vbj7tixbtiXhoJz2EzXrSh78kjxJNRDo8PGjKDfIbgEA2afp9CeVcHz9
lbuu8IN7ZAF7QMTIEkFKWyqOc2Z6rgQ=
=7N8P
-----END PGP SIGNATURE-----

--tXJ/OuPN5ucFNEVK--


--===============8474936440325862470==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8474936440325862470==--

