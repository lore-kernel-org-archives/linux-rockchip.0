Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 670C2C4829A
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Feb 2024 17:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VaHjJnHoEd6W0qqpGUaGDI0lln7dHRBWbUz5PzLd1AI=; b=kmFLFZqxlQm/QMjYrR1puKHh8I
	sYsM8Qjs8xyZ+nBTW3y3wPTPdBzedA9aM92/k9qN+21VtUg8TYrdWhhBIQpoiw5nWrrtgMBgHgL8n
	na+0sYgB0iKGLPYdHQvjXfgYhrU7Ba1MUTy5WaQ+sIfN/dzTidtbhuPbDOcr/kfpmWxmQf+UKRaBP
	EbjNvaUCIoAtmW1kDvQM0hFh5v1RrW+p0xv6nJtqA4FRE4zGtW8eUlxmTHOowqzUkIVh96FOZ8efs
	1lF+kCRNgUEZJgl7uOdu1Xv2Pd3zo+dYj537qrTFsqPhcmC24vFtPnWxxtFO19i3s19WZXkIuYrBg
	PFKzkDQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZDm1-000000035F3-09lR;
	Sun, 11 Feb 2024 17:37:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZDlx-000000035EE-27gp;
	Sun, 11 Feb 2024 17:37:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A7AB260C79;
	Sun, 11 Feb 2024 17:37:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C188C433F1;
	Sun, 11 Feb 2024 17:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707673064;
	bh=BijN319EfGu1m7rRC+51kCR4T/74PRX271dOSyQJYhM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A9A+XE6lES5hKk+F3fn3pYuI6AY/xg3hPJ6Ns5ScX/IijSTFqGmkynlnFJti6mD6d
	 quwTSxxSmCCHsRJg5thWUiia/zv7GEizi8S6RomkPPcikLmsaKQfei96juPMfx/wMh
	 hD6F+DCB3BTEKzM2eGHeA8gD0ZVxN6LXGRLKuKIfTaf/7QVf/b4kmMLAvVA3XgYxNN
	 ABjqIfmu3a+wOV9lQNNRQsSLMpFha1r8W8G3OoZnafF1h8a5HUKat85YLHVrqnUXe3
	 XHUlipFsgUHAkgB5jWgXHxb0Hvun2xfa07RVWFD4nvW0TFzi+e3KAd9iyOf3+cQW5v
	 UYIvUgU5aLVKw==
Date: Sun, 11 Feb 2024 17:37:39 +0000
From: Conor Dooley <conor@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v1 02/10] dt-bindings: soc: rockchip: add rk3588 USB3
 syscon
Message-ID: <20240211-blubber-ferocity-76ff9fdec828@spud>
References: <20240209181831.104687-1-sebastian.reichel@collabora.com>
 <20240209181831.104687-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240209181831.104687-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240211_093745_623651_93EE9568 
X-CRM114-Status: UNSURE (   8.48  )
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
Content-Type: multipart/mixed; boundary="===============6482809749275183604=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6482809749275183604==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="EMH7lUpdQh5I6JHK"
Content-Disposition: inline


--EMH7lUpdQh5I6JHK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 09, 2024 at 07:17:18PM +0100, Sebastian Reichel wrote:
> RK3588 USB3 support requires the GRF for USB and USBDP PHY.
>=20
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--EMH7lUpdQh5I6JHK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZckF4wAKCRB4tDGHoIJi
0n0/APwIxasmdK65sg2KgHpBPYsg7Ng3l+Y4gFUzUAzKQQEptgEAhKHKw/+QY4Ts
ipZKAWfKJ3ZwP/Y0gg0rF7P+3yFJeAk=
=Rj83
-----END PGP SIGNATURE-----

--EMH7lUpdQh5I6JHK--


--===============6482809749275183604==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6482809749275183604==--

