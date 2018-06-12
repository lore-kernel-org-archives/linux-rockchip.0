From: JeffyChen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [regression] HDMI breakage just before poweroff
Date: Tue, 12 Jun 2018 11:52:21 +0800
Message-ID: <5B1F4375.7000000@rock-chips.com>
References: <CAAMcf8D86ssM+YeFAXaYDm9QwwAQLdaOgWyC2F8yQ-_-UNyY+A@mail.gmail.com>
 <5AEA873A.7080701@rock-chips.com>
 <0284fa4f-abd6-26f6-31e2-1a6d24777733@arm.com>
 <CAAMcf8BJ1skbmR7AazyTPkkdyMoyuA0ihj=Gbnhb9nKWf3FSGg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAAMcf8BJ1skbmR7AazyTPkkdyMoyuA0ihj=Gbnhb9nKWf3FSGg-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Marc Zyngier <marc.zyngier-5wv7dgnIgG8@public.gmane.org>, =?UTF-8?B?6buE5a626ZKX?= <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Klaus Goger <klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Jakob Unterwurzacher <jakob.unterwurzacher-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Vicente,

On 06/12/2018 06:04 AM, Vicente Bergas wrote:
> On Thu, May 3, 2018 at 2:14 PM, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org> wrote:
>> On 03/05/18 04:51, JeffyChen wrote:
>>> On 05/03/2018 03:36 AM, Vicente Bergas wrote:
> [snip]
>>>> With 4.17.0-rc3, when reaching the halted state, the HDMI console
>>>> shows colorful static noise.
>>>>
>>> we've added a shutdown() to the iommu driver:
>>> https://patchwork.kernel.org/patch/10230817/
>>>
>>> any chance related?
>>
>> For sure - the IOMMU shutdown disables paging, so if the VOP is still
>> scanning out then that will result in whatever IOVAs it was using now going
>> straight out onto the bus as physical addresses. Between the RK3399 memory
>> map and the way the IOVA allocator works, that probably means it's reading
>> from all over the peripherals region, which, er, isn't ideal.
>
> Hi,
> just wondering if there has been any progress on that front?
>

maybe we can add .shutdown() to rockchip_drm_drv too? (maybe just call 
drm_atomic_helper_shutdown())

could you help to try this hack:

+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -451,6 +451,7 @@ MODULE_DEVICE_TABLE(of, rockchip_drm_dt_ids);
  static struct platform_driver rockchip_drm_platform_driver = {
         .probe = rockchip_drm_platform_probe,
         .remove = rockchip_drm_platform_remove,
+       .shutdown = rockchip_drm_platform_remove,


> Regards,
>    Vicente.
>
>
>
