From: Jack Pham <jackp@codeaurora.org>
Subject: Re: [PATCH] usb: gadget: f_fs: get the correct address of comp_desc
Date: Mon, 5 Feb 2018 10:17:58 -0800
Message-ID: <20180205181758.GA22738@usblab-sd-06.qualcomm.com>
References: <1517830418-2648-1-git-send-email-william.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1517830418-2648-1-git-send-email-william.wu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: William Wu <william.wu@rock-chips.com>
Cc: gregkh@linuxfoundation.org, felipe.balbi@linux.intel.com, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org, frank.wang@rock-chips.com, huangtao@rock-chips.com, daniel.meng@rock-chips.com, fml@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi William,

On Mon, Feb 05, 2018 at 07:33:38PM +0800, William Wu wrote:
> Refer to the USB 3.0 spec '9.6.7 SuperSpeed Endpoint Companion',
> the companion descriptor follows the standard endpoint descriptor.
> This descriptor is only defined for SuperSpeed endpoints. The
> f_fs driver gets the address of the companion descriptor via
> 'ds + USB_DT_ENDPOINT_SIZE', and actually, the ds variable is
> a pointer to the struct usb_endpoint_descriptor, so the offset
> of the companion descriptor which we get is USB_DT_ENDPOINT_SIZE *
> sizeof(struct usb_endpoint_descriptor), the wrong offset is 63
> bytes. This cause out-of-bound with the following error log if
> CONFIG_KASAN and CONFIG_SLUB_DEBUG is enabled on Rockchip RK3399
> Evaluation Board.
> 
> android_work: sent uevent USB_STATE=CONNECTED
> configfs-gadget gadget: super-speed config #1: b
> ==================================================================
> BUG: KASAN: slab-out-of-bounds in ffs_func_set_alt+0x230/0x398
> Read of size 1 at addr ffffffc0ce2d0b10 by task irq/224-dwc3/364

> Memory state around the buggy address:
>  ffffffc0ce2d0a00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>  ffffffc0ce2d0a80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>  >ffffffc0ce2d0b00: 00 04 fc fc fc fc fc fc fc fc fc fc fc fc fc fc
>                          ^
>  ffffffc0ce2d0b80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
>  ffffffc0ce2d0c00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
> ==================================================================
> Disabling lock debugging due to kernel taint
> android_work: sent uevent USB_STATE=CONFIGURED
> 
> This patch adds struct usb_endpoint_descriptor * -> u8 * type conversion
> for ds variable, then we can get the correct address of comp_desc
> with offset USB_DT_ENDPOINT_SIZE bytes.
> 
> Signed-off-by: William Wu <william.wu@rock-chips.com>
> ---
>  drivers/usb/gadget/function/f_fs.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/gadget/function/f_fs.c b/drivers/usb/gadget/function/f_fs.c
> index 6756472..f13ead0 100644
> --- a/drivers/usb/gadget/function/f_fs.c
> +++ b/drivers/usb/gadget/function/f_fs.c
> @@ -1882,8 +1882,8 @@ static int ffs_func_eps_enable(struct ffs_function *func)
>  		ep->ep->desc = ds;
>  
>  		if (needs_comp_desc) {
> -			comp_desc = (struct usb_ss_ep_comp_descriptor *)(ds +
> -					USB_DT_ENDPOINT_SIZE);
> +			comp_desc = (struct usb_ss_ep_comp_descriptor *)
> +				     ((u8 *)ds + USB_DT_ENDPOINT_SIZE);
>  			ep->ep->maxburst = comp_desc->bMaxBurst + 1;
>  			ep->ep->comp_desc = comp_desc;
>  		}

Please see my alternative fix for this. I proposed changing this
function to use config_ep_by_speed() instead.

https://www.spinics.net/lists/linux-usb/msg165149.html

Jack
-- 
The Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project
