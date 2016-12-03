From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v5 1/6] usb: separate out sysdev pointer from usb_bus
Date: Fri, 2 Dec 2016 16:19:56 -0800
Message-ID: <20161203001953.GA123997@google.com>
References: <1479383028-27701-2-git-send-email-sriram.dash@nxp.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1479383028-27701-2-git-send-email-sriram.dash@nxp.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Sriram Dash <sriram.dash@nxp.com>
Cc: linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, mathias.nyman@intel.com, gregkh@linuxfoundation.org, suresh.gupta@nxp.com, felipe.balbi@linux.intel.com, stern@rowland.harvard.edu, pku.leo@gmail.com, Arnd Bergmann <arnd@arndb.de>, Grygorii Strashko <grygorii.strashko@ti.com>, Sinjan Kumar <sinjank@codeaurora.org>, David Fisher <david.fisher1@synopsys.com>, Catalin Marinas <catalin.marinas@arm.com>, "Thang Q. Nguyen" <tqnguyen@apm.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Stephen Boyd <sboyd@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>, Ming Lei <tom.leiming@gmail.com>, Jon Masters <jcm@redhat.com>, Dann Frazier <dann.frazier@canonical.com>, Peter Chen <peter.chen@nxp.com>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi all,

On Thu, Nov 17, 2016 at 05:13:43PM +0530, Sriram Dash wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> For xhci-hcd platform device, all the DMA parameters are not
> configured properly, notably dma ops for dwc3 devices.
> 
> The idea here is that you pass in the parent of_node along with
> the child device pointer, so it would behave exactly like the
> parent already does. The difference is that it also handles all
> the other attributes besides the mask.
> 
> sysdev will represent the physical device, as seen from firmware
> or bus.Splitting the usb_bus->controller field into the
> Linux-internal device (used for the sysfs hierarchy, for printks
> and for power management) and a new pointer (used for DMA,
> DT enumeration and phy lookup) probably covers all that we really
> need.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Sriram Dash <sriram.dash@nxp.com>
> Tested-by: Baolin Wang <baolin.wang@linaro.org>
> Cc: Felipe Balbi <felipe.balbi@linux.intel.com>
> Cc: Grygorii Strashko <grygorii.strashko@ti.com>
> Cc: Sinjan Kumar <sinjank@codeaurora.org>
> Cc: David Fisher <david.fisher1@synopsys.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: "Thang Q. Nguyen" <tqnguyen@apm.com>
> Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> Cc: Stephen Boyd <sboyd@codeaurora.org>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Ming Lei <tom.leiming@gmail.com>
> Cc: Jon Masters <jcm@redhat.com>
> Cc: Dann Frazier <dann.frazier@canonical.com>
> Cc: Peter Chen <peter.chen@nxp.com>
> Cc: Leo Li <pku.leo@gmail.com>
> ---
> Changes in v5:
>   - No update
> 
> Changes in v4:
>   - No update
> 
> Changes in v3: 
>   - usb is_device_dma_capable instead of directly accessing 
>     dma props. 
>  
> Changes in v2: 
>   - Split the patch wrt driver

I didn't notice this series had been reposted a few times. For some
reason, this wasn't that easy to find in search engines... Anyway, when
the whole series is applied, this fixes my XHCI probe issues for DWC3
host mode. Thanks!

Tested-by: Brian Norris <briannorris@chromium.org>

But I noticed that Felipe has applied patches 5 and 6 in -next, while
the rest are still outstanding. That means I hit the dma_mask WARN_ON()
in xhci-plat.c, and it eventually fails to probe with -EIO still:

[    2.060272] ------------[ cut here ]------------
[    2.064908] WARNING: CPU: 5 PID: 1 at drivers/usb/host/xhci-plat.c:159 xhci_plat_probe+0x5c/0x444
...
[    2.288885] [<ffffff80084ed638>] xhci_plat_probe+0x5c/0x444
[    2.294456] [<ffffff800844519c>] platform_drv_probe+0x60/0xac
[    2.300200] [<ffffff8008443000>] driver_probe_device+0x12c/0x2a0
[    2.306204] [<ffffff80084431f8>] __driver_attach+0x84/0xb0
[    2.311687] [<ffffff8008441eb4>] bus_for_each_dev+0x9c/0xcc
[    2.317256] [<ffffff80084429fc>] driver_attach+0x2c/0x34
[    2.322566] [<ffffff800844255c>] bus_add_driver+0xf0/0x1f4
[    2.328049] [<ffffff8008443ebc>] driver_register+0x9c/0xe8
[    2.333530] [<ffffff80084450e0>] __platform_driver_register+0x60/0x6c
[    2.339968] [<ffffff8008c2f1ec>] xhci_plat_init+0x2c/0x34
[    2.345366] [<ffffff8008083208>] do_one_initcall+0xa4/0x13c
[    2.350936] [<ffffff8008c00d88>] kernel_init_freeable+0x1bc/0x274
[    2.357026] [<ffffff800874cce0>] kernel_init+0x18/0x104
[    2.362247] [<ffffff8008082e80>] ret_from_fork+0x10/0x50
[    2.374615] xhci-hcd: probe of xhci-hcd.1.auto failed with error -5
[    2.380962] ------------[ cut here ]------------
[    2.385588] WARNING: CPU: 4 PID: 1 at drivers/usb/host/xhci-plat.c:159 xhci_plat_probe+0x5c/0x444
...
[    2.637372] [<ffffff80084ed638>] xhci_plat_probe+0x5c/0x444
[    2.642941] [<ffffff800844519c>] platform_drv_probe+0x60/0xac
[    2.648685] [<ffffff8008443000>] driver_probe_device+0x12c/0x2a0
[    2.654688] [<ffffff80084431f8>] __driver_attach+0x84/0xb0
[    2.660170] [<ffffff8008441eb4>] bus_for_each_dev+0x9c/0xcc
[    2.665739] [<ffffff80084429fc>] driver_attach+0x2c/0x34
[    2.671048] [<ffffff800844255c>] bus_add_driver+0xf0/0x1f4
[    2.676532] [<ffffff8008443ebc>] driver_register+0x9c/0xe8
[    2.682012] [<ffffff80084450e0>] __platform_driver_register+0x60/0x6c
[    2.688450] [<ffffff8008c2f1ec>] xhci_plat_init+0x2c/0x34
[    2.693845] [<ffffff8008083208>] do_one_initcall+0xa4/0x13c
[    2.699415] [<ffffff8008c00d88>] kernel_init_freeable+0x1bc/0x274
[    2.705505] [<ffffff800874cce0>] kernel_init+0x18/0x104
[    2.710726] [<ffffff8008082e80>] ret_from_fork+0x10/0x50
[    2.716075] xhci-hcd: probe of xhci-hcd.2.auto failed with error -5

What's happening with patches 1-4?

Regards,
Brian
