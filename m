From: John Youn <John.Youn@synopsys.com>
Subject: Re: [PATCH v1] usb: dwc2: reset AHB hclk domain before init
Date: Thu, 13 Aug 2015 08:37:36 +0000
Message-ID: <2B3535C5ECE8B5419E3ECBE300772909017528D354@US01WEMBX2.internal.synopsys.com>
References: <1439260062-12049-1-git-send-email-lyz@rock-chips.com>
 <20150811141229.GB13920@saruman.tx.rr.com> <55CB28A1.6090208@rock-chips.com>
 <20150812193244.GA20972@saruman.tx.rr.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: "balbi@ti.com" <balbi@ti.com>, Yunzhi Li <lyz@rock-chips.com>
Cc: "jwerner@chromium.org" <jwerner@chromium.org>, "dianders@chromium.org" <dianders@chromium.org>, "huangtao@rock-chips.com" <huangtao@rock-chips.com>, "cf@rock-chips.com" <cf@rock-chips.com>, "hl@rock-chips.com" <hl@rock-chips.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, John Youn <John.Youn@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On 8/12/2015 12:33 PM, Felipe Balbi wrote:
> On Wed, Aug 12, 2015 at 07:06:09PM +0800, Yunzhi Li wrote:
>> Hi ,
>> 在 2015/8/11 22:12, Felipe Balbi 写道:
>>> Hi,
>>>
>>> On Tue, Aug 11, 2015 at 10:27:42AM +0800, Yunzhi Li wrote:
>>>> We initiate dwc2 usb controller in BIOS, when kernel driver
>>>> start-up we should reset AHB hclk domain to reset all AHB
>>>> interface registers to default. Without this the FIFO value
>>>> setting might be incorrect because calculating FIFO size need the
>>>> power-on value of GRXFSIZ/GNPTXFSIZ/HPTXFSIZ registers.
>>>>
>>>> This patch could avoid warnning massage like in rk3288 platform:
>>>> [    2.074764] dwc2 ff580000.usb: 256 invalid for
>>>> host_perio_tx_fifo_size. Check HW configuration.
>>>>
>>>> Signed-off-by: Yunzhi Li <lyz@rock-chips.com>
>>>>
>>>> ---
>>>>
>>>>  drivers/usb/dwc2/platform.c | 12 ++++++++++++
>>>>  1 file changed, 12 insertions(+)
>>>>
>>>> diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.c
>>>> index 9093530..3da21ab 100644
>>>> --- a/drivers/usb/dwc2/platform.c
>>>> +++ b/drivers/usb/dwc2/platform.c
>>>> @@ -42,6 +42,7 @@
>>>>  #include <linux/of_device.h>
>>>>  #include <linux/mutex.h>
>>>>  #include <linux/platform_device.h>
>>>> +#include <linux/reset.h>
>>>>  #include <linux/usb/of.h>
>>>> @@ -165,6 +166,7 @@ static int dwc2_driver_probe(struct platform_device *dev)
>>>>  	struct resource *res;
>>>>  	struct phy *phy;
>>>>  	struct usb_phy *uphy;
>>>> +	struct reset_control *rst;
>>>>  	int retval;
>>>>  	int irq;
>>>> @@ -189,6 +191,16 @@ static int dwc2_driver_probe(struct platform_device *dev)
>>>>  	hsotg->dev = &dev->dev;
>>>> +	/* AHB hclk domain reset, set all AHB interface registers to default */
>>>> +	rst = devm_reset_control_get_optional(&dev->dev, "ahb_reset");
>>> why isn't this done in core so PCI systems can also make use of it ?
>>>
>> I have no ides about how to reset a PCI interface dwc2 controller, John
>> could you please give some infomation about it ?
>> Is it also needed for PCI interface dwc2 IP ?
> 
> even on platform only, how do you know all users provide a ahb_reset
> reset controller ?
> 

Also where do you provide the ahb_reset? I don't see it as a
property for dwc2.

With regards to PCI, I'm also not sure how you'd accomplish
something like this. But the platform I use at least doesn't need
this.

Regards,
John
