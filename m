From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 1/2] Documentation: bindings: add DT documentation for Rockchip USB2PHY
Date: Tue, 31 May 2016 11:02:12 +0200
Message-ID: <6548390.RQDBBuPzBf@diego>
References: <1464676811-7418-1-git-send-email-frank.wang@rock-chips.com> <1464676811-7418-2-git-send-email-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1464676811-7418-2-git-send-email-frank.wang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
Cc: dianders@chromium.org, kishon@ti.com, robh+dt@kernel.org, pawel.moll@arm.com, mark.rutland@arm.com, ijc+devicetree@hellion.org.uk, galak@codeaurora.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org, kever.yang@rock-chips.com, huangtao@rock-chips.com, william.wu@rock-chips.com, frank.wang@rock-chips.com.org
List-Id: linux-rockchip.vger.kernel.org

Hi Frank,

Am Dienstag, 31. Mai 2016, 14:40:10 schrieb Frank Wang:
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---
>  .../bindings/phy/phy-rockchip-inno-usb2.txt        |   48
> ++++++++++++++++++++ 1 file changed, 48 insertions(+)
>  create mode 100644
> Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
> 
> diff --git
> a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
> b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt new file
> mode 100644
> index 0000000..4e537b2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
> @@ -0,0 +1,48 @@
> +ROCKCHIP USB2.0 PHY WITH INNO IP BLOCK
> +
> +Required properties (phy (parent) node):
> + - compatible: should contain:
> +	* "rockchip,rk3366-usb2phy"
> + - #clock-cells: should be 0.
> + - clock-names: specify the 480m output clk name.
> +
> +Optional properties:
> + - vbus_host-gpio: pull gpio high/low to control the host vbus power.

sorry for not catching that in our earlier talks, but I believe this should be 
a regulator instead. See for example vcc5_host1, vcc5v_otg in rk3288-veyron-
chromebook.dtsi .


> +Required nodes: a sub-node is required for each port the phy provides.
> +		The sub-node name is used to identify host or otg port.
> +
> +Required properties (port (child) node):
> + - #phy-cells: must be 0. See ./phy-bindings.txt for details.
> + - interrupts: irq number for host/otg port.

make that something like:
Specify an interrupt for each entry in interrupt-names.

> + - interrupt-names: interrupt name, in line with irq number.

make that something like:
Shall be "linestate" for the linestate interrupt.
---

You might want to add the bvalid and id interrupts for the otg phys as well 
already - would make handling legacy devicetree files easier. [= if they get 
specified later, the driver would always need to also handle devicetrees where 
they aren't specified].


Heiko
