Return-Path: <SRS0=KXJX=CT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00EFEC43461
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2020 06:25:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 87174206A1
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2020 06:25:48 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="StO4vIM3";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXaXfT1g"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 87174206A1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MFX4vlzFns38XF1d48q2XNYRJggu1vq1aYJcH8KY0Ak=; b=StO4vIM3R8g1cg0pJrQtL9sjg
	qA5EcYcag+NifSObfjnsxV6tgettJ8dm770rPyMZ6RQF2n4rhpOWTmUgPmWPJ/ifi1E035A71OwcV
	P7XBM5atN0GO1DIPqeZjUMFIewgY6BxazmMxeRiz/+0UHjRERzu+S5j+6te2cNh7HSkW3HlAXbXhA
	HQkCeE/K1m7RmHusRt84T47tHivsqtbeWF3ozLfoZGdhaWqdGG9wN9AqbagV/RH5laSJYV3s4J+uo
	NDtc/yclTqbEtsL5ciNM/8rOOjD3ovMzU4UNecksh45EKIBtDtkWzkG/N49tAZCytzzDDz2Qsg8pv
	8JTIUY0YQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kGG1f-000425-8t; Thu, 10 Sep 2020 06:25:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGG1Y-0003zR-QZ; Thu, 10 Sep 2020 06:25:37 +0000
Received: from localhost (p5486ceec.dip0.t-ipconnect.de [84.134.206.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1703A206A1;
 Thu, 10 Sep 2020 06:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599719136;
 bh=1tmPJGIkpBXHgR/46GF8TeWUiMz2EH43SrJ8FMzonN0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TXaXfT1gOvjM9QB5dCOqR58HhVflow1+Q+bmi9oYJZdyWEd3X6svuE1JTuswzqWqg
 1jmkkGWmaKl1PXdy/VCMIjw2b8PtEY7ioBS6LQX8JyTGqsHG1l/VPZoHMmFzki/SJR
 cseoRUmUBSndK4MRfpeGrkR8H+RiqbHr5/q/p+s4=
Date: Thu, 10 Sep 2020 08:25:33 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 3/9] i2c: bcm2835: Simplify with dev_err_probe()
Message-ID: <20200910062533.GF1031@ninjato>
References: <20200902150643.14839-1-krzk@kernel.org>
 <20200902150643.14839-3-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200902150643.14839-3-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200910_022536_937040_EE85EA15 
X-CRM114-Status: GOOD (  12.83  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko@sntech.de>, Sekhar Nori <nsekhar@ti.com>,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>, linux-i2c@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-rockchip@lists.infradead.org,
 Michal Simek <michal.simek@xilinx.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 bcm-kernel-feedback-list@broadcom.com, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Ray Jui <rjui@broadcom.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 linux-kernel@vger.kernel.org, Oleksij Rempel <linux@rempel-privat.de>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Peter Rosin <peda@axentia.se>, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: multipart/mixed; boundary="===============9123986885588127195=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============9123986885588127195==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Mjqg7Yu+0hL22rav"
Content-Disposition: inline


--Mjqg7Yu+0hL22rav
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 02, 2020 at 05:06:37PM +0200, Krzysztof Kozlowski wrote:
> Common pattern of handling deferred probe can be simplified with
> dev_err_probe().  Less code and the error value gets printed.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Applied to for-next, thanks!


--Mjqg7Yu+0hL22rav
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl9ZxtwACgkQFA3kzBSg
KbaeHg//TExyGapDctpG3/NfiZUK8fRTxopI6eApuGkuRNFi4dDR7IN7TnG4JBIC
ZzQa6MIT0nKsWK8hVRcGpEFYgU5pyxXvjT7UWr+EHD4sYaTJRocZVvNjC1D4FZhh
JjgPJ6zbcneONv5izf77WadDSDkGXZ/PFo03gqW/NIaXx64YyCIp9LkPdqFqHYrw
cmlC7ZMWUIVIBvITbES4MaW+h3byshkSNdy+45RPf15CH4w27YJubcFWlOozdWg5
T4hRK0XLKuBzjvNF/K+tj8OPyWUHQS17P0M1fJ6orSo5XnkANcac9crhTSA2+mQG
vOFCYGFh4ctXFYb2l4N+q2sZvqqjItcntGkQGYMNs0naoFN6rdIo9KYhhbU9nx9T
JcYuUVKxv2mITRhD+Lvq0YfxJmKYoqpnGeN6I5UIqcV9QH3n1VKZOA6CwXVhgVaM
L4CSVfQak+iqj3Yxz5D3p22uF5788jHRW8nKuR/aqQvyTB7nHYwTQR97jQWtpxuA
b6aG1tecsKP4GxXhKozl1twrAtk0wqvvz/MrY7XDlTOwq4vDSgVioSSkPaw0G6E3
n3BhV5CVQbBdSvFxg6IVpNsvGxGWOoEZFfvNup+6Q2DDqLiX556mvvt+0iJSoBgz
ZS6M10mqVyirKjO9YWLDD4yUCx9VLgDUuXPdaNcLqvnpnlmipjs=
=NMWb
-----END PGP SIGNATURE-----

--Mjqg7Yu+0hL22rav--


--===============9123986885588127195==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9123986885588127195==--

