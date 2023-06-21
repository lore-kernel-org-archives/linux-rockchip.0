Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63FB9EB64D7
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 16:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nt3h+CgLnZSLd3oPCZgt5r6s/U2Rck8WkNbfNx94DzU=; b=V/MHe/GXc7neYFU1afB2DGvdPV
	FgRzPIXbxC6D4IAXeTZOMteGr/bTZqAnCRo7LvLQ8dJ6tfcDXU6ttQA89dAMepS1sNZCsHNEj4+Qp
	BLRVfwy7lCh8x0lhGXF3FcgWToYS3ReGIoV03qGoExMPcyc6V7Gt95FvMveiWss0EFpM55TwvvtkL
	7Can6wvvvYexhq674IFWJBj6fZ7vyvPlF4fuPRd8KN48w6TW2J4AMLl4nDUCABbJB92I287g9yGV0
	QaJ2oKal3lY89KfJ8yOlsuZN0UBeCV9SMM2vzu9ATj0d+WM/vnZ2l4HnkdNOmuiCfky0F5025ni5Z
	+UmnXQZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qC0Ra-00F3CJ-1H;
	Wed, 21 Jun 2023 16:12:30 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qC0RX-00F3Ba-1G;
	Wed, 21 Jun 2023 16:12:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EEB38615C3;
	Wed, 21 Jun 2023 16:12:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4F9BC433C8;
	Wed, 21 Jun 2023 16:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687363946;
	bh=F6AWTtJIxksfHftPRfXL8xSdr4W3uoaros+jmqwGdq0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HYwWn4Yej83L0Ozvd2Lkm4OKqpaUV5ILjyBa57r0tigAcNRaod1vQaTBv/5Qu2vdV
	 H2KuOAbcz4v1xfjU0S6nXg+WcMPr5N6pPDsOnWotoM2yTqAqIe7IaXryPbI3S5Keg6
	 g+OiQGHvh2t07cRjUfgsT14zlyghI6hr3XTAU2wvaT3qXHHXCVrI5tBmWwuw1wCw2R
	 xlJwXqIsBWcO9kvBOZXWFRLFXClJ/S3e/2Qf2fqG5RJZXaJeaCut3vUen9xmzrON4h
	 Fl6uKmH52wx+Sin+NrmApBVm+w1U3GrTVv5D05qCbDIunnd8Bxi+W/OeyYBPCmgbDO
	 6TtTVB41yCT9Q==
Date: Wed, 21 Jun 2023 17:12:20 +0100
From: Conor Dooley <conor@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-pm@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
	linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-rockchip@lists.infradead.org,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	kernel@pengutronix.de, Vincent Legoll <vincent.legoll@gmail.com>,
	Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 22/26] dt-bindings: devfreq: event: rockchip,dfi: Add
 rk3588 support
Message-ID: <20230621-poach-amniotic-2eeb858356c8@spud>
References: <20230616062101.601837-1-s.hauer@pengutronix.de>
 <20230616062101.601837-23-s.hauer@pengutronix.de>
 <20230616-swimwear-prewar-f9dce761d2ec@spud>
 <20230621074159.GN18491@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20230621074159.GN18491@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_091227_500600_65B403AC 
X-CRM114-Status: GOOD (  25.37  )
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
Content-Type: multipart/mixed; boundary="===============2617417591311595859=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2617417591311595859==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qqJ18BUnkd3ehpaa"
Content-Disposition: inline


--qqJ18BUnkd3ehpaa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 21, 2023 at 09:41:59AM +0200, Sascha Hauer wrote:
> On Fri, Jun 16, 2023 at 08:05:33PM +0100, Conor Dooley wrote:
> > On Fri, Jun 16, 2023 at 08:20:57AM +0200, Sascha Hauer wrote:
> > > This adds rockchip,rk3588-dfi to the list of compatibles. Unlike eali=
er
> > > SoCs the rk3588 has four interrupts (one for each channel) instead of
> > > only one, so increase the number of allowed interrupts to four.
> > >=20
> > > Link: https://lore.kernel.org/r/20230524083153.2046084-23-s.hauer@pen=
gutronix.de
> >=20
> > It's unclear what the point of this link is.
>=20
> The link was added automatically by b4. I re-applied the series from the
> last one I sent just to be sure that I base my work for the new series
> on the one I sent last time. I didn't remember that b4 adds these links,
> I should have disabled that option.

Ah, I see.

> > My comment still stands about whether only the new compatible should be
> > permitted to have more than one interrupt. I don't recall a response to
> > that question on the last version.
>=20
> My personal take on this is that such additions make the bindings more
> readable by machines, but less by humans. That's why I don't have enough
> intrinsic motivation to make this change.

> Anyway, if you insist then I'll make it for the next round.

No, I don't insist. I just wanted to not be ignored.
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--qqJ18BUnkd3ehpaa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZJMhZAAKCRB4tDGHoIJi
0glxAP95A4qpgG0Kx3VK40STEaGwGLEnpx8i+Bqq6PpR06Bp+AD/VUNaT9byFCmy
eld/0kBNSGMr59V6XwdGhIG5VMo5ZQk=
=FJnF
-----END PGP SIGNATURE-----

--qqJ18BUnkd3ehpaa--


--===============2617417591311595859==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2617417591311595859==--

