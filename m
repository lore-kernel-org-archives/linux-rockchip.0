From: Doug Anderson <dianders@google.com>
Subject: Re: [PATCH v2 2/2] usb: dwc2: fix isoc split in transfer with no data
Date: Tue, 1 May 2018 22:02:14 -0700
Message-ID: <CAD=FV=XWzKZOF8+=z07UC3FBGRFifBvk9Oda7HRipqGy9Rxcnw@mail.gmail.com>
References: <1525230288-6014-1-git-send-email-william.wu@rock-chips.com> <1525230288-6014-3-git-send-email-william.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1525230288-6014-3-git-send-email-william.wu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: William Wu <william.wu@rock-chips.com>
Cc: hminas@synopsys.com, felipe.balbi@linux.intel.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>, linux-usb@vger.kernel.org, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Frank Wang <frank.wang@rock-chips.com>, =?UTF-8?B?6buE5rab?= <huangtao@rock-chips.com>, "daniel.meng" <daniel.meng@rock-chips.com>, John Youn <John.Youn@synopsys.com>, =?UTF-8?B?546L5b6B5aKe?= <wzz@rock-chips.com>, zsq@rock-chips.com, Allen.Hsu@quantatw.com, StanTsui@aopen.com, Vincent Palatin <vpalatin@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Tue, May 1, 2018 at 8:04 PM, William Wu <william.wu@rock-chips.com> wrote:
> If isoc split in transfer with no data (the length of DATA0
> packet is zero), we can't simply return immediately. Because
> the DATA0 can be the first transaction or the second transaction
> for the isoc split in transaction. If the DATA0 packet with no
> data is in the first transaction, we can return immediately.
> But if the DATA0 packet with no data is in the second transaction
> of isoc split in transaction sequence, we need to increase the
> qtd->isoc_frame_index and giveback urb to device driver if needed,
> otherwise, the MDATA packet will be lost.
>
> A typical test case is that connect the dwc2 controller with an
> usb hs Hub (GL852G-12), and plug an usb fs audio device (Plantronics
> headset) into the downstream port of Hub. Then use the usb mic
> to record, we can find noise when playback.
>
> In the case, the isoc split in transaction sequence like this:
>
> - SSPLIT IN transaction
> - CSPLIT IN transaction
>   - MDATA packet (176 bytes)
> - CSPLIT IN transaction
>   - DATA0 packet (0 byte)
>
> This patch use both the length of DATA0 and qtd->isoc_split_offset
> to check if the DATA0 is in the second transaction.
>
> Signed-off-by: William Wu <william.wu@rock-chips.com>
> ---
> Changes in v2:
> - Modify the commit message
>
>  drivers/usb/dwc2/hcd_intr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
> index 5e2378f..479f628 100644
> --- a/drivers/usb/dwc2/hcd_intr.c
> +++ b/drivers/usb/dwc2/hcd_intr.c
> @@ -930,7 +930,7 @@ static int dwc2_xfercomp_isoc_split_in(struct dwc2_hsotg *hsotg,
>         frame_desc = &qtd->urb->iso_descs[qtd->isoc_frame_index];
>         len = dwc2_get_actual_xfer_length(hsotg, chan, chnum, qtd,
>                                           DWC2_HC_XFER_COMPLETE, NULL);
> -       if (!len) {
> +       if (!len && !qtd->isoc_split_offset) {
>                 qtd->complete_split = 0;
>                 qtd->isoc_split_offset = 0;
>                 return 0;

I don't think my USB-fu is strong enough to do a real review of this
patch, but one small nitpick is that you can remove
"qtd->isoc_split_offset = 0" in the if test now.  AKA:

if (!len && !qtd->isoc_split_offset) {
  qtd->complete_split = 0;
  return 0;
}

...since you only enter the "if" test now when isoc_split_offset is
already 0...  Hopefully John Youn will have some time to comment on
this patch with more real USB knowledge...


-Doug
