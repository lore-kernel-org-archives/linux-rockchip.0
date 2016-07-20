From: Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH] mfd: RK808: Fetch PMIC variant from chip id register
Date: Wed, 20 Jul 2016 21:06:58 +0800
Message-ID: <c9d91f26-f8d2-7450-eb2d-4750742c35af@rock-chips.com>
References: <1468496557-26309-1-git-send-email-w.egorov@phytec.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1468496557-26309-1-git-send-email-w.egorov@phytec.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Wadim Egorov <w.egorov@phytec.de>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: lee.jones@linaro.org
List-Id: linux-rockchip.vger.kernel.org

Wadim:

   Hi.

   I have tested this patch both on RK818/RK808 based boards, it works =
well.

  So Test-by: Andy Yan <andy.yan@rock-chips.com>


On 2016=E5=B9=B407=E6=9C=8814=E6=97=A5 19:42, Wadim Egorov wrote:
> Add and use the chip id registers to determine the PMIC variant.
>
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
>
> This patch is based on top of
>
> [v6,1/5] mfd: RK808: Add RK818 support
> (https://patchwork.kernel.org/patch/9172223/)
>
> ---
>   drivers/mfd/rk808.c       | 17 +++++++++--------
>   include/linux/mfd/rk808.h |  6 ++++--
>   2 files changed, 13 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> index 66f7b08..fbec1d8 100644
> --- a/drivers/mfd/rk808.c
> +++ b/drivers/mfd/rk808.c
> @@ -291,8 +291,8 @@ static void rk808_device_shutdown(void)
>   }
>  =20
>   static const struct of_device_id rk808_of_match[] =3D {
> -	{ .compatible =3D "rockchip,rk808", .data =3D (void *) RK808_ID },
> -	{ .compatible =3D "rockchip,rk818", .data =3D (void *) RK818_ID },
> +	{ .compatible =3D "rockchip,rk808" },
> +	{ .compatible =3D "rockchip,rk818" },
>   	{ },
>   };
>   MODULE_DEVICE_TABLE(of, rk808_of_match);
> @@ -302,7 +302,6 @@ static int rk808_probe(struct i2c_client *client,
>   {
>   	struct device_node *np =3D client->dev.of_node;
>   	struct rk808 *rk808;
> -	const struct of_device_id *match;
>   	const struct rk808_reg_data *pre_init_reg;
>   	const struct mfd_cell *cells;
>   	int nr_pre_init_regs;
> @@ -315,12 +314,14 @@ static int rk808_probe(struct i2c_client *clien=
t,
>   	if (!rk808)
>   		return -ENOMEM;
>  =20
> -	match =3D of_match_device(rk808_of_match, &client->dev);
> -	if (!match) {
> -		dev_err(&client->dev, "Unable to match OF ID\n");
> -		return -ENODEV;
> +	rk808->variant =3D i2c_smbus_read_word_data(client, RK808_ID_MSB);
> +	if (rk808->variant < 0) {
> +		dev_err(&client->dev, "Failed to read the chip id at 0x%02x\n",
> +			RK808_ID_MSB);
> +		return rk808->variant;
>   	}
> -	rk808->variant =3D (long)match->data;
> +
> +	dev_dbg(&client->dev, "Chip id: 0x%x\n", (unsigned int)rk808->varia=
nt);
>  =20
>   	switch (rk808->variant) {
>   	case RK808_ID:
> diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
> index e5ae21d..fc5db6f 100644
> --- a/include/linux/mfd/rk808.h
> +++ b/include/linux/mfd/rk808.h
> @@ -69,6 +69,8 @@ enum rk808_reg {
>   #define RK808_RTC_INT_REG	0x12
>   #define RK808_RTC_COMP_LSB_REG	0x13
>   #define RK808_RTC_COMP_MSB_REG	0x14
> +#define RK808_ID_MSB		0x17
> +#define RK808_ID_LSB		0x18
>   #define RK808_CLK32OUT_REG	0x20
>   #define RK808_VB_MON_REG	0x21
>   #define RK808_THERMAL_REG	0x22
> @@ -318,8 +320,8 @@ enum {
>   };
>  =20
>   enum {
> -	RK808_ID,
> -	RK818_ID,
> +	RK808_ID =3D 0x0000,
> +	RK818_ID =3D 0x8181,
>   };
>  =20
>   struct rk808 {
