Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0B88C77B78
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Apr 2023 15:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hlphICI0PpXeCzRLov1HzlQhBpUtIA1tvoN3Ht3R1bE=; b=QH3I+BfiUSVgxXNgtAjDoiVyJ2
	duU8c4t+Q6F5yD2txKhA976tkBHhz1wZRcZ+jocTeAGa0ap800qDWZQzkuNHBLg9PmweAIlQRZrVd
	HVYORu+uV0gbNVUVh2v4+w7oVdh95b5LjKk67p2feRCxklvFhPUtF3yt+npEIedo0Dk9sECho2qEY
	OKX/24P1mt1vjuNHjbAP65AcSVMo5VLdyvAnPNG96qhAv0SU/LE9Vsw07T4Fx4Mu28DFIMcTHd6Kv
	DLebpYBBed7vA8/EJNMbKTp9KM6xLRTkNU48p5fejp3daX5wY3WDzX4B2uSFCE9c9P/rty+fH211g
	heivJ9WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prgxI-004IhG-02;
	Wed, 26 Apr 2023 15:21:16 +0000
Received: from relay4-d.mail.gandi.net ([2001:4b98:dc4:8::224])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prgxE-004IgA-1J
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Apr 2023 15:21:14 +0000
Received: (Authenticated sender: didi.debian@cknow.org)
	by mail.gandi.net (Postfix) with ESMTPSA id 20AD7E0007;
	Wed, 26 Apr 2023 15:21:02 +0000 (UTC)
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alessandro Zummo <a.zummo@towertech.it>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCHv7 00/11] Introduce RK806 Support
Date: Wed, 26 Apr 2023 17:20:52 +0200
Message-ID: <4046459.irdbgypaU6@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20230307153617.643260-1-sebastian.reichel@collabora.com>
References: <20230307153617.643260-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230426_082112_600768_65726A82 
X-CRM114-Status: GOOD (  12.60  )
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
Content-Type: multipart/mixed; boundary="===============5444313780841254144=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5444313780841254144==
Content-Type: multipart/signed; boundary="nextPart15156774.uLZWGnKmhe";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart15156774.uLZWGnKmhe
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCHv7 00/11] Introduce RK806 Support
Date: Wed, 26 Apr 2023 17:20:52 +0200
Message-ID: <4046459.irdbgypaU6@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20230307153617.643260-1-sebastian.reichel@collabora.com>
References: <20230307153617.643260-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0

On Tuesday, 7 March 2023 16:36:06 CEST Sebastian Reichel wrote:
> The Rockchip RK3588 Evaluation Boards as well as the Rock 5
> boards and probably most other RK3588 boards use SPI connected
> RK806 PMICs. Downstream this is handled by a new driver, but
> apart from being SPI connected this chip is quite similar to
> the other Rockchip PMICs (and RK806 is promoted to also support
> I2C). Thus this series instead updates the RK808 driver(s).

I don't know if it's relevant or useful, but I tested whether this patch set 
would cause a regression on the Rock64 (rk3328), Quartz64 Model A and Quartz64 
Model B (both rk3566) and I can say that it does NOT cause a regression.

If it is relevant or useful, feel free to add my 
Tested-by: Diederik de Haas <didi.debian@cknow.org>
--nextPart15156774.uLZWGnKmhe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZElBVAAKCRDXblvOeH7b
bpGeAQDVEucvNJq97OpS0XFTOdR/bKYyYfigTND6d8xdEy8dwQEAlXAQCwktcor7
LINeGsc3EDltinvqJVhMSBCpC5sPkAI=
=AyOI
-----END PGP SIGNATURE-----

--nextPart15156774.uLZWGnKmhe--





--===============5444313780841254144==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5444313780841254144==--




