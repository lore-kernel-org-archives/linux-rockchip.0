From: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH] drm/rockchip: Allow driver to be shutdown on reboot/kexec
Date: Wed, 5 Dec 2018 14:28:48 +0000
Message-ID: <dd1777ad-fe3e-a661-a27f-8ba418064b40@arm.com>
References: <20180805124807.18169-1-marc.zyngier@arm.com>
 <20181205030127.GA200921@google.com> <1693737.bVF0dcvACY@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1693737.bVF0dcvACY@diego>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, Brian Norris <briannorris@chromium.org>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Guenter Roeck <linux@roeck-us.net>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi all,

On 05/12/2018 14:11, Heiko Stübner wrote:
> Hi Brian,
> 
> Am Mittwoch, 5. Dezember 2018, 04:01:34 CET schrieb Brian Norris:
>> + others
>>
>> Hi,
>>
>> On Sun, Aug 05, 2018 at 01:48:07PM +0100, Marc Zyngier wrote:
>>> Leaving the DRM driver enabled on reboot or kexec has the annoying
>>> effect of leaving the display generating transactions whilst the
>>> IOMMU has been shut down.
>>>
>>> In turn, the IOMMU driver (which shares its interrupt line with
>>> the VOP) starts warning either on shutdown or when entering the
>>> secondary kernel in the kexec case (nothing is expected on that
>>> front).
>>>
>>> A cheap way of ensuring that things are nicely shut down is to
>>> register a shutdown callback in the platform driver.
>>>
>>> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
>>> ---
>>
>> This patch made it into 4.20-rc1 as well as -stable, and it has caused
>> regressions for me, on the Kevin and Scarlet [1] RK3399 platforms.
>>
>> On
>> shutdown/reboot, I see this:
>>
>> [   94.742559] WARNING: CPU: 4 PID: 2035 at
>> drivers/gpu/drm/drm_mode_config.c:477 drm_mode_config_cleanup+0x1c4/0x294
>> ...
>> [   94.775904] CPU: 4 PID: 2035 Comm: reboot Tainted: G        W        
>> 4.20.0-rc5+ #83 [   94.784651] Hardware name: Google Scarlet (DT)
>> [   94.789611] pstate: 20000005 (nzCv daif -PAN -UAO)
>> [   94.794959] pc : drm_mode_config_cleanup+0x1c4/0x294
>> [   94.800500] lr : drm_mode_config_cleanup+0x108/0x294
>> ...
>> [   94.898683] Call trace:
>> [   94.901410]  drm_mode_config_cleanup+0x1c4/0x294
>> [   94.906565]  rockchip_drm_unbind+0x4c/0x8c
>> [   94.911138]  component_master_del+0x88/0xb8
>> [   94.915807]  rockchip_drm_platform_remove+0x2c/0x44
>> [   94.921243]  rockchip_drm_platform_shutdown+0x20/0x2c
>> [   94.926881]  platform_drv_shutdown+0x2c/0x38
>> [   94.931647]  device_shutdown+0x164/0x1b8
>> [   94.936016]  kernel_restart_prepare+0x40/0x48
>> [   94.940878]  kernel_restart+0x20/0x68
>> [   94.944964]  __se_sys_reboot+0x1ac/0x204
>> [   94.949331]  __arm64_sys_reboot+0x2c/0x38
>> [   94.953806]  el0_svc_common+0xa4/0xec
>> [   94.957891]  el0_svc_compat_handler+0x30/0x3c
>> [   94.962753]  el0_svc_compat+0x8/0x18
>> [   94.966740] ---[ end trace b9ba2e701f4fb233 ]---
>> [   95.255169] Memory manager not clean during takedown.
>> [   95.260824] WARNING: CPU: 4 PID: 2035 at drivers/gpu/drm/drm_mm.c:950
>> drm_mm_takedown+0x34/0x44 ...
>> [   95.292314] CPU: 4 PID: 2035 Comm: reboot Tainted: G        W        
>> 4.20.0-rc5+ #83 [   95.301061] Hardware name: Google Scarlet (DT)
>> [   95.306020] pstate: 60000005 (nZCv daif -PAN -UAO)
>> [   95.311369] pc : drm_mm_takedown+0x34/0x44
>> [   95.315940] lr : drm_mm_takedown+0x34/0x44
>> ...
>> [   95.415857]  drm_mm_takedown+0x34/0x44
>> [   95.420042]  rockchip_drm_unbind+0x64/0x8c
>> [   95.424613]  component_master_del+0x88/0xb8
>> [   95.429283]  rockchip_drm_platform_remove+0x2c/0x44
>> [   95.434728]  rockchip_drm_platform_shutdown+0x20/0x2c
>> [   95.440360]  platform_drv_shutdown+0x2c/0x38
>> [   95.445127]  device_shutdown+0x164/0x1b8
>> [   95.449504]  kernel_restart_prepare+0x40/0x48
>> [   95.454358]  kernel_restart+0x20/0x68
>> [   95.458436]  __se_sys_reboot+0x1ac/0x204
>> [   95.462812]  __arm64_sys_reboot+0x2c/0x38
>> [   95.467287]  el0_svc_common+0xa4/0xec
>> [   95.471373]  el0_svc_compat_handler+0x30/0x3c
>> [   95.476235]  el0_svc_compat+0x8/0x18
>> [   95.480215] ---[ end trace b9ba2e701f4fb234 ]---
>>
>> It's especially bad on -stable kernels, where I believe the remove()
>> paths were even worse. This triggers a variety of OOPSes, and it's not
>> clear if those are simply because of backports (e.g., RK3399 did not
>> have support in 4.4.y, but our downstream has merged all sorts of
>> backports to make it work).
>>
>> Anyway, the above warnings occur on v4.20-rc, which I think is
>> justification enough for a revert.
> 
> That's strange. I remember testing quite a number of shutdown/reboot
> cycles before applying that patch. And for good measure did the same
> again right now.
> 
> - Kevin, with netboot firmware, booting into Debian+console only
> - Bob, with stock firmware, booting into Debian+KDE Plasma
> - Scarlet, with stock firmware, booting into Debian+KDE Plasma
> 
> With some random number of reboot and shutdowns on each I didn't
> see any warnings at all.

And I've been using this very patch for quite a while now.

Before suggesting a revert, I'd rather we understand what is going on,
and why is the DRM layer crapping itself that badly for a legitimate
operation (it is certainly better to have a shutdown than to let the VOP
scan out crap once the IOMMU has been shut down). In short, don't shoot
the messenger.

> 
>> I plan to submit a revert which I hope can go to 4.20 as well as
>> -stable. I'd hope the remove()/shutdown() paths should be fixed before
>> this gets applied again, and that it does not get shipped to -stable
>> kernels.
> 
> But judging by the fact that the warning indicates that somthing is still
> holding onto a framebuffer and a rmmod rockchipdrm is not possible
> at runrtime for likely the same reason, I guess we really might be creating
> a problem with that shutdown.

That's a potential root cause.

> 
> Can you maybe give "drm/rockchip: shutdown drm subsystem on shutdown" [2]
> a try? When the underlying issue of rebooting surfaced we had 2 competing 
> solutions, so we at least don't reopen the issue, that people have problems
> rebooting?

kexec working is certainly something I need. And I'd like to understand
why Brian sees this and nobody else.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...
