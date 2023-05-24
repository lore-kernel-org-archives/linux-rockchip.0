Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B753C77B7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 16:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c+IfN+7n7S2OOkE2aUNrQALbtlyZU+ZR9cQIlX8kjkA=; b=eSLk2yppsVJfWIeuaIWXMvYc+N
	S6wAVjgZZbZAz1PTU5ztFYdpzgdXuAg1CJHQecQgyn4qfXIDoJSK0SZSE3FAAkJM0dWv78UyNAyus
	gsaU5lfCY2zPKEhcNo5DtxuXm/MQU1goccRXNhhzJSUEMzKHXAk3q2D3H01FPAQ4fikBwQGPnmqgR
	4lS934cfY7U5eKZMVtvWZisqg65K+fXmcLjwwucu9OCFIBTd/wYSI+14dDspe/DGJWFjqPI0/6stU
	byA1cdkGHtgGg00IeZJZENYIZBQLGB7ROo/pxphiJXCXbJbdNGPbgGQmtAlDroPx5NgGeJ7h0ClX9
	yujAAosQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1rbZ-00E2ZS-1a;
	Wed, 24 May 2023 16:44:53 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1rbX-00E2Yj-0f
	for linux-rockchip@lists.infradead.org;
	Wed, 24 May 2023 16:44:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B12646344A;
	Wed, 24 May 2023 16:44:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0A6EC4339B;
	Wed, 24 May 2023 16:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684946690;
	bh=0u2MW2aLAiWF+iXBGwp0uD/2j7OwS91rgd6Dp/srwPw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Lv55bcssphrDQQvmCAu+CTTzNBn9A3NLdpJEuiOkUYphaGZO0ZWLtkmaL7fu/Tatt
	 Q8E6Baw/1+0WnmKGy6zJ/Hx82eTMU5/NMPLDe+m0fRpGKA2ZmEJkg+EluWackhd3o8
	 1RQInsLZbzC2UePTcwumIQOsWlarIvSDMIdOR41rPeN5sYGMCveQvU5tv5spaGxL4z
	 ctp0eZaBepBCgBx4THj3ONjuopgd4Khhe8xOUkoVvMBtdQVsVErpwJft3U0J6/o/UP
	 iA+Q98CLxd8AqvFC0fw4K/bojr1bW3rcXiFXgXNRVUzR7hUwmjhYyzYJFiCb2v5/7B
	 TVTbVgMM/2HVg==
Date: Wed, 24 May 2023 17:44:43 +0100
From: Mark Brown <broonie@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org, zyw@rock-chips.com,
	sebastian.reichel@collabora.com, andyshrk@163.com,
	jagan@amarulasolutions.com, perex@perex.cz, tiwai@suse.com,
	lgirdwood@gmail.com, heiko@sntech.de, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/6] ASoC: es8328: Enabling support for 12Mhz sysclk
Message-ID: <bab1bdca-4254-43a4-b8ce-d1b59e5fb448@sirena.org.uk>
References: <20230523213825.120077-1-macroalpha82@gmail.com>
 <20230523213825.120077-2-macroalpha82@gmail.com>
 <f5b780ac-e079-4c24-9dfc-05aee52deb9c@sirena.org.uk>
 <646e3784.050a0220.71431.07f7@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <646e3784.050a0220.71431.07f7@mx.google.com>
X-Cookie: You will be divorced within a year.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_094451_304179_0DCF6E3D 
X-CRM114-Status: GOOD (  20.02  )
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
Content-Type: multipart/mixed; boundary="===============6523217020877374234=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6523217020877374234==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="D8ZuulpqfGevSiIX"
Content-Disposition: inline


--D8ZuulpqfGevSiIX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 24, 2023 at 11:12:49AM -0500, Chris Morgan wrote:
> On Wed, May 24, 2023 at 12:57:02PM +0100, Mark Brown wrote:

> > The other constraints have separate rates and ratios, with wildly
> > different values between the two - the ratio (I'm guessing a clock
> > divider) being written to a 5 bit field which obviously can't contain
> > the actual sample rate.

> A bit over my head here, I saw this patch from the Rockchip BSP kernel
> branch and tested it on my mainline kernel. Long story short the clock
> for the mclk is 12000000. I see that there are similar issues for the
> ES8316 on the Rock 5B, so I will probably just wait for a proper fix
> there and then implement something similar here.

It sounded from the rest of the series like you don't actually want to
run at 12MHz anyway, you want a change which deconfigures the sysclk
when the card is idle - that'd allow it to be reconfigured as needed to
support the widest possible set of rates.  That'd be work in the generic
cards.

--D8ZuulpqfGevSiIX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmRuPvsACgkQJNaLcl1U
h9CKjQf/XHEUXXItHX5/gPBJ90ZKLi1OYX/JLxGuuYpAP9+nnC4ZMj0rF4xwm4wQ
rMQTGuyi6ogPip5lNSF+F+7UKRg/HzCp2mRFEU1rltLzkCF5GXZDtybewiUScQD+
DrUoNStDRb55MK8fyL8Q0WpNfF0mX61/qV4KVBKsUlaV4uMrXiJNzv0gNu0U7NHZ
HDHlCUVMxsY0bxuV+x33iYhxdkBlrR1JX65Fw1J2qxT4opc6SL8QwOkrljcKteuw
i24SN85wQvUyJNbcqwTOpI63d/+1rHNe4fwrKC5b+l6Dxi/p09OiEVrdIt5ILGbn
YFPwCAih9x6aYEAEUuZ2NGOeAnbkrg==
=aAXM
-----END PGP SIGNATURE-----

--D8ZuulpqfGevSiIX--


--===============6523217020877374234==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6523217020877374234==--

