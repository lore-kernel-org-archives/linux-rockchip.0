Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED907C10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 16:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7RJesdG9LgsYOegWzXRCpsKGGgae6+dLHrTk+/ECWFM=; b=CcFqbb3tLqPiwmpXZ9zFAOIuos
	UJ4JPJxs5r/l0G6rpAmWOivpPEQdblpWtaWwWPqN+GAsiaesiLZ7B6pMgqLb23++ia2ApUpcc6AZS
	FEof+pCZ59bqinwa7qZ3g5JHk0cDPiBSYdQvIKDdhagdDZW0r9H0hkgUA47ayY/14SQyStz5SNJl9
	Yrob6pm/AY4E+HziZsePKLvlXCKCSbyLmwSISz4X1BV/LSjMnwTPBkED98713eVIm9WG5iACXNfSx
	ibnrrAzBolXeWrwBZSe5+ML+RJrVXzu5BIKY/LOhHGBbNkc4whHxuu2ZZdVViQSdQPt+VKrd7zaYn
	DlJixPTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4O2u-0000000C5X0-0wUc;
	Tue, 07 May 2024 16:52:04 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4O2q-0000000C5VF-0ABQ;
	Tue, 07 May 2024 16:52:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 5C2CECE10C5;
	Tue,  7 May 2024 16:51:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7700C4AF63;
	Tue,  7 May 2024 16:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715100716;
	bh=/Bkd2IwTGaLgZju05dzWdon64EKKSvHjfKDMLbB1/9o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jVT4gjEb4Ki4lwgfVfMSSKV0FIB3ScF4nul0QK+99jzj5PVrZ3AtEeNPhY4pFU5Fz
	 uoHE+fuhAU8AyEq0THAcQX62DyEiiih3bCSIgsxvRFyfmIQfPoJwjvCFN7nzin0gjr
	 IIe3enl8vX1GyZb3/34PtMv2iV9FF1VIijBprcDnVIrdUbZAR7dfzOqvjbd+H1vvyP
	 filpHMehhCOwzz65GnbEu7rM7EM7nq73GBrl2dEJ5ova65j3SaeVx/b8PUhDDV2EH9
	 mtPcdnsVdHUnkTo4iGbgL+UokMvKKBFfM5EQTHkdBOKvjc0vaJLSE+xxMEq1yLLlTs
	 Mzi9nuysRBvBQ==
Date: Tue, 7 May 2024 17:51:50 +0100
From: Conor Dooley <conor@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH 2/7] dt-bindings: clock: rk3128: Add PCLK_MIPIPHY
Message-ID: <20240507-cardiac-obsessed-89f3b0894bec@spud>
References: <20240506194343.282119-1-knaerzche@gmail.com>
 <20240506194343.282119-3-knaerzche@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240506194343.282119-3-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_095200_276257_FF9565F5 
X-CRM114-Status: GOOD (  10.11  )
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
Content-Type: multipart/mixed; boundary="===============5262340725671606156=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5262340725671606156==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="MJDZAnqOutdsOh4Y"
Content-Disposition: inline


--MJDZAnqOutdsOh4Y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 06, 2024 at 09:43:37PM +0200, Alex Bee wrote:
> The DPHY's APB clock is required to be exposed in order to be able to
> enable it and access the phy's registers.
>=20
> Signed-off-by: Alex Bee <knaerzche@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--MJDZAnqOutdsOh4Y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZjpcJgAKCRB4tDGHoIJi
0s4UAQDtrMr/zcll7XLRlmogcgoAfSJQZq1AEQQeJxIADgIQwwEA+aBSIaagtafp
+CaYRxpIvw/qSd+oMTrkzEpnz5opSg8=
=o2x0
-----END PGP SIGNATURE-----

--MJDZAnqOutdsOh4Y--


--===============5262340725671606156==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5262340725671606156==--

