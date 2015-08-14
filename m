From: John Youn <John.Youn@synopsys.com>
Subject: Re: [PATCH v1 1/3] usb: dwc2: reset AHB hclk domain before init
Date: Fri, 14 Aug 2015 00:09:05 +0000
Message-ID: <2B3535C5ECE8B5419E3ECBE300772909017528DC44@US01WEMBX2.internal.synopsys.com>
References: <1439279787-26674-1-git-send-email-lyz@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Yunzhi Li <lyz@rock-chips.com>, "jwerner@chromium.org" <jwerner@chromium.org>, "dianders@chromium.org" <dianders@chromium.org>
Cc: "huangtao@rock-chips.com" <huangtao@rock-chips.com>, "cf@rock-chips.com" <cf@rock-chips.com>, "hl@rock-chips.com" <hl@rock-chips.com>, "wulf@rock-chips.com" <wulf@rock-chips.com>, "gregory.herrero@intel.com" <gregory.herrero@intel.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, John Youn <John.Youn@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On 8/11/2015 12:57 AM, Yunzhi Li wrote:
> We initiate dwc2 usb controller in BIOS, when kernel driver
> start-up we should reset AHB hclk domain to reset all AHB
> interface registers to default. Without this the FIFO value
> setting might be incorrect because calculating FIFO size need the
> power-on value of GRXFSIZ/GNPTXFSIZ/HPTXFSIZ registers.
> 
> This patch could avoid warnning massage like in rk3288 platform:
> [    2.074764] dwc2 ff580000.usb: 256 invalid for
> host_perio_tx_fifo_size. Check HW configuration.
> 
> Signed-off-by: Yunzhi Li <lyz@rock-chips.com>
> ---
> 
>  drivers/usb/dwc2/platform.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.c
> index 9093530..ec6bf6b 100644
> --- a/drivers/usb/dwc2/platform.c
> +++ b/drivers/usb/dwc2/platform.c
> @@ -42,6 +42,7 @@
>  #include <linux/of_device.h>
>  #include <linux/mutex.h>
>  #include <linux/platform_device.h>
> +#include <linux/reset.h>
>  
>  #include <linux/usb/of.h>
>  
> @@ -165,6 +166,7 @@ static int dwc2_driver_probe(struct platform_device *dev)
>  	struct resource *res;
>  	struct phy *phy;
>  	struct usb_phy *uphy;
> +	struct reset_control *rst;
>  	int retval;
>  	int irq;
>  
> @@ -189,6 +191,16 @@ static int dwc2_driver_probe(struct platform_device *dev)
>  
>  	hsotg->dev = &dev->dev;
>  
> +	/* AHB hclk domain reset, set all AHB interface registers to default */
> +	rst = devm_reset_control_get_optional(&dev->dev, "ahb");
> +	if (IS_ERR(rst)) {
> +		dev_dbg(&dev->dev, "Can't get dwc2 AHB reset\n");
> +	} else {
> +		reset_control_assert(rst);
> +		udelay(5);
> +		reset_control_deassert(rst);
> +	}
> +
>  	/*
>  	 * Use reasonable defaults so platforms don't have to provide these.
>  	 */
> 

I didn't receive the other two patches in this series so I was
confused about where the "ahb_reset" was coming from when I
replied to your other patch.

I see you changed the name and documented the DT so never mind.

Another thing is that there probably shouldn't be a debug
message on the IS_ERR condition since that is the common case
and of no interest to other platforms.

The other two resets you added aren't used by the driver
anywhere right? Maybe those should be left out until they are.

John
