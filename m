From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [GIT PULL 1/2] ARM: rockchip: soc code changes for 4.1
Date: Thu, 26 Mar 2015 18:41:44 +0100
Message-ID: <9711811.dP5TtE1nVp@phil>
References: <2684132.lK2CyBin0M@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2684132.lK2CyBin0M@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: arm-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 18. M=E4rz 2015, 17:41:15 schrieb Heiko St=FCbner:
> Hi Arnd, Olof,
> =

> some soc code changes for 4.1 . I hope the tag explains it, so please pull

as heard in Arnd's talk on ELC yesterday, I'm supposed to ping after one we=
ek =

of inactivity, so any news on these two pulls? :-)


Thanks
Heiko

> =

> =

> Thanks
> Heiko
> =

> The following changes since commit c517d838eb7d07bbe9507871fab3931deccff5=
39:
> =

>   Linux 4.0-rc1 (2015-02-22 18:21:14 -0800)
> =

> are available in the git repository at:
> =

>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git
> tags/v4.1-rockchip-soc1
> =

> for you to fetch changes up to a0307d186f5015ee3d77e209e5c06190cbf02478:
> =

>   ARM: rockchip: disable watchdog during suspend (2015-03-11 22:41:02 +01=
00)
> =

> ----------------------------------------------------------------
> Some suspend improvements reducing resume time and making sure the
> watchdog does not reset after 12 hours and a change to constify and
> staticize some smp parts.
> =

> ----------------------------------------------------------------
> Chris Zhong (2):
>       ARM: rockchip: decrease the wait time for resume
>       ARM: rockchip: disable watchdog during suspend
> =

> Krzysztof Kozlowski (1):
>       ARM: rockchip: Constify struct regmap_config and staticize local
> function
> =

>  arch/arm/mach-rockchip/platsmp.c |  4 ++--
>  arch/arm/mach-rockchip/pm.c      | 14 +++++++++++---
>  arch/arm/mach-rockchip/pm.h      |  6 ++++++
>  3 files changed, 19 insertions(+), 5 deletions(-)
