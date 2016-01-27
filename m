From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v5 03/21] usb: dwc2: host: Set host_rx_fifo_size to 528
 for rk3066
Date: Wed, 27 Jan 2016 18:13:12 +0800
Message-ID: <56A89838.3040202@rock-chips.com>
References: <1453486736-15358-1-git-send-email-dianders@chromium.org> <1453486736-15358-4-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1453486736-15358-4-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>, John Youn <John.Youn@synopsys.com>, balbi@ti.com
Cc: william.wu@rock-chips.com, huangtao@rock-chips.com, heiko@sntech.de, linux-rockchip@lists.infradead.org, Julius Werner <jwerner@chromium.org>, gregory.herrero@intel.com, yousaf.kaukab@intel.com, dinguyen@opensource.altera.com, stern@rowland.harvard.edu, ming.lei@canonical.com, johnyoun@synopsys.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Doug,

On 01/23/2016 02:18 AM, Douglas Anderson wrote:
> As documented in dwc2_calculate_dynamic_fifo(), host_rx_fifo_size should
> really be:
>   2 * ((Largest Packet size / 4) + 1 + 1) + n
>   with n = number of host channel.
>
> We have 9 host channels, so
>   2 * ((1024/4) + 2) + 9 = 516 + 9 = 525
>
> We've got 960 / 972 total_fifo_size on rk3288 (and presumably on
> rk3066) and 525 + 128 + 256 = 909 so we're still under on both ports
> even when we increment by 5.
>
> Since we have space, Kever Yang suggests bumping by 8.  He says this
> will meet INCR16 access and next fifo type can start with a aligned
> address.
I have double check this feature, the INCR16 is actually a burst 16
on to the bus, the aligned problem only happen on the DRAM
access, and it's OK for internal RAM access via internal DMA.

Bump to 8 looks much better when we check the FIFO setting if we
have enough memory, right? :)

rk3066/rk3188/rk3288 have the same hw config for dwc2 controller,
so this patch should works on those files.

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
>
> ...so let's bump up by 8.  In the future, it would be nice if
> dwc2_calculate_dynamic_fifo() could handle the "too small" FIFO case and
> come up with something more dynamically.  When we do that we can figure
> out how to allocate the extra 48 / 60 bytes of FIFO that we're currently
> wasting.
>
> NOTE: no known bugs are fixed by this patch, but it seems like a simple
> fix and ought to fix someone.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> Changes in v5: None
> Changes in v4:
> - Set host_rx_fifo_size to 528 for rk3066 new for v4.
>
> Changes in v3: None
> Changes in v2: None
>
>   drivers/usb/dwc2/platform.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.c
> index 5008a467ce06..b6d7666e715c 100644
> --- a/drivers/usb/dwc2/platform.c
> +++ b/drivers/usb/dwc2/platform.c
> @@ -126,7 +126,7 @@ static const struct dwc2_core_params params_rk3066 = {
>   	.speed				= -1,
>   	.enable_dynamic_fifo		= 1,
>   	.en_multiple_tx_fifo		= -1,
> -	.host_rx_fifo_size		= 520,	/* 520 DWORDs */
> +	.host_rx_fifo_size		= 528,	/* 528 DWORDs */
>   	.host_nperio_tx_fifo_size	= 128,	/* 128 DWORDs */
>   	.host_perio_tx_fifo_size	= 256,	/* 256 DWORDs */
>   	.max_transfer_size		= -1,
