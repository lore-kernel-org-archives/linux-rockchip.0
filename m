From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] usb: host: ohci-platform: Disable ohci for rk3288
Date: Thu, 2 Jul 2020 15:38:31 +0100
Message-ID: <f0ae5915-9cb8-9550-f05c-6cebad191a14@arm.com>
References: <20200702090504.36670-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200702090504.36670-1-jagan@amarulasolutions.com>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Jagan Teki <jagan@amarulasolutions.com>, Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, mylene.josserand@collabora.com
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Suniel Mahesh <sunil@amarulasolutions.com>, William Wu <william.wu@rock-chips.com>, Michael Trimarchi <michael@amarulasolutions.com>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

On 2020-07-02 10:05, Jagan Teki wrote:
> rk3288 has usb host0 ohci controller but doesn't actually work
> on real hardware but it works with new revision chip rk3288w.
> 
> So, disable ohci for rk3288.
> 
> For rk3288w chips the compatible update code is handled by bootloader.
> 
> Cc: William Wu <william.wu@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Note:
> - U-Boot patch for compatible update
> https://patchwork.ozlabs.org/project/uboot/patch/20200702084820.35942-1-jagan@amarulasolutions.com/
> 
>   drivers/usb/host/ohci-platform.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/host/ohci-platform.c b/drivers/usb/host/ohci-platform.c
> index 7addfc2cbadc..24655ed6a7e0 100644
> --- a/drivers/usb/host/ohci-platform.c
> +++ b/drivers/usb/host/ohci-platform.c
> @@ -96,7 +96,7 @@ static int ohci_platform_probe(struct platform_device *dev)
>   	struct ohci_hcd *ohci;
>   	int err, irq, clk = 0;
>   
> -	if (usb_disabled())
> +	if (usb_disabled() || of_machine_is_compatible("rockchip,rk3288"))

This seems unnecessary to me - if we've even started probing a driver 
for a broken piece of hardware to the point that we need magic checks to 
bail out again, then something is already fundamentally wrong.

Old boards only sold with the original SoC variant have no reason to 
enable the OHCI (since it never worked originally), thus will never 
execute this check.

New boards designed around the W variant to make use of the OHCI can 
freely enable it either way.

The only relative-edge-case where it might matter is older board designs 
still in production which have shipped with both SoC variants. Enabling 
OHCI can't be *necessary* given that it's still broken on a lot of 
deployed boards, so at best it must be an opportunistic nice-to-have. 
Since we're already having to rely on the bootloader to patch up the 
devicetree for other low-level differences in this case, it should be 
part of that responsibility for it to only enable the OHCI on the 
appropriate SoC variant too. Statically enabling it in the DTS for a 
board where it may well not work is just bad.

As soon as a DTB with a broken piece of hardware enabled gets passed to 
an OS, then the damage is already done. A driver patch in a future 
version of Linux that magically knows better and ignores it isn't going 
to help a user booting an older kernel image, or some other OS entirely.

Robin.

>   		return -ENODEV;
>   
>   	/*
> 
