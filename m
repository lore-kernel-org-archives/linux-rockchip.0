Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35FFFEB64D0
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jun 2023 16:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TlTW79ZgNSktBtRt8fDEtE7oeCKqWVt7kLhPlWe6NfU=; b=tqvOGHrKiuKk0vHv/j7WFx2Kxc
	9Od4IuXCZIKQTD2XaW2sW7B4OU/Ipc5fmH3Jw5i1lkI3vH5P+CcGLQWaS6K2KIEdAuBf8DwTOhjlm
	TtO6kHgQn77h+9VsxdiEmfIdvInElvKGAj1rc7I0dDpnD/EiJFIubPs5C97DxKxbCLBMByt4Oc8Xt
	uqWo8tVPidcaT6NXiUnAt+f0Vukve+cLcbHbmgX8k16lFoj855ENdYpjXy0xwO4OUrEGKF6qDd6zV
	g884flsHyCorJz+FjGCSEboNi0nqcSADLFX/k4qJ+Zpg57EjW05lyE1rVrgPOgnSXq72LemUN8Xde
	UdgQH/yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q96kA-008ZhO-0b;
	Tue, 13 Jun 2023 16:19:42 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q96k5-008ZgU-1O;
	Tue, 13 Jun 2023 16:19:39 +0000
Received: from mercury (dyndsl-091-248-189-170.ewe-ip-backbone.de [91.248.189.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E56766606EF9;
	Tue, 13 Jun 2023 17:19:35 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686673176;
	bh=rm+xEAF9m8EKLIV/91S2iZERE1DFe3KIxCEU2gBO/jc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CVrEKkAppmYrbOq1v8+sQA+Rr8M1nfY9ODmNgd8urU6UbcRElqhCzA4YjpRqX4X2i
	 E2JfFWLg6CBa9lj3EGV21uJhbf9FcxvWav+VmnVE3t/bvPbGv1AXo+VnoH83VwFlHg
	 WM9ydUlNuP4H9UoaUNFSgrRFirVUmld41SGL/2if5tgOh3Qw3MPvCDPsSo5s5vCSv8
	 KJtBUct6oWfnwi0gBvqVwItDMf5HS335idMr5fnuVQEO73EUsj9oaX+0pFQ8XezAR1
	 pkU/aFs9aN0ODF3QHqEA9MgG0gSGnyRARteP8oii//nn4k+mjeP+NKY2/6kCJV4BUJ
	 TcMha1dYPsY+A==
Received: by mercury (Postfix, from userid 1000)
	id 8A4761066FBA; Tue, 13 Jun 2023 18:19:33 +0200 (CEST)
Date: Tue, 13 Jun 2023 18:19:33 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 25/25] arm64: dts: rockchip: rk3588s: Add DFI
Message-ID: <20230613161933.qy3qh7ybf3azl3aa@mercury.elektranox.org>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
 <20230524083153.2046084-26-s.hauer@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20230524083153.2046084-26-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_091937_600467_FCC7F7C0 
X-CRM114-Status: GOOD (  20.87  )
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
Content-Type: multipart/mixed; boundary="===============6282917561088833294=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6282917561088833294==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mrx4igmyearfat7p"
Content-Disposition: inline


--mrx4igmyearfat7p
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 24, 2023 at 10:31:53AM +0200, Sascha Hauer wrote:
> The DFI unit can be used to measure DRAM utilization using perf. Add the
> node to the device tree. The DFI needs a rockchip,pmu phandle to the pmu
> containing registers for SDRAM configuration details. This is added in
> this patch as well.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>=20
> Notes:
>     Changes since v4:
>     - new patch
>=20
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/=
dts/rockchip/rk3588s.dtsi
> index 657c019d27fa9..4a445d8704c8f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -388,6 +388,11 @@ scmi_shmem: sram@0 {
>  		};
>  	};
> =20
> +	pmu1grf: syscon@fd58a000 {
> +		compatible =3D "rockchip,rk3588-pmugrf", "syscon", "simple-mfd";
                      ^^^^^^^^^^^^^^^^^^^^^^

Must be added in Documentation/devicetree/bindings/soc/rockchip/grf.yaml

Otherwise the patch is

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

> +		reg =3D <0x0 0xfd58a000 0x0 0x10000>;
> +	};
> +
>  	sys_grf: syscon@fd58c000 {
>  		compatible =3D "rockchip,rk3588-sys-grf", "syscon";
>  		reg =3D <0x0 0xfd58c000 0x0 0x1000>;
> @@ -1112,6 +1117,17 @@ qos_vop_m1: qos@fdf82200 {
>  		reg =3D <0x0 0xfdf82200 0x0 0x20>;
>  	};
> =20
> +	dfi: dfi@fe060000 {
> +		reg =3D <0x00 0xfe060000 0x00 0x10000>;
> +		compatible =3D "rockchip,rk3588-dfi";
> +		interrupts =3D <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH 0>;
> +		interrupt-names =3D "ch0", "ch1", "ch2", "ch3";
> +		rockchip,pmu =3D <&pmu1grf>;
> +	};
> +
>  	gmac1: ethernet@fe1c0000 {
>  		compatible =3D "rockchip,rk3588-gmac", "snps,dwmac-4.20a";
>  		reg =3D <0x0 0xfe1c0000 0x0 0x10000>;
> --=20
> 2.39.2
>=20

--mrx4igmyearfat7p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmSIlxUACgkQ2O7X88g7
+ppIDA//WR0R31t307KcfvZ9jJLxYNQIh7CaH3HbyqW7+sNvWtE+rXSagxXNxkL8
VNpRElARVtbqfT0tNeK2zjrbjU5zl2ZuBtEWDlFHpBvLmO66ArdjKuKb1Qk4NgZJ
SkYWFcNgzNNqoZfhbrADBuBlCBzr0cHHTScqYTcCMMgcrHyed0EsFZ4wJyhxVQUc
cWen5lS7J/fEiyKJmhZtvd3n0NnlAhtNjT0EzI1Mod+otdxfCuWE1ePB3rRcsK6D
S26j8KM98N/B05+nmbKSmpNpsLswyraLkb8KrgtVSRqhifAG2/+Wr+jIOQGurnAJ
0Vn/i3tXy38W1POgE5yXhoIT0hu86hlhtvHuKe8n3ryVbtCEtKVxyjBGLcrnQX9z
xZMCYtMBppHaapVg0HwPlqDozRLFKOWDXiW30eWqqYBWzPVwS18SQa4TivqQ1lsx
L3LFYpdX2QFUIGKq2cOoGDYNXhOiaNH6nGsEhdlggvEuzLdAmPNK17DNQZO8eMO2
FIjEl5/K1jMSV/uP95SUWhUMjUHf+Lokby2KgQbpVNE0qmalWv8vga824k+t38Sr
Q14OSHO+8GXo6xvQhVFjJf0IOnb7mTWBZGMnGpEO5oKBt7XngH9G1sx/ohRNMSs+
0KAr2sXEvP7bsWb+nQdNL6ZhowQIWu14LSVxD0MWHKjNRXs5Yh0=
=jDvv
-----END PGP SIGNATURE-----

--mrx4igmyearfat7p--


--===============6282917561088833294==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6282917561088833294==--

