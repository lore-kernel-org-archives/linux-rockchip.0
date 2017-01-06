From: Grygorii Strashko <grygorii.strashko-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH v5 1/6] usb: separate out sysdev pointer from usb_bus
Date: Fri, 6 Jan 2017 13:33:14 -0600
Message-ID: <9db2c3f1-aa70-97c2-830c-6ec5454903d9@ti.com>
References: <1479383028-27701-2-git-send-email-sriram.dash@nxp.com>
 <20161203001953.GA123997@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20161203001953.GA123997-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Sriram Dash <sriram.dash-3arQi8VN3Tc@public.gmane.org>
Cc: Peter Chen <peter.chen-3arQi8VN3Tc@public.gmane.org>, Catalin Marinas <catalin.marinas-5wv7dgnIgG8@public.gmane.org>, mathias.nyman-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, felipe.balbi-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Dann Frazier <dann.frazier-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, Yoshihiro Shimoda <yoshihiro.shimoda.uh-zM6kxYcvzFBBDgjK7y7TUQ@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Bjorn Andersson <bjorn.andersson-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, David Fisher <david.fisher1-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "Thang Q. Nguyen" <tqnguyen-qTEPVZfXA3Y@public.gmane.org>, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org, Ming Lei <tom.leiming-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, suresh.gupta-3arQi8VN3Tc@public.gmane.org, Sinjan Kumar <sinjank-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, pku.leo-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Jon Masters <jcm-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org



On 12/02/2016 06:19 PM, Brian Norris wrote:
> Hi all,
> 
> On Thu, Nov 17, 2016 at 05:13:43PM +0530, Sriram Dash wrote:
>> From: Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>
>>
>> For xhci-hcd platform device, all the DMA parameters are not
>> configured properly, notably dma ops for dwc3 devices.
>>
>> The idea here is that you pass in the parent of_node along with
>> the child device pointer, so it would behave exactly like the
>> parent already does. The difference is that it also handles all
>> the other attributes besides the mask.
>>
>> sysdev will represent the physical device, as seen from firmware
>> or bus.Splitting the usb_bus->controller field into the
>> Linux-internal device (used for the sysfs hierarchy, for printks
>> and for power management) and a new pointer (used for DMA,
>> DT enumeration and phy lookup) probably covers all that we really
>> need.
>>
>> Signed-off-by: Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>
>> Signed-off-by: Sriram Dash <sriram.dash-3arQi8VN3Tc@public.gmane.org>
>> Tested-by: Baolin Wang <baolin.wang-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
>> Cc: Felipe Balbi <felipe.balbi-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
>> Cc: Grygorii Strashko <grygorii.strashko-l0cyMroinI0@public.gmane.org>
>> Cc: Sinjan Kumar <sinjank-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>
>> Cc: David Fisher <david.fisher1-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
>> Cc: Catalin Marinas <catalin.marinas-5wv7dgnIgG8@public.gmane.org>
>> Cc: "Thang Q. Nguyen" <tqnguyen-qTEPVZfXA3Y@public.gmane.org>
>> Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh-zM6kxYcvzFBBDgjK7y7TUQ@public.gmane.org>
>> Cc: Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>
>> Cc: Bjorn Andersson <bjorn.andersson-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
>> Cc: Ming Lei <tom.leiming-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Cc: Jon Masters <jcm-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
>> Cc: Dann Frazier <dann.frazier-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>
>> Cc: Peter Chen <peter.chen-3arQi8VN3Tc@public.gmane.org>
>> Cc: Leo Li <pku.leo-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> ---
>> Changes in v5:
>>   - No update
>>
>> Changes in v4:
>>   - No update
>>
>> Changes in v3: 
>>   - usb is_device_dma_capable instead of directly accessing 
>>     dma props. 
>>  
>> Changes in v2: 
>>   - Split the patch wrt driver
> 
> I didn't notice this series had been reposted a few times. For some
> reason, this wasn't that easy to find in search engines... Anyway, when
> the whole series is applied, this fixes my XHCI probe issues for DWC3
> host mode. Thanks!
> 
> Tested-by: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> 
> But I noticed that Felipe has applied patches 5 and 6 in -next, while
> the rest are still outstanding. That means I hit the dma_mask WARN_ON()
> in xhci-plat.c, and it eventually fails to probe with -EIO still:
> 
> [    2.060272] ------------[ cut here ]------------
> [    2.064908] WARNING: CPU: 5 PID: 1 at drivers/usb/host/xhci-plat.c:159 xhci_plat_probe+0x5c/0x444
> ...
> [    2.288885] [<ffffff80084ed638>] xhci_plat_probe+0x5c/0x444
> [    2.294456] [<ffffff800844519c>] platform_drv_probe+0x60/0xac
> [    2.300200] [<ffffff8008443000>] driver_probe_device+0x12c/0x2a0
> [    2.306204] [<ffffff80084431f8>] __driver_attach+0x84/0xb0
> [    2.311687] [<ffffff8008441eb4>] bus_for_each_dev+0x9c/0xcc
> [    2.317256] [<ffffff80084429fc>] driver_attach+0x2c/0x34
> [    2.322566] [<ffffff800844255c>] bus_add_driver+0xf0/0x1f4
> [    2.328049] [<ffffff8008443ebc>] driver_register+0x9c/0xe8
> [    2.333530] [<ffffff80084450e0>] __platform_driver_register+0x60/0x6c
> [    2.339968] [<ffffff8008c2f1ec>] xhci_plat_init+0x2c/0x34
> [    2.345366] [<ffffff8008083208>] do_one_initcall+0xa4/0x13c
> [    2.350936] [<ffffff8008c00d88>] kernel_init_freeable+0x1bc/0x274
> [    2.357026] [<ffffff800874cce0>] kernel_init+0x18/0x104
> [    2.362247] [<ffffff8008082e80>] ret_from_fork+0x10/0x50
> [    2.374615] xhci-hcd: probe of xhci-hcd.1.auto failed with error -5
> [    2.380962] ------------[ cut here ]------------
> [    2.385588] WARNING: CPU: 4 PID: 1 at drivers/usb/host/xhci-plat.c:159 xhci_plat_probe+0x5c/0x444
> ...
> [    2.637372] [<ffffff80084ed638>] xhci_plat_probe+0x5c/0x444
> [    2.642941] [<ffffff800844519c>] platform_drv_probe+0x60/0xac
> [    2.648685] [<ffffff8008443000>] driver_probe_device+0x12c/0x2a0
> [    2.654688] [<ffffff80084431f8>] __driver_attach+0x84/0xb0
> [    2.660170] [<ffffff8008441eb4>] bus_for_each_dev+0x9c/0xcc
> [    2.665739] [<ffffff80084429fc>] driver_attach+0x2c/0x34
> [    2.671048] [<ffffff800844255c>] bus_add_driver+0xf0/0x1f4
> [    2.676532] [<ffffff8008443ebc>] driver_register+0x9c/0xe8
> [    2.682012] [<ffffff80084450e0>] __platform_driver_register+0x60/0x6c
> [    2.688450] [<ffffff8008c2f1ec>] xhci_plat_init+0x2c/0x34
> [    2.693845] [<ffffff8008083208>] do_one_initcall+0xa4/0x13c
> [    2.699415] [<ffffff8008c00d88>] kernel_init_freeable+0x1bc/0x274
> [    2.705505] [<ffffff800874cce0>] kernel_init+0x18/0x104
> [    2.710726] [<ffffff8008082e80>] ret_from_fork+0x10/0x50
> [    2.716075] xhci-hcd: probe of xhci-hcd.2.auto failed with error -5
> 
> What's happening with patches 1-4?
> 

