From: Olof Johansson <olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org>
Subject: Re: [GIT PULL 1/3] Rockchip driver updates for 4.21
Date: Fri, 30 Nov 2018 15:36:17 -0800
Message-ID: <20181130233617.k3c6pze5ofg3wetw@localhost>
References: <49803144.2ZsBJmaiIN@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <49803144.2ZsBJmaiIN@phil>
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

On Mon, Nov 26, 2018 at 11:06:06AM +0100, Heiko Stuebner wrote:
> Hi Arnd, Kevin Olof,
> 
> please find below and in the replies the first round of Rockchip pull
> requests. I guess the most notable change is the addition of Gru-Scarlet
> devicetree which - judging by the "silence" in the ChromeOS gerrit - may
> conclude the series of rk3399-based ChromeOS devices.
> 
> Other than that there are smaller improvements all around,
> so please pull.
> 
> 
> Thanks
> Heiko
> 
> 
> The following changes since commit 651022382c7f8da46cb4872a545ee1da6d097d2a:
> 
>   Linux 4.20-rc1 (2018-11-04 15:37:52 -0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.21-rockchip-drivers-1
> 
> for you to fetch changes up to 24869610e867e9791f0fdab70ff60f246299b859:
> 
>   soc: rockchip: power-domain: add rk3066 powerdomains (2018-11-06 14:13:32 +0100)
> 
> ----------------------------------------------------------------
> Powerdomain support for rk3066 and rk3188.
> 
> ----------------------------------------------------------------
> Heiko Stuebner (6):
>       dt-bindings: add power-domain header for RK3188 SoCs
>       dt-bindings: add power-domain header for RK3066 SoCs
>       dt-bindings: add compatibles for rk3066/rk3188 power controllers
>       Merge branch 'v4.21-shared/pdids' into v4.21-armsoc/drivers
>       soc: rockchip: power-domain: add rk3188 powerdomains
>       soc: rockchip: power-domain: add rk3066 powerdomains

Merged, thanks.


-Olof
