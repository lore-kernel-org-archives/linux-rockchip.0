Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC9A7C64991
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Aug 2022 12:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5C4AJkFd1nw/xti/La6DPBGt+Uc9rxDP/U/Z7jenmHM=; b=TLpTs2k9UdMY+DxtiHsXnMhe1y
	k4E5HkgGxrcfTSVRMSKOWRe2uLwOGn1N+W4ZweJJ2M15rZQXksNVLmP+2ZXjJdFTBQI2AfEzotZpD
	OKL6okhPcbMpd8gQw3nWvPSGoBWIpBwKFhxCUOhQP6HhQbzuPcER32yG2ZiQp4D+IXHBf12DI0Cu8
	/aZloSJ7yAKfEwNZnkDtKirh8a3RccoU4Gad9tyjwvhIEEIkM4Cu5u09XpzYQTmAcoj7FWm977n+D
	kOwcLKIFzvzT/BRymwbYDbLErNEy7pSuoQLy3UTc4GmRUUkRSSNzPotQo42a1QK61buj3xNlpr6DV
	fJLDHN6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRBrZ-00Ddlr-N5; Thu, 25 Aug 2022 12:21:33 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRBrO-00Ddg7-6z; Thu, 25 Aug 2022 12:21:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id AD6A4B82919;
	Thu, 25 Aug 2022 12:21:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAE42C433D6;
	Thu, 25 Aug 2022 12:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661430079;
	bh=/4tyMqLwSYhTo6yY0rsvHIOoMQsngmHs6o8X1S+4aTY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qtMOVQdXhwpz7nIrnm5Gba5UnYa9i5CHqSeU3lPDnf9eyZpg/5kKEtdM+iorAF5Jh
	 wZhDXbUlasf63yLILMis4Z11XsrekyklpzPwvwhwEcuTdVCLxMer8IAslnMxowOfvM
	 FLLfiZlkWv1QAv1AdRamBCGPP4Axxo0Zpulaw0R/ayEPzvjX7eBTNqKExzWizCdgGZ
	 3yci6tqVUFCFR4aWvXXNe4SlcRxa1NTQc28AE9bHJwemIsx1aywqdaKdxB8fNH6QGJ
	 VfdxhX6ecWi0aoQbxuBrq0SajgDSZ10fYEqS6IUPolkdyQ1AAtF6Fl1m12vfi6MxX9
	 XePoD94Sac6gg==
Date: Thu, 25 Aug 2022 13:21:13 +0100
From: Mark Brown <broonie@kernel.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Christian =?utf-8?Q?Kohlschu=CC=88tter?= <christian@kohlschutter.com>,
	heiko@sntech.de, lgirdwood@gmail.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org, linux-rockchip@lists.infradead.org,
	m.reichl@fivetechno.de, robin.murphy@arm.com,
	vincent.legoll@gmail.com, wens@kernel.org
Subject: Re: [PATCH v4] regulator: core: Resolve supply name earlier to
 prevent double-init
Message-ID: <YwdpOX0xCzYwhjmx@sirena.org.uk>
References: <YvorNPDQQr2SH/NF@sirena.org.uk>
 <20220818124646.6005-1-christian@kohlschutter.com>
 <CGME20220825113251eucas1p247c3d57de823da148ca4790975a4aba8@eucas1p2.samsung.com>
 <58b92e75-f373-dae7-7031-8abd465bb874@samsung.com>
MIME-Version: 1.0
In-Reply-To: <58b92e75-f373-dae7-7031-8abd465bb874@samsung.com>
X-Cookie: Boycott meat -- suck your thumb.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_052122_421964_74561F7E 
X-CRM114-Status: GOOD (  16.81  )
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
Content-Type: multipart/mixed; boundary="===============8781447680884832858=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8781447680884832858==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DbctYosMDif7tras"
Content-Disposition: inline


--DbctYosMDif7tras
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 25, 2022 at 01:32:50PM +0200, Marek Szyprowski wrote:

> This patch landed recently in linux next as commit 8a866d527ac0=20
> ("regulator: core: Resolve supply name earlier to prevent double-init").=
=20
> Unfortunately it breaks booting of Samsung Exynos 5800 based Peach-Pi=20
> (arch/arm/boot/dts/exynos5800-peach-pi.dts) and Peach-Pit=20
> (arch/arm/boot/dts/exynos5420-peach-pit.dts) Chromebooks. The last=20
> message in the kernel log is a message about disabling 'vdd_1v2'=20
> regulator. This regulator is not used directly, however it is a supply=20
> for other critical regulators.

This suggests that supplies are ending up not getting bound.  Could you
perhaps add logging to check that we're attempting to resolve the supply
(in the


+       if ((rdev->supply_name && !rdev->supply) &&
+                       (rdev->constraints->always_on ||
+                        rdev->constraints->boot_on)) {

block)?  I'd also note that it's useful to paste the actual error
messages you're seeing rather than just a description of them.

--DbctYosMDif7tras
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmMHaTgACgkQJNaLcl1U
h9DLYQf7B64bhLUc+XVLb50HyPYEuouG6CPrbSDpaP2LdPCV5ijkpdYx+xOImms8
VBIpJzR27r14ovgqmLn839wTIJn+tHa5YPfe4OdvLeJRwq5Luwb8kwnJiVk9I7nk
MTSkpYAV2naDRV9mqNxCvgNo3EtW5Gz627m7uNoWhV8qHkv/kk2eN2s8tJ7d+nEM
/MQSdJtZEHk25mHtPVrWuX4Z6ejmYJTjI7ltGXb6jOvL5lKzDJSJyD2uLDlTJDKT
B9lOMJEMxffHThMkAqZzSHT7YpIGnsiyIdlhMAAcTTiE/GhXk5ZOfKp0tq9IPORr
bAX1v/mTHcPq/XgOiHRZ4V70Yac+jA==
=bQca
-----END PGP SIGNATURE-----

--DbctYosMDif7tras--


--===============8781447680884832858==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8781447680884832858==--

