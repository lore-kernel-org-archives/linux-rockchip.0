From: Anand Moon <linux.amoon-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v2 0/5] mfd: RK8xx tidyup
Date: Mon, 13 Jan 2020 20:21:53 +0530
Message-ID: <CANAwSgTTx3TvtxWgp1E3LW15ejc06v7jiKg7xg_95GwuuVtb+w@mail.gmail.com>
References: <cover.1578789410.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <cover.1578789410.git.robin.murphy-5wv7dgnIgG8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Soeren Moch <smoch-S0/GAf8tV78@public.gmane.org>, Lee Jones <lee.jones-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Linux Kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Robin,

On Sun, 12 Jan 2020 at 07:25, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org> wrote:
>
> Hi all,
>
> Here's a second crack at my RK805-inspired cleanup. There was a bit
> of debate around v1[1], but it seems like we're now all happy that this
> is a reasonable way to go. For clarity I decided to include Soeren's
> patch as #1/5, but since I've rewritten most of my patches I've not
> included the tested-by tags.
>
> Robin.
>
> [1] https://lore.kernel.org/lkml/cover.1575932654.git.robin.murphy-5wv7dgnIgG8@public.gmane.org/
>

Despite the i2c warning message  it performs clean shutdown. So Please add my

Tested-by: Anand Moon <linux.amoon-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

-Anand

> Robin Murphy (4):
>   mfd: rk808: Ensure suspend/resume hooks always work
>   mfd: rk808: Stop using syscore ops
>   mfd: rk808: Reduce shutdown duplication
>   mfd: rk808: Convert RK805 to shutdown/suspend hooks
>
> Soeren Moch (1):
>   mfd: rk808: Always use poweroff when requested
>
>  drivers/mfd/rk808.c       | 139 +++++++++++++-------------------------
>  include/linux/mfd/rk808.h |   2 -
>  2 files changed, 48 insertions(+), 93 deletions(-)
>
> --
> 2.17.1
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
