From: Olof Johansson <olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org>
Subject: Re: [GIT PULL] Rockchip dts64 fixes for 4.9-rc
Date: Sat, 29 Oct 2016 11:10:44 -0700
Message-ID: <20161029181044.GD4195@localhost>
References: <2007497.qXCdMDh9Wq@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <2007497.qXCdMDh9Wq@phil>
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

On Fri, Oct 28, 2016 at 11:22:20AM +0200, Heiko Stuebner wrote:
> Hi Arnd, Kevin, Olof,
> 
> please find below two fixes for 64bit Rockchip boards. One makes
> binds/unbinds fail and the other drops one unnecessary property.
> 
> Please pull.
> Thanks
> Heiko
> 
> The following changes since commit 1001354ca34179f3db924eb66672442a173147dc:
> 
>   Linux 4.9-rc1 (2016-10-15 12:17:50 -0700)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.9-rockchip-dts64-fixes1
> 
> for you to fetch changes up to 7c6273194445fe1316084d3096f9311c3dfa4da6:
> 
>   arm64: dts: rockchip: remove the abuse of keep-power-in-suspend (2016-10-18 20:03:54 +0200)
> 
> ----------------------------------------------------------------
> Correct regulator handling on Rockchip arm64 boards to make
> bind/unbind calls work correctly and remove a sdio-only
> property from non-sdio mmc hosts, that accidentially was
> added there.
> 
> ----------------------------------------------------------------
> Shawn Lin (2):
>       arm64: dts: rockchip: remove always-on and boot-on from vcc_sd
>       arm64: dts: rockchip: remove the abuse of keep-power-in-suspend

Merged, thanks.


-Olof
