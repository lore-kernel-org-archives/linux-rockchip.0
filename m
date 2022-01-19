Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F770C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jan 2022 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DtOX7yP6Q1vth008LI4hRTAv8rIEhwfBomCiWKIAQ/M=; b=Zy2O0+mpUghBFr3gofDz+sq1qf
	NaJTuVS6nlpaMGWEKzgW+0UdqmJeA1W9blBc7uUIY8WXTp5AJGSlbEyUwd6kCHqYXSISTCW/Z0nNM
	KYWrFV0p0lrM79wmb67tdGYz5ZoZ6N9BT/IdBh6ZawRiLkq7eHRIk513ruDV0cpJDkyK4/PGKIMPt
	+wsQFg1oCGnTLyWTk+QtASchd+p0+rpSbHhCTLxpn8HvU71btnooWMBRmHafso4pyW7cvf3rOvUvr
	2i+AKADWrKrefTR+/swYjrr0zDvOdEdEmz4u7o7ze7rIUSxLXJJKoyXi9bDTVGSRKacxJoxA83zsC
	pNaWVjAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nADrG-006OFn-O7; Wed, 19 Jan 2022 16:30:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nADr4-006OBw-FF; Wed, 19 Jan 2022 16:30:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6E46661581;
 Wed, 19 Jan 2022 16:30:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 955B2C004E1;
 Wed, 19 Jan 2022 16:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642609836;
 bh=NPkrUgRYzcxwa3lnZh2dJ3qyPo1V5StcWneeKtWaOTI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GMhWu7C3B60BdL8/99pPFWzH0CB7LU7Dz7GFXyQtbGWeKeKQJEE+V2fEbRhv/QrJW
 yYagtUm7pysfgqkJMyR27/xktDwbdWcoif82n5bf4F716uAgvyW4CrM7nnlUKhGZf0
 FU8zZ8ZvZl+QEyzj+ByrVczubpcuk9CdfXWCIEjg23SntmAfLaHiquJ5KbvTGWQWfn
 Hr8GUX32FKay/k82RyllkJOyRWhWEFPpRz5SEs7TiLsMcVgix5+RDcoF6No3Mm8HeE
 dgP9NlrSSG2qLfoDBPumyLb9lbK1A0ADtU3DkLXQ9hZS91Urze/uzDqpkaas6/c5dZ
 OCMIIrEVF0X5A==
Date: Wed, 19 Jan 2022 16:30:29 +0000
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Charles Keepax <ckeepax@opensource.cirrus.com>,
 Richard Fitzgerald <rf@opensource.cirrus.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Liam Girdwood <lgirdwood@gmail.com>, - <patches@opensource.cirrus.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org, linux-gpio@vger.kernel.org,
 alsa-devel@alsa-project.org
Subject: Re: [PATCH] dt-bindings: Drop unnecessary pinctrl properties
Message-ID: <Yeg8pWYUwWKqOjhe@sirena.org.uk>
References: <20220119015325.2438277-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20220119015325.2438277-1-robh@kernel.org>
X-Cookie: This bag is recyclable.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220119_083038_597841_1333F8BB 
X-CRM114-Status: GOOD (  13.29  )
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
Content-Type: multipart/mixed; boundary="===============8794434134266926990=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8794434134266926990==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pa3KE12yHs9Xnd2D"
Content-Disposition: inline


--pa3KE12yHs9Xnd2D
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 18, 2022 at 07:53:25PM -0600, Rob Herring wrote:
> For a single pinctrl mode, it is not necessary to define pinctrl
> properties as the tools always allow pinctrl properties.

Acked-by: Mark Brown <broonie@kernel.org>

--pa3KE12yHs9Xnd2D
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmHoPKQACgkQJNaLcl1U
h9CK5ggAgSoOi6gEd+9fFCP6FCxOQatzUUojOHSGhmWyvIDZNwu17IQjUqhzZ5Lk
8Z9Or7iFzVcEVfaKQ0w1HRWHQIrPLjnGtm1pnD26p3iqmdDC/1hDvKb/kd7EjOmF
NEx6LRQoJL0LQX9I/c8rkwoW5mXpxaBck270IlQAaOI5/iOQFHp2oDn02Csbli0e
XtJH3S6dPtjKQN/+SC9ruVF3usw6u4Vxi5FNXA1ABQYeKP+4/lyft2SWzGZEShhy
Kmn6JJCH6fa4Aqbz85d4dpvuG9t9ukvdK8zrRCpsH2xw8AlHDeJtcDG6/LXw5hPG
u+NgtzFSWl0tPBvoyeSNpNi3YEkbyg==
=vG1Q
-----END PGP SIGNATURE-----

--pa3KE12yHs9Xnd2D--


--===============8794434134266926990==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8794434134266926990==--

