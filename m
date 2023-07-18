Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8479EB64DA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jul 2023 08:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QXihNdS6Zi61Fw7c4OCcbNYA8a7sBjzb7X41+Ik91JU=; b=jL9myvjEng615Z
	vtd0C4n/kPJYtci8cciJMNDozLjV1oza8Bhai2c61CmWjxtGBtFCYBKlXPxgOjxZUBmeIxFnm89V1
	SKdjlHuv04VVNagcZnBgT9cTgKYJgIC4TQPGfGtLbVN6MQcwFB+ljJAjquOm00kPGcsrillW2MJUm
	/4l37bD/9ATVKMO4+7o+j4K02pYqSFgxuuDSAPQzmj+ceDh2man5eqxVrq4lMeE8ksj02Q64lUyrw
	4MTKnB1Yq1m0xu/kvja07FnARpQ2wb32zzUvdsTYEVeY+4f3QIX0esVAqQ7oj4BZsn3+SZ812Q57f
	Hq7/ZtaGZkwE1LYduC3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM2CA-006DP0-1a;
	Wed, 19 Jul 2023 08:06:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM2C7-006DMx-2e;
	Wed, 19 Jul 2023 08:05:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=3fPPvS5eAmPAewk4a+i5cjiXBxw360ebKpw4V29BXjw=; b=R68dVG6KF5S5Q3gIa2kgV3N3h1
	u/mFV3KpWbB1+ds+vMkaBs/YPluizicbXrf0zqez9kuJrgoB9EM9ZqwPv5p1dX1RxDwUsS2JRa5vZ
	e+vOUyBZb7PRxLsEnQgiQaDZ7wyddbVj8iTwR2gOhYlXgDMO/zXubhLYMxprHU1MTm9hrw4UeLfon
	4LpkskVpJRu9JJqY78dvhcjFgV0ddr/BbhQ2+5Q2yiJETg5X4Qo/llGB7MDklJPEjSJtK9IjMrkVY
	jGOKq7U9mQ2a4WfPld4ZKu6FD78fx29/q/kUZRD3no9R49c3rz0skkHy+q2YS5vQc+EHf4HtI8Su4
	OJ7qTGwQ==;
Received: from dliviu.plus.com ([80.229.23.120] helo=smtp.dudau.co.uk)
	by desiato.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLmKu-00BgkN-0T;
	Tue, 18 Jul 2023 15:10:02 +0000
Received: from mail.dudau.co.uk (bart.dudau.co.uk [192.168.14.2])
	by smtp.dudau.co.uk (Postfix) with SMTP id 5774F41A7003;
	Tue, 18 Jul 2023 16:09:53 +0100 (BST)
Received: by mail.dudau.co.uk (sSMTP sendmail emulation); Tue, 18 Jul 2023 16:09:53 +0100
Date: Tue, 18 Jul 2023 16:09:53 +0100
From: Liviu Dudau <liviu@dudau.co.uk>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Serge Semin <fancer.lancer@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, John Clark <inindev@gmail.com>,
	Qu Wenruo <wqu@suse.com>, devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: rk3588: add PCIe3 support
Message-ID: <ZLarQUvUK3v3m6Cg@bart.dudau.co.uk>
References: <20230717173512.65169-1-sebastian.reichel@collabora.com>
 <20230717173512.65169-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230717173512.65169-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230718_161000_363209_61FEEAE3 
