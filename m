Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B08A8C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Dec 2022 14:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KdQBIR3MrBSyQsZOkzgZHr4D/7yK2Av7Ke09LE4keMo=; b=J1nuU5cLzhoxYvZH5RvaB3N8u2
	RJwPVKU4ZxcFcwMNEgMM6XkLoQ93qwhLWETsZ1RMrJ/GCN+/tOz/oTVSb8I0XOJNbVoYU9lkGBG9a
	7+URM9acDNx54E4vWJyfnVSRYUlMKM5o3DrRUVnaa3c/GQc18oKo5NxaTTYsronMJVyPiXLiqOmNe
	Bopi3lSfmeID6qnPEMw6tp8LL6TPvKTKHS5FcIob+5WtlYg/5/womgMR7+hIsQvNj81KSz2HVThZY
	/sMtVIEfy6ZHOQLKE0cK1Qn+7fGZeTSS3tL6Lsh0LleGjbmr/OG+2OveZvlXvnz2t2/PmoZxVOpWj
	6VBMKmLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5onL-009jTu-He; Thu, 15 Dec 2022 14:01:07 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5onF-009jS0-Vk
	for linux-rockchip@lists.infradead.org; Thu, 15 Dec 2022 14:01:06 +0000
Received: from mercury (dyndsl-095-033-168-084.ewe-ip-backbone.de [95.33.168.84])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9DC526602C62;
	Thu, 15 Dec 2022 14:01:00 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671112860;
	bh=bes/p3oZNVoNWZ83nnaJacGNZpgWf626JfDetsGaY9Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Kd9Cd27p77TZBaKsqzd13pfEx/dnVhQbItrGXWss6Q1UAYel8SbUSXY9kjjbFYmNT
	 vE0mpOCnvOtlQVSVBF2oiFKvzfq830f1GLloxHhehlf5sW3XUN7Ym79EYZlo1gZQ9/
	 UMtr+MW0Ej5IvRdl5bUGuTvHmuDhjCQSAfKba7bFFJoP9JaSGU76AfyK2SLaU8m6pt
	 TutBiwfG0AYkFUXSvWHZ2jEQKzGeDWkpHDQH8IJaFRrmmNp+356Wg6ZMJwxn6EVbzA
	 VW2oGt/RUlZVbeQ38SQ5C1XZ7mAMPj/y5nF/CRoinGgRgGAMGhr4J9pbGEGQ4W+YnU
	 SmXIQGeb4NdgA==
Received: by mercury (Postfix, from userid 1000)
	id 786351060F45; Thu, 15 Dec 2022 15:00:58 +0100 (CET)
Date: Thu, 15 Dec 2022 15:00:58 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Marc Zyngier <maz@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>, kernel@collabora.com,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: Re: [PATCHv6 3/7] arm64: dts: rockchip: Add base DT for rk3588 SoC
Message-ID: <20221215140058.ef4z5k6bg4tob44k@mercury.elektranox.org>
References: <20221214182247.79824-1-sebastian.reichel@collabora.com>
 <20221214182247.79824-4-sebastian.reichel@collabora.com>
 <861qp1qawb.wl-maz@kernel.org>
MIME-Version: 1.0
In-Reply-To: <861qp1qawb.wl-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_060105_412833_96DEED82 
X-CRM114-Status: GOOD (  22.69  )
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
Content-Type: multipart/mixed; boundary="===============8999921968537594690=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8999921968537594690==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vhghmurxxhva64ws"
Content-Disposition: inline


--vhghmurxxhva64ws
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Dec 15, 2022 at 09:22:28AM +0000, Marc Zyngier wrote:
> On Wed, 14 Dec 2022 18:22:43 +0000,
> Sebastian Reichel <sebastian.reichel@collabora.com> wrote:
> >=20
> > From: Kever Yang <kever.yang@rock-chips.com>
> >=20
> > This initial version supports (single core) CPU, dma, interrupts, timer=
s,
> > UART and SDHCI. In short - everything necessary to boot Linux on this
> > system on chip.
>=20
> Single core? The DT indicates otherwise.

