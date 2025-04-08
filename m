Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2B2CC369A2
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Apr 2025 16:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lctxGX0c8cbXQsgcPO4kyRBMNFog7CS136uhthdntC4=; b=4wLmQ9bGrtX4+QgC6CQM3KIF4z
	5MqrNDtqHPVisXdluejol58JUMuxQ41A5OOPSYxlITmqYdHtgF62SW1AoxWyDMXVEKk67laShsw1J
	nDqpgbUSJXr0kxIHk7tc/Fk5YdW5X+lzOzydEEODm95fP7i5wJkzjWGhHQ8qOyAJc+I7fV6ibT74Q
	mVL8R4PhP7/isAYeJciA1svWkcMPsljvECKaILJF6RUop43e0qEKbZqYdJoOZddjsolxm/4m75N3Q
	nBTiIjqiXuj+4ESDknLLVzsm3jsvTxpjWEFiPWmOzNHByK2dSmFPH4kZHi7Fx2rHjBXjj3js1G9UP
	wgGKNPjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2BWU-00000004l59-3yBc;
	Tue, 08 Apr 2025 16:10:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2BUW-00000004keY-0vVs;
	Tue, 08 Apr 2025 16:08:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 12C445C05E2;
	Tue,  8 Apr 2025 16:05:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B628C4CEE5;
	Tue,  8 Apr 2025 16:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744128478;
	bh=lzpeBjhQqjKTv5LhjTuLZBeC/RINwYUMzDyi+e++4VE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OyLqtvNt3uo49sXmzsO/X6m+Zm0NwzwtMrSOp3iDAplnzf1boXsd6IaggyeX8dnsQ
	 +MCD0To/C9JGz07JeAoSJlwidfegqkkqiUcfv+/RaZW6XXPyismKIvOl9t3Ug0yLpt
	 1UBzkv5S5FQ8cUQps3M7tDN+xDN/BxUUo2Z6yXP47XX3qZ3S1ST6C0r1FLzlUdX6SL
	 BDjEEtGqjefpz4rTwexrt/ipf13elsC2SaFHxC2kjVkZZOZ1QEQMwX/9EgHkO17fuy
	 QyK3sRQK+YGvaW4/eCV5B+i53tQHvoXHVTLt5I4ZJOZCJ9gIxL1FZ+nVzUeC1fEA1K
	 8wM/enLNTWrsg==
Date: Tue, 8 Apr 2025 17:07:52 +0100
From: Conor Dooley <conor@kernel.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>,
	William Breathitt Gray <wbg@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org, linux-iio@vger.kernel.org,
	kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH 2/7] dt-bindings: pwm: Add a new binding for
 rockchip,rk3576-pwm
Message-ID: <20250408-drivable-hypnotize-062fd7cec903@spud>
References: <20250408-rk3576-pwm-v1-0-a49286c2ca8e@collabora.com>
 <20250408-rk3576-pwm-v1-2-a49286c2ca8e@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20250408-rk3576-pwm-v1-2-a49286c2ca8e@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250408_090800_301618_9EF08D0D 
X-CRM114-Status: GOOD (  14.87  )
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
Content-Type: multipart/mixed; boundary="===============3880478976534782123=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3880478976534782123==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="P4Hq9KC+O/IONcbS"
Content-Disposition: inline


--P4Hq9KC+O/IONcbS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 08, 2025 at 02:32:14PM +0200, Nicolas Frattaroli wrote:
> The Rockchip RK3576 SoC has a newer PWM controller IP revision than
> previous Rockchip SoCs. This IP, called "PWMv4" by Rockchip, introduces
> several new features, and consequently differs in its bindings.
>=20
> Instead of expanding the ever-growing rockchip-pwm binding that already
> has an if-condition, add an entirely new binding to handle this.
>=20
> The "osc" clock is an optional clock available on some instances of the
> PWM controller. If present, it allows the controller to switch between
> either the "pwm" clock or the "osc" clock for deriving its PWM signal
> on a per-channel basis, through a hardware register write.
>=20
> However, not all instances have this feature, and the hardware copes
> just fine without this additional clock, so it's optional.
>=20
> The PWM controller also comes with an interrupt now. This interrupt is
> used to signal various conditions.
>=20
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

--P4Hq9KC+O/IONcbS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ/VJ2AAKCRB4tDGHoIJi
0jZqAPwOQu41aopdoBSSIQdKHqz2RJ+dwLSozN2+YDI1wW8y7AEAjS2GhaRyfF96
3GHeudBuxceUrbBxoPB8hzmTAP7etQQ=
=yLZr
-----END PGP SIGNATURE-----

--P4Hq9KC+O/IONcbS--


--===============3880478976534782123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3880478976534782123==--

