Return-Path: <SRS0=KXJX=CT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B19FC43461
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2020 06:25:00 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DFF1A207EA
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2020 06:24:59 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="N6S23NPk";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="aTAXkxtL"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DFF1A207EA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PDDMMFI/ncLNumJ+j1zlSdJAZWJoUnrAw2a1X2A4+CM=; b=N6S23NPkBzK8BSGIcfBsZq9Hw
	JpJnxilZYkdeojQ70uPnKCDrY5S6lPLta+FZJlbzavV7/kz8odfsyHzFcb/9LnY8cXH1rYPsYoXFU
	k71UBz2iMKturDo0DAq3szWQF47Sm7qXDlwgfsvxfFoZFhjY+6XQt1cYG0xsXI4ZbeMwMKDWlSazc
	3E+7zuyH6mn4ZGxwab/Tpnk+UViIWcjV8pOOp7AtmcykIqrp9elKtr94nFSB4iL1oxEuvKolMKNmE
	UsuuMxr5mA3T6gkPaOSmzwcyq98ZSeGfZOZQCey54JKuCzfD1MrG4WVneVbkFQ+YNnC82/UoKhHQX
	vhR2YZJqA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kGG0r-0003nt-W1; Thu, 10 Sep 2020 06:24:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGG0o-0003mt-DV; Thu, 10 Sep 2020 06:24:51 +0000
Received: from localhost (p5486ceec.dip0.t-ipconnect.de [84.134.206.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C5BCF207DE;
 Thu, 10 Sep 2020 06:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599719089;
 bh=YYdbufaGVHlqO4nKD2x3a6t2VMqS5rsZ1vep5b/qwAU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aTAXkxtLEunJFDT7fR21mpntjBM1h5RX7bLwZGytsLNRI6f9ocxRQhQ3P1zD9DYAi
 hKiIw0BWQy+ig7qo9I/QWmxojJQ7ybNsK/S+m3pCv2dBD0gVFTmozjlhPJiG6XDPjx
 285R+8i4zWAgog4LQ+tLw3BkQzLJEu8AG3RmQ66U=
Date: Thu, 10 Sep 2020 08:24:46 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 8/9] i2c: mux: gpmux: Simplify with dev_err_probe()
Message-ID: <20200910062446.GD1031@ninjato>
References: <20200902150643.14839-1-krzk@kernel.org>
 <20200902150643.14839-8-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200902150643.14839-8-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200910_022450_532374_2C096B78 
X-CRM114-Status: GOOD (  12.65  )
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
Content-Type: multipart/mixed; boundary="===============7867481428147287440=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7867481428147287440==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZARJHfwaSJQLOEUz"
Content-Disposition: inline


--ZARJHfwaSJQLOEUz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 02, 2020 at 05:06:42PM +0200, Krzysztof Kozlowski wrote:
> Common pattern of handling deferred probe can be simplified with
> dev_err_probe().  Less code and the error value gets printed.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Applied to for-next, thanks!


--ZARJHfwaSJQLOEUz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl9Zxq4ACgkQFA3kzBSg
KbbgJg/9GSHP1qRdFGhNdLgjcwkknpOwbjsZrYyXVYeYuUFbx9XQPf55dRd2yB28
h6D02c/8cGep4CPrKQQDUpg/yFqTXV16AniUtjv8w0mP+BlBsyZ/GWhjUIsYxnHG
Ff9l2LogCfDSoy3ZV5GLyELiGN0Ex3W1m6X5vjj+u3/pBMANwC6sUp89CmqgCic7
IBX2wORSVUtvnA1cfA9ecn556CmTIWg9UzbGGV5/bPPItVALZ9gejg8CjHjaol/6
mSUYdfaawrNZE9GYWP0iypPzu1qIdvPCcV38nbVp1/Y5DRA5bYD+NV3Yfc9MpLpK
Ws+kpqElTyzcqorAABjk9TYUMa0CwEMfH40YysuupfdFRrZqkxMTtHQQ1DDhd//a
p35eewasMSRaFzPalg5jAYX1WylSCi68O/o7tcmetO+4O0/z2yjTKrHsynaGKDpP
6wy1pRywMx7ppAWamk1/4JQiq6KbpfjDK/0cbHVTigzUfCVvw0F6stAmUwqfV4dg
/Osc9IuAXWlyax4rOcbWB5HsYXuPf5m3nqTNlHyYpFEThj0S8AfeyM8Zy1sDZ1SY
Zk7VVFPPAIfDqfWlNMLhYTGrynwXjsDXW5gUUE71PccXJ2P1ZsbRO91fGDoZ+sIq
ZOWfSEl1GHIwbSEmf06MM+fQNRg8WM3zA7EReBpW5GSntii3vpY=
=CslT
-----END PGP SIGNATURE-----

--ZARJHfwaSJQLOEUz--


--===============7867481428147287440==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7867481428147287440==--

