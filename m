Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B94DDC04A95
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 17:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zevOg8Wc6noGrnE7mZvJzFM5O2eWGnhOOIqlnXnrFd0=; b=ozhwa9J2lJqmGEpksLlNYrMw0e
	3LulLi3Ufhmn+WfttaYHhBeLUSR4SPe4d/CdgZEwqdi2JKrYip2SyDrJajq8tfk5dwSNGF8AFs4zJ
	3mm7r6OzcytZs1TQ/dT17CgxZHlmVNJjb+tFcqSMWooByHanlL+KO4DgJSSp7ASklRTFwtqR3lE1Z
	zii/ELYV56x78XoG0GbpOmlgNQywvHUiu0dTF3hBL+PjP+EpzHRtHwup46Wa05A2MQJGgmT/G+94C
	4LN6HQD0YWpbyrxMCiwWTOaJU3vVzPK+3ie90TUYA8Y00PG/0/MdywJoxb68QnudUNeUdVXdYgYuc
	Q8dsLr9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odb0I-00HPgm-Iu; Wed, 28 Sep 2022 17:37:50 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odb0G-00HPfs-90
	for linux-rockchip@lists.infradead.org; Wed, 28 Sep 2022 17:37:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A5F78B8216E;
	Wed, 28 Sep 2022 17:37:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C05CC433D6;
	Wed, 28 Sep 2022 17:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664386663;
	bh=ECgaTTdtQtgj0B6GlAF3UizrA/LkdiSssPfWpdOdeVw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MhsSNhCsQZhnvWLeOFBUqZ7nTblu40aDDJr/vsB6x9Cb56GOdwiKYrAdBBJK3Eo7P
	 22/NIczfs9U2XjEuTvyPwv1D8SdaQYyppWM2QhdtQNnuo9CrrHDv0OLHusOS+6ebli
	 zRaFVjnrZcnyUp8Pz8MyPTbLi2RSBq/dnuMhcEof/nuoglGW0hpVHPAW/YJqvKTkE7
	 mZULu9AGyIE5AUpJqoNNN5ne/mQnbF682GHkr8ZB6i4Rv3Fh+2f3cWzEEP2lCVmoWr
	 UNj4B2wDtYUuPJXMWYFShwrPkMQ1wxgE6vYzIDakuqwnHpYG++LAeB8A75GZ5NqhBY
	 P7D55Jpz0ydPg==
Date: Wed, 28 Sep 2022 18:37:37 +0100
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
Subject: Re: [PATCHv3 12/14] regulator: expose regmap_find_closest_bigger
Message-ID: <YzSGYZQ8nslb+bLC@sirena.org.uk>
References: <20220909175522.179175-1-sebastian.reichel@collabora.com>
 <20220909175522.179175-13-sebastian.reichel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20220909175522.179175-13-sebastian.reichel@collabora.com>
X-Cookie: You look tired.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_103748_479092_85DA117A 
X-CRM114-Status: GOOD (  12.65  )
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
Content-Type: multipart/mixed; boundary="===============7130891675002429746=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7130891675002429746==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RbcWQQl80xirt0Ff"
Content-Disposition: inline


--RbcWQQl80xirt0Ff
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 09, 2022 at 07:55:20PM +0200, Sebastian Reichel wrote:

> -static int find_closest_bigger(unsigned int target, const unsigned int *table,

> +int regmap_find_closest_bigger(unsigned int target, const unsigned int *table,
>  			       unsigned int num_sel, unsigned int *sel)

So this will create a function in the regmap namespace in the regulator
code which doesn't seem to interact with regmaps in any way?  I'm a bit
confused.

--RbcWQQl80xirt0Ff
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmM0hmAACgkQJNaLcl1U
h9Dd0AgAhHglwkClmkyAa+iAyQuyY1qiQUCN+lhIS4TUbfvB2UPo0KOhIxWmZBCs
Ymo8jnBsQi/gMnptSNquEAEEAnLoGpm1QIP+ENVVpzYA+zstm+/DxlnjeWkPBoPI
+2bBULFVQd7yOYc51SBjZXFKY7h7UuBsBfj0LdO8KcaBPTA8saiJAnORzwjQGBpU
ulm9UzaPUUlFqlENSZXmixk0iEKF0zjdWO8jcVwjllKGoRl//0rGG+p9a9kyiZKv
tEA0wlfXnwrmXBPmYdIWRn7wcOyLaMtb8ARBEZt1V2uoT9mmp4Avl9wJwZloD95B
j21KVEAf4K5o4hHCVvQMZUmPDseoCw==
=W08G
-----END PGP SIGNATURE-----

--RbcWQQl80xirt0Ff--


--===============7130891675002429746==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7130891675002429746==--

