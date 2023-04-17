Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0864C77B78
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 21:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Gfp2ZoXlBkFE9YMqwcWjqh9cM9mL3g5iDuia+FfQUz8=; b=1TBh6OzT0Y8US7y/93AwAtM9oq
	2pV2qE1kI6kb/R787+4blRLSvhNvo7ngzpWeCnwV82R36ykH+7FelHrR0QEAhTwbkSBUi1NHyjB0C
	/ade/nsCjYDhKPY5kROmkYLOVOatzPO2TTqopG9LOdO9YxWy69W5CgRtfnDkbN83nNNrF0Zt+Y7Qx
	lkJwODvJeMXPERh4OPqy7/JiDqQHuM3nWfC/EdtwdGG66wKYZNZnKyySgT71BKzau8SNXHVdKiZJe
	VpOcfRMrt9eafkr/4fCWnlp/6kiaZYIZwC+LaX+QbHIsNM1Kwh8ywXIEz7PZ+y9EwM+ag20Le5mYF
	X8MjDRsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poWaX-0007Tj-22;
	Mon, 17 Apr 2023 21:40:41 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poWaU-0007SL-3D
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Apr 2023 21:40:40 +0000
Received: from mercury (dyndsl-091-248-191-155.ewe-ip-backbone.de [91.248.191.155])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C9EDC6603233;
	Mon, 17 Apr 2023 22:40:35 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681767635;
	bh=u/D4s2+G4cQhFlEpHsVZzH/xPi7kIMHGXngRIT20DBo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iZnWSnQMTbJi/4R7VpnCR8/ws/O8a0SRVyhtiYT+PWa1rj/gTHAdxFds1PWXYL+Gq
	 OwUCLcmrpw4AmN9JPjiKr41dtFsJGy9ZtsXqHhVXig8wnC71FOnB+kLuq/cDZ2mfBF
	 u8+Hkl0mXWYKuj3n7xIRHS4x5G7eM1w0FUERDX69QRJ2S04eTwwXMf/TZRx2HXB3uZ
	 YaWMaaQIPD71dDsPISPVdSOpr9M++y9OKUlOBYNes/qnyYB71kNmOorS3fi3+l1bXm
	 /HxlX9Gn6L90q9y3ZOgs5APJkxe+MkoX6Rg5gV1gwmF51j4zcen3o0VRLjc/OvdTuJ
	 ueubH4mV8EAIg==
Received: by mercury (Postfix, from userid 1000)
	id 466D71062810; Mon, 17 Apr 2023 23:40:33 +0200 (CEST)
Date: Mon, 17 Apr 2023 23:40:33 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Marc Zyngier <maz@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>, Peng Fan <peng.fan@nxp.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Peter Geis <pgwipeout@gmail.com>,
	XiaoDong Huang <derrick.huang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v2 1/2] irqchip/gic-v3: Add Rockchip 3588001 errata
 workaround
Message-ID: <20230417214033.25ckpswkjj6twfot@mercury.elektranox.org>
References: <20230417150038.51698-1-sebastian.reichel@collabora.com>
 <20230417150038.51698-2-sebastian.reichel@collabora.com>
 <86a5z6lbuv.wl-maz@kernel.org>
MIME-Version: 1.0
In-Reply-To: <86a5z6lbuv.wl-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_144039_247147_6E411494 
X-CRM114-Status: GOOD (  14.14  )
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
Content-Type: multipart/mixed; boundary="===============2972915438671728271=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2972915438671728271==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a3xd3ip6e3vxifnx"
Content-Disposition: inline


--a3xd3ip6e3vxifnx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Apr 17, 2023 at 05:20:08PM +0100, Marc Zyngier wrote:
>> [...]
> Please see below for an untested diff against your patch, addressing
> most of the issues mentioned here.

Thanks, looks good. I integrated the changes into v3.

> Also, I don't see anything here addressing the *other* bug this
> platform suffers from, which is the 32bit limit to the allocations.
> Without a fix for it, this patch is pointless as the GIC may end-up
> with memory it cannot reach.
>
> What;s the plan for that?

It got fixed in RK3588.

> [...]

Greetings,

-- Sebastian

--a3xd3ip6e3vxifnx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmQ9vMYACgkQ2O7X88g7
+prBcw/+MGIYGYvSPc7kivmz9TpJV8g9LxPviXCyD3NskOTy8ZLrM5HyZr5T79SY
lBXWw6NEUZMf4JIu96d76DCTCs0piITZafPXeQqXP92GVgBiYI7t0XOGC2tzxxvU
2xC/eVWW9rCYDIsfZLjvS5wohVYa//31zBr8a+NENJGN0pQ4HtXfwj7Io5eLBeEU
CeLQL+FlTbDhZcwyv5m+CXbEB5ZmLgVkWz6chJ8lS72C9XODyH3znz0PgFItoV7A
PDR04dWSsZgOeMyvdeMp1WBN6B/3jfSKJ05Tk3jJkVOuZU194qA3MXD5Lem+4qt1
4QAlZ2g27IUjXUlOEogaRFAOgSAqiWV/LG18u6/tbyUwk5bhEMyYQQ8QIcMr+8Yj
bpFJLUZo/N/tNrkdgiSxx0LVQqY/1Lv8WhzEGJd0wE00z/fqomBpB12Z0SKi8ElT
pBrxfe9kstkWnZrDENbauwvkEWu+sfZRYkMAgjxWS0EY+N+yo8aQ3ouDlc9sq0Ia
QIxq7VfIQB/cONl8Ebq/ZO28DVftChgqogdHrTpMXhLHs5SvOVjWkHBr8RNL8qcN
ohcz1jduWq/Piddw28EL6D4PW01bvtxfba6eMhnhgpxmYGZzwDc93pW2HUAiKPnp
SmDsIvLIo6silk2B2MwuYSHCmn2jwU7CajMTc+kbpe+UXNkEdv4=
=X0T2
-----END PGP SIGNATURE-----

--a3xd3ip6e3vxifnx--


--===============2972915438671728271==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2972915438671728271==--

