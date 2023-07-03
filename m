Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66AE2EB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Jul 2023 16:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iWQJSMq5y4gDnDLE9FR36XRRR917CauLstyMsiA7zlE=; b=R/Y1LGqDjxtRJr++qlvQuvL1R2
	ELEHBp9j1b2T18bIlfgznwhADgu4ZehxjI1U4grr0vbVL5H0Fsq5g0N2mZE11iMqSzpKxdHdgaXQT
	8wjtBKsZbDbrFtG/Ti9Ftx0lQI4KtsCfmciHgeGKuYDqfbAuZ3dTk+4jfnThkedi6SZKoN7ILSXdN
	Pf2gSgIdTObYL7CwrhXOdrz7/Qn+RewpZuPb0RhSOuTiFupQ3w6E3d+nWDgf3/3M4xxKLKIQIw7FK
	VECzcwis07UH4w8w4YgmXfj6a6LX6SjXcfPFf/hYN1tiMC2h6pM6l3EO1fy01uMN43mXq14cPdxKW
	kkWuxzsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGMYB-00B0zl-2e;
	Mon, 03 Jul 2023 16:37:19 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGMY7-00B0xZ-0y;
	Mon, 03 Jul 2023 16:37:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C54D260FCD;
	Mon,  3 Jul 2023 16:37:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D613C433C7;
	Mon,  3 Jul 2023 16:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688402234;
	bh=dQJizNDjV0On5jsPc5SMZQJc24JPH7DwKQhe7eOYpjQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OcWUi/sgVANfYuJYeddKHs4lsYxVTJ0o6uA/O/PPLLHo+0ak9l7GoaQht5MusPJYR
	 qZkbgM5K6tXZVEA//tCW+sNb6e4XeUi75ZZGE+ckBKajEQWlaJr76mXD/ah6gyfjMp
	 JNRc41GxrK8ctzMT632DFINJA7OPT+5EXV7NXe/JIwjF7iyFCgVgKaN0dH11AnrncN
	 3uSKBoK7i7Hz4JGO7blvR7PiO/921+0tG89e3oUwKQctLMYQ+r5siGjNyG39h0/crT
	 ll2x84Agc0UDDVR28uEGnFe2Q1NW1yqHbe5Hn+RzNUI8WUOHaPtwGP7JOkxRFObvWn
	 k4lWRsdeMLtrA==
Date: Mon, 3 Jul 2023 17:37:08 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Leo Yan <leo.yan@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, coresight@lists.linaro.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org, linux-iio@vger.kernel.org,
	linux-media@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-mtd@lists.infradead.org, linux-amlogic@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	linux-remoteproc@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: cleanup DTS example whitespaces
Message-ID: <20230703-backwater-shrimp-83c4d7c85566@spud>
References: <20230702182308.7583-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20230702182308.7583-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_093715_385685_EA9515F5 
X-CRM114-Status: UNSURE (   8.00  )
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
Content-Type: multipart/mixed; boundary="===============4369630463617615237=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4369630463617615237==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="UiJVV06vbWBe/tbL"
Content-Disposition: inline


--UiJVV06vbWBe/tbL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jul 02, 2023 at 08:23:08PM +0200, Krzysztof Kozlowski wrote:
> The DTS code coding style expects spaces around '=3D' sign.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--UiJVV06vbWBe/tbL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZKL5MwAKCRB4tDGHoIJi
0mVgAQDNt2fzUk6TeyhRtqxRzkVNpebNdDOvWcdu/bIrTUmphAD+MWZmleneV77V
DMKAFWrQs6zsQ6eXYsq712V3/VRwiQg=
=CDKn
-----END PGP SIGNATURE-----

--UiJVV06vbWBe/tbL--


--===============4369630463617615237==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4369630463617615237==--

