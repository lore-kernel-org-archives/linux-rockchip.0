From: Caesar Wang <caesar.upstream@gmail.com>
Subject: Re: [PATCH] nvmem: delete unneeded IS_ERR test
Date: Sun, 20 Dec 2015 10:21:50 +0800
Message-ID: <567610BE.8010706@gmail.com>
References: <1450559973-9067-1-git-send-email-Julia.Lawall@lip6.fr>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-janitors-owner@vger.kernel.org>
In-Reply-To: <1450559973-9067-1-git-send-email-Julia.Lawall@lip6.fr>
Sender: kernel-janitors-owner@vger.kernel.org
To: Julia Lawall <Julia.Lawall@lip6.fr>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Maxime Ripard <maxime.ripard@free-electrons.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Julia,

Thanks to check this, but there was a patch fixing it.:-)


=E5=9C=A8 2015=E5=B9=B412=E6=9C=8820=E6=97=A5 05:19, Julia Lawall =E5=86=
=99=E9=81=93:
> devm_kzalloc returns NULL rather than an ERR_PTR value.
>
> The semantic match that finds this problem is as follows:
> (http://coccinelle.lip6.fr/)
>
> // <smpl>
> @@
> expression x,e;
> @@
>
> * x =3D devm_kzalloc(...)
> ... when !=3D x =3D e
> * IS_ERR(x)
> // </smpl>
>
> Signed-off-by: Julia Lawall <Julia.Lawall@lip6.fr>
>
> ---
>   drivers/nvmem/rockchip-efuse.c |    4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/nvmem/rockchip-efuse.c b/drivers/nvmem/rockchip-=
efuse.c
> index f552134..811c73c 100644
> --- a/drivers/nvmem/rockchip-efuse.c
> +++ b/drivers/nvmem/rockchip-efuse.c
> @@ -136,8 +136,8 @@ static int rockchip_efuse_probe(struct platform_d=
evice *pdev)
>  =20
>   	context =3D devm_kzalloc(dev, sizeof(struct rockchip_efuse_context=
),
>   			       GFP_KERNEL);
> -	if (IS_ERR(context))
> -		return PTR_ERR(context);
> +	if (!context)
> +		return -ENOMEM;

=46ixed in this patch[0].

patch[0]:
https://patchwork.kernel.org/patch/7842821/

Thanks,
Caesar
>  =20
>   	clk =3D devm_clk_get(dev, "pclk_efuse");
>   	if (IS_ERR(clk))
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

--
To unsubscribe from this list: send the line "unsubscribe kernel-janito=
rs" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
