From: wlf <wulf@rock-chips.com>
Subject: Re: [PATCH] usb: dwc2: host: fix isoc urb actual length
Date: Wed, 8 Nov 2017 10:58:08 +0800
Message-ID: <8eeae89c-70a2-3c64-66dc-4053f2012e1a@rock-chips.com>
References: <Pine.LNX.4.44L0.1711071014130.1395-100000@iolanthe.rowland.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44L0.1711071014130.1395-100000@iolanthe.rowland.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>, William Wu <william.wu@rock-chips.com>, "John.Youn@synopsys.com" <John.Youn@synopsys.com>, "balbi@kernel.org" <balbi@kernel.org>, "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, "heiko@sntech.de" <heiko@sntech.de>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "frank.wang@rock-chips.com" <frank.wang@rock-chips.com>, "huangtao@rock-chips.com" <huangtao@rock-chips.com>, "dianders@google.com" <dianders@google.com>, "daniel.meng@rock-chips.com" <daniel.meng@rock-chips.com>, "fml@rock-chips.com" <fml@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Alan,

在 2017年11月07日 23:18, Alan Stern 写道:
> On Tue, 7 Nov 2017, wlf wrote:
>
>>> That sounds like a good idea.  Minas, does the following patch fix your
>>> problem?
>>>
>>> In theory we could do this calculation for every isochronous URB, not
>>> just those coming from usbfs.  But I don't think there's any point,
>>> since the USB class drivers don't use it.
>>>
>>> Alan Stern
>>>
>>>
>>>
>>> Index: usb-4.x/drivers/usb/core/devio.c
>>> ===================================================================
>>> --- usb-4.x.orig/drivers/usb/core/devio.c
>>> +++ usb-4.x/drivers/usb/core/devio.c
>>> @@ -1828,6 +1828,18 @@ static int proc_unlinkurb(struct usb_dev
>>>    	return 0;
>>>    }
>>>    
>>> +static void compute_isochronous_actual_length(struct urb *urb)
>>> +{
>>> +	unsigned i;
>>> +
>>> +	if (urb->number_of_packets > 0) {
>>> +		urb->actual_length = 0;
>>> +		for (i = 0; i < urb->number_of_packets; i++)
>>> +			urb->actual_length +=
>>> +					urb->iso_frame_desc[i].actual_length;
>>> +	}
>>> +}
>>> +
>>>    static int processcompl(struct async *as, void __user * __user *arg)
>>>    {
>>>    	struct urb *urb = as->urb;
>>> @@ -1835,6 +1847,8 @@ static int processcompl(struct async *as
>>>    	void __user *addr = as->userurb;
>>>    	unsigned int i;
>>>    
>>> +	compute_isochronous_actual_length(urb);
>>> +
>>>    	if (as->userbuffer && urb->actual_length) {
>>>    		if (copy_urb_data_to_user(as->userbuffer, urb))
>>>    			goto err_out;
>>> @@ -2003,6 +2017,8 @@ static int processcompl_compat(struct as
>>>    	void __user *addr = as->userurb;
>>>    	unsigned int i;
>>>    
>>> +	compute_isochronous_actual_length(urb);
>>> +
>>>    	if (as->userbuffer && urb->actual_length) {
>>>    		if (copy_urb_data_to_user(as->userbuffer, urb))
>>>    			return -EFAULT;
>>>
>>>
>> Yeah,  it's a good idea to calculate the urb actual length in the devio
>> driver.
>> Your patch seems good,  and I think we can do a small optimization base
>> your patch,
>> like the following patch:
>>
>> diff --git a/drivers/usb/core/devio.c b/drivers/usb/core/devio.c
>> index bd94192..a2e7b97 100644
>> --- a/drivers/usb/core/devio.c
>> +++ b/drivers/usb/core/devio.c
>> @@ -1664,6 +1664,9 @@ static int processcompl(struct async *as, void
>> __user * __user *arg)
>>           void __user *addr = as->userurb;
>>           unsigned int i;
>>
>> +       if (usb_endpoint_xfer_isoc(&urb->ep->desc))
>> +               compute_isochronous_actual_length(urb);
>> +
>>           if (as->userbuffer && urb->actual_length) {
>>                   if (copy_urb_data_to_user(as->userbuffer, urb))
>>                           goto err_out;
>> @@ -1833,6 +1836,9 @@ static int processcompl_compat(struct async *as,
>> void __user * __user *arg)
>>           void __user *addr = as->userurb;
>>           unsigned int i;
>>
>> +       if (usb_endpoint_xfer_isoc(&urb->ep->desc))
>> +               compute_isochronous_actual_length(urb);
>> +
> Well, this depends on whether you want to optimize for space or for
> speed.  I've been going for space.  And since usbfs is inherently
> rather slow, I don't think this will make any significant speed
> difference.  So I don't think adding the extra tests is worthwhile.
>
> (Besides, if you really wanted to do it this way, you should have moved
> the test for "urb->number_of_packets > 0" into the callers instead of
> adding an additional test of the endpoint type.)
Yes,  agree with you.

>
> However, nobody has answered my original question: Does the patch
> actually fix the problem?
I test your patch on Rockchip RK3188 platform,  use UsbWebCamera APP by 
Serenegiant
(libusb + devio)  with  usb camera, it work well.

>
> Alan Stern
>
>
>
>

-- 
吴良峰 William.Wu
福建省福州市铜盘路软件大道89号软件园A区21号楼
No.21 Building, A District, No.89,software Boulevard Fuzhou,Fujian, PRC
手机: 13685012275
座机: 0591-83991906-8520
邮件:wulf@rock-chips.com
