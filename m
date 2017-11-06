From: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
Subject: Re: [PATCH] usb: dwc2: host: fix isoc urb actual length
Date: Mon, 6 Nov 2017 12:30:24 +0000
Message-ID: <410670D7E743164D87FA6160E7907A560113A3A07F@am04wembxa.internal.synopsys.com>
References: <1509957939-31786-1-git-send-email-william.wu@rock-chips.com>
 <410670D7E743164D87FA6160E7907A560113A39F61@am04wembxa.internal.synopsys.com>
 <392af079-7805-a22e-d332-cd7615adf6ba@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: wlf <wulf@rock-chips.com>, Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>, William Wu <william.wu@rock-chips.com>, "John.Youn@synopsys.com" <John.Youn@synopsys.com>, "balbi@kernel.org" <balbi@kernel.org>, "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Cc: "heiko@sntech.de" <heiko@sntech.de>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "frank.wang@rock-chips.com" <frank.wang@rock-chips.com>, "huangtao@rock-chips.com" <huangtao@rock-chips.com>, "dianders@google.com" <dianders@google.com>, "daniel.meng@rock-chips.com" <daniel.meng@rock-chips.com>, "fml@rock-chips.com" <fml@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Hi William,

On 11/6/2017 2:08 PM, wlf wrote:
> Hi Minas,
> 
> 在 2017年11月06日 17:28, Minas Harutyunyan 写道:
>> Hi,
>>
>> On 11/6/2017 12:46 PM, William Wu wrote:
>>> The actual_length in dwc2_hcd_urb structure is used
>>> to indicate the total data length transferred so far,
>>> but in dwc2_update_isoc_urb_state(), it just updates
>>> the actual_length of isoc frame, and don't update the
>>> urb actual_length at the same time, this will cause
>>> device drivers working error which depend on the urb
>>> actual_length.
>>>
>>> we can easily find this issue if use an USB camera，
>>> the userspace use libusb to get USB data from kernel
>>> via devio driver.In usb devio driver, processcompl()
>>> function will process urb complete and copy data to
>>> userspace depending on urb actual_length.
>>>
>>> Let's update the urb actual_length if the isoc frame
>>> is valid.
>>>
>>> Signed-off-by: William Wu <william.wu@rock-chips.com>
>>> ---
>>>     drivers/usb/dwc2/hcd_intr.c | 2 ++
>>>     1 file changed, 2 insertions(+)
>>>
>>> diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
>>> index 28a8210..01b1e13 100644
>>> --- a/drivers/usb/dwc2/hcd_intr.c
>>> +++ b/drivers/usb/dwc2/hcd_intr.c
>>> @@ -580,6 +580,7 @@ static enum dwc2_halt_status dwc2_update_isoc_urb_state(
>>>     		frame_desc->status = 0;
>>>     		frame_desc->actual_length = dwc2_get_actual_xfer_length(hsotg,
>>>     					chan, chnum, qtd, halt_status, NULL);
>>> +		urb->actual_length += frame_desc->actual_length;
>>>     		break;
>>>     	case DWC2_HC_XFER_FRAME_OVERRUN:
>>>     		urb->error_count++;
>>> @@ -599,6 +600,7 @@ static enum dwc2_halt_status dwc2_update_isoc_urb_state(
>>>     		frame_desc->status = -EPROTO;
>>>     		frame_desc->actual_length = dwc2_get_actual_xfer_length(hsotg,
>>>     					chan, chnum, qtd, halt_status, NULL);
>>> +		urb->actual_length += frame_desc->actual_length;
>>>     
>>>     		/* Skip whole frame */
>>>     		if (chan->qh->do_split &&
>>>
>> According urb description in usb.h urb->actual_length used for non-iso
>> transfers:
>>
>> "@actual_length: This is read in non-iso completion functions, and ...
>>
>>     * ISO transfer status is reported in the status and actual_length fields
>>     * of the iso_frame_desc array, ...."
> Yes,  urb->actual_length is used for non-iso transfers.  And for ISO
> transfer,  the most
> usb class drivers can only use iso frame status and actual_length to
> handle usb data,
> like: kernel v4.4 drivers/media/usb/uvc/uvc_video.c
> 
> But the usb devio driver really need the urb actual_length in the
> processcompl() if
> handle ISO transfer, just as I mentioned in the commit message.
> 
> And I also found the same issue on raspberrypi board:
> https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_raspberrypi_linux_issues_903&d=DwIDaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=6z9Al9FrHR_ZqbbtSAsD16pvOL2S3XHxQnSzq8kusyI&m=v5ECJPMqgVerj8G74QqsTJ7jt-qDVbCVIq8jq_t245s&s=ArX8DL6fZL4p3dsOY5AstGDRguIB_c1GDuuhf49-ev8&e=
> 
> So do you think we need to fix the usb devio driver, rather than fix dwc2?
> I think maybe we can use urb actual length for ISO transfer, it seems that
> don't cause any side-effect.
Agree, should be no any side-effect.

> 
>>
>> Thanks,
>> Minas
>>
>>
>>
>>
>>
>>
> 
