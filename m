Return-Path: <SRS0=6gll=LR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03496C4743C
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 16:26:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BA7176102A
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 16:26:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BA7176102A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mNMIMfutBh247p+Z8KDOUFCulhWMbuKhrHXaWIFfg54=; b=GkGUk0kqA60vKRfj3tmiYC++N2
	X5/0iH2HFDeLZ6eV7g8McBrmq/8RqWYgKTxwhAhHZN2xzAdGFUp2G5CeiEBucZf9mtBm0/T02ZnOl
	GjinoX1jdU4i9ifaHV4f4mBFxiVaOjl4tt5/Yom6FoYQ7Nd4BYoJAqbtDBhxzZi1syJqzrZoOQ+4D
	VIFwqBqXgiMCKfyHkf+lmdNTkulNIWglG8jWQgHbo2TDQzc1uwwCK7TiP9HQMrZAkRF8HTqbobvXZ
	gFRd7qvTqSo6Smby1aO1lTBbcvML8mWN94p1Dec/7E+KUx74J+ltR+732p5ESuIKkoAf6fSaMYt1D
	eKZNds+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lw5hu-00BFZO-Kf; Wed, 23 Jun 2021 16:26:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lw5hi-00BFXi-8y; Wed, 23 Jun 2021 16:26:19 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3F1D760FEE;
 Wed, 23 Jun 2021 16:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624465577;
 bh=vvKsxcawOIU7zaJ1jBb+8b/U8+WkJThvm04wURj4SMw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cbTH33dUHXrd0FmIlJ6uBzJbjsqN3uycHS90voxRndM3GrMvgq1s+0PolD82WF2Tz
 Q1ZRHadFyslVuVGXVqLoW3oFaIPIGHPoYyY6IKJNOH4ISGNLF0ONjJLRsiaAGz8lIn
 kb1e/PeNd872slHmurnOoGlnPTz1fulOs23ZcPwQ8mQtrCDnn62rZBk1qFMAwDVQwV
 8GIzIhYeh02GSL41FcXv9zibzRQbiPpE/XeXMNxGh6fjUdYzsNT0HeaYH3qgHRCq9F
 0cjDu6GeOh80+KhGcQPZ4+FIS9F21D6f7fzIJGEX0jISpMLZalpwORbP0knzbP8tbx
 yhmpEe6r/IPpQ==
Date: Wed, 23 Jun 2021 18:26:15 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Michal Simek <michal.simek@xilinx.com>, Sekhar Nori <nsekhar@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Oleksij Rempel <linux@rempel-privat.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Peter Rosin <peda@axentia.se>, linux-i2c@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 4/9] i2c: cadence: Simplify with dev_err_probe()
Message-ID: <YNNgpx8eMUuRH1y7@kunai>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Michal Simek <michal.simek@xilinx.com>,
 Sekhar Nori <nsekhar@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Oleksij Rempel <linux@rempel-privat.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Peter Rosin <peda@axentia.se>, linux-i2c@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20200902150643.14839-1-krzk@kernel.org>
 <20200902150643.14839-4-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200902150643.14839-4-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_092618_389927_244465C6 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5563144366598567995=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5563144366598567995==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yQCihXPE0Rw77HZd"
Content-Disposition: inline


--yQCihXPE0Rw77HZd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 02, 2020 at 05:06:38PM +0200, Krzysztof Kozlowski wrote:
> Common pattern of handling deferred probe can be simplified with
> dev_err_probe().  Less code and the error value gets printed.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Applied to for-next, thanks!


--yQCihXPE0Rw77HZd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmDTYKcACgkQFA3kzBSg
KbY0zw/+KHiicY05BPDAkNLs7LvofrF8GF9g4q4kNTv+0zHqKwrdbTJFdBOXoQDL
9L1VLCkQgAGYrDEFDyr5QTS7merRNCmWLg2NHVd57L15Gk0XqApSyo2ecEG1it4f
5HH9mrgym+WGmgcqVOw4c8DxZjywEFo8ls+y8VugOQyYzSdRgOAigzm8ywA/tLYo
YorHpmN4IVqbrhkXrsDTUZ9McG/n7XtJDZo9kBhKX279kQQIRfLkJ09mBTQm0zgw
FVaSgkqs9wbo3nfupnpUf8rc1nos0iIKz+W0/P1JWPESV7Krqiv1zUk27lY5ptHy
FWDvCK+/kBaJSjbYdEGixKXv2DsFQdbrzE9xi+19n1xzF7DtYmkOnk5lNKpxlB3z
cx5Laus/NvZtK6U36lK5HULjZ4DCIJEbTrjMsR9FRJNowPeKPnSLnfm6TIYiq8EJ
zDgsWhuZ3c7MZ/VS1WCZpxpNTjsEbm+bNmcO9RfyBVJif3To71mDsJjUcS2PdXIO
HuAurETnq5MRepPzAzOy3LPs/xoD0dEx/0oFx3UVJHLHL/URRH364keM5YS6vMMo
iJ+fYMPQ2zMLfBbGQA3/WFCjEDarJZPc0hqJTPyZLbZvAsjWFuMDVSR2oysB7zEy
JiQdi8m3PVKkShrA7dCkC/wCManU+MZ/HOeaitjlY80AQ0WfF70=
=kMfn
-----END PGP SIGNATURE-----

--yQCihXPE0Rw77HZd--


--===============5563144366598567995==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5563144366598567995==--

