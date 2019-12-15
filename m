From: Chanwoo Choi <chanwoo@kernel.org>
Subject: Re: [PATCH] PM / devfreq: rockchip-dfi: convert to devm_platform_ioremap_resource
Date: Mon, 16 Dec 2019 00:31:44 +0900
Message-ID: <CAGTfZH0AEQT-GZX9EOPDcrxRVEdd0JC3iwwWmmn0CGuKDXHohw@mail.gmail.com>
References: <20191215135315.30656-1-tiny.windzz@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191215135315.30656-1-tiny.windzz@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Yangtao Li <tiny.windzz@gmail.com>
Cc: Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Linux PM list <linux-pm@vger.kernel.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

2019=EB=85=84 12=EC=9B=94 15=EC=9D=BC (=EC=9D=BC) =EC=98=A4=ED=9B=84 10:53,=
 Yangtao Li <tiny.windzz@gmail.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:
>
> Use devm_platform_ioremap_resource() to simplify code.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event=
/rockchip-dfi.c
> index 5d1042188727..cc5d4c01af0b 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -177,7 +177,6 @@ static int rockchip_dfi_probe(struct platform_device =
*pdev)
>  {
>         struct device *dev =3D &pdev->dev;
>         struct rockchip_dfi *data;
> -       struct resource *res;
>         struct devfreq_event_desc *desc;
>         struct device_node *np =3D pdev->dev.of_node, *node;
>
> @@ -185,8 +184,7 @@ static int rockchip_dfi_probe(struct platform_device =
*pdev)
>         if (!data)
>                 return -ENOMEM;
>
> -       res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -       data->regs =3D devm_ioremap_resource(&pdev->dev, res);
> +       data->regs =3D devm_platform_ioremap_resource(pdev, 0);
>         if (IS_ERR(data->regs))
>                 return PTR_ERR(data->regs);
>
> --
> 2.17.1
>

Applied it.

--=20
Best Regards,
Chanwoo Choi
