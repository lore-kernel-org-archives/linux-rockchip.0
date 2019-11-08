From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v1 2/7] arm64: dts: Use IRQ flags for legacy PCI IRQ
 interrupts
Date: Fri, 08 Nov 2019 15:34:06 +0100
Message-ID: <4293211.PqsBVBjssI@phil>
References: <20191104163834.8932-1-andrew.murray@arm.com>
 <20191104163834.8932-3-andrew.murray@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191104163834.8932-3-andrew.murray@arm.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Andrew Murray <andrew.murray@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Liviu Dudau <liviu.dudau@arm.com>, Masahiro Yamada <yamada.masahiro@socionext.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Michal Simek <michal.simek@xilinx.com>, Wei Xu <xuwei5@hisilicon.com>, linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>, Tsahee Zidenberg <tsahee@annapurnalabs.com>, Tom Lendacky <thomas.lendacky@amd.com>, Antoine Tenart <antoine.tenart@bootlin.com>, linux-arm-msm@vger.kernel.org, Robert Richter <rrichter@cavium.com>, Rob Herring <robh+dt@kernel.org>, Jayachandran C <jnair@caviumnetworks.com>, linux-arm-kernel@lists.infradead.org, Brijesh Singh <brijeshkumar.singh@amd.com>, Li Yang <leoyang.li@nxp.com>, Suravee Suthikulpanit <suravee.suthikulpanit@amd.com>, Sudeep Holla <sudeep.holla@arm.com>, Shawn Guo <shawnguo@kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 4. November 2019, 17:38:16 CET schrieb Andrew Murray:
> Replace magic numbers used to describe legacy PCI IRQ interrupts
> with #define.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>

> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index cede1ad81be2..bb68826bac6f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -242,11 +242,11 @@
>  			     <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH 0>,
>  			     <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH 0>;
>  		interrupt-names = "sys", "legacy", "client";
> -		interrupt-map-mask = <0 0 0 7>;
> -		interrupt-map = <0 0 0 1 &pcie0_intc 0>,
> -				<0 0 0 2 &pcie0_intc 1>,
> -				<0 0 0 3 &pcie0_intc 2>,
> -				<0 0 0 4 &pcie0_intc 3>;
> +		interrupt-map-mask = <0 0 0 IRQ_INT_ALL>;
> +		interrupt-map = <0 0 0 IRQ_INTA &pcie0_intc 0>,
> +				<0 0 0 IRQ_INTB &pcie0_intc 1>,
> +				<0 0 0 IRQ_INTC &pcie0_intc 2>,
> +				<0 0 0 IRQ_INTD &pcie0_intc 3>;
>  		linux,pci-domain = <0>;
>  		max-link-speed = <1>;
>  		msi-map = <0x0 &its 0x0 0x1000>;

For the Rockchip part
Acked-by: Heiko Stuebner <heiko@sntech.de>
