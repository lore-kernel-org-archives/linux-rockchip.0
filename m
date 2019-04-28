From: Olof Johansson <olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org>
Subject: Re: [GIT PULL 1/5] Rockchip dts32 updates for 5.2 - round 2
Date: Sun, 28 Apr 2019 13:00:18 -0700
Message-ID: <20190428200018.yi3k6lqz7xbpcte3@localhost>
References: <3379363.gjmLGbHmEH@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <3379363.gjmLGbHmEH@phil>
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

On Wed, Apr 24, 2019 at 07:57:03PM +0200, Heiko Stuebner wrote:
> Hi Arnd, Kevin Olof,
> 
> please find below and in the replies round2 of Rockchip devicetree updates
> targetted at 5.2. Again nothing major but a lot of attention for the rk3288
> and a lot of general updates - Please pull.
> 
> The devicetree updates (32+64 bit) go on top of the previous tags from
> round 1, while the other just go on top of 5.1-rc1 (or later of course).
> 
> Thanks
> Heiko
> 
> The following changes since commit 4b028ebd4e3d86c61161b3a937b746043006dcbe:
> 
>   ARM: dts: rockchip: enable vop0 and hdmi nodes to rk3066a-mk808 (2019-03-31 17:28:05 +0200)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.2-rockchip-dts32-2
> 
> for you to fetch changes up to 356150e86d75653d1f679c6ef583144b26d0a686:
> 
>   ARM: dts: rockchip: vdd_gpu off in suspend for rk3288-veyron (2019-04-12 22:28:38 +0200)
> 
> ----------------------------------------------------------------
> Much love for rk3288 in general (power coefficients for the scheduler)
> and veyron chromeos devices in particular (regulators, suspend, cleanups)
> and bulk conversion of the remaining gpios to the helper constants denoting
> the iomux.

Merged, thanks!


-Olof
