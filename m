From: wlf <wulf@rock-chips.com>
Subject: Re: [PATCH] usb: dwc2: host: fix isoc urb actual length
Date: Tue, 7 Nov 2017 17:58:47 +0800
Message-ID: <f2b7e952-8d0f-25dd-4777-efc1e2b9be8a@rock-chips.com>
References: <Pine.LNX.4.44L0.1711061413380.1454-100000@iolanthe.rowland.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44L0.1711061413380.1454-100000@iolanthe.rowland.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>, William Wu <william.wu@rock-chips.com>, "John.Youn@synopsys.com" <John.Youn@synopsys.com>, "balbi@kernel.org" <balbi@kernel.org>, "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, "heiko@sntech.de" <heiko@sntech.de>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "frank.wang@rock-chips.com" <frank.wang@rock-chips.com>, "huangtao@rock-chips.com" <huangtao@rock-chips.com>, "dianders@google.com" <dianders@google.com>, "daniel.meng@rock-chips.com" <daniel.meng@rock-chips.com>, "fml@rock-chips.com" <fml@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Alan,

在 2017年11月07日 03:17, Alan Stern 写道:
> On Mon, 6 Nov 2017, wlf wrote:
>
>> Hi Minas,
>>
>> 在 2017年11月06日 17:28, Minas Harutyunyan 写道:
>>> Hi,
>>>
>>> On 11/6/2017 12:46 PM, William Wu wrote:
>>>> The actual_length in dwc2_hcd_urb structure is used
>>>> to indicate the total data length transferred so far,
>>>> but in dwc2_update_isoc_urb_state(), it just updates
>>>> the actual_length of isoc frame, and don't update the
>>>> urb actual_length at the same time, this will cause
>>>> device drivers working error which depend on the urb
>>>> actual_length.
>>>>
>>>> we can easily find this issue if use an USB camera，
>>>> the userspace use libusb to get USB data from kernel
>>>> via devio driver.In usb devio driver, processcompl()
>>>> function will process urb complete and copy data to
>>>> userspace depending on urb actual_length.
>>>>
>>>> Let's update the urb actual_length if the isoc frame
>>>> is valid.
>>>>
>>>> Signed-off-by: William Wu <william.wu@rock-chips.com>
>>>> ---
>>>>     drivers/usb/dwc2/hcd_intr.c | 2 ++
>>>>     1 file changed, 2 insertions(+)
>>>>
>>>> diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
>>>> index 28a8210..01b1e13 100644
>>>> --- a/drivers/usb/dwc2/hcd_intr.c
>>>> +++ b/drivers/usb/dwc2/hcd_intr.c
>>>> @@ -580,6 +580,7 @@ static enum dwc2_halt_status dwc2_update_isoc_urb_state(
>>>>     		frame_desc->status = 0;
>>>>     		frame_desc->actual_length = dwc2_get_actual_xfer_length(hsotg,
>>>>     					chan, chnum, qtd, halt_status, NULL);
>>>> +		urb->actual_length += frame_desc->actual_length;
>>>>     		break;
>>>>     	case DWC2_HC_XFER_FRAME_OVERRUN:
>>>>     		urb->error_count++;
>>>> @@ -599,6 +600,7 @@ static enum dwc2_halt_status dwc2_update_isoc_urb_state(
>>>>     		frame_desc->status = -EPROTO;
>>>>     		frame_desc->actual_length = dwc2_get_actual_xfer_length(hsotg,
>>>>     					chan, chnum, qtd, halt_status, NULL);
>>>> +		urb->actual_length += frame_desc->actual_length;
>>>>     
>>>>     		/* Skip whole frame */
>>>>     		if (chan->qh->do_split &&
>>>>
>>> According urb description in usb.h urb->actual_length used for non-iso
>>> transfers:
>>>
>>> "@actual_length: This is read in non-iso completion functions, and ...
>>>
>>>     * ISO transfer status is reported in the status and actual_length fields
>>>     * of the iso_frame_desc array, ...."
>> Yes,  urb->actual_length is used for non-iso transfers.  And for ISO
>> transfer,  the most
>> usb class drivers can only use iso frame status and actual_length to
>> handle usb data,
>> like: kernel v4.4 drivers/media/usb/uvc/uvc_video.c
>>
>> But the usb devio driver really need the urb actual_length in the
>> processcompl() if
>> handle ISO transfer, just as I mentioned in the commit message.
>>
>> And I also found the same issue on raspberrypi board:
>> https://github.com/raspberrypi/linux/issues/903
>>
>> So do you think we need to fix the usb devio driver, rather than fix dwc2?
>> I think maybe we can use urb actual length for ISO transfer, it seems that
>> don't cause any side-effect.
> That sounds like a good idea.  Minas, does the following patch fix your
> problem?
>
> In theory we could do this calculation for every isochronous URB, not
> just those coming from usbfs.  But I don't think there's any point,
> since the USB class drivers don't use it.
>
> Alan Stern
>
>
>
> Index: usb-4.x/drivers/usb/core/devio.c
> ===================================================================
> --- usb-4.x.orig/drivers/usb/core/devio.c
> +++ usb-4.x/drivers/usb/core/devio.c
> @@ -1828,6 +1828,18 @@ static int proc_unlinkurb(struct usb_dev
>   	return 0;
>   }
>   
> +static void compute_isochronous_actual_length(struct urb *urb)
> +{
> +	unsigned i;
> +
> +	if (urb->number_of_packets > 0) {
> +		urb->actual_length = 0;
> +		for (i = 0; i < urb->number_of_packets; i++)
> +			urb->actual_length +=
> +					urb->iso_frame_desc[i].actual_length;
> +	}
> +}
> +
>   static int processcompl(struct async *as, void __user * __user *arg)
>   {
>   	struct urb *urb = as->urb;
> @@ -1835,6 +1847,8 @@ static int processcompl(struct async *as
>   	void __user *addr = as->userurb;
>   	unsigned int i;
>   
> +	compute_isochronous_actual_length(urb);
> +
>   	if (as->userbuffer && urb->actual_length) {
>   		if (copy_urb_data_to_user(as->userbuffer, urb))
>   			goto err_out;
> @@ -2003,6 +2017,8 @@ static int processcompl_compat(struct as
>   	void __user *addr = as->userurb;
>   	unsigned int i;
>   
> +	compute_isochronous_actual_length(urb);
> +
>   	if (as->userbuffer && urb->actual_length) {
>   		if (copy_urb_data_to_user(as->userbuffer, urb))
>   			return -EFAULT;
>
>
Yeah,  it's a good idea to calculate the urb actual length in the devio 
driver.
Your patch seems good,  and I think we can do a small optimization base 
your patch,
like the following patch:

diff --git a/drivers/usb/core/devio.c b/drivers/usb/core/devio.c
index bd94192..a2e7b97 100644
--- a/drivers/usb/core/devio.c
+++ b/drivers/usb/core/devio.c
@@ -1664,6 +1664,9 @@ static int processcompl(struct async *as, void 
__user * __user *arg)
         void __user *addr = as->userurb;
         unsigned int i;

+       if (usb_endpoint_xfer_isoc(&urb->ep->desc))
+               compute_isochronous_actual_length(urb);
+
         if (as->userbuffer && urb->actual_length) {
                 if (copy_urb_data_to_user(as->userbuffer, urb))
                         goto err_out;
@@ -1833,6 +1836,9 @@ static int processcompl_compat(struct async *as, 
void __user * __user *arg)
         void __user *addr = as->userurb;
         unsigned int i;

+       if (usb_endpoint_xfer_isoc(&urb->ep->desc))
+               compute_isochronous_actual_length(urb);
+
         if (as->userbuffer && urb->actual_length) {
                 if (copy_urb_data_to_user(as->userbuffer, urb))
                         return -EFAULT;

>

-- 
吴良峰 William.Wu
福建省福州市铜盘路软件大道89号软件园A区21号楼
No.21 Building, A District, No.89,software Boulevard Fuzhou,Fujian, PRC
手机: 13685012275
座机: 0591-83991906-8520
邮件:wulf@rock-chips.com
