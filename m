From: Olof Johansson <olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org>
Subject: Re: [GIT PULL 1/3] Rockchip dts32 updates for 4.21 round2
Date: Wed, 12 Dec 2018 13:07:32 -0800
Message-ID: <20181212210732.443fl7n7u2a4yefn@localhost>
References: <7153021.iXIDTOc0j0@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <7153021.iXIDTOc0j0@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, arm-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, Dec 12, 2018 at 09:43:36AM +0100, Heiko Stuebner wrote:
> Hi Arnd, Kevin Olof,
> 
> please find below and in the replies a second round of pull requests
> for 4.21. This includes another pull for 64bit dts changes and a single
> patch from Rob that should go on top of next/dt after merging the dts
> changes, as it converts the board-binding txt to the newer yaml format.
> 
> This pull is also somewhat special for me, as it includes support for the
> BQ Edison2 tablet (including graphics) that was the actual reason for me
> to start looking into trying to get Rockchip support into mainline.
> 
> Funnily enough that was over 5 years ago - so didn't even take "long" :-D .

Nice!

> So please pull.
> Heiko
> 
> The following changes since commit 99935bd4b5b4558beb069222e6d6143fe5830d64:
> 
>   ARM: dts: rockchip: Add all CPUs in cooling maps (2018-11-19 14:45:07 +0100)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.21-rockchip-dts32-2
> 
> for you to fetch changes up to 7841b88a8fdddc0e7f3377fc42efe4cb3be1ed8b:
> 
>   ARM: dts: rockchip: Add internal timer support for rv1108 (2018-12-11 20:38:07 +0100)
> 
> ----------------------------------------------------------------
> RV1108 improvements (uart-dma, clocks, interrupt numbers, gmac support
> timer and emmc pins) from its first real-world user.
> RK3188 improvements (OPPv2, cpu node updates) to prepare for a new
> devicetree, the BQ Edison 2 Quad-Core.
> VPU device node for rk3288, right now only the jpeg encoder part
> will be in the kernel but hopefully other codecs will follow.

Merged, thanks.


-Olof
