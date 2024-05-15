Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D94F6C25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 May 2024 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tQaBFOwfRhGuIcInxuw82LUPdfgvjzwreGwnY2GP3ZQ=; b=Lww352U6EggPKv/qW6QFfhReH2
	cYXJ9fo++bDgKOVsjRMI4WUcahI5q5dk8JS/dBMO2bCyu3hGiK7NHWkXxDgL1O43ySI4dyRa3AKPF
	u3mhrUjSgRr2K8nDYzFa741K087dt/MaYaWf4ILPnsRnNK54FGk3SCl+nA/Mg6vuat+LQleBDOp5s
	h5ugSpC4VkIaOC6Fye38GPiHtLqS/1Y2EregFH6FS17iYC5DEpwsu9GFVf0YATjsGB+NzytgRU16n
	16vJp9SRUGp5U/8LHFdlqFhPnmgohjbu6Zw2oVVbWMDNiRXjKH8/vHCQ8qf20Pf76muLZCeJ1Cgix
	CrdjvLdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7HJl-0000000254k-17pN;
	Wed, 15 May 2024 16:17:25 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7HJi-0000000253q-2Hlh;
	Wed, 15 May 2024 16:17:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9317A6149C;
	Wed, 15 May 2024 16:17:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACF1FC116B1;
	Wed, 15 May 2024 16:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715789841;
	bh=Up7Qd+RnNSE0g+RPd3RLKdbJ4Lsonuz8jKQ/5bGM+cI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TqIn4OBj/Z4fZGbVuthGf2mXnKuXE6UMXatVzdZvXPJCD9CK1HjmGWm7z+ki+79JJ
	 l+MtyvK3Kl2jOwq/EZJjn0qEouFRmSUfE1lXyqqxIwbGrqd/Amydg8nOsomcnHKq3z
	 dtHevbEBNTf3hoHAVZBg8sh33QtY99heTNTfloY8vWzc3ryPB6gOMPC6x/tNuuTQv7
	 IPG5x+lcwZY8/O7nFko/axF4L7aZhDOiBK5cpLnEYx8M0Cm/0O71d06xHLM6/G1I/E
	 9Oz063wN+BCwtHfRdd80hMnw2sxn5Pdi9l1Apr2MNU8G8vxMsRQ09XsLWKO0OEw8ng
	 Xo5KONvwKJXCA==
Date: Wed, 15 May 2024 17:17:16 +0100
From: Conor Dooley <conor@kernel.org>
To: Dmitry Yashin <dmt.yashin@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Jianqun Xu <jay.xu@rock-chips.com>, devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: pinctrl: rockchip: add rk3308b
Message-ID: <20240515-exorcism-savage-14e78d3a8c61@spud>
References: <20240515121634.23945-1-dmt.yashin@gmail.com>
 <20240515121634.23945-3-dmt.yashin@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240515121634.23945-3-dmt.yashin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_091722_730231_4C299407 
X-CRM114-Status: UNSURE (   9.49  )
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
Content-Type: multipart/mixed; boundary="===============0017722273942654100=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0017722273942654100==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lUv3gfX0lhAXHhn3"
Content-Disposition: inline


--lUv3gfX0lhAXHhn3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 15, 2024 at 05:16:33PM +0500, Dmitry Yashin wrote:
> Add compatible string for rk3308b pin controller.
>=20
> Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--lUv3gfX0lhAXHhn3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZkTgDAAKCRB4tDGHoIJi
0tumAQDKgVyAz45elnE7dPP9C+WkoMrgDSwJVx8keW09dm25cQD+PU11FfYGPlnI
D0cSeptu8Pnbd8cnxtLpzL8qCyNJNAk=
=vjeV
-----END PGP SIGNATURE-----

--lUv3gfX0lhAXHhn3--


--===============0017722273942654100==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0017722273942654100==--

