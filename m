From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: Re: [PATCH v3 5/5] usb: dwc3: rockchip: add devicetree bindings
 documentation
Date: Fri, 27 May 2016 14:54:16 +0300
Message-ID: <e6c6407c-6a46-55c8-c048-cce4fc0e7fa8@cogentembedded.com>
References: <1464348682-20831-1-git-send-email-william.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1464348682-20831-1-git-send-email-william.wu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: William Wu <william.wu@rock-chips.com>, gregkh@linuxfoundation.org, balbi@kernel.org, heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, briannorris@google.com, dianders@google.com, kever.yang@rock-chips.com, huangtao@rock-chips.com, frank.wang@rock-chips.com, eddie.cai@rock-chips.com, John.Youn@synopsys.com, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hello.

On 5/27/2016 2:31 PM, William Wu wrote:

> This patch documents the device tree documentation required for

    Documents the documentation? :-)

> Rockchip USB3.0 core wrapper consist of USB3.0 IP from Synopsys.

    Consisting?

> It could operate in device mode (SS, HS, FS) and host
> mode (SS, HS, FS, LS).
>
> Signed-off-by: William Wu <william.wu@rock-chips.com>
> ---
> Changes in v3:
> - add dwc3 address (Felipe)
>
> Changes in v2:
> - add rockchip,dwc3.txt to Documentation/devicetree/bindings/ (Felipe, Brian)
>
>
>  .../devicetree/bindings/usb/rockchip,dwc3.txt      | 45 ++++++++++++++++++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
>
> diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt b/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
> new file mode 100644
> index 0000000..0bb52fe
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
> @@ -0,0 +1,45 @@
> +Rockchip SuperSpeed DWC3 USB SoC controller
> +
> +Required properties:
> +- compatible:	should contain "rockchip,dwc3"
> +- clocks:		A list of phandle + clock-specifier pairs for the
> +				clocks listed in clock-names
> +- clock-names:	Should contain the following:
> +  "clk_usb3otg0_ref"	Controller reference clk
> +  "clk_usb3otg0_suspend"Controller suspend clk, can use 24 MHz or 32 KHz
> +  "aclk_usb3"		Master/Core clock, have to be >= 62.5 MHz for SS operation
> +
> +
> +Optional clocks:
> +  "aclk_usb3otg0"	Aclk for specific usb controller clock.
> +  "aclk_usb3_rksoc_axi_perf"  USB AXI perf clock.  Not present on all platforms.
> +  "aclk_usb3_grf"	USB grf clock.  Not present on all platforms.
> +
> +Required child node:
> +A child node must exist to represent the core DWC3 IP block. The name of
> +the node is not important. The content of the node is defined in dwc3.txt.
> +
> +Phy documentation is provided in the following places:

    PHY.

[...]

MBR, Sergei
