Return-Path: <SRS0=6gll=LR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBB9FC4743C
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 16:27:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9DE2961075
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 16:27:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9DE2961075
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=slRu/DpkJ2hHTGCCPn6gAm7d9u4KZnixg6M9B6V6csU=; b=M1UKn5Lwm9WNVg8fSxA8rBjY5M
	0xBkbgfU+9NC8uEHtFVB2UN4Mf2LIK3lYF6ucGbEHoEIf3CF76lCiWzxIjDqdlh7AaJ8UvtqRq/JZ
	LG242ua55ZlqeV1/K61R7Xrxp81DJ2W2vcKsv6Ub2vMY4JpDk1HEAnRp+MV5eczNgGkH755zvtq3+
	StPONafrjmjSucwoyrsYNkOWsymcjjElp/KqMgs6NyGUCTU4wLVBJ6evqMd7BIllzaU+yKg16az3t
	uCCfdXOws7wUw5cHvO6kPPLDHKFVFlX8cCwJ0x55SHBMfPzluDFdzVMDMHu/VmB4EXMtHVna452AL
	+7GbjOtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lw5iK-00BFj3-SJ; Wed, 23 Jun 2021 16:26:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lw5i3-00BFbo-PP; Wed, 23 Jun 2021 16:26:40 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9E0456101D;
 Wed, 23 Jun 2021 16:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624465599;
 bh=x9Y32u8xKnq9y9RUCEeFlJlF/lSKVUF+efxe6yJZN4A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fz4b58xSieSWwb4sHRoe4Lj2rrT7gQSIUzklMVC3obvRrjUTvDFLU4hCRQNC1cdJl
 FCRfpjjpGoomjQOmxBZGWbhJwhe0Lz35zllUWnm0z7787yx3Z09UX3GTt9zW2VZgkO
 zhwfEuYACVH6v/dBQI9T/hgXO06ZvTGs9OPOm9Q9AMD1bNqZ6Q9GnQ7eJCHzjpj+0b
 2hRndsgIxBEP3PiYNSJYhIGHF43COPjFViTmsde0QQA3aLXycwdukKQRKK5K7W3TdU
 NWhHAOkZNmaOwcygMLAsQMnK1JHOcc8GP5b6cvB176RsbB4lX3N53yKMTJh9CPVDN/
 DblZ3aUNa4vBA==
Date: Wed, 23 Jun 2021 18:26:36 +0200
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
Subject: Re: [PATCH 2/9] i2c: xiic: Simplify with dev_err_probe()
Message-ID: <YNNgvMKtG6Fg0Jee@kunai>
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
 <20200902150643.14839-2-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200902150643.14839-2-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_092639_903229_71901411 
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
Content-Type: multipart/mixed; boundary="===============4583857690451819612=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4583857690451819612==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RyrFzM+QFbnSHop+"
Content-Disposition: inline


--RyrFzM+QFbnSHop+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 02, 2020 at 05:06:36PM +0200, Krzysztof Kozlowski wrote:
> Common pattern of handling deferred probe can be simplified with
> dev_err_probe().  Less code and the error value gets printed.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Applied to for-next, thanks!


--RyrFzM+QFbnSHop+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmDTYLwACgkQFA3kzBSg
KbaeVw//XoYX3KOAm8qeZlZZ1yMVkrOM8FdXdIkWJXp/6GWZ2CZw1O2bmnTmWLtu
oTpTQUJeibcURR6v0MX7SUFJHRRUMa0iN56HulVX2ficfGOhKBG2bh/YPbnOPKOc
kyc0oe4L9AXqWIs+XtNQHyCpV8rJoP73vIXSlYZVF6UbwNzDQl8c8Br6ryP1kY4I
Dd9XNXM6PnLYsmTJtnYZ4ZcGhn7YSYTaSUsoo8Ec+N51f9Aavi9dDDyqLl62kbZS
SQBlBigpHUw3XC7NNtKL8D5zyMfrvfIdbHyMGbIJ1lDUZ7oeXj55Gvk7qrI6eg4Y
d3SEELrApAwxisaWfKP/2BiECz5WL+eH4ak59S1Gs/s6M8x0/BncbRFmWRSyy+It
WSGxJhX0R2WU54ECN/JAjrVP75GPlIEc1gNpwkdCF1djAg9banpxKOe7dWNvFmrW
ezzm2no8S8BeoKxGnR1XBQhAd9Dqwor4V3qKWtSPYyS9uegAhllnXHIXp0nJxJNz
xk4XjBZaL9+0QCe6TfSdKO2skHGejTHnrCSpNKedXCd5ax1la/HHT7qhNu3fXPhC
2tS7osemPAXLJ/+5yBlFTD+SEMvAJTL/4PjUZmLlvOk0tn4lOTc38pk8bqzgUoZI
HW7ehBttpBwKxRgE42hdeJIj/MAAVxTzEyoYTO9qWEN1hJHH++E=
=ofX/
-----END PGP SIGNATURE-----

--RyrFzM+QFbnSHop+--


--===============4583857690451819612==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4583857690451819612==--

