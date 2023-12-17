Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D769C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Dec 2023 21:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TTgjxSpZBP61RGZocZYZASyPYlbLGEqaDNC6HTtcCDA=; b=1Yb0B5IkwzkQl+1n+gNb026Zld
	BkELY7cz1vboqNCeg1L/9aI3tiONIwd33mifC0z29znnDyVpAE5MSiPAElsHxyUYKsW5pF5xw+pyF
	MXyFuF+GDwWQQiRAbPGiKRJS1dWWVKYPn9h8iN8HXi3o5EU4qTHkpYIxzDRncCAEj5VfG0msR+GB0
	VyGoPBMB1IVA9jFI60hdGrkaD4kEo7PoSYqyYCLuHxSYdWQeIo3rjTyVjyLPU8Ed4t3/iuhp/4Gqh
	/lD9hrlM0WIY39EzbjiyWR3Y54V1Ets8dyLcBxZjaDR9jCTl4GOpH1D2WX2+crNEx6ycKxIB9oRfZ
	YkoP229g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEyFz-008SCM-17;
	Sun, 17 Dec 2023 21:01:03 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEyFu-008SBT-15;
	Sun, 17 Dec 2023 21:00:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 1CC8DB80BA4;
	Sun, 17 Dec 2023 21:00:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA003C433C9;
	Sun, 17 Dec 2023 21:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702846854;
	bh=dLUn35UA/Sb7ArEyYqHx1uehSdc2aOYdk53eZo+sKBY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iiF/bvFKOuhi9o3eUE3ldiUAhidrwQRSR4Gvx941UVTpumuCEQPu9kibJJu+omMRe
	 myLYIVyfrjWI+VqfSxdmfxzchQObPmQL0uqPKCqKS1t5ABtWKdMD8bbk/P7PSDL2Tu
	 g3jGGfLVFnCQYd7q9UE04budmM6coiSToB9zDL4zbyYorEbqOKrR/e5XBKvgKgZGWU
	 C36R0DZeySZw0oMI9KBt1VeNPQmwmq7A/CxOo/3qNmuw2JanhGOEP8x9GOBbeW/JH+
	 uVsE5D29fpIy5BjYoIAzX328HV4xJfkvY81qSrKVeRK8w+KgBk9kyf9sRw4csnP2eN
	 ppE0YtyB8Vx8A==
Date: Sun, 17 Dec 2023 21:00:49 +0000
From: Conor Dooley <conor@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 01/27] dt-bindings: display: rockchip,inno-hdmi:
 Document RK3128 compatible
Message-ID: <20231217-anime-ammonia-0c21d756aa9f@spud>
References: <20231216162639.125215-1-knaerzche@gmail.com>
 <20231216162639.125215-2-knaerzche@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20231216162639.125215-2-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231217_130058_537137_C70F16CC 
X-CRM114-Status: UNSURE (   9.46  )
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
Content-Type: multipart/mixed; boundary="===============6569901614652573670=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6569901614652573670==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="YGZ6xIC/6d6TbrZP"
Content-Disposition: inline


--YGZ6xIC/6d6TbrZP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Dec 16, 2023 at 05:26:12PM +0100, Alex Bee wrote:
> The integration for this SoC is different from the currently existing: It
> needs it's PHY's reference clock rate to calculate the DDC bus frequency
> correctly. The controller is also part of a powerdomain, so this gets added
> as an mandatory property for this variant.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--YGZ6xIC/6d6TbrZP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZX9hgQAKCRB4tDGHoIJi
0gmdAQCoq35UjFbaHME9UwkwUjJmL1alYK13VWsogsFJyz1XMAEAncMIoDK2K0j/
ScWGK8GBr5Ctm+tYm8iWoY9txXEbxwE=
=mlNV
-----END PGP SIGNATURE-----

--YGZ6xIC/6d6TbrZP--


--===============6569901614652573670==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6569901614652573670==--