X-CRM114-Status: GOOD (  18.54  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Jul 17, 2023 at 07:35:12PM +0200, Sebastian Reichel wrote:
> Add both PCIe3 controllers together with the shared PHY.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588.dtsi | 120 +++++++++++++++++++++++
>  1 file changed, 120 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> index 88d702575db2..8f210f002fac 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> @@ -7,6 +7,11 @@
>  #include "rk3588-pinctrl.dtsi"
>  
>  / {
> +	pcie30_phy_grf: syscon@fd5b8000 {
> +		compatible = "rockchip,rk3588-pcie3-phy-grf", "syscon";
> +		reg = <0x0 0xfd5b8000 0x0 0x10000>;
> +	};
> +
>  	pipe_phy1_grf: syscon@fd5c0000 {
>  		compatible = "rockchip,rk3588-pipe-phy-grf", "syscon";
>  		reg = <0x0 0xfd5c0000 0x0 0x100>;

Hi Sebastian,

What tree is based this on? Even after applying your PCIe2 series I don't have the above
node so the patch doesn't apply to mainline.

Best regards,
Liviu


> @@ -80,6 +85,108 @@ i2s10_8ch: i2s@fde00000 {
>  		status = "disabled";
>  	};
>  
> +	pcie3x4: pcie@fe150000 {
> +		compatible = "rockchip,rk3588-pcie", "rockchip,rk3568-pcie";
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +		bus-range = <0x00 0x0f>;
> +		clocks = <&cru ACLK_PCIE_4L_MSTR>, <&cru ACLK_PCIE_4L_SLV>,
> +			 <&cru ACLK_PCIE_4L_DBI>, <&cru PCLK_PCIE_4L>,
> +			 <&cru CLK_PCIE_AUX0>, <&cru CLK_PCIE4L_PIPE>;
> +		clock-names = "aclk_mst", "aclk_slv",
> +			      "aclk_dbi", "pclk",
> +			      "aux", "pipe";
> +		device_type = "pci";
> +		interrupts = <GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH 0>;
> +		interrupt-names = "sys", "pmc", "msg", "legacy", "err";
> +		#interrupt-cells = <1>;
> +		interrupt-map-mask = <0 0 0 7>;
> +		interrupt-map = <0 0 0 1 &pcie3x4_intc 0>,
> +				<0 0 0 2 &pcie3x4_intc 1>,
> +				<0 0 0 3 &pcie3x4_intc 2>,
> +				<0 0 0 4 &pcie3x4_intc 3>;
> +		linux,pci-domain = <0>;
> +		max-link-speed = <3>;
> +		msi-map = <0x0000 &its1 0x0000 0x1000>;
> +		num-lanes = <4>;
> +		phys = <&pcie30phy>;
> +		phy-names = "pcie-phy";
> +		power-domains = <&power RK3588_PD_PCIE>;
> +		ranges = <0x01000000 0x0 0xf0100000 0x0 0xf0100000 0x0 0x00100000>,
> +			 <0x02000000 0x0 0xf0200000 0x0 0xf0200000 0x0 0x00e00000>,
> +			 <0x03000000 0x0 0x40000000 0x9 0x00000000 0x0 0x40000000>;
> +		reg = <0xa 0x40000000 0x0 0x00400000>,
> +		      <0x0 0xfe150000 0x0 0x00010000>,
> +		      <0x0 0xf0000000 0x0 0x00100000>;
> +		reg-names = "dbi", "apb", "config";
> +		resets = <&cru SRST_PCIE0_POWER_UP>, <&cru SRST_P_PCIE0>;
> +		reset-names = "pwr", "pipe";
> +		status = "disabled";
> +
> +		pcie3x4_intc: legacy-interrupt-controller {
> +			interrupt-controller;
> +			#address-cells = <0>;
> +			#interrupt-cells = <1>;
> +			interrupt-parent = <&gic>;
> +			interrupts = <GIC_SPI 260 IRQ_TYPE_EDGE_RISING 0>;
> +		};
> +	};
> +
> +	pcie3x2: pcie@fe160000 {
> +		compatible = "rockchip,rk3588-pcie", "rockchip,rk3568-pcie";
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +		bus-range = <0x10 0x1f>;
> +		clocks = <&cru ACLK_PCIE_2L_MSTR>, <&cru ACLK_PCIE_2L_SLV>,
> +			 <&cru ACLK_PCIE_2L_DBI>, <&cru PCLK_PCIE_2L>,
> +			 <&cru CLK_PCIE_AUX1>, <&cru CLK_PCIE2L_PIPE>;
> +		clock-names = "aclk_mst", "aclk_slv",
> +			      "aclk_dbi", "pclk",
> +			      "aux", "pipe";
> +		device_type = "pci";
> +		interrupts = <GIC_SPI 258 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 257 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 254 IRQ_TYPE_LEVEL_HIGH 0>;
> +		interrupt-names = "sys", "pmc", "msg", "legacy", "err";
> +		#interrupt-cells = <1>;
> +		interrupt-map-mask = <0 0 0 7>;
> +		interrupt-map = <0 0 0 1 &pcie3x2_intc 0>,
> +				<0 0 0 2 &pcie3x2_intc 1>,
> +				<0 0 0 3 &pcie3x2_intc 2>,
> +				<0 0 0 4 &pcie3x2_intc 3>;
> +		linux,pci-domain = <1>;
> +		max-link-speed = <3>;
> +		msi-map = <0x1000 &its1 0x1000 0x1000>;
> +		num-lanes = <2>;
> +		phys = <&pcie30phy>;
> +		phy-names = "pcie-phy";
> +		power-domains = <&power RK3588_PD_PCIE>;
> +		ranges = <0x01000000 0x0 0xf1100000 0x0 0xf1100000 0x0 0x00100000>,
> +			 <0x02000000 0x0 0xf1200000 0x0 0xf1200000 0x0 0x00e00000>,
> +			 <0x03000000 0x0 0x40000000 0x9 0x40000000 0x0 0x40000000>;
> +		reg = <0xa 0x40400000 0x0 0x00400000>,
> +		      <0x0 0xfe160000 0x0 0x00010000>,
> +		      <0x0 0xf1000000 0x0 0x00100000>;
> +		reg-names = "dbi", "apb", "config";
> +		resets = <&cru SRST_PCIE1_POWER_UP>, <&cru SRST_P_PCIE1>;
> +		reset-names = "pwr", "pipe";
> +		status = "disabled";
> +
> +		pcie3x2_intc: legacy-interrupt-controller {
> +			interrupt-controller;
> +			#address-cells = <0>;
> +			#interrupt-cells = <1>;
> +			interrupt-parent = <&gic>;
> +			interrupts = <GIC_SPI 255 IRQ_TYPE_EDGE_RISING 0>;
> +		};
> +	};
> +
>  	pcie2x1l0: pcie@fe170000 {
>  		compatible = "rockchip,rk3588-pcie", "rockchip,rk3568-pcie";
>  		#address-cells = <3>;
> @@ -218,4 +325,17 @@ combphy1_ps: phy@fee10000 {
>  		rockchip,pipe-phy-grf = <&pipe_phy1_grf>;
>  		status = "disabled";
>  	};
> +
> +	pcie30phy: phy@fee80000 {
> +		compatible = "rockchip,rk3588-pcie3-phy";
> +		reg = <0x0 0xfee80000 0x0 0x20000>;
> +		#phy-cells = <0>;
> +		clocks = <&cru PCLK_PCIE_COMBO_PIPE_PHY>;
> +		clock-names = "pclk";
> +		resets = <&cru SRST_PCIE30_PHY>;
> +		reset-names = "phy";
> +		rockchip,pipe-grf = <&php_grf>;
> +		rockchip,phy-grf = <&pcie30_phy_grf>;
> +		status = "disabled";
> +	};
>  };
> -- 
> 2.40.1
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

-- 
Everyone who uses computers frequently has had, from time to time,
a mad desire to attack the precocious abacus with an axe.
       	   	      	     	  -- John D. Clark, Ignition!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
