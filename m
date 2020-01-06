From: <Claudiu.Beznea-UWL1GkI3JZL3oGB3hsPCZA@public.gmane.org>
Subject: Re: [PATCH 32/32] pwm: atmel: convert to
 devm_platform_ioremap_resource
Date: Mon, 6 Jan 2020 10:32:36 +0000
Message-ID: <5aef0df7-ab3a-fe81-3cd4-a81c08841a00__3295.51895135722$1578306804$gmane$org@microchip.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
 <20191229080610.7597-32-tiny.windzz@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191229080610.7597-32-tiny.windzz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Language: en-US
Content-ID: <C0B3595014DD3C41BDEC06FF974DF51B-Hry67jCOGbCcE4WynfumptQqCkab/8FMAL8bYrjMMd8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: tiny.windzz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, u.kleine-koenig-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org, Nicolas.Ferre-UWL1GkI3JZL3oGB3hsPCZA@public.gmane.org, alexandre.belloni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, Ludovic.Desroches-UWL1GkI3JZL3oGB3hsPCZA@public.gmane.org, rjui-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, sbranden-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, bcm-kernel-feedback-list-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, f.fainelli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, nsaenzjulienne-l3A5Bk7waGM@public.gmane.org, shc_work-JGs/UdohzUI@public.gmane.org, shawnguo-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, s.hauer-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org, kernel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org, festevam-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-imx-3arQi8VN3Tc@public.gmane.org, vz-ChpfBGZJDbMAvxtiuMwx3w@public.gmane.org, slemieux.tyco-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, khilman-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, matthias.bgg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, palmer-96lFi9zoCfxBDgjK7y7TUQ@public.gmane.org, paul.walmsley-SpMDHPYPyPbQT0dZR+AlfA@public.gmane.org, mripard-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, wens-jdAy2FN1RRM@public.gmane.org, jonathanh-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org, linux-ci5G2KO2hbZ+pU9mqzGVBQ@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-pwm-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amlogic-IAPFreCvJWM7uuMidbF8XWGXanvQGlWp@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org



On 29.12.2019 10:06, Yangtao Li wrote:
> Use devm_platform_ioremap_resource() to simplify code.
> 
> Signed-off-by: Yangtao Li <tiny.windzz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Acked-by: Claudiu Beznea <claudiu.beznea-UWL1GkI3JZL3oGB3hsPCZA@public.gmane.org>

> ---
>  drivers/pwm/pwm-atmel.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/pwm/pwm-atmel.c b/drivers/pwm/pwm-atmel.c
> index 9ba733467e26..86cc5ccaa46c 100644
> --- a/drivers/pwm/pwm-atmel.c
> +++ b/drivers/pwm/pwm-atmel.c
> @@ -340,7 +340,6 @@ MODULE_DEVICE_TABLE(of, atmel_pwm_dt_ids);
>  static int atmel_pwm_probe(struct platform_device *pdev)
>  {
>         struct atmel_pwm_chip *atmel_pwm;
> -       struct resource *res;
>         int ret;
> 
>         atmel_pwm = devm_kzalloc(&pdev->dev, sizeof(*atmel_pwm), GFP_KERNEL);
> @@ -351,8 +350,7 @@ static int atmel_pwm_probe(struct platform_device *pdev)
>         atmel_pwm->data = of_device_get_match_data(&pdev->dev);
>         atmel_pwm->updated_pwms = 0;
> 
> -       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -       atmel_pwm->base = devm_ioremap_resource(&pdev->dev, res);
> +       atmel_pwm->base = devm_platform_ioremap_resource(pdev, 0);
>         if (IS_ERR(atmel_pwm->base))
>                 return PTR_ERR(atmel_pwm->base);
> 
> --
> 2.17.1
> 
> 
