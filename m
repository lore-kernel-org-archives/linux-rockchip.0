From: Doug Anderson <dianders@google.com>
Subject: Re: [PATCH v3 1/2] usb: dwc2: alloc dma aligned buffer for isoc split in
Date: Mon, 7 May 2018 22:11:43 -0700
Message-ID: <CAD=FV=VKBVp++gPXzYN0N46NVarPNWqs1YZjfcd7twkU25WNyQ@mail.gmail.com>
References: <1525748846-7767-1-git-send-email-william.wu@rock-chips.com> <1525748846-7767-2-git-send-email-william.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1525748846-7767-2-git-send-email-william.wu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: William Wu <william.wu@rock-chips.com>
Cc: hminas@synopsys.com, felipe.balbi@linux.intel.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>, linux-usb@vger.kernel.org, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Frank Wang <frank.wang@rock-chips.com>, =?UTF-8?B?6buE5rab?= <huangtao@rock-chips.com>, "daniel.meng" <daniel.meng@rock-chips.com>, John Youn <John.Youn@synopsys.com>, =?UTF-8?B?546L5b6B5aKe?= <wzz@rock-chips.com>, zsq@rock-chips.com, =?UTF-8?B?6Kix5ZiJ6YqY?= <Allen.Hsu@quantatw.com>, Stan Tsui <StanTsui@aopen.com>, =?UTF-8?B?U3BydWNlIFd1ICjlkLPlu7rli7Mp?= <Spruce.Wu@quantatw.com>, Martin.Tsai@quantatw.com, Kevin.Shai@quantatw.com
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, May 7, 2018 at 8:07 PM, William Wu <william.wu@rock-chips.com> wrote:
> +static int dwc2_alloc_split_dma_aligned_buf(struct dwc2_hsotg *hsotg,
> +                                           struct dwc2_qh *qh,
> +                                           struct dwc2_host_chan *chan)
> +{
> +       if (!hsotg->unaligned_cache)
> +               return -ENOMEM;
> +
> +       if (!qh->dw_align_buf) {
> +               qh->dw_align_buf = kmem_cache_alloc(hsotg->unaligned_cache,
> +                                                   GFP_ATOMIC | GFP_DMA);
> +               if (!qh->dw_align_buf)
> +                       return -ENOMEM;
> +
> +               qh->dw_align_buf_size = min_t(u32, chan->max_packet,
> +                                             DWC2_KMEM_UNALIGNED_BUF_SIZE);

Rather than using min_t, wouldn't it be better to return -ENOMEM if
"max_packet" > DWC2_KMEM_UNALIGNED_BUF_SIZE?  As it is, you might
allocate less space than you need, right?  That seems like it would be
bad (even though this is probably impossible).


> @@ -2797,6 +2837,32 @@ static int dwc2_assign_and_init_hc(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
>         /* Set the transfer attributes */
>         dwc2_hc_init_xfer(hsotg, chan, qtd);
>
> +       /* For non-dword aligned buffers */
> +       if (hsotg->params.host_dma && qh->do_split &&
> +           chan->ep_is_in && (chan->xfer_dma & 0x3)) {
> +               dev_vdbg(hsotg->dev, "Non-aligned buffer\n");
> +               if (dwc2_alloc_split_dma_aligned_buf(hsotg, qh, chan)) {
> +                       dev_err(hsotg->dev,
> +                               "Failed to allocate memory to handle non-aligned buffer\n");
> +                       /* Add channel back to free list */
> +                       chan->align_buf = 0;
> +                       chan->multi_count = 0;
> +                       list_add_tail(&chan->hc_list_entry,
> +                                     &hsotg->free_hc_list);
> +                       qtd->in_process = 0;
> +                       qh->channel = NULL;
> +                       return -ENOMEM;
> +               }
> +       } else {
> +               /*
> +                * We assume that DMA is always aligned in non-split
> +                * case or split out case. Warn if not.
> +                */
> +               WARN_ON_ONCE(hsotg->params.host_dma &&
> +                            (chan->xfer_dma & 0x3));
> +               chan->align_buf = 0;
> +       }
> +
>         if (chan->ep_type == USB_ENDPOINT_XFER_INT ||
>             chan->ep_type == USB_ENDPOINT_XFER_ISOC)
>                 /*
> @@ -5241,6 +5307,17 @@ int dwc2_hcd_init(struct dwc2_hsotg *hsotg)
>                         hsotg->params.dma_desc_enable = false;
>                         hsotg->params.dma_desc_fs_enable = false;
>                 }
> +       } else if (hsotg->params.host_dma) {

Are you sure this is "else if"?  Can't you have descriptor DMA enabled
in the controller and still need to do a normal DMA transfer if you
plug in a hub?  Seems like this should be just "if".


> +               /*
> +                * Create kmem caches to handle non-aligned buffer
> +                * in Buffer DMA mode.
> +                */
> +               hsotg->unaligned_cache = kmem_cache_create("dwc2-unaligned-dma",
> +                                               DWC2_KMEM_UNALIGNED_BUF_SIZE, 4,

Worth using "DWC2_USB_DMA_ALIGN" rather than 4?


> +                                               SLAB_CACHE_DMA, NULL);
> +               if (!hsotg->unaligned_cache)
> +                       dev_err(hsotg->dev,
> +                               "unable to create dwc2 unaligned cache\n");
>         }
>
>         hsotg->otg_port = 1;
> @@ -5279,6 +5356,7 @@ int dwc2_hcd_init(struct dwc2_hsotg *hsotg)
>  error4:
>         kmem_cache_destroy(hsotg->desc_gen_cache);
>         kmem_cache_destroy(hsotg->desc_hsisoc_cache);
> +       kmem_cache_destroy(hsotg->unaligned_cache);

nitty nit: freeing order should be opposite of allocation, so the new
line should be above the other two.
