From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH 3/3] ARM: dts: rockchip: Add brcm bluetooth module on uart0
Date: Fri, 25 Oct 2019 15:50:17 -0700
Message-ID: <CAD=FV=Vf64F885me=PUpv34Lb6iZpm1ui30nLHww6T3rmRVJXA@mail.gmail.com>
References: <20191025215428.31607-1-abhishekpandit@chromium.org>
 <20191025215428.31607-4-abhishekpandit@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191025215428.31607-4-abhishekpandit-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Abhishek Pandit-Subedi <abhishekpandit-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Marcel Holtmann <marcel-kz+m5ild9QBg9hUCZPvPmw@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-bluetooth-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Linux ARM <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Johan Hedberg <johan.hedberg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Fri, Oct 25, 2019 at 2:55 PM Abhishek Pandit-Subedi
<abhishekpandit-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wrote:
>
> This enables the Broadcom uart bluetooth driver on uart0 and gives it
> ownership of its gpios. In order to use this, you must enable the
> following kconfig options:
>   - CONFIG_BT_HCIUART_BCM
>   - CONFIG_SERIAL_DEV
>
> Signed-off-by: Abhishek Pandit-Subedi <abhishekpandit-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> ---
>
>  arch/arm/boot/dts/rk3288-veyron.dtsi | 31 +++++++---------------------
>  1 file changed, 7 insertions(+), 24 deletions(-)
>
> diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
> index 7525e3dd1fc1..8c9f91ba6f57 100644
> --- a/arch/arm/boot/dts/rk3288-veyron.dtsi
> +++ b/arch/arm/boot/dts/rk3288-veyron.dtsi

You are changing this for _all_ veryon, not just those veyron devices
using Broadcom.  I don't think you want to change the marvell-based
boards.

...presumably you'll want to make you change only affect minnie,
speedy, and mickey.


> @@ -23,30 +23,6 @@
>                 reg = <0x0 0x0 0x0 0x80000000>;
>         };
>
> -       bt_activity: bt-activity {
> -               compatible = "gpio-keys";
> -               pinctrl-names = "default";
> -               pinctrl-0 = <&bt_host_wake>;
> -
> -               /*
> -                * HACK: until we have an LPM driver, we'll use an
> -                * ugly GPIO key to allow Bluetooth to wake from S3.
> -                * This is expected to only be used by BT modules that
> -                * use UART for comms.  For BT modules that talk over
> -                * SDIO we should use a wakeup mechanism related to SDIO.
> -                *
> -                * Use KEY_RESERVED here since that will work as a wakeup but
> -                * doesn't get reported to higher levels (so doesn't confuse
> -                * Chrome).
> -                */
> -               bt-wake {
> -                       label = "BT Wakeup";
> -                       gpios = <&gpio4 RK_PD7 GPIO_ACTIVE_HIGH>;
> -                       linux,code = <KEY_RESERVED>;
> -                       wakeup-source;
> -               };
> -
> -       };
>
>         power_button: power-button {
>                 compatible = "gpio-keys";
> @@ -434,6 +410,13 @@
>         /* Pins don't include flow control by default; add that in */
>         pinctrl-names = "default";
>         pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
> +
> +       bluetooth {
> +               compatible = "brcm,bcm43540-bt";

You probably need some pinctrl entries here to make sure that things
are properly configured, like:

pinctrl-names = "default";
pinctrl-0 = <&bt_host_wake>, <&bt_dev_wake>, <&bt_enable>;

This would require defining bt_dev_wake and bt_enable and removing the
hacky output-only versions they have now.


> +               host-wakeup-gpios       = <&gpio4 RK_PD7 GPIO_ACTIVE_HIGH>;
> +               shutdown-gpios          = <&gpio4 RK_PD5 GPIO_ACTIVE_LOW>;

Right now gpio4 RK_PD5 is controlled by the "sdio_pwrseq".  Should you
remove it from there?  Looks like it was a no-op for marvell which
makes it a little easier.


> +               device-wakeup-gpios     = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;

You probably need to stop driving this in the pinctrl hogs for
Broadcom boards...


-Doug
