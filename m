Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09276C00A94
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 16:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4GPuiZuS6sOnddeBRgx+ZOAAk/0nIBd18uWO6RGfgP4=; b=VATiNndFjkhtvDgb3IJ3vs5m8e
	mee8m4ZRJsMNy6mSaITU07cirg5wVY0yZ10PFPpRfR1ITUFKhf6bvDuF6s5fVlZ/gkRrX+98LTI4j
	lY55uAmWXAZTRS6LazPIYiiniQ4JZkJ03opm1pSnmdARi1QMrph1/7mfTPF0N+3vVj5bcy+Ki9Us0
	wZiBrgeXa3wS14Yh52rdBu39mrRNGC1o646zsNQHlsOH0ITAwC888nXWQ8KUONQeSOfG53oDsd1GE
	SgETspv0CFAPd89KfSks+3Ip5qsPAkSk4bzb9CjZF+x+sAzqX3NxHtUjaOZairPnoUWJwoAz7YNM6
	z0qilWQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwPWP-000000098vA-23BM;
	Mon, 15 Apr 2024 16:49:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwPWI-000000098s1-2w7G;
	Mon, 15 Apr 2024 16:49:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1567D60C83;
	Mon, 15 Apr 2024 16:49:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 178CCC113CC;
	Mon, 15 Apr 2024 16:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713199763;
	bh=RYfH+7ZQ4l/9ir2s0AEiPjXAp7Fgy5zVdlnNIhbS92Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gkq37PVTha1wyuQ8mceDo7VTFsmsrTSje0u2cTa2sRZDSuf33u8kaLFuyn1bx4Wpg
	 pnuJ4f+mN3naVtbvRd/iiaaN6re72FK338JeFhBb9Ztn8uwSHmCNS/OQ3Q21g8s0o8
	 pMtCfndf8GvB3LcEA6Qay9m2utxPbNnTNfd116BCDWjk0wBW7kieoLWsl9mQbOiVyt
	 0jKGRs+5gsvAaIe0iQ6mE4BbovTIflhEQ31uAp+93ZOn1CatAPw3N7ytcMHUMpkDtE
	 PHciRv4Qk7MQ0tx7EomBy0AvLcp8oQpFCO20h7L+GrAKWpxAkiQrZdaFQQ94T5TXRb
	 bpaAv94r0yomA==
Date: Mon, 15 Apr 2024 17:49:17 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
	linux-kernel@vger.kernel.org,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev
Subject: Re: [PATCH v3 1/2] media: =?utf-8?Q?dt-bin?=
 =?utf-8?Q?ding=3A_media=3A_Document_rk3588=E2=80=99s?= VEPU121
Message-ID: <20240415-spearhead-brunch-147840bf414d@spud>
References: <20240412151515.837824-1-linkmauve@linkmauve.fr>
 <20240412151515.837824-2-linkmauve@linkmauve.fr>
 <d0839eec-7a92-4834-b47a-be0ba1908c1a@linaro.org>
MIME-Version: 1.0
In-Reply-To: <d0839eec-7a92-4834-b47a-be0ba1908c1a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_094929_432138_AFE6AB67 
X-CRM114-Status: GOOD (  14.79  )
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
Content-Type: multipart/mixed; boundary="===============6964856324612200905=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6964856324612200905==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="x+2TvZJhub2l4MoK"
Content-Disposition: inline


--x+2TvZJhub2l4MoK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 13, 2024 at 11:22:51PM +0200, Krzysztof Kozlowski wrote:
> On 12/04/2024 17:15, Emmanuel Gil Peyrot wrote:
> > This encoder-only device is present four times on this SoC, and should
> > support everything the rk3568 vepu supports (so JPEG, H.264 and VP8
> > encoding).
> >=20
> > According to the TRM[1], there is also the VEPU580 encoder which
> > supports H.264 and H.265, and various VDPU* decoders, of which only the
> > VDPU981 is currently supported.  This patch describes only the VEPU121.
> >=20
> > [1] https://github.com/FanX-Tek/rk3588-TRM-and-Datasheet
> >=20
> > Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
>=20
> So you ignored all the tags? No one will pick up your patch if you are
> going to keep ignoring them...

If Nicolas's concern about breakage due to exposing multiple video
devices was addressed:
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--x+2TvZJhub2l4MoK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZh1ajAAKCRB4tDGHoIJi
0uWHAP0V4L26Wkt/mEwBdE+9v4pr7VmPuKSeVQT0+VkpQKe5owEA8AAkkF/B2tbt
HrAuTsrzjcijRfU5yoQ6z7q/P4Z5Qws=
=3+LB
-----END PGP SIGNATURE-----

--x+2TvZJhub2l4MoK--


--===============6964856324612200905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6964856324612200905==--

