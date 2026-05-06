Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 474BACD3439
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 May 2026 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eI/0oJsWN6+wxc6tWDRiDSv4uTOgZoIhe4EWnKHzlXg=; b=ooVz1F3dTMqoYF49SD0qc3FSty
	sdZRfYzDmy8esm/Hv+KX5WxMPd/p9I7t22NHYHWP3cYvq8j2wnY71hzUzdNbLY0O2nB2K94oBl3ed
	D6yZAiBGvvb5lLoKxlRg5Z3enmtm7grtLGGsabjlWF1S+4x9SvhA493a8kcGEFuj8e837d0qa0HHg
	fTWcXDK5S6Bx8ch6yGQ+EHcTZk1+uzzp55TKKXwkfezzwp/j/cwjp1Y9XQBqLJGaStGrXXlsfynQV
	scPYhkNeIBOGDwto0TXu4IBH0Jq1qYVs7MFPin+35FKP6jnRPW/xYJUxznJwuAyEq6CZmymqSO1Ul
	kICoTDIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKfSx-00000001YqZ-412g;
	Wed, 06 May 2026 16:51:19 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKfSw-00000001Yps-3ZH2
	for linux-rockchip@lists.infradead.org;
	Wed, 06 May 2026 16:51:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5B9D841A9D;
	Wed,  6 May 2026 16:51:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2487FC2BCB0;
	Wed,  6 May 2026 16:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778086278;
	bh=vXUijcHOIZib1WkKigAK+t0C94qbtj5qgIwWhw2QEVw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e1kuoodfoYlDYxrPnQbDjz9XnNuVgyz5dSH1fxRfJ59YhHK6WVGTfBOZvXbCtiPKk
	 AAOMy6mlr2BlJLP/5cpBlThMjujfTHttkot9p1zscaQ4PzNIhfqQ5HGRql/EygeGzv
	 gFIYE/YSwS2o2dmvSAgf4Rqvxp6hxFRigsUab1bW6HvU5ar4MMDT8q4IKPIZ7uuxK8
	 feIh9m1Q18mJckzYb0jpOzs0T7GX2x51dIGV2pVJXPdViYMbTqvmJto4kC2VGRiAuk
	 RnDV3Fs+PHcQjHjGlVEoDcbbKz9A8OldCcuwopH7XdKgQ3te3J/5c76CQorjpOTpxe
	 z9TG9XWFCi0ug==
Date: Wed, 6 May 2026 17:51:13 +0100
From: Conor Dooley <conor@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: wim@linux-watchdog.org, linux@roeck-us.net, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH] dt-bindings: watchdog: Add watchdog compatible for RK3528
Message-ID: <20260506-street-resolved-07261f9ae14b@spud>
References: <20260506092420.3320031-1-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20260506092420.3320031-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_095118_957616_A0E7F30F 
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
Content-Type: multipart/mixed; boundary="===============6769892525619963846=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6769892525619963846==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="G8KDQPmZLPpw5Wmq"
Content-Disposition: inline


--G8KDQPmZLPpw5Wmq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 06, 2026 at 11:24:20AM +0200, Heiko Stuebner wrote:
> From: Jonas Karlman <jonas@kwiboo.se>
>=20
> The RK3528 uses the same watchdog block as all previous Rockchip SoCs.
> So add a compatible for it to the soc-list.
>=20
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--G8KDQPmZLPpw5Wmq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaftxgQAKCRB4tDGHoIJi
0ibnAQCP+MXWKi2Dd3tukhM8uD0ZL2FkDpQBMyKdI53V/BfitgEAuo3dUK6vj4nr
Tkrb/0WZHag1UxEwZjQ7O9xOrGj06gs=
=mryp
-----END PGP SIGNATURE-----

--G8KDQPmZLPpw5Wmq--


--===============6769892525619963846==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6769892525619963846==--

