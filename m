Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 138ECD24451
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Dec 2025 17:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nndKbWq/LYa0EugwHjbm0fKWX7z7uGJ9lDeXn2U00gk=; b=CPCVL25M7XImQGgx3GAI8uXRVj
	+MPhi8KkINohaRy6z8ASK1xf6N2K8g031lc5B9Vn9KolEciE9uexyRLiwRtBA1uHBrLVQD8d55ux/
	G35oMJ5a01QFKMPJz5ba3aC45ruDmPaLhtKBC8Wb5USR/Il7NnIv8lutK7TIlif1xIFY6yKj+Jqbb
	6XoAXGkz4LSfynf548W+mg4eUXLGfoUOw7UKJSbrM1VdggG9ARpWUjtXPVyO4oXniei/kvdvHydwd
	UAQ17WPuK0p6ZfnjeJAuEUR413zKnrWGT7J7emtMUendqxaNcjM13UHhJ74I4sV6eR6bU4sXyUewt
	T+noI1Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRDVm-00000008P94-2SQ2;
	Thu, 04 Dec 2025 17:53:02 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRDVk-00000008P8Z-1DMR;
	Thu, 04 Dec 2025 17:53:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E720C42B6E;
	Thu,  4 Dec 2025 17:52:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BEEFC4CEFB;
	Thu,  4 Dec 2025 17:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764870778;
	bh=BrgfaUpdhzS8+buPbojpshfeXHZeX8BfWC8VzTAmvzc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=noABDMbmzhHIeSCx3ztm/U949iPtVsWFHNkpxyJfwxH5oFCkwcYdKL3wp0kL9/yUq
	 pO2y+rwUdZ0t3NzuAZZMV8WOsiWWxNNyRm9iGc0XJMnxpxuUwAFCL341kFHI03Dfl1
	 JorHa9EOC6S0RdHBuD/IzJY18PopQE7op7TEk63sy2FY5KtuEi0z5p/vEJMs2504NU
	 Sbs4G/PmHhY+dtKPO6PcsOJCHlcOx6vu8kSmlQIfgaOT+6PG7RqaeEeZY0z6Hx0TZd
	 5Ve9ujdbFxuMCPyDyGzyWQCPZG6SRfv0SUwcWw75Ar7m9zyswN/qHZ4fVSjHSIp9DP
	 TjLwttSUDBmGA==
Date: Thu, 4 Dec 2025 17:52:54 +0000
From: Mark Brown <broonie@kernel.org>
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: Haotian Zhang <vulab@iscas.ac.cn>, Liam Girdwood <lgirdwood@gmail.com>,
	linux-kernel@vger.kernel.org,
	Linus Walleij <linus.walleij@linaro.org>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH] regulator: fixed: fix GPIO descriptor leak on register
 failure
Message-ID: <6a964031-4286-4898-8c25-c0940a78f387@sirena.org.uk>
References: <20251028172828.625-1-vulab@iscas.ac.cn>
 <DEPEYUF5BRGY.UKFBWRRE8HNP@cknow-tech.com>
MIME-Version: 1.0
In-Reply-To: <DEPEYUF5BRGY.UKFBWRRE8HNP@cknow-tech.com>
X-Cookie: volcano, n.:
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_095300_350449_3C226750 
X-CRM114-Status: GOOD (  15.90  )
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
Content-Type: multipart/mixed; boundary="===============7261467120369637564=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7261467120369637564==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CQnLQ1LmuUlseSsm"
Content-Disposition: inline


--CQnLQ1LmuUlseSsm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Dec 04, 2025 at 12:59:53PM +0100, Diederik de Haas wrote:
> On Tue Oct 28, 2025 at 6:28 PM CET, Haotian Zhang wrote:

> > In the commit referenced by the Fixes tag,
> > devm_gpiod_get_optional() was replaced by manual
> > GPIO management, relying on the regulator core to release the
> > GPIO descriptor. However, this approach does not account for the
> > error path: when regulator registration fails, the core never
> > takes over the GPIO, resulting in a resource leak.

This should just be reverted, the core always takes ownership of and
consumes the GPIO even if it fails (that is simpler than callers working
out how far it got).  I've written a patch, I'll send it out later all
being well - thanks for reporting.

> But booting the latest 'bisect kernel', thus based on this commit:
> 636f4618b1cd ("regulator: fixed: fix GPIO descriptor leak on register failure")
> gave a different call trace and landed me in the initramfs:

It's corrupting data structures in gpiolib which will I expect be why
you're seeing varying symptoms - exactly what gets corrupted and how the
data gets looked at afterwards will vary.

--CQnLQ1LmuUlseSsm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmkxynUACgkQJNaLcl1U
h9CHuQf/RH2xw7j7oGqEVvyeIC69dGOtPoJD+jvgrpRxK3QBKMHFwdVibQqXft0n
gz/D1yzFQ/e3wOLehozjh9UGxnJMjYg8G4f5duiNC73W7cW+UiNImadpuiecQhAr
7ZY7gu05VBIw3qNsBc4gtMceSKq57zJoV2jpdDK0gnExGwmbBom5FepuCClk1yMS
I+2a4jzoWOSazlleWqHMdYI7CKLeZ9Np/4uY1TxxqweIj3gbuu9SgEI6TIhzGosG
SQpyBvV08fDgJ95Sm31jukBzeiUTI/c/ul0DqSydP8/j3zmiZxc6e2gknC6iGw3E
tOQIZo9OojU+zWIA1Ij0bc/v0My50Q==
=NAVh
-----END PGP SIGNATURE-----

--CQnLQ1LmuUlseSsm--


--===============7261467120369637564==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7261467120369637564==--

