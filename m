From: Yunzhi Li <lyz@rock-chips.com>
Subject: Re: [PATCH v1] usb: dwc2: reset AHB hclk domain before init
Date: Wed, 12 Aug 2015 19:06:09 +0800
Message-ID: <55CB28A1.6090208@rock-chips.com>
References: <1439260062-12049-1-git-send-email-lyz@rock-chips.com> <20150811141229.GB13920@saruman.tx.rr.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20150811141229.GB13920@saruman.tx.rr.com>
Sender: linux-kernel-owner@vger.kernel.org
To: balbi@ti.com
Cc: jwerner@chromium.org, dianders@chromium.org, huangtao@rock-chips.com, cf@rock-chips.com, hl@rock-chips.com, linux-rockchip@lists.infradead.org, John Youn <johnyoun@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi ,
=E5=9C=A8 2015/8/11 22:12, Felipe Balbi =E5=86=99=E9=81=93:
> Hi,
>
> On Tue, Aug 11, 2015 at 10:27:42AM +0800, Yunzhi Li wrote:
>> We initiate dwc2 usb controller in BIOS, when kernel driver
>> start-up we should reset AHB hclk domain to reset all AHB
>> interface registers to default. Without this the FIFO value
>> setting might be incorrect because calculating FIFO size need the
>> power-on value of GRXFSIZ/GNPTXFSIZ/HPTXFSIZ registers.
>>
>> This patch could avoid warnning massage like in rk3288 platform:
>> [    2.074764] dwc2 ff580000.usb: 256 invalid for
>> host_perio_tx_fifo_size. Check HW configuration.
>>
>> Signed-off-by: Yunzhi Li <lyz@rock-chips.com>
>>
>> ---
>>
>>   drivers/usb/dwc2/platform.c | 12 ++++++++++++
>>   1 file changed, 12 insertions(+)
>>
>> diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform=
=2Ec
>> index 9093530..3da21ab 100644
>> --- a/drivers/usb/dwc2/platform.c
>> +++ b/drivers/usb/dwc2/platform.c
>> @@ -42,6 +42,7 @@
>>   #include <linux/of_device.h>
>>   #include <linux/mutex.h>
>>   #include <linux/platform_device.h>
>> +#include <linux/reset.h>
>>  =20
>>   #include <linux/usb/of.h>
>>  =20
>> @@ -165,6 +166,7 @@ static int dwc2_driver_probe(struct platform_dev=
ice *dev)
>>   	struct resource *res;
>>   	struct phy *phy;
>>   	struct usb_phy *uphy;
>> +	struct reset_control *rst;
>>   	int retval;
>>   	int irq;
>>  =20
>> @@ -189,6 +191,16 @@ static int dwc2_driver_probe(struct platform_de=
vice *dev)
>>  =20
>>   	hsotg->dev =3D &dev->dev;
>>  =20
>> +	/* AHB hclk domain reset, set all AHB interface registers to defau=
lt */
>> +	rst =3D devm_reset_control_get_optional(&dev->dev, "ahb_reset");
> why isn't this done in core so PCI systems can also make use of it ?
>
I have no ides about how to reset a PCI interface dwc2 controller, John=
=20
could you please give some infomation about it ?
Is it also needed for PCI interface dwc2 IP ?
