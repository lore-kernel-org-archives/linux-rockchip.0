Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F20EC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Mar 2022 16:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gwd9VJoDwcxQZwuma135tVzZDqLOygLFieX0Ro73Qkk=; b=LD7e/p4xS3cfjs
	iGPcwwmdNow7qyX9dfZTepz+mACN6H2s5YvUi2traItw6Y4zanNYIVs+40r3jNNdBQDnOPJeYiCXL
	3mYF7V/SrGlrwioynnPQ2xk6yyYvJs4Ob+imhZi0dwpk23e/i4XR/dwdxr0WDnqFq8iW0gPAk2vCc
	EkxcpF7/dyHC0xqI2dJV5EgWR1JOYXIOrFgLD4UyDWkCcPKqJeU/ePdyLpVStq1UjUXOzKKHzEvcJ
	1qOTjhj4gQuSTwOjQqM8DvkpGo4f5p5zI4XJxOnCqATsRM9sg0PkeFYBUHdzWIDiBv8OXkQGTZ0lR
	cfyiGVEkNw29gv7N8qig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nX3qw-00EFPH-G7; Wed, 23 Mar 2022 16:28:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nX3qh-00EFIz-Ro; Wed, 23 Mar 2022 16:28:41 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nX3qT-00030m-16; Wed, 23 Mar 2022 17:28:25 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>, LABBE Corentin <clabbe@baylibre.com>
Cc: herbert@gondor.apana.org.au, krzk+dt@kernel.org, mturquette@baylibre.com,
 robh+dt@kernel.org, sboyd@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 18/26] arm64: dts: rockchip: rk3399: add crypto node
Date: Wed, 23 Mar 2022 17:28:24 +0100
Message-ID: <1898921.yKVeVyVuyW@diego>
In-Reply-To: <YjsfIbLQRvoxkana@Red>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
 <70422777-a3f9-b2f1-5faa-94d24fe200ac@arm.com> <YjsfIbLQRvoxkana@Red>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220323_092839_911836_93A88213 
X-CRM114-Status: GOOD (  39.28  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Mittwoch, 23. M=E4rz 2022, 14:22:41 CET schrieb LABBE Corentin:
> Le Tue, Mar 22, 2022 at 12:00:06PM +0000, Robin Murphy a =E9crit :
> > On 2022-03-21 20:07, Corentin Labbe wrote:
> > > The rk3399 has a crypto IP handled by the rk3288 crypto driver so add=
s a
> > > node for it.
> > > =

> > > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > > ---
> > >   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 12 ++++++++++++
> > >   1 file changed, 12 insertions(+)
> > > =

> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/bo=
ot/dts/rockchip/rk3399.dtsi
> > > index 88f26d89eea1..ca2c658371a5 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > > @@ -573,6 +573,18 @@ saradc: saradc@ff100000 {
> > >   		status =3D "disabled";
> > >   	};
> > >   =

> > > +	crypto0: crypto@ff8b0000 {
> > > +		compatible =3D "rockchip,rk3399-crypto";
> > > +		reg =3D <0x0 0xff8b0000 0x0 0x4000>,
> > > +		      <0x0 0xff8b8000 0x0 0x4000>;
> > > +		interrupts =3D <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH 0>,
> > > +			     <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH 0>;
> > > +		clocks =3D <&cru SCLK_CRYPTO0>, <&cru HCLK_M_CRYPTO0>, <&cru HCLK_=
S_CRYPTO0>,
> > > +			 <&cru SCLK_CRYPTO1>, <&cru HCLK_M_CRYPTO1>, <&cru HCLK_S_CRYPTO1=
>;
> > > +		resets =3D <&cru SRST_CRYPTO0>, <&cru SRST_CRYPTO0_S>, <&cru SRST_=
CRYPTO0_M>,
> > > +			 <&cru SRST_CRYPTO1>, <&cru SRST_CRYPTO1_S>, <&cru SRST_CRYPTO1_M=
>;
> > > +	};
> > =

> > What's going on here? If these are simply two instances of the same IP =

> > block as the evidence suggests, why are they crammed into a single DT =

> > node rather than simply being described as two separate instances? I wa=
s =

> > rather wondering what all the confusing mess in patch #16 was about, =

> > until I got here.
> > =

> > If there's something in the crypto API that means the driver can't =

> > simply naively register itself multiple times, there should be any =

> > number of ways for the probe routine to keep track of whether it's =

> > already registered something and associate any subsequent devices with =

> > the first one internally if need be. Linux implementation details shoul=
d =

> > not leak out as non-standard DT weirdness.
> > =

> > I know the Rockchip IOMMU driver does this, but in that case the two =

> > IOMMU instances are closely coupled and sharing work such that they =

> > effectively need to be programmed identically at all times, so it was a =

> > bit more justifiable. I don't know the full story here, but it certainl=
y =

> > looks like rk_get_engine_number() is just a means to schedule work on =

> > any available unit independently, so looks like it wouldn't take much t=
o =

> > select between distinct devices at that point, and actually end up a lo=
t =

> > simpler and cleaner overall.
> =

> Yes rk3399 has 2 instances of the same IP (Exception: crypto1 does not ha=
ve RSA).
> =

> The problem is that only one drivername (like rk-md5) could exists.
> If crypto0 and crypto1 register with different drivername (rk-md5-0/rk-md=
5-1), only one will be used anyway.
> So I merged them into only one instance.
> I think this way will be easier, but you are right, this is not pretty.
> =

> I found another way with 2 nodes:
> You could preview it at https://github.com/montjoie/linux/tree/cryptorock=
chipv4
> Basicly the crypto0 is a normal instance, and crypto1 "registers" itself =
against crypto0.
> So if crypto0 know another instance exists it will load balance requests.

The DT-nodes in that branch are

@@ -573,6 +573,22 @@
 		status =3D "disabled";
 	};
 =

+	crypto0: crypto@ff8b0000 {
+		compatible =3D "rockchip,rk3399-crypto0";
+		reg =3D <0x0 0xff8b0000 0x0 0x4000>;
+		interrupts =3D <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks =3D <&cru SCLK_CRYPTO0>, <&cru HCLK_M_CRYPTO0>, <&cru HCLK_S_CRYP=
TO0>;
+		resets =3D <&cru SRST_CRYPTO0>, <&cru SRST_CRYPTO0_S>, <&cru SRST_CRYPTO=
0_M>;
+	};
+
+	crypto1: crypto@ff8b8000 {
+		compatible =3D "rockchip,rk3399-crypto1";
+		reg =3D <0x0 0xff8b8000 0x0 0x4000>;
+		interrupts =3D <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks =3D <&cru SCLK_CRYPTO1>, <&cru HCLK_M_CRYPTO1>, <&cru HCLK_S_CRYP=
TO1>;
+		resets =3D <&cru SRST_CRYPTO1>, <&cru SRST_CRYPTO1_S>, <&cru SRST_CRYPTO=
1_M>;
+	};
+
 	i2c1: i2c@ff110000 {
 		compatible =3D "rockchip,rk3399-i2c";
 		reg =3D <0x0 0xff110000 0x0 0x1000>;

which looks at lot better :-) .

I'm not sure about the different compatibles yet, but as the blocks
are really _not_ the same implementation that actually does make sense
[i.e. one not having RSA]

Though I think you'll need to update the binding for them.


Heiko





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
