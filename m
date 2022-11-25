Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 831D3C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Nov 2022 19:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6D+Wj4NJSjGNH1EA7y2NW4OaWba+WXFBTAAi8H+MCnM=; b=RyWDmjNFM33bIt+1IMn1B3HFvb
	+tVWQzLcIExZCgEltctPfogT11o+waXudv/JnVmEB8ixrhgr6kHtmVo6gkskdErKULHclUM6dOvtl
	ABc6PKLECQt+4Nb8yVNEprKz5n5L7uE2WqlZ4Jhd4uuhWPO3F8JsHK1DO9K6oIGnHWQVBIc0HVqks
	kyYOCPKtUQKeBuT854+LIESi6tE+ZXWs4PYPMaxJ8AefFpmb6BconDeoHUkTmOWzFlFCfnerHIFEx
	yzC8e4UfG1OBbhegk/4jFqDNJsDAhCBV0/OphQQ6nE1RQzsUOKsSuCJ+4E6H8t2zfrBowMcQJ3mgg
	hUHySOhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyeSI-001jyj-50; Fri, 25 Nov 2022 19:33:46 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyeSF-001jw6-Ac
	for linux-rockchip@lists.infradead.org; Fri, 25 Nov 2022 19:33:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id DC5D9B82A89;
	Fri, 25 Nov 2022 19:33:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91CF4C433D6;
	Fri, 25 Nov 2022 19:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669404818;
	bh=RVB3BmgfIM7pdYM85+7yjccUQRTSMo0yeGZcTrcEkBg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YiKSxMzXLnMCrch/yOa86tO5zgmwB6DcYXj03TMvByfgpIh6B2hcGo3sNIi0sNJsv
	 KQq48sgoO5ekFyI1H2FefHNQBLP4QvDUMfhqQX/97BQqYz9wqajSXX52HORXQIezow
	 e6FgKhWxSXa788LsMeBn72lIkT9r4rR0DRwQdnC7fbrEJN0uteYjb3uFvDc+7cl2Tc
	 KXQUfT6N/7+UTodtAuYQUIIgs/fogJCJtTP+jNT0KrgA9ZNL6ZWQPTssgMpzdRbLCE
	 yIJ+aoe+sjvqWyZpZVIje3FQkd2jUbzGcj4+Uo82OP46X3hE7QEt4JueW7pmjJbfYB
	 +6i2TMExQYD3w==
Date: Fri, 25 Nov 2022 19:33:32 +0000
From: Mark Brown <broonie@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v4 11/13] regulator: rk808: Use dev_err_probe
Message-ID: <Y4EYjNOrS6lDnDZK@sirena.org.uk>
References: <20221020204251.108565-1-sebastian.reichel@collabora.com>
 <20221020204251.108565-12-sebastian.reichel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20221020204251.108565-12-sebastian.reichel@collabora.com>
X-Cookie: Revenge is a meal best served cold.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221125_113343_542748_0C817736 
X-CRM114-Status: GOOD (  13.00  )
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
Content-Type: multipart/mixed; boundary="===============3350203617580832505=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3350203617580832505==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UP7MXguqYcaP8hwk"
Content-Disposition: inline


--UP7MXguqYcaP8hwk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 20, 2022 at 10:42:49PM +0200, Sebastian Reichel wrote:
> Print error message for potential EPROBE_DEFER error using
> dev_err_probe, which captures the reason in
> /sys/kernel/debug/devices_deferred and otherwise silences
> the message.

This doesn't apply against current code, please check and resend.

--UP7MXguqYcaP8hwk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmOBGIsACgkQJNaLcl1U
h9AS3Af/ZimRMulT/PKXc7g4xcMQKhfESORU7C4dMAr/UyeTa6EaxpaMCLNZ0+kz
7rVc/Abed6reU2tt/UbFtg+gBB0P2P4YOmgek6iLoF5qL1xx/LkCrFjhv77Y8g+3
cG66F3ZCIFdy41CkR933jxas+h6s0GAsIxg10yKI8bbaBK+BsvPRoG/6c5vogBZW
YaMxKDhSYjvkzOPQa3Bb4tneoiTLUDeOVxynPgbekfyz3KCphls/u09fkRsxIUsd
zZdcR1or0MI3uF01rDUaR/x7st4tFhssX+c+uYu5EG6mqZV+YumPFql6RlsMdmvN
piaqprywCVIMn2MgykGnYSH/yd0Eiw==
=WbNx
-----END PGP SIGNATURE-----

--UP7MXguqYcaP8hwk--


--===============3350203617580832505==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3350203617580832505==--

