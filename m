From: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/2] Documentation: bindings: add DT documentation for
 Rockchip USB2PHY
Date: Wed, 1 Jun 2016 17:02:35 -0500
Message-ID: <CAL_JsqLPfKqNg0FqDUJpaQbeTA6g=wKpUh9Q8+zZ4Mo=yL-x_w@mail.gmail.com>
References: <1464676811-7418-1-git-send-email-frank.wang@rock-chips.com> <1464676811-7418-2-git-send-email-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1464676811-7418-2-git-send-email-frank.wang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Doug Anderson <dianders@chromium.org>, Kishon Vijay Abraham I <kishon@ti.com>, Pawel Moll <pawel.moll@arm.com>, Mark Rutland <mark.rutland@arm.com>, Ian Campbell <ijc+devicetree@hellion.org.uk>, Kumar Gala <galak@codeaurora.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Linux USB List <linux-usb@vger.kernel.org>, Kever Yang <kever.yang@rock-chips.com>, Tao Huang <huangtao@rock-chips.com>, william.wu@rock-chips.com, frank.wang@rock-chips.com.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, May 31, 2016 at 1:40 AM, Frank Wang <frank.wang@rock-chips.com> wrote:
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>

Please resend to DT list.

> ---
>  .../bindings/phy/phy-rockchip-inno-usb2.txt        |   48 ++++++++++++++++++++
>  1 file changed, 48 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
>
> diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
> new file mode 100644
> index 0000000..4e537b2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
> @@ -0,0 +1,48 @@
> +ROCKCHIP USB2.0 PHY WITH INNO IP BLOCK
> +
> +Required properties (phy (parent) node):
> + - compatible: should contain:
> +       * "rockchip,rk3366-usb2phy"
> + - #clock-cells: should be 0.
> + - clock-names: specify the 480m output clk name.
> +
> +Optional properties:
> + - vbus_host-gpio: pull gpio high/low to control the host vbus power.
> +
> +Required nodes: a sub-node is required for each port the phy provides.
> +               The sub-node name is used to identify host or otg port.
> +
> +Required properties (port (child) node):
> + - #phy-cells: must be 0. See ./phy-bindings.txt for details.
> + - interrupts: irq number for host/otg port.
> + - interrupt-names: interrupt name, in line with irq number.
> +
> +Example:
> +
> +grf: syscon@ff770000 {
> +       compatible = "rockchip,rk3366-grf", "syscon", "simple-mfd";
> +       #address-cells = <1>;
> +       #size-cells = <1>;
> +
> +...
> +
> +       u2phy: usb2-phy {
> +               compatible = "rockchip,rk3366-usb2phy";
> +               #clock-cells = <0>;
> +               clock-output-names = "sclk_otgphy0_480m";
> +
> +               u2phy_otg: otg-port {
> +                       #phy-cells = <0>;
> +                       interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names = "linestate";
> +                       status = "okay";
> +               };
> +
> +               u2phy_host: host-port {
> +                       #phy-cells = <0>;
> +                       interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names = "linestate";
> +                       status = "okay";
> +               };
> +       };
> +};
> --
> 1.7.9.5
>
>
