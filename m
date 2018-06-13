From: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [regression] HDMI breakage just before poweroff
Date: Wed, 13 Jun 2018 09:15:18 +0200
Message-ID: <CAAMcf8AmuMStdSUHGEQhii7BUtTRHOSyLhop43rf_nX0GROnnw@mail.gmail.com>
References: <CAAMcf8D86ssM+YeFAXaYDm9QwwAQLdaOgWyC2F8yQ-_-UNyY+A@mail.gmail.com>
 <5AEA873A.7080701@rock-chips.com>
 <0284fa4f-abd6-26f6-31e2-1a6d24777733@arm.com>
 <CAAMcf8BJ1skbmR7AazyTPkkdyMoyuA0ihj=Gbnhb9nKWf3FSGg@mail.gmail.com>
 <5B1F4375.7000000@rock-chips.com>
 <77e4c6e1-015f-5fac-66b6-c942bb2dc9d8@arm.com>
 <5B1F9FF7.5070203@rock-chips.com>
 <CAAFQd5D__ArEYSVoWL5A40X6vbYxJ-vOYpsXxiLujC-XK9u2+A@mail.gmail.com>
 <86efhc8dyg.wl-marc.zyngier@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <86efhc8dyg.wl-marc.zyngier-5wv7dgnIgG8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Marc Zyngier <marc.zyngier-5wv7dgnIgG8@public.gmane.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jeffy <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Klaus Goger <klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, Jakob Unterwurzacher <jakob.unterwurzacher-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Jun 12, 2018 at 1:02 PM, Marc Zyngier <marc.zyngier-5wv7dgnIgG8@public.gmane.org> wrote:
> On Tue, 12 Jun 2018 11:30:49 +0100,
> Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wrote:
>>
>> On Tue, Jun 12, 2018 at 7:27 PM JeffyChen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
>> >
>> > Hi Marc,
>> >
>> > On 06/12/2018 04:54 PM, Marc Zyngier wrote:
>> > > On 12/06/18 04:52, JeffyChen wrote:
>> > >> Hi Vicente,
>> > >>
>> > >> On 06/12/2018 06:04 AM, Vicente Bergas wrote:
>> > >>> On Thu, May 3, 2018 at 2:14 PM, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org> wrote:
>> > >>>> On 03/05/18 04:51, JeffyChen wrote:
>> > >>>>> On 05/03/2018 03:36 AM, Vicente Bergas wrote:
>> > >>> [snip]
>> > >>>>>> With 4.17.0-rc3, when reaching the halted state, the HDMI console
>> > >>>>>> shows colorful static noise.
>> > >>>>>>
>> > >>>>> we've added a shutdown() to the iommu driver:
>> > >>>>> https://patchwork.kernel.org/patch/10230817/
>> > >>>>>
>> > >>>>> any chance related?
>> > >>>>
>> > >>>> For sure - the IOMMU shutdown disables paging, so if the VOP is still
>> > >>>> scanning out then that will result in whatever IOVAs it was using now going
>> > >>>> straight out onto the bus as physical addresses. Between the RK3399 memory
>> > >>>> map and the way the IOVA allocator works, that probably means it's reading
>> > >>>> from all over the peripherals region, which, er, isn't ideal.
>> > >>>
>> > >>> Hi,
>> > >>> just wondering if there has been any progress on that front?
>> > >>>
>> > >>
>> > >> maybe we can add .shutdown() to rockchip_drm_drv too? (maybe just call
>> > >> drm_atomic_helper_shutdown())
>> > >>
>> > >> could you help to try this hack:
>> > >>
>> > >> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
>> > >> @@ -451,6 +451,7 @@ MODULE_DEVICE_TABLE(of, rockchip_drm_dt_ids);
>> > >>    static struct platform_driver rockchip_drm_platform_driver = {
>> > >>           .probe = rockchip_drm_platform_probe,
>> > >>           .remove = rockchip_drm_platform_remove,
>> > >> +       .shutdown = rockchip_drm_platform_remove,
>> > >>
>> > >
>> > > Is there any mechanism guaranteeing the ordering of shutdown between VOP
>> > > and IOMMU?
>> >
>> > it seems like the device_shutdown() will walk the devices_kset->list
>> > backward.
>> >
>> > and the devices_kset->list's order is based on the probe
>> > order(drivers/base/dd.c -> really_probe() -> devices_kset_move_last())
>> >
>> > and we are using of_iommu for rockchip-iommu, which would make sure
>> > iommu probed before iommu master, so the vop iommu would be
>> > shutdown after vop
>>
>> Rather than shutting down the IOMMU, shouldn't we shut down all the
>> respective master? The latter would automatically imply shutting down
>> the IOMMUs, so we could remove the shutdown callback from the IOMMU
>> driver.
>
> As long as you can definitely ensure that you cannot have a active
> IOMMU by the time you hit reboot/halt/kexec, that should work. But
> experience seems to indicate that this is not a universal truth.
>
> I'd be more confident if we had some form of fallback that would work
> in the kexec/kdump use case.
>
> Thanks,
>
>         M.
>
> --
> Jazz is not dead, it just smell funny.

Hi,
just tested it.
There was an issue because of 'incompatible pointer type',
see the proper patch at the bottom.

It seems to do what it is expected to do, that is, it shuts down the display.
I am not sure that this is what is wanted.
When the system is in the halted state, should not it show the last messages?
For this, the display needs to be operational.

Regards,
  Vicente.

--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -451,6 +451,7 @@
 static struct platform_driver rockchip_drm_platform_driver = {
     .probe = rockchip_drm_platform_probe,
     .remove = rockchip_drm_platform_remove,
+    .shutdown = (void (*)(struct platform_device
*))rockchip_drm_platform_remove,
     .driver = {
         .name = "rockchip-drm",
         .of_match_table = rockchip_drm_dt_ids,
