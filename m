From: Doug Anderson <dianders@chromium.org>
Subject: Re: [RESEND PATCH v2] usb: dwc2: disable power_down on rockchip for regression
Date: Mon, 8 Apr 2019 15:48:10 -0700
Message-ID: <CAD=FV=WG64ZuAZCLWZe4CeYHEmpo2TNPeane_yS6Fg6xnGU9DQ@mail.gmail.com>
References: <ae079099-4a29-7ae7-afa3-00dad26e81c2@halemmerich.com> <f40fd3bf-97aa-b4ac-8260-6fa727909e3b@halemmerich.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <stable-owner@vger.kernel.org>
In-Reply-To: <f40fd3bf-97aa-b4ac-8260-6fa727909e3b@halemmerich.com>
Sender: stable-owner@vger.kernel.org
To: stable@vger.kernel.org
Cc: Felipe Balbi <felipe.balbi@linux.intel.com>, linux-usb@vger.kernel.org, Minas Harutyunyan <hminas@synopsys.com>, Hal Emmerich <hal@halemmerich.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Fri, Oct 26, 2018 at 7:38 AM Hal Emmerich <hal@halemmerich.com> wrote:
>
>
> From 04fbf78e4e569bf872f1ffcb0a6f9b89569dc913 Mon Sep 17 00:00:00 2001
> From: Hal Emmerich <hal@halemmerich.com>
> Date: Thu, 19 Jul 2018 21:48:08 -0500
> Subject: [PATCH] usb: dwc2: disable power_down on rockchip devices
>
>  The bug would let the usb controller enter partial power down,
>  which was formally known as hibernate, upon boot if nothing was plugged
>  in to the port. Partial power down couldn't be exited properly, so any
>  usb devices plugged in after boot would not be usable.
>
>  Before the name change, params.hibernation was false by default, so
>  _dwc2_hcd_suspend() would skip entering hibernation. With the
>  rename, _dwc2_hcd_suspend() was changed to use  params.power_down
>  to decide whether or not to enter partial power down.
>
>  Since params.power_down is non-zero by default, it needs to be set
>  to 0 for rockchip devices to restore functionality.
>
>  This bug was reported in the linux-usb thread:
>  REGRESSION: usb: dwc2: USB device not seen after boot
>
>  The commit that caused this regression is:
>  6d23ee9caa6790aea047f9aca7f3c03cb8d96eb6
>
> Signed-off-by: Hal Emmerich <hal@halemmerich.com>
> Acked-by: Minas Harutyunyan <hminas@synopsys.com>
> ---
>  drivers/usb/dwc2/params.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/usb/dwc2/params.c b/drivers/usb/dwc2/params.c
> index bf7052e037d6..09292dc977e4 100644
> --- a/drivers/usb/dwc2/params.c
> +++ b/drivers/usb/dwc2/params.c
> @@ -81,6 +81,7 @@ static void dwc2_set_rk_params(struct dwc2_hsotg *hsotg)
>         p->host_perio_tx_fifo_size = 256;
>         p->ahbcfg = GAHBCFG_HBSTLEN_INCR16 <<
>                 GAHBCFG_HBSTLEN_SHIFT;
> +       p->power_down = 0;

This landed as commit c216765d3a1d ("usb: dwc2: disable power_down on
rockchip devices").  Can it please go to stable?  Hotplug of USB on
v4.19 stable, for example, is currently broken due to the lack of this
patch.

Thanks!

-Doug
