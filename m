From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: add rk3328 display nodes
Date: Tue, 20 Feb 2018 13:14:31 +0000
Message-ID: <d2195e38-7ca1-e0b3-240e-0acfe941c572@arm.com>
References: <20180216223817.2821-1-heiko@sntech.de>
 <20180216223817.2821-3-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20180216223817.2821-3-heiko@sntech.de>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On 16/02/18 22:38, Heiko Stuebner wrote:
> Add the chain of display nodes from the core display-subsystem
> through the one vop to the dw-hdmi output.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>   arch/arm64/boot/dts/rockchip/rk3328.dtsi | 56 ++++++++++++++++++++++++++++++++
>   1 file changed, 56 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index 1615effcc191..65b7d460a044 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -185,6 +185,11 @@
>   		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
>   	};
>   
> +	display_subsystem: display-subsystem {
> +		compatible = "rockchip,display-subsystem";
> +		ports = <&vop_out>;
> +	};
> +
>   	psci {
>   		compatible = "arm,psci-1.0", "arm,psci-0.2";
>   		method = "smc";
> @@ -626,6 +631,28 @@
>   		status = "disabled";
>   	};
>   
> +	vop: vop@ff370000 {
> +		compatible = "rockchip,rk3328-vop";
> +		reg = <0x0 0xff370000 0x0 0x3efc>;
> +		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH 0>;

Another of those rogue trailing zero cells has snuck in here.

<digression>
Unfortunately, even having learned the difference between drm-next and 
drm-misc-next (thanks for the pointer!) so I could apply this and the 
other series, I only managed to get it to not-quite-work on the box I'm 
currently reverse-engineering a mainline DT for (Beelink A1).

I've got a monitor connected via HDMI-DVI (which the stock 3.10 Android 
kernel *does* drive happily) - it appears to be detected, but when the 
virtual console tries to come up I just see a handful of timeout splats 
from drm_atomic_helper_wait_for_vblanks() and no signal at the monitor.

Any idea where to start debugging? (I'm 99% certain I had your clk/next 
branch pulled in as well since it looked significant, but I'll 
double-check tonight)

Robin.

> +		clocks = <&cru ACLK_VOP>, <&cru DCLK_LCDC>, <&cru HCLK_VOP>;
> +		clock-names = "aclk_vop", "dclk_vop", "hclk_vop";
> +		resets = <&cru SRST_VOP_A>, <&cru SRST_VOP_H>, <&cru SRST_VOP_D>;
> +		reset-names = "axi", "ahb", "dclk";
> +		iommus = <&vop_mmu>;
> +		status = "disabled";
> +
> +		vop_out: port {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			vop_out_hdmi: endpoint@0 {
> +				reg = <0>;
> +				remote-endpoint = <&hdmi_in_vop>;
> +			};
> +		};
> +	};
> +
>   	vop_mmu: iommu@ff373f00 {
>   		compatible = "rockchip,iommu";
>   		reg = <0x0 0xff373f00 0x0 0x100>;
> @@ -635,6 +662,35 @@
>   		status = "disabled";
>   	};
>   
> +	hdmi: hdmi@ff3c0000 {
> +		compatible = "rockchip,rk3328-dw-hdmi";
> +		reg = <0x0 0xff3c0000 0x0 0x20000>;
> +		reg-io-width = <4>;
> +		interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru PCLK_HDMI>,
> +			 <&cru SCLK_HDMI_SFC>;
> +		clock-names = "iahb",
> +			      "isfr";
> +		phys = <&hdmiphy>;
> +		phy-names = "hdmi";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&hdmi_cec &hdmii2c_xfer &hdmi_hpd>;
> +		rockchip,grf = <&grf>;
> +		status = "disabled";
> +
> +		ports {
> +			hdmi_in: port {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				hdmi_in_vop: endpoint@0 {
> +					reg = <0>;
> +					remote-endpoint = <&vop_out_hdmi>;
> +				};
> +			};
> +		};
> +	};
> +
>   	hdmiphy: phy@ff430000 {
>   		compatible = "rockchip,rk3328-hdmi-phy";
>   		reg = <0x0 0xff430000 0x0 0x10000>;
> 
