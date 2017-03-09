From: Wadim Egorov <w.egorov-guT5V/WYfQezQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v1 0/4] rk808: Add RK805 support
Date: Thu, 9 Mar 2017 11:03:24 +0100
Message-ID: <0e08f79f-e475-ef1e-5139-4527ca352fe9@phytec.de>
References: <1489049402-15791-1-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1489049402-15791-1-git-send-email-zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, lee.jones-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org, lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, xxx-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chenjh-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Elaine,

you should also add the RK805 to the device tree bindings documentation in

Documentation/devicetree/bindings/mfd/rk808.txt

Regards,
Wadim


Am 09.03.2017 um 09:49 schrieb Elaine Zhang:
> Elaine Zhang (4):
>   mfd: rk808: fix up the chip id get failed
>   linux: mfd: rk808: add rk805 regs addr and ID
>   regulator: rk808: Add regulator driver for RK805
>   mfd: rk808: Add RK805 support
>
>  drivers/clk/Kconfig                 |   4 +-
>  drivers/mfd/Kconfig                 |   4 +-
>  drivers/mfd/rk808.c                 | 130 ++++++++++++++++++++++++++++++++++--
>  drivers/regulator/Kconfig           |   4 +-
>  drivers/regulator/rk808-regulator.c |  66 ++++++++++++++++++
>  drivers/rtc/Kconfig                 |   4 +-
>  include/linux/mfd/rk808.h           |  92 +++++++++++++++++++++++++
>  7 files changed, 290 insertions(+), 14 deletions(-)
>
