Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70455C54798
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Mar 2024 20:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y17AiZm01ymj4q6EcFgegtKOH97RMNEKPRGq1KydgMA=; b=a/O/BGi17kCbvU
	sB+U03u4XiA+x5bE8s+oo2H4Wp+6ji5/fbsiHI/LDw9tVSnc//ASsDnflRWM7wdLQ2sH8zHgrVMou
	f3NvIWZoS2ctvfRVCSNXixaSb1yYC6XYOwm7bj8FFHLG9aijffnCvHgdTE33Ftdecdw41ILfpUMqf
	upMsy6QqdhoMHGy5bYr19PEN1VWFeD19oeu5VNgIptE6cpNE5GVzm6YI/X58HHTsDjDXbL0V+pGEX
	SmYXYniRPSxehcsI0vBuQnu044BbHdtRPHEj0vq+1lVYWSujQew+mJYaQeXuMnZIsxLxFm0sJkbyR
	f88MceVcxkG65qMO6coA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhbHv-0000000FAqn-4B6c;
	Tue, 05 Mar 2024 20:21:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhbHs-0000000FAmD-1Sm9;
	Tue, 05 Mar 2024 20:21:21 +0000
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rhbHV-0003er-CG; Tue, 05 Mar 2024 21:20:57 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Shreeya Patel <shreeya.patel@collabora.com>
Cc: mchehab@kernel.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, jose.abreu@synopsys.com, nelson.costa@synopsys.com,
 dmitry.osipenko@collabora.com, sebastian.reichel@collabora.com,
 shawn.wen@rock-chips.com, nicolas.dufresne@collabora.com, hverkuil@xs4all.nl,
 hverkuil-cisco@xs4all.nl, kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm@lists.infradead.org
Subject: Re: [PATCH v2 4/6] arm64: dts: rockchip: Add device tree support for HDMI RX
 Controller
Date: Tue, 05 Mar 2024 21:20:55 +0100
Message-ID: <6040170.44csPzL39Z@diego>
In-Reply-To: <45138-65e76d00-9-580ee380@232156106>
References: <20240305123648.8847-1-shreeya.patel@collabora.com>
 <7657358.31r3eYUQgx@diego> <45138-65e76d00-9-580ee380@232156106>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_122120_395852_757FDB7F 
X-CRM114-Status: GOOD (  38.18  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi again :-)

Am Dienstag, 5. M=E4rz 2024, 20:05:02 CET schrieb Shreeya Patel:
> On Tuesday, March 05, 2024 19:41 IST, Heiko St=FCbner <heiko@sntech.de> w=
rote:
> > Am Dienstag, 5. M=E4rz 2024, 13:36:46 CET schrieb Shreeya Patel:
> > > Add device tree support for Synopsys DesignWare HDMI RX
> > > Controller.
> > > =

> > > Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> > > Tested-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> > > Co-developed-by: Dingxian Wen <shawn.wen@rock-chips.com>
> > > Signed-off-by: Dingxian Wen <shawn.wen@rock-chips.com>
> > > Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> > > ---
> > > Changes in v2 :-
> > >   - Fix some of the checkpatch errors and warnings
> > >   - Rename resets, vo1-grf and HPD
> > >   - Move hdmirx_cma node to the rk3588.dtsi file
> > > =

> > >  .../boot/dts/rockchip/rk3588-pinctrl.dtsi     | 41 ++++++++++++++
> > >  arch/arm64/boot/dts/rockchip/rk3588.dtsi      | 55 +++++++++++++++++=
++
> > >  2 files changed, 96 insertions(+)
> > =

> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/bo=
ot/dts/rockchip/rk3588.dtsi
> > > index 5519c1430cb7..8adb98b99701 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> > > @@ -7,6 +7,24 @@
> > >  #include "rk3588-pinctrl.dtsi"
> > >  =

