From: Olof Johansson <olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org>
Subject: Re: [GIT PULL 1/3] Rockchip driver changes for 4.10
Date: Thu, 17 Nov 2016 23:31:41 -0800
Message-ID: <20161118073141.GI1785@localhost>
References: <1698724.ZQnZMjf8xY@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1698724.ZQnZMjf8xY@phil>
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

On Sat, Nov 12, 2016 at 04:34:17PM +0100, Heiko Stuebner wrote:
> Hi Arnd, Kevin, Olof,
> 
> please find below and in the following two mails, Rockchip power-domain as
> well as dts32 and dts64 changes for 4.10.
> 
> I don't think anything big stands out, just the usual mix of incremental
> improvements, so if stuff looks ok please pull.
> 
> 
> Thanks
> Heiko
> 
> 
> The following changes since commit 1001354ca34179f3db924eb66672442a173147dc:
> 
>   Linux 4.9-rc1 (2016-10-15 12:17:50 -0700)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.10-rockchip-drivers1
> 
> for you to fetch changes up to dabc0259db63338f0e64107cc92b2241f98a3284:
> 
>   soc: rockchip: power-domain: Handle errors from of_genpd_add_provider_onecell (2016-11-11 02:14:59 +0100)
> 
> ----------------------------------------------------------------
> Changes to the power-domain driver including counter presets now being set
> by firmware on the rk3399, avoiding infite loops when powering on/off a
> domain and actually returning an error if power-domain addition fails.
> The last part requires usage of the (new in 4.9-rc1) pm_genpd_remove
> functionality as well.

Merged, thanks!


-Olof
