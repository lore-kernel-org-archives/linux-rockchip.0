From: Chanwoo Choi <chanwoo@kernel.org>
Subject: Re: [PATCH 1/2] PM / devfreq: rockchip-dfi: add missing of_node_put()
Date: Mon, 16 Dec 2019 00:30:57 +0900
Message-ID: <CAGTfZH2CS6o-zaHXReKJXzxsU_jfYKg2WL7uGpzyaFNhgTSVbg@mail.gmail.com>
References: <20191214181130.25808-1-tiny.windzz@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191214181130.25808-1-tiny.windzz@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Yangtao Li <tiny.windzz@gmail.com>
Cc: Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Linux PM list <linux-pm@vger.kernel.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

2019=EB=85=84 12=EC=9B=94 15=EC=9D=BC (=EC=9D=BC) =EC=98=A4=EC=A0=84 3:12, =
Yangtao Li <tiny.windzz@gmail.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:
>
> of_node_put needs to be called when the device node which is got
> from of_parse_phandle has finished using.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event=
/rockchip-dfi.c
> index 5d1042188727..45b190e443d8 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -200,6 +200,7 @@ static int rockchip_dfi_probe(struct platform_device =
*pdev)
>         node =3D of_parse_phandle(np, "rockchip,pmu", 0);
>         if (node) {
>                 data->regmap_pmu =3D syscon_node_to_regmap(node);
> +               of_node_put(node);
>                 if (IS_ERR(data->regmap_pmu))
>                         return PTR_ERR(data->regmap_pmu);
>         }
> --
> 2.17.1
>

Applied it. Better to use the capital letter for first char of sentence.

--=20
Best Regards,
Chanwoo Choi