I can observe this warning also with 4.10-rc2

  11.709204] ------------[ cut here ]------------
[   11.709218] WARNING: CPU: 0 PID: 163 at drivers/usb/host/xhci-plat.c:168 xhci_plat_probe+0x180/0x450 [xhci_plat_hcd]
[   11.709220] Modules linked in: xhci_plat_hcd(+) xhci_hcd usbcore dwc3 udc_core usb_common evdev snd_soc_simple_card snd_soc_simple_card_utils omapfb cfbfillrect cfbimgblt encoder_tpd12s015 connector_hdmi cfbcopyarea leds_gpi4
[   11.709308] CPU: 0 PID: 163 Comm: systemd-udevd Not tainted 4.10.0-rc2-00328-g0eeded4-dirty #124
[   11.709310] Hardware name: Generic DRA74X (Flattened Device Tree)
[   11.709326] [<c011013c>] (unwind_backtrace) from [<c010c300>] (show_stack+0x10/0x14)
[   11.709334] [<c010c300>] (show_stack) from [<c04a0038>] (dump_stack+0xac/0xe0)
[   11.709345] [<c04a0038>] (dump_stack) from [<c0137024>] (__warn+0xd8/0x104)
[   11.709354] [<c0137024>] (__warn) from [<c01370fc>] (warn_slowpath_null+0x20/0x28)
[   11.709365] [<c01370fc>] (warn_slowpath_null) from [<bf494280>] (xhci_plat_probe+0x180/0x450 [xhci_plat_hcd])
[   11.709401] [<bf494280>] (xhci_plat_probe [xhci_plat_hcd]) from [<c055f258>] (platform_drv_probe+0x4c/0xb0)
[   11.709409] [<c055f258>] (platform_drv_probe) from [<c055d2b4>] (driver_probe_device+0x200/0x2d4)
[   11.709418] [<c055d2b4>] (driver_probe_device) from [<c055d448>] (__driver_attach+0xc0/0xc4)
[   11.709426] [<c055d448>] (__driver_attach) from [<c055b730>] (bus_for_each_dev+0x6c/0xa0)
[   11.709434] [<c055b730>] (bus_for_each_dev) from [<c055c894>] (bus_add_driver+0x18c/0x214)
[   11.709441] [<c055c894>] (bus_add_driver) from [<c055e280>] (driver_register+0x78/0xf8)
[   11.709447] [<c055e280>] (driver_register) from [<c010188c>] (do_one_initcall+0x3c/0x174)
[   11.709454] [<c010188c>] (do_one_initcall) from [<c023c05c>] (do_init_module+0x5c/0x1d0)
[   11.709463] [<c023c05c>] (do_init_module) from [<c01da5c0>] (load_module+0x1d48/0x23a8)
[   11.709472] [<c01da5c0>] (load_module) from [<c01dae38>] (SyS_finit_module+0xa4/0xb8)
[   11.709481] [<c01dae38>] (SyS_finit_module) from [<c01079c8>] (__sys_trace_return+0x0/0x10)
[   11.709524] ---[ end trace 2744875bad6cd18f ]---
[   11.709757] xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
 

-- 
regards,
-grygorii
