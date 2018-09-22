From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix microSD in Sapphire board
Date: Sat, 22 Sep 2018 22:50:13 +0200
Message-ID: <2007948.iYuWs6PDBz@phil>
References: <20180917134714.2197-1-vicencb@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180917134714.2197-1-vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, William wu <wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 17. September 2018, 15:47:14 CEST schrieb Vicente Bergas:
> The microSD card slot in the Sapphire board is not working because of
> several issues:
>  1.- The vmmc power supply is missing in the DTS. It is capable of 3.0V
>  and has a GPIO-based enable control.
>  2.- The vqmmc power supply can provide up to 3.3V, but it is capped in
>  the DTS to just 3.0V because of the vmmc capability. This results in a
>  conflict from the mmc driver requesting an unsupportable voltage range
>  from 3.3V to 3.0V (min > max) as reported in dmesg. So, extend the
>  range up to 3.3V. The hw should be able to stand this 0.3V tolerance.
>  See mmc_regulator_set_vqmmc in drivers/mmc/core/core.c.
>  3.- The card detect signal is non-working. There is a known conflict
>  with jtag, but the workaround in drivers/soc/rockchip/grf.c does not
>  work. Adding the broken-cd attribute to the DTS fixes the issue.
> 
> Signed-off-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

applied for 4.20

Thanks
Heiko
