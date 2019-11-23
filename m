From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 4/4] dt-bindings: display: add IMX MIPI DSI host
 controller doc
Date: Fri, 22 Nov 2019 18:34:32 -0600
Message-ID: <20191123003432.GA334@bogus>
References: <20191118152518.3374263-1-adrian.ratiu@collabora.com>
 <20191118152518.3374263-5-adrian.ratiu@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191118152518.3374263-5-adrian.ratiu@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Martyn Welch <martyn.welch@collabora.com>, Sjoerd Simons <sjoerd.simons@collabora.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-imx@nxp.com, kernel@collabora.com
List-Id: linux-rockchip.vger.kernel.org

On Mon, Nov 18, 2019 at 05:25:18PM +0200, Adrian Ratiu wrote:
> Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.com>
> Signed-off-by: Martyn Welch <martyn.welch@collabora.com>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> ---
>  .../bindings/display/imx/mipi-dsi.txt         | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/mipi-dsi.txt
> 
> diff --git a/Documentation/devicetree/bindings/display/imx/mipi-dsi.txt b/Documentation/devicetree/bindings/display/imx/mipi-dsi.txt
> new file mode 100644
> index 000000000000..3f05c32ef963
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/imx/mipi-dsi.txt
> @@ -0,0 +1,56 @@
> +Freescale i.MX6 DW MIPI DSI Host Controller
> +===========================================
> +
> +The DSI host controller is a Synopsys DesignWare MIPI DSI v1.01 IP
> +with a companion PHY IP.
> +
> +These DT bindings follow the Synopsys DW MIPI DSI bindings defined in
> +Documentation/devicetree/bindings/display/bridge/dw_mipi_dsi.txt with
> +the following device-specific properties.
> +
> +Required properties:
> +
> +- #address-cells: Should be <1>.
> +- #size-cells: Should be <0>.
> +- compatible: "fsl,imx6q-mipi-dsi", "snps,dw-mipi-dsi".
> +- reg: See dw_mipi_dsi.txt.
> +- interrupts: The controller's CPU interrupt.
> +- clocks, clock-names: Phandles to the controller's pll reference
> +  clock(ref) and APB clock(pclk), as described in [1].
> +- ports: a port node with endpoint definitions as defined in [2].
> +- gpr: Should be <&gpr>.

fsl,gpr

> +       Phandle to the iomuxc-gpr region containing the multiplexer
> +       control register.
> +
> +[1] Documentation/devicetree/bindings/clock/clock-bindings.txt
> +[2] Documentation/devicetree/bindings/media/video-interfaces.txt
> +
> +Example:
> +
> +	mipi_dsi: mipi@21e0000 {

dsi@...

> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		compatible = "fsl,imx6q-mipi-dsi", "snps,dw-mipi-dsi";
> +		reg = <0x021e0000 0x4000>;
> +		interrupts = <0 102 IRQ_TYPE_LEVEL_HIGH>;
> +		gpr = <&gpr>;
> +		clocks = <&clks IMX6QDL_CLK_MIPI_CORE_CFG>,
> +			 <&clks IMX6QDL_CLK_MIPI_IPG>;
> +		clock-names = "ref", "pclk";
> +		status = "okay";

Don't show status in examples.

> +
> +		ports {
> +			port@0 {
> +				reg = <0>;
> +				mipi_mux_0: endpoint {
> +					remote-endpoint = <&ipu1_di0_mipi>;
> +				};
> +			};
> +			port@1 {
> +				reg = <1>;
> +				mipi_mux_1: endpoint {
> +					remote-endpoint = <&ipu1_di1_mipi>;
> +				};
> +			};
> +		};
> +        };
> -- 
> 2.24.0
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
