Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F764C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Aug 2024 14:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=imKlZEEXCc+OXz6N66gandgbucHg7QtvDXWsN0Hnqyg=; b=gKXPadQ9pCYWkeuSOIvUsFr8Xp
	IHGeq1c3129OOVawyxd3VJD4SblHQXC1iZzNZs8+4V8+rzJVU6Nm4JLKN5AcVRiFHmFz57YmXBtxp
	T/+EKq9FSH46r3/20PaPb6zBVzjJHXWwmWT7eJre68Xc3gKrbGKjP7FglLVk54Dg12+Mhw3G3W9jt
	hsQTXqmFoU6icTHRG0dWGedlP05xQveNDLerOC/0DpA/OSnh4B4dCKcbXSp7l0Mwkyx61NyZBAaK0
	rpTl4/Ymzb+34D5y6Z8TZliLFL9t0GCOhmgPPY6xoh4vZh4HdmDicDn449QaUN6HIWOU4dqlfT37r
	9TQzplVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQPW-0000000BU8p-3PsW;
	Fri, 09 Aug 2024 14:16:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQOk-0000000BTrV-31S4;
	Fri, 09 Aug 2024 14:15:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 25DD1616F1;
	Fri,  9 Aug 2024 14:15:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B78EAC32782;
	Fri,  9 Aug 2024 14:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723212917;
	bh=w5Uu8kE++ZYIbMhB71Ar9euCDfVNBzU6Ua9+eX4Vqrc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MNHznpcD4kDI2a5pn8+YKkQ5KDyMUHxuduzP8D8BxyoGl5MZQvROUYH4feFzEQ1Lq
	 rl/RX45ljxAoe+GJKbVaE5oKRzxFnRCZys/7A8xGdbfo4k9BTM2JFvmCutUQdg+6k8
	 eu2BeVwcwMYBgxyIYYhDnYADQLZ4gFI0KbUKja3pkjCyQ+UX+nzK1IC02J8zyF9Dw6
	 EBlzhGOvqbECOQrwXp75MIV5e3IaWLObG6/tFT5zMn5fdvFHlHZ20YUWrzEZb4pODI
	 bT+O7zS0G6iFizXnrDPbVzRBIDThNOpGv9Nc81E0sy4KpueELltbSRAe+XP1f0aGfz
	 3CAQgfVNbzMfg==
Date: Fri, 9 Aug 2024 15:15:12 +0100
From: Conor Dooley <conor@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Elaine Zhang <zhangqing@rock-chips.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com,
	Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: reset: Add rk3576 reset definitions
Message-ID: <20240809-linoleum-ogle-ace67939d9a0@spud>
References: <20240809125553.3889-1-detlev.casanova@collabora.com>
 <20240809125553.3889-2-detlev.casanova@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240809125553.3889-2-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_071518_839603_951C9414 
X-CRM114-Status: GOOD (  11.70  )
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
Content-Type: multipart/mixed; boundary="===============4493292298180797475=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4493292298180797475==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="t78d8km8087h0PQv"
Content-Disposition: inline


--t78d8km8087h0PQv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 09, 2024 at 08:54:52AM -0400, Detlev Casanova wrote:
> Add reset ID defines for rk3576.
>=20
> Compared to the downstream bindings this uses continous gapless
> reset IDs starting at 1 instead of register offsets as IDs, as
> introduced in the RK3588 bindings.
> Thus all numbers are different between upstream and downstream,
> but names are kept exactly the same.
>=20
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>

IMO squash this with the other binding patch.

--t78d8km8087h0PQv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZrYkcAAKCRB4tDGHoIJi
0lbGAP9gRbbIcKDIuGKKqo4LvACMVh0fW9tL7WjBO/s+laybYQD/W5GuzkgcpFiW
fR9M8fRJqwKwuTsybhrS3U05O2DcJAk=
=MRvi
-----END PGP SIGNATURE-----

--t78d8km8087h0PQv--


--===============4493292298180797475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4493292298180797475==--

