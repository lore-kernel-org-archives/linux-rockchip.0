Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A0E7C021B8
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Mar 2025 13:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUJRZrxvpBlCbbuWLrNlFK+O/v8qkNdIMEtTEp1Wl9w=; b=32hv/bAuZLYFiN
	eMBRFaofinuQX2U18kfDVELSKwtluwC2ax4oJtBy7MtXK12mVZ3+IDc94WJNM4DBndSKzJ2ajlTcW
	w+L5SCRMv7XGIZp7Q9vd+THejXpxAX22S63l2fkl1Q3KHVZAXL8AdEOJjH50kOQZLMdQJSlDbr/nO
	DQ7+NTb9stjCwYcWPxThAZm4WnOio5adLGYhLcP7OzH9XNH5RzwO5aVN+4/T5aX29/AhDw8E9SN1l
	TV78TAZk/e3LWGO63nE96fujrgP0iTyyCuZFEFMeG85yzFGD1jBIkW++EP4pkmzmbwl+K3SgnKZ2j
	wlPbPQooDGEtVS5BQIYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1toN06-0000000EM8m-3SXq;
	Sat, 01 Mar 2025 13:35:30 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1toMyW-0000000EM2h-1L2R;
	Sat, 01 Mar 2025 13:33:54 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id E788925D49;
	Sat,  1 Mar 2025 14:33:49 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hNqLrBIrmw-s; Sat,  1 Mar 2025 14:33:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1740836025; bh=xXhNfYs+Cv3fr3hX+44GY6JZm8B/alrDUCYDIA/ILNM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=QTMG5tFIqlv9LH5jixi4XxdUJKRFJpm4Rs5l2NruS3JwN2+12m0f5f1cVWZmwGD0k
	 w84ZoPqHAOjEyFradRFbRJxjfkAsjZLtCBVDmwr3VN6EjKybTPe/w4bR7t3HwwzkIr
	 D0FynI+BR+izgsEsEMEZUfeceFlVar3wYfI9KqgfRuLj19mx4L/CBz6ZH7hRO8Pt0T
	 R3HllikmI8V/V7/P+NT8CuQRCfKijIQ7aaCQ/Ljjw8JR7mFPM+tqQP0SrbjULnUCY6
	 gObIsg3FpsedbizyfKVUuhjJ5DwIAGmHP2cTlX8BKjXgD6Ko/fj0UFVYP/zOawg9gq
	 2okGgpIGJffJQ==
Date: Sat, 1 Mar 2025 13:33:15 +0000
From: Yao Zi <ziyao@disroot.org>
To: Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH 7/8] arm64: dts: rockchip: Add SDMMC/SDIO controllers for
 RK3528
Message-ID: <Z8MMm7X31p_CrStZ@pie>
References: <20250301104250.36295-1-ziyao@disroot.org>
 <20250301104749.36423-1-ziyao@disroot.org>
 <9fd51bcb-3e6a-46b6-b1f7-ff16fa562d9e@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9fd51bcb-3e6a-46b6-b1f7-ff16fa562d9e@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250301_053352_909930_D83C5C3A 
