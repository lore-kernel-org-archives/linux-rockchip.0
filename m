From: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [regression] HDMI breakage just before poweroff
Date: Fri, 15 Jun 2018 18:39:41 +0200
Message-ID: <CAAMcf8D1-7YvOeOMd+rJOWX7XNQwKeAYjfmyAHOR8TC6vc=G1w@mail.gmail.com>
References: <CAAMcf8D86ssM+YeFAXaYDm9QwwAQLdaOgWyC2F8yQ-_-UNyY+A@mail.gmail.com>
 <5AEA873A.7080701@rock-chips.com>
 <0284fa4f-abd6-26f6-31e2-1a6d24777733@arm.com>
 <CAAMcf8BJ1skbmR7AazyTPkkdyMoyuA0ihj=Gbnhb9nKWf3FSGg@mail.gmail.com>
 <5B1F4375.7000000@rock-chips.com>
 <77e4c6e1-015f-5fac-66b6-c942bb2dc9d8@arm.com>
 <5B1F9FF7.5070203@rock-chips.com>
 <CAAFQd5D__ArEYSVoWL5A40X6vbYxJ-vOYpsXxiLujC-XK9u2+A@mail.gmail.com>
 <86efhc8dyg.wl-marc.zyngier@arm.com>
 <CAAMcf8AmuMStdSUHGEQhii7BUtTRHOSyLhop43rf_nX0GROnnw@mail.gmail.com>
 <cc147c40-dbad-b714-3fe6-858854a56004@arm.com>
 <5B20F5F0.9090101@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <5B20F5F0.9090101-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: JeffyChen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Marc Zyngier <marc.zyngier-5wv7dgnIgG8@public.gmane.org>, Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Klaus Goger <klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, Jakob Unterwurzacher <jakob.unterwurzacher-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Jun 13, 2018 at 12:46 PM, JeffyChen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
> Hi Marc & Vicente,
>
> On 06/13/2018 06:26 PM, Marc Zyngier wrote:
>>>
>>> >
>>> >--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
>>> >+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
>>> >@@ -451,6 +451,7 @@
>>> >  static struct platform_driver rockchip_drm_platform_driver = {
>>> >      .probe = rockchip_drm_platform_probe,
>>> >      .remove = rockchip_drm_platform_remove,
>>> >+    .shutdown = (void (*)(struct platform_device
>>> >*))rockchip_drm_platform_remove,
>>
>> No, please...:-(  Provide a wrapper that returns void instead.
>
>
> hmmm, this is just a test only hack, i am thinking maybe
> drm_atomic_helper_shutdown is enough for shutdown() ?
>
>
> something like:
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -442,6 +442,14 @@ static int rockchip_drm_platform_remove(struct
> platform_device *pdev)
>         return 0;
>  }
>
> +static void rockchip_drm_platform_shutdown(struct platform_device *pdev)
> +{
> +       struct drm_device *drm = platform_get_drvdata(pdev);
> +
> +       if (drm)
> +               drm_atomic_helper_shutdown(drm);
> +}
> +
>
Hi,
I can confirm that rockchip_drm_platform_shutdown works as fine as
rockchip_drm_platform_remove.
Just a note: The first time I noticed this error was because it
appeared on display, now that the display is off, are we sure the
error is fixed?
Also, could there be other peripherals that need to be powered off
before the iommu?
For curiosity: why is the iommu disabled before kexec instead of
resetting it after kexec?

Regards,
  Vicente.
