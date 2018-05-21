From: Doug Anderson <dianders@google.com>
Subject: Re: [PATCH] usb: dwc2: fix the incorrect bitmaps for the ports of
 multi_tt hub
Date: Mon, 21 May 2018 16:41:52 -0700
Message-ID: <CAD=FV=VPSOpnjt_OgA2JgjgB6mk+aK0a-ibjkyuEpcwt4RtUQA@mail.gmail.com>
References: <1526897520-9340-1-git-send-email-william.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1526897520-9340-1-git-send-email-william.wu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: William Wu <william.wu@rock-chips.com>
Cc: hminas@synopsys.com, felipe.balbi@linux.intel.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>, linux-usb@vger.kernel.org, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Frank Wang <frank.wang@rock-chips.com>, =?UTF-8?B?6buE5rab?= <huangtao@rock-chips.com>, "daniel.meng" <daniel.meng@rock-chips.com>, John Youn <John.Youn@synopsys.com>, fml@rock-chips.com, stable@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, May 21, 2018 at 3:12 AM, William Wu <william.wu@rock-chips.com> wrote:
> The dwc2_get_ls_map() use ttport to reference into the
> bitmap if we're on a multi_tt hub. But the bitmaps index
> from 0 to (hub->maxchild - 1), while the ttport index from
> 1 to hub->maxchild. This will cause invalid memory access
> when the number of ttport is hub->maxchild.
>
> Without this patch, I can easily meet a Kernel panic issue
> if connect a low-speed USB mouse with the max port of FE2.1
> multi-tt hub (1a40:0201) on rk3288 platform.
>
> Signed-off-by: William Wu <william.wu@rock-chips.com>
> ---
>  drivers/usb/dwc2/hcd_queue.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/usb/dwc2/hcd_queue.c b/drivers/usb/dwc2/hcd_queue.c
> index d7c3d6c..9c55d1a 100644
> --- a/drivers/usb/dwc2/hcd_queue.c
> +++ b/drivers/usb/dwc2/hcd_queue.c
> @@ -383,7 +383,7 @@ static unsigned long *dwc2_get_ls_map(struct dwc2_hsotg *hsotg,
>         /* Get the map and adjust if this is a multi_tt hub */
>         map = qh->dwc_tt->periodic_bitmaps;
>         if (qh->dwc_tt->usb_tt->multi)
> -               map += DWC2_ELEMENTS_PER_LS_BITMAP * qh->ttport;
> +               map += DWC2_ELEMENTS_PER_LS_BITMAP * (qh->ttport - 1);

Oops, thanks for the fix.

Fixes: 9f9f09b048f5 ("usb: dwc2: host: Totally redo the microframe scheduler")
Cc: stable@vger.kernel.org
Reviewed-by: Douglas Anderson <dianders@chromium.org>

-Doug
