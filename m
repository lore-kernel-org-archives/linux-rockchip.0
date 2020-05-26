From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v6 12/16] usb: dwc3: add make compatible for rockchip
 platform
Date: Tue, 26 May 2020 09:41:02 +0530
Message-ID: <CAMty3ZDqLj9e_xV3Y5PHnEyTZ+CYsx5JV0NEh2vnK+nQznzywA@mail.gmail.com>
References: <20200526033220.20047-1-frank.wang@rock-chips.com>
 <20200526033435.20235-1-frank.wang@rock-chips.com>
 <20200526033435.20235-3-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200526033435.20235-3-frank.wang@rock-chips.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Frank Wang <frank.wang@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Marek Vasut <marex@denx.de>, Bin Meng <bmeng.cn@gmail.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Klaus Goger <klaus.goger@theobroma-systems.com>, Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>, jianing.ren@rock-chips.com, Belisko Marek <marek.belisko@gmail.com>, wmc@rock-chips.com, U-Boot-Denx <u-boot@lists.denx.de>, William Wu <william.wu@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-amarula <linux-amarula@amarulasolutions.com>, chenjh@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On Tue, May 26, 2020 at 9:04 AM Frank Wang <frank.wang@rock-chips.com> wrote:
>
> RK3399 Type-C PHY is required that must hold whole USB3.0 OTG controller
> in resetting to hold pipe power state in P2 before initializing the PHY.
> This commit fixed it and added device compatible for rockchip platform.
>
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> ---
>  drivers/usb/dwc3/dwc3-generic.c | 33 +++++++++++++++++++++++++++------
>  1 file changed, 27 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/usb/dwc3/dwc3-generic.c b/drivers/usb/dwc3/dwc3-generic.c
> index eabd53a36d..421e0be135 100644
> --- a/drivers/usb/dwc3/dwc3-generic.c
> +++ b/drivers/usb/dwc3/dwc3-generic.c
> @@ -24,6 +24,12 @@
>  #include <clk.h>
>  #include <usb/xhci.h>
>
> +struct dwc3_glue_data {
> +       struct clk_bulk         clks;
> +       struct reset_ctl_bulk   resets;
> +       fdt_addr_t regs;
> +};
> +
>  struct dwc3_generic_plat {
>         fdt_addr_t base;
>         u32 maximum_speed;
> @@ -47,6 +53,7 @@ static int dwc3_generic_probe(struct udevice *dev,
>         int rc;
>         struct dwc3_generic_plat *plat = dev_get_platdata(dev);
>         struct dwc3 *dwc3 = &priv->dwc3;
> +       struct dwc3_glue_data *glue = dev_get_platdata(dev->parent);
>
>         dwc3->dev = dev;
>         dwc3->maximum_speed = plat->maximum_speed;
> @@ -55,10 +62,22 @@ static int dwc3_generic_probe(struct udevice *dev,
>         dwc3_of_parse(dwc3);
>  #endif
>
> +       /*
> +        * It must hold whole USB3.0 OTG controller in resetting to hold pipe
> +        * power state in P2 before initializing TypeC PHY on RK3399 platform.
> +        */
> +       if (device_is_compatible(dev->parent, "rockchip,rk3399-dwc3")) {
> +               reset_assert_bulk(&glue->resets);
> +               udelay(1);

Need to include <linux/delay.h> to fix build warnings, maybe Kever
will do while applying?

Jagan.