X-CRM114-Status: GOOD (  22.78  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Detlev Casanova <detlev.casanova@collabora.com>, Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, linux-mmc@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>, linux-kernel@vger.kernel.org, Frank Wang <frank.wang@rock-chips.com>, devicetree@vger.kernel.org, Shresth Prasad <shresthprasad7@gmail.com>, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, Mar 01, 2025 at 01:47:47PM +0100, Jonas Karlman wrote:
> Hi,
> 
> On 2025-03-01 11:47, Yao Zi wrote:
> > RK3528 features two SDIO controllers and one SD/MMC controller, describe
> > them in devicetree. Since their sample and drive clocks are located in
> > the VO and VPU GRFs, corresponding syscons are added to make these
> > clocks available.
> > 
> > Signed-off-by: Yao Zi <ziyao@disroot.org>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3528.dtsi | 62 ++++++++++++++++++++++++
> >  1 file changed, 62 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> > index 5b334690356a..078c97fa1d9f 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> > @@ -7,6 +7,7 @@
> >  #include <dt-bindings/interrupt-controller/arm-gic.h>
> >  #include <dt-bindings/interrupt-controller/irq.h>
> >  #include <dt-bindings/clock/rockchip,rk3528-cru.h>
> > +#include <dt-bindings/reset/rockchip,rk3528-cru.h>
> >  
> >  / {
> >  	compatible = "rockchip,rk3528";
> > @@ -122,6 +123,16 @@ gic: interrupt-controller@fed01000 {
> >  			#interrupt-cells = <3>;
> >  		};
> >  
> > +		vpu_grf: syscon@ff340000 {
> > +			compatible = "rockchip,rk3528-vpu-grf", "syscon";
> 
> vpu_grf is also used for gmac1, so should possible be a "syscon",
> "simple-mfd", or have I misunderstood when to use simple-mfd ?

Just as Heiko explained, "simple-mfd" is only required when the child
nodes should be populated automatically. Here these two GRFs are only
referenced and have no child, thus "simple-mfd" compatible isn't useful.

> > +			reg = <0x0 0xff340000 0x0 0x8000>;
> > +		};
> > +
> > +		vo_grf: syscon@ff360000 {
> > +			compatible = "rockchip,rk3528-vo-grf", "syscon";
> 
> similar here, vo_grf is also used for gmac0.
> 
> > +			reg = <0x0 0xff360000 0x0 0x10000>;
> > +		};
> > +
> >  		cru: clock-controller@ff4a0000 {
> >  			compatible = "rockchip,rk3528-cru";
> >  			reg = <0x0 0xff4a0000 0x0 0x30000>;
> > @@ -251,5 +262,56 @@ uart7: serial@ffa28000 {
> >  			reg-shift = <2>;
> >  			status = "disabled";
> >  		};
> > +
> > +		sdio0: mmc@ffc10000 {
> > +			compatible = "rockchip,rk3528-dw-mshc",
> > +				     "rockchip,rk3288-dw-mshc";
> > +			reg = <0x0 0xffc10000 0x0 0x4000>;
> > +			clocks = <&cru HCLK_SDIO0>,
> > +				 <&cru CCLK_SRC_SDIO0>,
> > +				 <&cru SCLK_SDIO0_DRV>,
> > +				 <&cru SCLK_SDIO0_SAMPLE>;
> > +			clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> > +			fifo-depth = <0x100>;
> > +			interrupts = <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
> > +			max-frequency = <150000000>;
> > +			resets = <&cru SRST_H_SDIO0>;
> > +			reset-names = "reset";
> > +			status = "disabled";
> > +		};
> > +
> > +		sdio1: mmc@ffc20000 {
> > +			compatible = "rockchip,rk3528-dw-mshc",
> > +				     "rockchip,rk3288-dw-mshc";
> > +			reg = <0x0 0xffc20000 0x0 0x4000>;
> > +			clocks = <&cru HCLK_SDIO1>,
> > +				 <&cru CCLK_SRC_SDIO1>,
> > +				 <&cru SCLK_SDIO1_DRV>,
> > +				 <&cru SCLK_SDIO1_SAMPLE>;
> > +			clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> > +			fifo-depth = <0x100>;
> > +			interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
> > +			max-frequency = <150000000>;
> > +			resets = <&cru SRST_H_SDIO1>;
> > +			reset-names = "reset";
> > +			status = "disabled";
> > +		};
> > +
> > +		sdmmc: mmc@ffc30000 {
> > +			compatible = "rockchip,rk3528-dw-mshc",
> > +				     "rockchip,rk3288-dw-mshc";
> > +			reg = <0x0 0xffc30000 0x0 0x4000>;
> > +			clocks = <&cru HCLK_SDMMC0>,
> > +				 <&cru CCLK_SRC_SDMMC0>,
> > +				 <&cru SCLK_SDMMC_DRV>,
> > +				 <&cru SCLK_SDMMC_SAMPLE>;
> > +			clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> > +			fifo-depth = <0x100>;
> > +			interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
> > +			max-frequency = <150000000>;
> > +			resets = <&cru SRST_H_SDMMC0>;
> > +			reset-names = "reset";
> 
> Suggest adding default pinctrl props here:
> 
>   pinctrl-names = "default";
>   pinctrl-0 = <&sdmmc_bus4>, <&sdmmc_clk>, <&sdmmc_cmd>, <&sdmmc_det>;
> 
> And possible also for sdio0 and sdio1.
> 
> Regards,
> Jonas

It makes sense. As mentioned in the cover letter, I depended on the
bootloader to setup pinctrl, to minimize dependency of the series.

Will complete the pinctrl properties in next version.

> > +			status = "disabled";
> > +		};
> >  	};
> >  };
> 

Best regards,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
