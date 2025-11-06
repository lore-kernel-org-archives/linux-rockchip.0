Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCBFACCFA13
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 17:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lOc3KPSiUKqSs9BDEqygsu6VnGHL7+1E3cBK8NnRpLE=; b=t8HB/dTrN7JWc8DKeV7vRImpNx
	s4eAyq2CZUE71RX71AZPsLx+Fy9ZX53rGaBx/SSqBlGr1kD4BBvNM9//0jZanOrUMDEGIKmGNtQ7k
	15oPhVgKszRQcM8G7CBJTu+7b7USNLveGxj2H7vo9Kj4RH0MlQ9G0Yl8MZgZWRaSFGVBkQBkLbdMH
	OV7w2pQMFSJgejVyv17LiJCDnU8F2xjscr8BYtG56d6wqzbLr0yPEdgSsnXJe3VG45lHL2FqnaMS0
	8RmHyCK1wr8w7GVI5Uh6mx1mGZHCxDZ0FRZ0l01ksYaKGvUAkUnHatAtyUXwxy7wFyCBCvE3WmkoX
	bs9SsfmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH3mh-0000000G1c0-2VVq;
	Thu, 06 Nov 2025 17:28:31 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH3me-0000000G1a5-0hiO;
	Thu, 06 Nov 2025 17:28:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BC5FD419A7;
	Thu,  6 Nov 2025 17:28:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 818A5C116B1;
	Thu,  6 Nov 2025 17:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762450107;
	bh=iC6Sx3olaO5GIbhILXITGGp5LFe0wk6ZVESyi6YJa2c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sZ/RhAlPp91Mcy1gWTPrw7f3QWkfcTayy9dLFwOf2tcTfXVkM0kPETL+M35yIWeD8
	 Z7vRAcMc7Gih4uILpZ85GUThjO5PmTL3ZoynkD1DBRl0/Ra4aCjINSqgAIGGZbjI0Y
	 5vevItUdsd7wjA69sCF7U4GKYAbVy06qJRMCmq9Pm9IIUzOQzvSKXxqGotopm95QEz
	 v26R4Zc4ZhQdM2K1xSmJMhM2K63QMdZkXTPOkDnW3GFF7pvdhh16q380+vw4TfLEO+
	 1hpDKGr1+VtdnU7UeJdRDBqjpJStrgXPORz2PDGKWkFI3nn7c4X2v13DY1r/FVY83d
	 Ucj6JVHe60/Eg==
Date: Thu, 6 Nov 2025 17:28:21 +0000
From: Conor Dooley <conor@kernel.org>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: Re: [PATCH 1/9] dt-bindings: ili9881c: Add compatible string for
 Wanchanglong w552946aaa
Message-ID: <20251106-kung-lunacy-c5d7abc9208d@spud>
References: <20251106020632.92-1-kernel@airkyi.com>
 <20251106020632.92-2-kernel@airkyi.com>
MIME-Version: 1.0
In-Reply-To: <20251106020632.92-2-kernel@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_092828_224313_7F1E9851 
X-CRM114-Status: UNSURE (   6.52  )
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
Content-Type: multipart/mixed; boundary="===============2034087444410439779=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2034087444410439779==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ofQ0I7gBfCHdH+8t"
Content-Disposition: inline


--ofQ0I7gBfCHdH+8t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--ofQ0I7gBfCHdH+8t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaQzatQAKCRB4tDGHoIJi
0rwnAQDmcL+k21bj18YzPi7gOSkRemWwpLsYjKt9s2bYSP+QyQEAxoCT6xwaVu0E
/KkqsLi7QzzgY/xbeYqQKIK693W4pwI=
=sGc8
-----END PGP SIGNATURE-----

--ofQ0I7gBfCHdH+8t--


--===============2034087444410439779==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2034087444410439779==--