> > >  / {
> > > +	reserved-memory {
> > > +		#address-cells =3D <2>;
> > > +		#size-cells =3D <2>;
> > > +		ranges;
> > =

> > add blank line here
> > =

> > > +		/*
> > > +		 * The 4k HDMI capture controller works only with 32bit
> > > +		 * phys addresses and doesn't support IOMMU. HDMI RX CMA
> > > +		 * must be reserved below 4GB.
> > > +		 */
> > > +		hdmirx_cma: hdmirx_cma {
> > =

> > phandles use "_", but node-names "-"
> > =

> > > +			compatible =3D "shared-dma-pool";
> > > +			alloc-ranges =3D <0x0 0x0 0x0 0xffffffff>;
> > > +			size =3D <0x0 (160 * 0x100000)>; /* 160MiB */
> > =

> > The comment above that node, could elaborate where the value of 160MB
> > originates from. I assume it is to hold n-times of 4K frames or whateve=
r,
> > but it would be helpful for people to be able to read that.
> > =

> =

> right, we did the following calculation to come up with this value :-
> 3840 * 2160 * 4 (bytes/pix) * 2 (frames/buffer) / 1000 / 1000 =3D 66M
> and then we do the 2x times of this value to be on the safer side
> and support all practical use-cases.
> =

> I'll add some more details to the comment in v3.

thanks, that will be helpful for me and everybody reading the dts later on

> =

> > =

> > > +			no-map;
> > > +			status =3D "disabled";
> > > +		};
> > > +	};
> > > +
> > >  	pcie30_phy_grf: syscon@fd5b8000 {
> > >  		compatible =3D "rockchip,rk3588-pcie3-phy-grf", "syscon";
> > >  		reg =3D <0x0 0xfd5b8000 0x0 0x10000>;
> > > @@ -85,6 +103,38 @@ i2s10_8ch: i2s@fde00000 {
> > >  		status =3D "disabled";
> > >  	};
> > >  =

> > > +	hdmi_receiver: hdmi-receiver@fdee0000 {
> > =

> > Maybe rename the label to "hdmirx:" ... that way in a board enabling the
> > cma region, both nodes would stay close to each other?
> > =

> =

> Umm we already have receiver in the name so I am not sure if adding rx wi=
ll be
> a good idea. I was trying to keep it consistent with the names used in ot=
her device tree files.
> In case you still feel otherwise then do let me know, I'll make the chang=
e.

I'm somewhat partial to the actual name, I was more getting at similar
names to keep things together.

General sorting rules are that &foo phandles are sorted alphabetically
in board devicetrees.

So having

&hdmirx {
	status =3D "okay";
};

&hdmirx_cma {
	status =3D "okay";
};

in the board dt, makes them stay together automatically ;-)

So if it's hdmirx + hdmirx_cma or hdmi_receiver + hdmi_receiver_cma
doesn't matter that much, just that they share a common basename.


I really want to stay away from allowing special rules for things as much
as possible, because that becomes a neverending story, so it's
alphabetical sorting.

But nothing prevents us from naming phandles in an intelligent way ;-) .


Thanks
Heiko

> > > +		compatible =3D "rockchip,rk3588-hdmirx-ctrler", "snps,dw-hdmi-rx";
> > > +		reg =3D <0x0 0xfdee0000 0x0 0x6000>;
> > > +		power-domains =3D <&power RK3588_PD_VO1>;
> > > +		rockchip,grf =3D <&sys_grf>;
> > > +		rockchip,vo1-grf =3D <&vo1_grf>;
> > > +		interrupts =3D <GIC_SPI 177 IRQ_TYPE_LEVEL_HIGH 0>,
> > > +			     <GIC_SPI 436 IRQ_TYPE_LEVEL_HIGH 0>,
> > > +			     <GIC_SPI 179 IRQ_TYPE_LEVEL_HIGH 0>;
> > > +		interrupt-names =3D "cec", "hdmi", "dma";
> > > +		clocks =3D <&cru ACLK_HDMIRX>,
> > > +			 <&cru CLK_HDMIRX_AUD>,
> > > +			 <&cru CLK_CR_PARA>,
> > > +			 <&cru PCLK_HDMIRX>,
> > > +			 <&cru CLK_HDMIRX_REF>,
> > > +			 <&cru PCLK_S_HDMIRX>,
> > > +			 <&cru HCLK_VO1>;
> > > +		clock-names =3D "aclk",
> > > +			      "audio",
> > > +			      "cr_para",
> > > +			      "pclk",
> > > +			      "ref",
> > > +			      "hclk_s_hdmirx",
> > > +			      "hclk_vo1";
> > =

> > the driver uses of_reserved_mem_device_init(), so doesn't this node need
> > a "memory-region =3D <&hdmirx_cma>; or similar?
> > =

> =

> yes, we should have the memory-region property here. My bad, I'll correct=
 this in v3.
> =

> > =

> > > +		resets =3D <&cru SRST_A_HDMIRX>, <&cru SRST_P_HDMIRX>,
> > > +			 <&cru SRST_HDMIRX_REF>, <&cru SRST_A_HDMIRX_BIU>;
> > > +		reset-names =3D "axi", "apb", "ref", "biu";
> > > +		pinctrl-0 =3D <&hdmim1_rx>;
> > > +		pinctrl-names =3D "default";
> > > +		status =3D "disabled";
> > > +	};
> > > +
> > >  	pcie3x4: pcie@fe150000 {
> > >  		compatible =3D "rockchip,rk3588-pcie", "rockchip,rk3568-pcie";
> > >  		#address-cells =3D <3>;
> > > @@ -339,3 +389,8 @@ pcie30phy: phy@fee80000 {
> > >  		status =3D "disabled";
> > >  	};
> > >  };
> > > +
> > > +&hdmirx_cma {
> > > +	status =3D "okay";
> > > +};
> > =

> > I'd assume a board that enables &hdmi_receiver would also enable hdmirx=
_cma
> > and not the soc dtsi for _all_ boards?
> > =

> =

> Actually this node should be in the rock-5b.dts file instead of here.
> v1 had it correct but I made a mistake in v2 :(
> Thanks for pointing this out, I'll fix this and send a v3 soon.





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
