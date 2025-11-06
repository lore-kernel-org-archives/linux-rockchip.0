Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE6D8CCFA13
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 17:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xi0EK+MocXCROO+KhIr6EO3lbPtySKQmPLVg33iJ/3k=; b=lE+lxz3t/IQJDFJp5CxcfaFDKh
	SY1H9wuLu1VasFySSI+83TDcJOoFYowIE9JZOkitsOuUpvoB/9liTqQV9UqNeDvCnBfASMsvFlhWh
	KhOMfQD6IO6etqEWe5uz9az2Ow5YTwrNPD84swCZOaS1tDmDetFvpLCGsFPNEugAmkCo71a50uApb
	U4u9CQM6JweTnyBvOjDEgFQqzHwanzhkLaIWhpsWpN1B4ew4eSQDYSpoOc1OwBOo30djr1UnzHLP7
	Hq5pMVB/S2dXclYhraUbbbyjriSvloTcBJM2EyL88ivUTqS1asIzfz3k5uRwWnVvYKhFQcEtS/wO3
	yRjpXpDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH3lv-0000000G1Hy-1gRW;
	Thu, 06 Nov 2025 17:27:43 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH3lr-0000000G1GD-1QTk;
	Thu, 06 Nov 2025 17:27:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id F185744347;
	Thu,  6 Nov 2025 17:27:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A2F5C116C6;
	Thu,  6 Nov 2025 17:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762450058;
	bh=exgWbHID0vmaigzS4XnqckayK/oGniZO4zHXBr3W8jQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tafTi2xpDg1xI/M2nj4GljTLfLTsbyxwZiMGVTKUEAl3EgFK9dTECbbexROmMwX+o
	 XpYvQJPxy57OUx/QXLeG8tyERm6CZ41Xx5b/assW8XCanFyiiMlrGMGZ0I2TflUkYW
	 z0Pt68TTHuOAVR7iDzngDfsEhbd0qH+43zQSksbPcPZECaaEnlN7DaFunvs8FJGABp
	 pnqDEWvP6TCRvO9kRHT0fvp8EfuAQ2aUZDKy3XAHkAOMdtIqBr0xcqN8r+MTDtKjxq
	 rkkonfeqhLFVSvXtTNLLNUuDkaofWLhfXkKWQN6aAUD45uDkb/VjMbAoVLG/0GfW50
	 vSBUwU35rf2XA==
Date: Thu, 6 Nov 2025 17:27:29 +0000
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
Subject: Re: [PATCH 4/9] dt-bindings: display: rockchip,vop: Add compatible
 for rk3506
Message-ID: <20251106-handwrite-dragging-3b3412f31f73@spud>
References: <20251106020632.92-1-kernel@airkyi.com>
 <20251106020632.92-5-kernel@airkyi.com>
MIME-Version: 1.0
In-Reply-To: <20251106020632.92-5-kernel@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_092739_458887_9EC4A237 
X-CRM114-Status: UNSURE (   6.47  )
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
Content-Type: multipart/mixed; boundary="===============0760058299702246753=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0760058299702246753==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iFxwStVh54SvJg7o"
Content-Disposition: inline


--iFxwStVh54SvJg7o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--iFxwStVh54SvJg7o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaQzagQAKCRB4tDGHoIJi
0tnQAQDjtDyPUwx20IW0HISJbhMIsNUDBRBA3cRm4dNIzlL4BQEA6j3h6HtparPK
FhH4LmHt/FFmIyYclVhg33+tCXx2dQw=
=VFYI
-----END PGP SIGNATURE-----

--iFxwStVh54SvJg7o--


--===============0760058299702246753==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0760058299702246753==--

