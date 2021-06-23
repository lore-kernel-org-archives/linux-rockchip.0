Return-Path: <SRS0=6gll=LR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B499FC4743C
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 16:26:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 81F636112D
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 16:26:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 81F636112D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0WRxjB1kcpgw1YZNly9B43QMF5ekl/f5RXB5L44tYhw=; b=mtKlBqZUwEHka9/FNaRKslLCKO
	AMP1SOXoiOCJqSzk/GddU4YER7ul3Vxz18HVVx9QzK3C/VyyXoohbkW/9KHm1JzYTs9PQjM4TBBQR
	yrIWkKLLSuL55riCGjMUM49Qbk4KbjUcJipjsoUkKNi9i5/0M4it4yNjhpZSXF2RHBlJ75I0bZvW9
	u9TYbYX1NO9xAErkks10XashwJCCKvYp8lIMOIkiKCunCis0NRhdBNBbOdJiu5qp2VAZYLAf3HiAN
	v/5T64lTW9ZLZPhUGC3tt65DpWA3SrLOHT+N7tJHUEUUFLdTDmh/+iGme9F+ok7/wVNYyEy3TGMMG
	wVpmR3pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lw5i5-00BFcr-UV; Wed, 23 Jun 2021 16:26:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lw5hr-00BFYo-Oj; Wed, 23 Jun 2021 16:26:28 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id BC5716100B;
 Wed, 23 Jun 2021 16:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624465587;
 bh=f8jfUGDIsGoDUvStlPo2ihoRuJM8S3wV5YVSk/OHcCU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eqfj4zZDu0ioOWCBrvww4ZxvMGJhE9nMGHlhWzLes0djdv7HTnTjLDCTl0g8tcCgs
 iQkgvvIy0fgXnmbV+ODTej+fVL9zGrLO12ayD8unJwXKDd3SD36h6pYvzu+VekLUeP
 mSUyg5XWmFNYCBPJoa4ZBUuUWK24KANZx10nmNlgt4M7pVnB7/19dUt7rGlEdw5Pa9
 V8QH719yXK0XKiT0YbrmSXi5IeBvWI6tas9CLq0URN7FnzKksddIhLUcoR/nkuCuZr
 mY1zJy/vbtjoOSUlVXJ7sIASv+oG6EGFFx0ci3N1RSjzvBMZdBNBsdie+wN9Gj+cer
 VtstjKh4MXOjw==
Date: Wed, 23 Jun 2021 18:26:24 +0200
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
Subject: Re: [PATCH 5/9] i2c: davinci: Simplify with dev_err_probe()
Message-ID: <YNNgsLS1KtfNjBkc@kunai>
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
 <20200902150643.14839-5-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200902150643.14839-5-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_092627_891754_73BB95B4 
X-CRM114-Status: UNSURE (   9.34  )
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
Content-Type: multipart/mixed; boundary="===============3237410283149136047=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3237410283149136047==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="McslsymjVjCUswlO"
Content-Disposition: inline


--McslsymjVjCUswlO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 02, 2020 at 05:06:39PM +0200, Krzysztof Kozlowski wrote:
> Common pattern of handling deferred probe can be simplified with
> dev_err_probe().  Less code and the error value gets printed.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Applied to for-next, thanks!


--McslsymjVjCUswlO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmDTYLAACgkQFA3kzBSg
KbYqLw//dsYnYLS1NUVJkuErYmMje539th7kKWQS4WdI9gO/feZZv2DPwLXkj3e7
g1+xg2fngE9iEP/phJ4r26wYV1Lo2JJChg+xfUxdpI0ZDJWYdoHLnsTPw3mhim5J
+6sNaGcq/JcN46iW8J5sM+Q0ZHWOpjO5b7rZSMyBNh4brDm8uKKo5r1de1ZEoCrl
UOPDtX1I4wgUJ7kma1CE7qsp7moZAptyaPNLcLEFjgzIzAVPQFC6lRPGhzeQqKTa
i0foiKovC3gOX15EcaMGXUzxJnPw85tVHWuTLL52uCNpNaHLAIsN3Jo1G+JyypSs
4TgTEGPGDCwE50tBn3dugKEr6yxp01YcLJMTis1mIoiDxAM1MzHYIlkgQu4oZ9pV
hAzPdEIqY6dkItB51HKO6K067v0B6jEQgyX2huAL+71VTZ5yr5EVb1YcVcH4VSJL
91osHWWFSVvzjXAks3rYKd2E92jVwxfidX0usCy/2hyGdTNUYknUZDe3meytFkMK
I7p6iIBzEgCMt9ZXtH91BbmuvFYmNzFdFSNQ6/gqryHV07rsTqImxgtVTzzs1N3M
SDJOAG8lWb+LqIf6sjM2MBIJ0FQcSkiaXyA7JBt4VndRg4+AHyJCUsqkavL9Twa3
3tTsk+zvhYgCWAkALzhR1xiVrQkruqEF+CYWHz0BwwOXzzVe3PE=
=2cJu
-----END PGP SIGNATURE-----

--McslsymjVjCUswlO--


--===============3237410283149136047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3237410283149136047==--

