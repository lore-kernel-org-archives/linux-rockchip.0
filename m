From: Mirza Krak <mirza.krak-MHOZLiH8ODazQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 1/1] drm/rockchip: dw-mipi-dsi: fix possible un-balanced
 runtime PM enable
Date: Wed, 15 Nov 2017 09:27:24 +0100
Message-ID: <CAOgw+cnsD--h6JKBL68U7+8f7w_QFOftr5kgYkN5T3yY7XYWmg@mail.gmail.com>
References: <1510733873-37358-1-git-send-email-mirza.krak@endian.se>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1510733873-37358-1-git-send-email-mirza.krak-MHOZLiH8ODazQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: long jacob <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, airlied-cv59FeDIM0c@public.gmane.org, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, Mirza Krak <mirza.krak-MHOZLiH8ODazQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

2017-11-15 9:17 GMT+01:00 Mirza Krak <mirza.krak-MHOZLiH8ODazQB+pC5nmwQ@public.gmane.org>:
> In the case of the the binds gets defered we would end up with a
> un-balanced runtime PM enable call.
>
> Fix this by simply moving the pm_runtime_enable call to the end of
> the bind function when all paths have succeeded.
>
> Signed-off-by: Mirza Krak <mirza.krak-MHOZLiH8ODazQB+pC5nmwQ@public.gmane.org>
> ---
>  drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Re-sent the patch due to initial typos in commit message. Sorry.

Best Regards
Mirza
