Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92DE6C27C54
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 16:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OV9rvAPCQ8eaRFAnQ8gNJhIMDtTpk0CAFlY2Jwko788=; b=ZK6yND1dFendWB5/PxXeMXZkqK
	k+4IU0A0QBnWXTYMa4p388xE0N9G18snuUiOE8T4AB5aRF1trPslk9VW0asNzEMzyvsBFgSiuxkva
	YqgS4qjyU3474j9RXgdhA5glGlIr0K6+u4TWSYJsUFr0QBRX8XvlXX5ZHNOUd+cCehXCgbgiYGCfF
	nhNqFhnhyR0PKJJQw/NatzE1B+YEQU66BVy8ukZBJHvJSBdwSZCfUjrhkAxLyhFvc8ZRN0J9ljB6q
	kEv4Dxkec2teJSAx60Ci8sdCQF0VvyXxhKW7rW46wl3h2C+/+01Qh58YkkVw2geyLvdLzoMzhHYrn
	53XF2D+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFFfG-0000000AQYk-3mk8;
	Thu, 06 Jun 2024 16:08:34 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFFfD-0000000AQY3-27ix;
	Thu, 06 Jun 2024 16:08:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 414E6CE1BDD;
	Thu,  6 Jun 2024 16:08:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3074C2BD10;
	Thu,  6 Jun 2024 16:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717690107;
	bh=UmCxizvm3rPZ18X39bpJ5dPVaD+xg52JPfN7bRM6mjY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dgh/4/r8y1ht0dQWNTA3d0N0tSKSedHgcydHx39SJCfR47uwyeai8NiJPUrZsdu6Q
	 Y2+Sw3drdOUCDfCUliRgezLGTQflWADHttk6KFAPsl9qP9yNq5EPltRIXJPU24rPQU
	 QfjiVfuWbmbtUmf5mvecvAjTVi7lJUYHF76Mv4m1cU8mfRQf+QVYfVMOf+9i8uTXkY
	 45rltO4yBVglKtnyGyUvS1LXcQw7fA+j8J/0mQjajIERORDCX3+p0zDcBrk019No5D
	 FrrTZronBlNN2Bi57J9L1JHtHwHboDR03IfOYzq0TQk5aiIgW5Ia0U9Aqd8A+YDWE1
	 HdUAzJQfDgJcQ==
Date: Thu, 6 Jun 2024 17:08:22 +0100
From: Conor Dooley <conor@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 3/5 RESEND] dt-bindings: clock: rk3128: Add HCLK_SFC
Message-ID: <20240606-rudder-urging-b3adff371b09@spud>
References: <20240605210049.232284-1-knaerzche@gmail.com>
 <20240605210049.232284-4-knaerzche@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240605210049.232284-4-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_090831_739488_6C694D9D 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============7632238701047950817=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7632238701047950817==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Nr0MJ9IweRh6y/Hr"
Content-Disposition: inline


--Nr0MJ9IweRh6y/Hr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 05, 2024 at 11:00:47PM +0200, Alex Bee wrote:
> Add a clock id for SFC's AHB clock.
>=20
> Signed-off-by: Alex Bee <knaerzche@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--Nr0MJ9IweRh6y/Hr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZmHe9gAKCRB4tDGHoIJi
0jn9AP9SMAO9sum1e1deg3jz2j/qKh9LNAHOswIPlSqJXs+jdwD/a08TAeMh5Eza
L1XTPyQj2TxsBm1lt+YZp4ZN6on0lAQ=
=f9NK
-----END PGP SIGNATURE-----

--Nr0MJ9IweRh6y/Hr--


--===============7632238701047950817==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7632238701047950817==--

