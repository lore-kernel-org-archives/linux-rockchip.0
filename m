From: Olof Johansson <olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org>
Subject: Re: [GIT PULL] Rockchip arm64 devicetree fix for 4.20
Date: Wed, 12 Dec 2018 14:21:42 -0800
Message-ID: <20181212222142.6ndm54ti5co3yqah@localhost>
References: <5618815.AsiCPEelux@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <5618815.AsiCPEelux@phil>
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

On Wed, Dec 12, 2018 at 09:28:34AM +0100, Heiko Stuebner wrote:
> Hi Arnd, Kevin, Olof,
> 
> one more fix for some regulators on the rk3399 rockpro64
> turned up that may be nice to have in 4.20 still.
> 
> Please pull
> Heiko
> 
> The following changes since commit c1d91f86a1b4c9c05854d59c6a0abd5d0f75b849:
> 
>   arm64: dts: rockchip: Fix PCIe reset polarity for rk3399-puma-haikou. (2018-11-13 15:02:07 +0100)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.20-rockchip-dts64fixes-2
> 
> for you to fetch changes up to 690e16bada6029694740d5501025faf483d14339:
> 
>   arm64: dts: rockchip: fix rk3399-rockpro64 regulator gpios (2018-12-06 13:46:16 +0100)
> 
> ----------------------------------------------------------------
> rockpro64 regulator fixes that cause stability issues

Merged, thanks.


-Olof
