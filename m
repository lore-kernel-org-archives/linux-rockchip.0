Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FFF5C3ABDD
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 18:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WLOGeCYTha/eA17uf3VyHHUQYiWIMtSj60wRfLwSErU=; b=l8wvA7oeHIIe1VD5ExBSr5qtKq
	sER0Nv3BkzLZ8wdz8K6s02uBE44os/C0FPdOMoMkB+IAykpPz8Z/EDo7aiwvUOdibWP40KTc+wFkl
	vMn+yjBYwSYVNatJ+Mf0c4Fzs+HnjksWIvkYfAF8lXE+MFmCgNYnpXbVKKIo27e4rOAa3Uo0inRBU
	0RfY/ScTqe7QUxc1fOmPrtK6K2SNwrFjwGJdslfBBtNvaVJU2kH3dMJzJif9LQjxwz3ppoxpYM2Eu
	p4JoFpqRFAkCXa9VeJDpEZVD2ucqWwLyHtlWPei0wCkxHuP1jXfEUrTI6vsv0xaLHqBBVqqetovno
	wuxeJTcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH4wS-0000000A66q-29Xj;
	Mon, 19 May 2025 18:10:24 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH4G3-00000009xYg-2ehj;
	Mon, 19 May 2025 17:26:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id AB418A4E564;
	Mon, 19 May 2025 17:26:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81046C4CEE4;
	Mon, 19 May 2025 17:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747675594;
	bh=jeQ35J0E940DlPVRh1WHrINnYfAkrW8qW3LdtS5PWcI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pcrmr7k70KAL3T4uH6ZyAZJ6oMoNgXW9g13UAjU1SHsImlYAQomtDSTwuzQ67BDTU
	 KrNWkNeWmUcRGTDochkJsDhRRnM6VZ9qyOyedUdQ4x5/9mVzJi7VUsP3jit0TD21Kj
	 UeJzXxaUwOAtaCkZJ0CxxenOTNmzUisva3IlT53mUWkTyGnprt49rx1yXvLJ0Sa3au
	 IF0HEsTGwCmi0WAVS9O0D4LJFuDtIPtLXKPVHpYTjbONY9SPxLMNpbIhfy9gINHWOJ
	 w1um3/gCC+99QzgE0r4lWKcUN54thUxBcv7b697Y550p0mF31mmCDS5BPIoMpD5jL0
	 54iLxHZ/CTkpg==
Date: Mon, 19 May 2025 18:26:29 +0100
From: Conor Dooley <conor@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>, Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>, linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/9] dt-bindings: mmc: sdhci-of-dwcmhsc: Allow use of a
 power-domain
Message-ID: <20250519-vision-mummify-dce8d0c6b5f9@spud>
References: <20250518220707.669515-1-jonas@kwiboo.se>
 <20250518220707.669515-6-jonas@kwiboo.se>
 <20250519-caress-traps-f61f0c6067b4@spud>
 <2d0524a9-50ff-4b49-bee9-8158c4c5b88b@kwiboo.se>
MIME-Version: 1.0
In-Reply-To: <2d0524a9-50ff-4b49-bee9-8158c4c5b88b@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_102635_743364_EB2B51C3 
X-CRM114-Status: GOOD (  17.96  )
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
Content-Type: multipart/mixed; boundary="===============0850463725498922479=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0850463725498922479==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VhHNrynzgDnqDNY7"
Content-Disposition: inline


--VhHNrynzgDnqDNY7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 19, 2025 at 07:03:37PM +0200, Jonas Karlman wrote:
> Hi Conor,
>=20
> On 2025-05-19 18:12, Conor Dooley wrote:
> > On Sun, May 18, 2025 at 10:06:52PM +0000, Jonas Karlman wrote:
> >> The commit 7e856617a1f3 ("dt-bindings: mmc: Add support for rk3576
> >> eMMC") limited use of power-domains to Rockchip RK3576.
> >>
> >> Remove the power-domains: false to allow use of power-domains with more
> >> controllers, e.g. with SDHCI on Rockchip RK3528.
> >=20
> > Meanwhile, you're allowing it for all devices, even ones where it is not
> > valid. I'm not keen on that.
>=20
> All Rockchip variants technically belong to a power-domain, not just the
> RK3576. E.g. for RK3588 a PD_NVM0 domain (not described in DT), for
> RK3568 a VD_LOGIC ALIVE / BIU_SECURE_FLASH idle-only domain, and as
> shown in this series for the RK3528 the PD_VPU idle-only domain.

If they all do, that's fine.
Acked-by: Conor Dooley <conor.dooley@microchip.com>

--VhHNrynzgDnqDNY7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaCtpxQAKCRB4tDGHoIJi
0jpXAQCRjtc6HCVpjbNcGyMo5iiN8END3RXIkfZFHa8UJr5ObAD/WZJ8cGC0JbbN
IUx+X17xxuwKeFti8XtARnZ15p+IywA=
=oUeH
-----END PGP SIGNATURE-----

--VhHNrynzgDnqDNY7--


--===============0850463725498922479==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0850463725498922479==--

