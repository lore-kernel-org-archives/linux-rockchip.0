Return-Path: <SRS0=KXJX=CT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F6A2C433E2
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2020 06:27:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DDD7B207EA
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2020 06:27:23 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="UEgmStxt";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="etU4Y2hi"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DDD7B207EA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LGbzhy3DcnHoh/d/I+41cNwoxe3CogvBWSdw+g3KTjs=; b=UEgmStxt1/3ZdnD91ahexwRy0
	l2IGwcLEX4XAgdi9M8LfRGhsw61lvTyMXKVbkBeLFp6zmtFgmU8PXd0zpAlCPdcxscr+eMu86MGiZ
	SHzO4fEVVJwAQmnFI9B9sA5Nlvx76xe56O/z81FuF/aNKssxTD+HM8grsLYwsqSFdv/w/d5vcsXGu
	4h5AIE6t2qPJ8fbtGyciHHghFGygo2GsmY7vFk5XLM/NFAzDABogo+bEmENyQUlUoGmdgdf6gPaeo
	3zOWjRp+WpLm/vtMbghRhSnjpyyYVHMkvpX56ejnjga11My1uB3WXyh9Z48TAh6DPgkkpM4f8eZ9f
	7Exf+J0gw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kGG3C-0004TP-Df; Thu, 10 Sep 2020 06:27:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGG37-0004Ra-6F; Thu, 10 Sep 2020 06:27:14 +0000
Received: from localhost (p5486ceec.dip0.t-ipconnect.de [84.134.206.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6EA4A207EA;
 Thu, 10 Sep 2020 06:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599719232;
 bh=Gm5FP8nCLsvEkfvRpd3DNlXiO/khQnSfhfWHWBBmjY0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=etU4Y2hicXxYTNu/4kWYn9Al5j8eZkOpVlo2pD0o1ZsWbpO8yQItP3MmmeCtXmeSe
 fyvU9aDyHqv0zV0t5Qq9zQ5V1TzIGX8u0YUgsApk05uWFgTZuWfYcPmjEM53hyKvc7
 5F65oqU/5kMGkwkHBLR+LePV9sqD9cHQMPpUiAVQ=
Date: Thu, 10 Sep 2020 08:27:09 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 6/9] i2c: imx: Simplify with dev_err_probe()
Message-ID: <20200910062708.GG1031@ninjato>
References: <20200902150643.14839-1-krzk@kernel.org>
 <20200902150643.14839-6-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200902150643.14839-6-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200910_022713_311215_50AAF47D 
X-CRM114-Status: GOOD (  13.00  )
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
Content-Type: multipart/mixed; boundary="===============2692754344573981389=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2692754344573981389==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sLx0z+5FKKtIVDwd"
Content-Disposition: inline


--sLx0z+5FKKtIVDwd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 02, 2020 at 05:06:40PM +0200, Krzysztof Kozlowski wrote:
> Common pattern of handling deferred probe can be simplified with
> dev_err_probe().  Less code and the error value gets printed.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Thanks, but this patch was a bit earlier:

http://patchwork.ozlabs.org/project/linux-i2c/patch/1597203954-1803-1-git-s=
end-email-Anson.Huang@nxp.com/


--sLx0z+5FKKtIVDwd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl9ZxzwACgkQFA3kzBSg
KbYCNhAAo2nfbP6Dmy9CcAEl/QKmFLjmjJKUIQb45IeuIZWlBMUc7gk6SBrqectE
PTAyWBluLF8Pub2rqHtIuQZBEu19HG2reXcyNugVvoz64rUFksRUw0Ap3CJW3MBC
81/i1SLsMp6gNhXUz7T+2JypfIu/XRYB5sMYVFCLFzstxepY15cQ6DwV37ARpJDp
Z9n5uD9qNgcCmerP8TZC6HIwLSa4FDwJ1U2MYzWHp7IVIEA6OwshA/g7b28J/VBU
egPLlaDRy9utqwMH1LqBJe9e8+yB52M/VI6ao4iA5qaMzdy9wROhiigkSJxRK/RS
sx33t55k+3q9CfSiVhOuVepKetiNyTMEvXvOf8DvXqfPeUzIaZr0xKU3vnTa8kE8
RDjC9mDy1aeH92gJxwhDPg90G9kaoz2G8unIynr5aS+5qGnPMQnK3nSn5IGVktD9
aYtx0xQw1Io+BYoyE/W4gW6xOO4MROaqU354P1y+DodMVLrkfv8pluItqu9363cY
NRkePoQnoWP2Ac2/cP7e7bY3P/ha7SNWMLS0FRpAitYAREilgiaABW2T+2v1WoNt
6V6Oy97ceBSNxLuVTLEGWPqJasIk07gTR5SyB4i+doS+wDwfiHh1codmfOyErKz0
00w5u9BN78VIAkriPGp/xz5a2rptVGvT0ovdvT6jsypdGplR1tM=
=5W+d
-----END PGP SIGNATURE-----

--sLx0z+5FKKtIVDwd--


--===============2692754344573981389==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2692754344573981389==--

