Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 776CBC021B2
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 18:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3NC+tmt9rA8YBHl8puRdqBrUWv6xyiaGYExOXeYEU3c=; b=TCkg7SWoXnTPUAE6TRx6FvJaV1
	SpGc1XSPX61wGSmkQCshUQHrLOgE7du1W+qkEDRsUzeDMY7qD78JqQyEqldxt7//hL079adicMlAO
	HiskC5yABH5O/2NBWan0h+HsDyq3C36SfTEwzezK3Z1Hc/N4gIzB0/jkLlDlGfw/Dh2hYcSM3aOt5
	7Ucji3t3ZLHQFJ8sUs6r3zTmcGeoI1tXIyCvS2gmHYkS9ATpT7dacAhqUzL168Qfu9CGjXSsQw2SR
	wJtgH/pVm/5MgzPRoNAH0mha1ZRVXfb3eJR5eW4EryT1XOwvzrIddGe03RKS9vQ5ijcS/6LZZI6GC
	EH3Axn/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmzqu-00000000zUu-0gfp;
	Tue, 25 Feb 2025 18:40:20 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmzDG-00000000nHn-0WrP
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 17:59:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9CD3A612AA;
	Tue, 25 Feb 2025 17:59:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C258C4CEE2;
	Tue, 25 Feb 2025 17:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740506361;
	bh=yBULEnieTf/nQ04VsVNsRxbU8OeMLTkbgocf2i5ZY0M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qWkp5SfVATCU6JXaCE4TayPuVL+eCHSYSxbJ3H1xQhC0vAS40u98f1WrKObFiVBgh
	 yqVqMjhZ/YO18OlGgUp0l5NDa/hkbIklidIn82bUP2vJTvJp6yw+73Dh7bHNfqYjHN
	 +ZQr73CANA2OvIk1XXw4dx2S4aewx69rt6eH3fnc9wALnp3bpQewmBdza28ubI06dG
	 1dYTu+HfjsJ0i+/DbEsJBcrK1PTDJ/jtaWtpE34VPnAVeQ6EtNFG1BJ+KBYu3uGvnt
	 MW7NV3+F74bLsP96vaa9QMsK8x6t2brZChzW3h0j/0Us4zQdbR1ruz1320aM+dyxlC
	 EbdtbJ99OKDAQ==
Date: Tue, 25 Feb 2025 17:59:15 +0000
From: Mark Brown <broonie@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	=?iso-8859-1?Q?Adri=E1n_Mart=EDnez?= Larumbe <adrian.larumbe@collabora.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Vignesh Raman <vignesh.raman@collabora.com>,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v6 1/8] regulator: Add (devm_)of_regulator_get()
Message-ID: <3360051d-1699-46cc-a4c9-0f379fcf8de0@sirena.org.uk>
References: <20250220-rk3588-gpu-pwr-domain-regulator-v6-0-a4f9c24e5b81@kernel.org>
 <20250220-rk3588-gpu-pwr-domain-regulator-v6-1-a4f9c24e5b81@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20250220-rk3588-gpu-pwr-domain-regulator-v6-1-a4f9c24e5b81@kernel.org>
X-Cookie: I'm not available for comment..
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
Content-Type: multipart/mixed; boundary="===============2862937805407654694=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2862937805407654694==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6DahNsJj491Prgx/"
Content-Disposition: inline


--6DahNsJj491Prgx/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 20, 2025 at 07:58:04PM +0100, Sebastian Reichel wrote:
> The Rockchip power-domain controller also plans to make use of
> per-domain regulators similar to the MediaTek power-domain controller.
> Since existing DTs are missing the regulator information, the kernel
> should fallback to the automatically created dummy regulator if
> necessary. Thus the version without the _optional suffix is needed.

The following changes since commit 0ad2507d5d93f39619fc42372c347d6006b64319:

  Linux 6.14-rc3 (2025-02-16 14:02:44 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git tags/regulator-devm-of-get

for you to fetch changes up to 0dffacbbf8d044456d50c893adb9499775c489f4:

  regulator: Add (devm_)of_regulator_get() (2025-02-24 15:26:08 +0000)

----------------------------------------------------------------
regulator: Add (devm_)of_regulator_get()

This introduces devm_of_regulator_get without the _optional suffix, since
that is more sensible for the Rockchip usecase.

----------------------------------------------------------------
Sebastian Reichel (1):
      regulator: Add (devm_)of_regulator_get()

 drivers/regulator/devres.c         | 17 +++++++++++++++++
 drivers/regulator/of_regulator.c   | 21 +++++++++++++++++++++
 include/linux/regulator/consumer.h |  6 ++++++
 3 files changed, 44 insertions(+)

--6DahNsJj491Prgx/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAme+BPIACgkQJNaLcl1U
h9A55wf/defOMhqJG1AXSmf7/jp/1X3vDIPMsTOOh0tDNUJtT8RdlyJ/1G15zthm
Ox921lEC1kReTUTejPD2nPrh+9WGu66Fcsm9T61U1q6bAZeAMclhcM6guiw66nXp
Dx7seGYTztQQY3PdtZmGK7jouFWjKA9f8CPEIENafSPzm6VMuQ50i/+snwRKcsKU
aM8r9w6ordMdNXq1ZG8lb7Y+gQuwpBBQ2/yELkpoLg/ONyGeR2YikE9Vm5h8jXEE
LpZh0x1iCwDVWgAJT+bE8g5u8IboaG8D8slK3sUb4f0VN9IiZSDcVOh9yKt4DZR5
oSNOuTmiEVVNTswy+nw3QdpvMLDTbg==
=rB2k
-----END PGP SIGNATURE-----

--6DahNsJj491Prgx/--


--===============2862937805407654694==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2862937805407654694==--

