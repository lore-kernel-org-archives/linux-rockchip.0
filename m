From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [GIT PULL] ARM: rockchip: some soc-level fixes for 4.1
Date: Wed, 06 May 2015 13:31:36 +0200
Message-ID: <1557869.mraOU6BI4b@diego>
References: <1612786.HeTW0LsLmg@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1612786.HeTW0LsLmg@diego>
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

Hi Arnd, Olof,

Am Samstag, 25. April 2015, 02:11:14 schrieb Heiko St=FCbner:
> I've collected some fixes which might be appropriate for 4.1-rc,
> so if they're ok, please pull.

is somebody doing arm-soc fixes for 4.1?
I currently don't see any activity at all and this pull is open for two wee=
ks =

now?


Heiko


> =

> Thanks
> Heiko
> =

> =

> The following changes since commit a0307d186f5015ee3d77e209e5c06190cbf024=
78:
> =

>   ARM: rockchip: disable watchdog during suspend (2015-03-11 22:41:02 +01=
00)
> =

> are available in the git repository at:
> =

>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git
> tags/v4.1-rockchip-socfixes1
> =

> for you to fetch changes up to 2a9fe3ca84afff6259820c4f62e579f41476becc:
> =

>   rockchip: make sure timer7 is enabled on rk3288 platforms (2015-04-16
> 21:22:17 +0200)
> =

> ----------------------------------------------------------------
> Two fixes from Chris Zhong, fixing some suspend oddities.
> And I've given up on the timer7 issue. While I initially thought
> devices would either have both the grave mmu issue requiring a uboot
> update and the timer7 issue or none, it looks like in all units in the
> field the mmu issue got fixed while the timer7 issue stayed on.
> So instead of making everybody wanting to use mainline jump through a
> hoop just make sure timer7 is on on boot before we init the arch-timer.
> =

> ----------------------------------------------------------------
> Chris Zhong (2):
>       ARM: rockchip: disable dapswjdp during suspend
>       ARM: rockchip: fix undefined instruction of reset_ctrl_regs
> =

> Heiko Stuebner (1):
>       rockchip: make sure timer7 is enabled on rk3288 platforms
> =

>  arch/arm/mach-rockchip/pm.c       | 33 +++++++++++++++++++++++++++++++++
>  arch/arm/mach-rockchip/pm.h       |  8 ++++++++
>  arch/arm/mach-rockchip/rockchip.c | 19 +++++++++++++++++++
>  3 files changed, 60 insertions(+)
