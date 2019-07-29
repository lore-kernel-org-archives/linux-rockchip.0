From: Andy Shevchenko <andy.shevchenko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [U-Boot] [PATCH 08/15] wdt: dw: Add driver-model support
Date: Mon, 29 Jul 2019 12:09:32 +0300
Message-ID: <CAHp75Vfov5zY+QxY1P3nx95MsFSj+M8tjiHtSGiBaJ0f5rCLWA@mail.gmail.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
 <20190729074711.16988-9-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190729074711.16988-9-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Cc: Andy Shevchenko <andriy.shevchenko-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, U-Boot Mailing List <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Chin Liang See <clsee-EIB2kfCEclfQT0dZR+AlfA@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, Jul 29, 2019 at 10:56 AM Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org> wrote:
>
> Add driver-model code for designware watchdog.

> +/*
> + * Set the watchdog time interval.
> + * Counter is 32 bit.
> + */
> +static int dw_wdt_set_timeout(struct dw_wdt *dw, unsigned int timeout)
> +{
> +       signed int i;
> +
> +       /* calculate the timeout range value */
> +       i = (log_2_n_round_up(timeout * dw->clk_rate)) - 16;

Redundant parenthesis.

> +       if (i > 15)
> +               i = 15;
> +       if (i < 0)
> +               i = 0;

Use clamp_t().

> +
> +       writel((i | (i << 4)), dw->regs + DW_WDT_TORR);
> +
> +       return 0;
> +}


> +       ret = clk_get_by_index(dev, 0, &clk);
> +       if (!ret)
> +               dw->clk_rate = clk_get_rate(&clk);
> +       else
> +               return -EINVAL;

Why not to use traditional pattern, i.e.

  if (ret)
    return -ERRNO;

-- 
With Best Regards,
Andy Shevchenko
