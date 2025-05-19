Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD908C3ABDD
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 16:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Pwrn3j3ovgfQF3iFap/Q3wf0Qg3dSECq77fJGlLYUfE=; b=tz0RlTT2aaffLrnis4btFYtpfg
	1fOKXixJUNMQQeDPUAjAwh228z/Bk5Ehe92hD/kNGcmeym6LyaIqVCdBHDa4xkSIpXnA9bU1nlIRg
	lMIpvDbC7MQi2or4+YT+V+X5lJsELx+HFF9dPgzWRR//YfEWezulrePxK+YeTp+oCgLvRSlUv2nHc
	7lXdlTBfCIfTVM9A6gHkSKNyoDi5B+k00yCB6Xt12Tdh6AJvYMOU5/AlsqASdu2T9klYQPz9JmvTh
	cdrOGdmuepMz0maL3wcRPlj995AqNF3wvMnz3RfMFftABnDsPwI1LqJ+0GZYu6DhZ7aI7OotQM55E
	0VmxMLuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH3pu-00000009tPx-2ktd;
	Mon, 19 May 2025 16:59:34 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH37U-00000009l7w-1gF5;
	Mon, 19 May 2025 16:13:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AA25E5C0619;
	Mon, 19 May 2025 16:11:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC58EC4CEE4;
	Mon, 19 May 2025 16:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747671219;
	bh=UmNwSFajsb2gQxcRHVej6ZPnsmaY+xQpujk6JzYISKs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UINxs4j2cfiBSaoEdJJzkYN5Tx/PcgIPy5rq7TgNkhzZWdE0eFaMBD/IR74uAEqfe
	 RaHFXyBaZBDYPMcruzgeZPwiM5kiQwGl+q3FHuKuJs5DsZ4myHbx9y8rfSbS85sx+J
	 s72IUKxA6vHx4c/8uvqIcGmwhWg5eP0ya+IIKR5P9qHJ6v3bE+v1ChVN64/OHyGV/N
	 7x2enUtRQ/76g7/x3L1LJRLRHUsy9Gx3Xw5LknZhfT+yJKK9QWCynjXE8yuUjkuZSW
	 lITbzVYEzjDNJ1TA12QgOtQghbdbh03fpytLjL2EGZq0z1b0eopROxjtpkhYBJ354g
	 p8vdiQDuQiCrg==
Date: Mon, 19 May 2025 17:13:34 +0100
From: Conor Dooley <conor@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Elaine Zhang <zhangqing@rock-chips.com>, Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>, linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/9] dt-bindings: rockchip: pmu: Add compatible for RK3528
Message-ID: <20250519-backer-resisting-dd1b7b51c552@spud>
References: <20250518220707.669515-1-jonas@kwiboo.se>
 <20250518220707.669515-4-jonas@kwiboo.se>
MIME-Version: 1.0
In-Reply-To: <20250518220707.669515-4-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_091340_477377_7C65DEB1 
X-CRM114-Status: GOOD (  10.58  )
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
Content-Type: multipart/mixed; boundary="===============1370782553883686687=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1370782553883686687==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oHpkP4t8DDp0/UVF"
Content-Disposition: inline


--oHpkP4t8DDp0/UVF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 18, 2025 at 10:06:50PM +0000, Jonas Karlman wrote:
> Add the compatible for the pmu mfd on RK3528 SoC.
>=20
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--oHpkP4t8DDp0/UVF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaCtYrgAKCRB4tDGHoIJi
0pqNAP9W6yAd8hmNkjtk/3p3P81h6tv3qfTuReMFreJQxi7OXQD9EBF1xQlvXWqT
Fol2XJSQwjgip0XWN/RFdwalToSoYwc=
=1zv7
-----END PGP SIGNATURE-----

--oHpkP4t8DDp0/UVF--


--===============1370782553883686687==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1370782553883686687==--

