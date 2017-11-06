From: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
Subject: Re: [PATCH] usb: dwc2: host: fix isoc urb actual length
Date: Mon, 6 Nov 2017 09:28:07 +0000
Message-ID: <410670D7E743164D87FA6160E7907A560113A39F61@am04wembxa.internal.synopsys.com>
References: <1509957939-31786-1-git-send-email-william.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: William Wu <william.wu@rock-chips.com>, "John.Youn@synopsys.com" <John.Youn@synopsys.com>, "balbi@kernel.org" <balbi@kernel.org>, "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Cc: "heiko@sntech.de" <heiko@sntech.de>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "frank.wang@rock-chips.com" <frank.wang@rock-chips.com>, "huangtao@rock-chips.com" <huangtao@rock-chips.com>, "dianders@google.com" <dianders@google.com>, "daniel.meng@rock-chips.com" <daniel.meng@rock-chips.com>, "fml@rock-chips.com" <fml@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On 11/6/2017 12:46 PM, William Wu wrote:
> The actual_length in dwc2_hcd_urb structure is used
> to indicate the total data length transferred so far,
> but in dwc2_update_isoc_urb_state(), it just updates
> the actual_length of isoc frame, and don't update the
> urb actual_length at the same time, this will cause
> device drivers working error which depend on the urb
> actual_length.
> 
> we can easily find this issue if use an USB camera，
> the userspace use libusb to get USB data from kernel
> via devio driver.In usb devio driver, processcompl()
> function will process urb complete and copy data to
> userspace depending on urb actual_length.
> 
> Let's update the urb actual_length if the isoc frame
> is valid.
> 
> Signed-off-by: William Wu <william.wu@rock-chips.com>
> ---
>   drivers/usb/dwc2/hcd_intr.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
> index 28a8210..01b1e13 100644
> --- a/drivers/usb/dwc2/hcd_intr.c
> +++ b/drivers/usb/dwc2/hcd_intr.c
> @@ -580,6 +580,7 @@ static enum dwc2_halt_status dwc2_update_isoc_urb_state(
>   		frame_desc->status = 0;
>   		frame_desc->actual_length = dwc2_get_actual_xfer_length(hsotg,
>   					chan, chnum, qtd, halt_status, NULL);
> +		urb->actual_length += frame_desc->actual_length;
>   		break;
>   	case DWC2_HC_XFER_FRAME_OVERRUN:
>   		urb->error_count++;
> @@ -599,6 +600,7 @@ static enum dwc2_halt_status dwc2_update_isoc_urb_state(
>   		frame_desc->status = -EPROTO;
>   		frame_desc->actual_length = dwc2_get_actual_xfer_length(hsotg,
>   					chan, chnum, qtd, halt_status, NULL);
> +		urb->actual_length += frame_desc->actual_length;
>   
>   		/* Skip whole frame */
>   		if (chan->qh->do_split &&
> 

According urb description in usb.h urb->actual_length used for non-iso 
transfers:

"@actual_length: This is read in non-iso completion functions, and ...

  * ISO transfer status is reported in the status and actual_length fields
  * of the iso_frame_desc array, ...."

Thanks,
Minas
