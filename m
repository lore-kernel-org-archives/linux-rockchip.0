From: Olof Johansson <olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org>
Subject: Re: [GIT PULL 1/3] Rockchip dts32 updates for 4.13 part1
Date: Sun, 18 Jun 2017 19:07:54 -0700
Message-ID: <20170619020754.GL30022@localhost>
References: <2090243.QTRV0U63fj@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <2090243.QTRV0U63fj@phil>
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

On Fri, Jun 09, 2017 at 12:13:44PM +0200, Heiko Stuebner wrote:
> Hi Arnd, Kevin, Olof,
> 
> please find below and in the subsequent replies Rockchip-related changes
> for 4.13. The tags describe the individual changes, but hightlight are probably
> the Mali-Midgard nodes on rk3288 and rk3399-Firefly board.
> 
> So if nothing looks out of place, please pull.
> 
> Thanks
> Heiko
> 
> The following changes since commit 2ea659a9ef488125eb46da6eb571de5eae5c43f6:
> 
>   Linux 4.12-rc1 (2017-05-13 13:19:49 -0700)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.13-rockchip-dts32-1
> 
> for you to fetch changes up to 81b61d37705173b8b9eb52c4566a8fc7c7099520:
> 
>   ARM: dts: rockchip: enable usb for rk3229 evb board (2017-06-02 14:11:57 +0200)
> 
> ----------------------------------------------------------------
> A bunch of changes including mali gpu nodes for rk3288 boards
> following (and including) the new Mali Midgard binding; a lot of
> improvements for the rk3228/rk3229 socs (tsadc, operating points,
> usb, clock-rates, pinctrl, watchdog); finalizing the rk1108->rv1108
> rename and adc buttons for the rk3288 firefly boards.

Thanks, merged.


-Olof