oops, that's a still from v0 (missing from the changelog since that
was a big rk3588 series also containing the required driver changes).
I will update the commit message in PATCHv7.

>=20
> >=20
> > The DT is split into rk3588 and rk3588s, which is a reduced version
> > (i.e. with less peripherals) of the former.
> >=20
> > Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> > Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> > Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> > [rebase, squash and reword commit message]
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588.dtsi  |   58 +
> >  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 1703 +++++++++++++++++++++
> >  2 files changed, 1761 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588.dtsi
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> >=20
>=20
> [...]
>=20
> > +	gic: interrupt-controller@fe600000 {
> > +		compatible =3D "arm,gic-v3";
> > +		reg =3D <0x0 0xfe600000 0 0x10000>, /* GICD */
> > +		      <0x0 0xfe680000 0 0x100000>; /* GICR */
> > +		interrupts =3D <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH 0>;
> > +		interrupt-controller;
> > +		mbi-alias =3D <0x0 0xfe610000>;
> > +		mbi-ranges =3D <424 56>;
> > +		msi-controller;
> > +		#interrupt-cells =3D <4>;
> > +
> > +		ppi-partitions {
> > +			ppi_cluster0: interrupt-partition-0 {
> > +				affinity =3D <&cpu_l0 &cpu_l1 &cpu_l2 &cpu_l3>;
> > +			};
> > +
> > +			ppi_cluster1: interrupt-partition-1 {
> > +				affinity =3D <&cpu_b0 &cpu_b1 &cpu_b2 &cpu_b3>;
>=20
> The use of the word "cluster" is pretty misleading, specially as the
> actual CPU clusters don't align with this partitioning (you seem to
> have 2 independent A76 clusters). Consider using the word "partition",
> which was chosen exactly to avoid this confusion.

Ack.

Thanks for the review,

-- Sebastian

--vhghmurxxhva64ws
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmObKJoACgkQ2O7X88g7
+pqSxA/+Ov5W261EUF1etZd1nEUZ+/anwZE1vz8D+tXGrg5/XW4pgWbP+muhaiaf
fr/BGViuMnfg18+ClF1e6JTxI1pXLfKkKF/iZCcizzphDoWsc3wU377mbvsh5ral
rFE/UWgiQO/7eeYqRSW2xDS5OHhb/vln+s/vwJddIkOGVvQyQAbyiJCfZP/bWZbG
f9oP4RlqEFZ8QoGYgrHSprRkMYCb02/94tt6M9LhY26DyvsCggNx45Sq2RzzJG0x
3BN6k5XdQb7mgKfi7tppo9hNsvX62kU5W7lzfYmHTu3MmtGisdcPXbSEO3M0+87Q
jYUcJo1+ZGDe7xEMlfRSnpW3dAWcjmSKRb/8qNKK/PE5NlnuTMlXnmktX8TCZXfm
a1qlaaNjTMOfSbCHP0UUEIZ+kP1EjuB0GlYD+Y0AgbBkNBX72OHoZ+sL9gXRr3N7
fF4R9Q1c8WEd2kzBD8jsyrGG9Tnmm69ws6bm+3JVGyzmsGq/6GpZbEpRUatwQxfy
06U4BBrhfA0wDpsm5Ix2QgCPc+GNRN/wMwfCIo41oyw8obRgrXxG/UJ8u6nDo0cm
ef2tfdAx8luxli5X3U26kLgFJVjpS/qcdfwetK7bhzaTXatQdR3eVC9HOTmID2id
2W19e7FAnuJIJw6MNgyEjQt52i4rHvdC03bszeFDOu31xXVtew0=
=Io72
-----END PGP SIGNATURE-----

--vhghmurxxhva64ws--


--===============8999921968537594690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8999921968537594690==--

