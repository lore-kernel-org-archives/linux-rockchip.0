From: Jonathan Cameron <jic23-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH] iio: adc: rockchip_saradc: Add support iio
 =?UTF-8?B?YnVmZmVyc+OAkOivt+azqOaEj++8jOmCruS7tueUsWxpbnV4LXJvY2tjaGlw?=
 =?UTF-8?B?LWJvdW5jZXMreHhtPXJvY2stY2hpcHMuY29tQGxpc3RzLmluZnJhZGVhZC5v?=
 =?UTF-8?B?cmfku6Plj5HjgJE=?=
Date: Tue, 3 Mar 2020 20:32:36 +0000
Message-ID: <20200303203236.2cbcfeee@archlinux>
References: <20200301112353.887028-1-heiko@sntech.de>
        <67e46e36-ebac-ebe3-b4f4-9edb88fb0dcf@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-iio-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <67e46e36-ebac-ebe3-b4f4-9edb88fb0dcf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: linux-iio-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: xxm <xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, lars-Qo5EllUWu/uELgA04lAiVw@public.gmane.org, linux-iio-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, pmeerw-jW+XmwGofnusTnJN9+BGXg@public.gmane.org, knaack.h-Mmb7MZpHnFY@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, 2 Mar 2020 10:11:02 +0800
xxm <xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:

> Hi, Heiko
>=20
> =E5=9C=A8 2020/3/1 19:23, Heiko Stuebner =E5=86=99=E9=81=93:
> > From: Simon Xue <xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> >=20
> > Add the ability to also support access via (triggered) buffers
> > next to the existing direct mode.
> >=20
> > Device in question is the Odroid Go Advance that connects a joystick
> > to two of the saradc channels for X and Y axis and the new (and still
> > pending) adc joystick driver of course wants to use triggered buffers
> > from the iio subsystem.
> >=20
> > Signed-off-by: Simon Xue <xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> > [some simplifications and added commit description]
> > Signed-off-by: Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
> > ---
> >   drivers/iio/adc/Kconfig           |   2 +
> >   drivers/iio/adc/rockchip_saradc.c | 137 ++++++++++++++++++++++--------
> >   2 files changed, 102 insertions(+), 37 deletions(-)
> >=20
> > diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
> > index 82e33082958c..55d2499ff757 100644
> > --- a/drivers/iio/adc/Kconfig
> > +++ b/drivers/iio/adc/Kconfig
> > @@ -787,6 +787,8 @@ config ROCKCHIP_SARADC
> >   	tristate "Rockchip SARADC driver"
> >   	depends on ARCH_ROCKCHIP || (ARM && COMPILE_TEST)
> >   	depends on RESET_CONTROLLER
> > +	select IIO_BUFFER
> > +	select IIO_TRIGGERED_BUFFER
> >   	help
> >   	  Say yes here to build support for the SARADC found in SoCs from
> >   	  Rockchip.
> > diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockch=
ip_saradc.c
> > index 582ba047c4a6..402b2210a682 100644
> > --- a/drivers/iio/adc/rockchip_saradc.c
> > +++ b/drivers/iio/adc/rockchip_saradc.c
> > @@ -15,7 +15,11 @@
> >   #include <linux/delay.h>
> >   #include <linux/reset.h>
> >   #include <linux/regulator/consumer.h>
> > +#include <linux/iio/buffer.h>
> >   #include <linux/iio/iio.h>
> > +#include <linux/iio/trigger.h>
> > +#include <linux/iio/trigger_consumer.h>
> > +#include <linux/iio/triggered_buffer.h>
> >  =20
> >   #define SARADC_DATA			0x00
> >  =20
> > @@ -34,7 +38,6 @@
> >   #define SARADC_TIMEOUT			msecs_to_jiffies(100)
> >  =20
> >   struct rockchip_saradc_data {
> > -	int				num_bits;
> >   	const struct iio_chan_spec	*channels;
> >   	int				num_channels;
> >   	unsigned long			clk_rate;
> > @@ -49,8 +52,37 @@ struct rockchip_saradc {
> >   	struct reset_control	*reset;
> >   	const struct rockchip_saradc_data *data;
> >   	u16			last_val;
> > +	const struct iio_chan_spec *last_chan;
> >   };
> >  =20
> > +static void rockchip_saradc_power_down(struct rockchip_saradc *info)
> > +{
> > +	/* Clear irq & power down adc */
> > +	writel_relaxed(0, info->regs + SARADC_CTRL);
> > +}
> > +
> > +static int rockchip_saradc_conversion(struct rockchip_saradc *info,
> > +				   struct iio_chan_spec const *chan)
> > +{
> > +	reinit_completion(&info->completion);
> > +
> > +	/* 8 clock periods as delay between power up and start cmd */
> > +	writel_relaxed(8, info->regs + SARADC_DLY_PU_SOC);
> > +
> > +	info->last_chan =3D chan;
> > +
> > +	/* Select the channel to be used and trigger conversion */
> > +	writel(SARADC_CTRL_POWER_CTRL
> > +			| (chan->channel & SARADC_CTRL_CHN_MASK)
> > +			| SARADC_CTRL_IRQ_ENABLE,
> > +		   info->regs + SARADC_CTRL);
> > +
> > +	if (!wait_for_completion_timeout(&info->completion, SARADC_TIMEOUT))
> > +		return -ETIMEDOUT;
> > +
> > +	return 0;
> > +}
> > +
> >   static int rockchip_saradc_read_raw(struct iio_dev *indio_dev,
> >   				    struct iio_chan_spec const *chan,
> >   				    int *val, int *val2, long mask)
> > @@ -62,24 +94,12 @@ static int rockchip_saradc_read_raw(struct iio_dev =
*indio_dev,
> >   	case IIO_CHAN_INFO_RAW:
> >   		mutex_lock(&indio_dev->mlock);
> >  =20
> > -		reinit_completion(&info->completion);
> > -
> > -		/* 8 clock periods as delay between power up and start cmd */
> > -		writel_relaxed(8, info->regs + SARADC_DLY_PU_SOC);
> > -
> > -		/* Select the channel to be used and trigger conversion */
> > -		writel(SARADC_CTRL_POWER_CTRL
> > -				| (chan->channel & SARADC_CTRL_CHN_MASK)
> > -				| SARADC_CTRL_IRQ_ENABLE,
> > -		       info->regs + SARADC_CTRL);
> > -
> > -		if (!wait_for_completion_timeout(&info->completion,
> > -						 SARADC_TIMEOUT)) {
> > -			writel_relaxed(0, info->regs + SARADC_CTRL);
> > +		ret =3D rockchip_saradc_conversion(info, chan);
> > +		if (ret) {
> > +			rockchip_saradc_power_down(info);
> >   			mutex_unlock(&indio_dev->mlock);
> > -			return -ETIMEDOUT;
> > +			return ret;
> >   		}
> > -
> >   		*val =3D info->last_val;
> >   		mutex_unlock(&indio_dev->mlock);
> >   		return IIO_VAL_INT;
> > @@ -91,7 +111,7 @@ static int rockchip_saradc_read_raw(struct iio_dev *=
indio_dev,
> >   		}
> >  =20
> >   		*val =3D ret / 1000;
> > -		*val2 =3D info->data->num_bits;
> > +		*val2 =3D chan->scan_type.realbits;
> >   		return IIO_VAL_FRACTIONAL_LOG2;
> >   	default:
> >   		return -EINVAL;
> > @@ -104,10 +124,9 @@ static irqreturn_t rockchip_saradc_isr(int irq, vo=
id *dev_id)
> >  =20
> >   	/* Read value */
> >   	info->last_val =3D readl_relaxed(info->regs + SARADC_DATA);
> > -	info->last_val &=3D GENMASK(info->data->num_bits - 1, 0);
> > +	info->last_val &=3D GENMASK(info->last_chan->scan_type.realbits - 1, =
0);
> >  =20
> > -	/* Clear irq & power down adc */
> > -	writel_relaxed(0, info->regs + SARADC_CTRL);
> > +	rockchip_saradc_power_down(info);
> >  =20
> >   	complete(&info->completion);
> >  =20
> > @@ -118,51 +137,55 @@ static const struct iio_info rockchip_saradc_iio_=
info =3D {
> >   	.read_raw =3D rockchip_saradc_read_raw,
> >   };
> >  =20
> > -#define ADC_CHANNEL(_index, _id) {				\
> > +#define ADC_CHANNEL(_index, _id, _res) {			\
> >   	.type =3D IIO_VOLTAGE,					\
> >   	.indexed =3D 1,						\
> >   	.channel =3D _index,					\
> >   	.info_mask_separate =3D BIT(IIO_CHAN_INFO_RAW),		\
> >   	.info_mask_shared_by_type =3D BIT(IIO_CHAN_INFO_SCALE),	\
> >   	.datasheet_name =3D _id,					\
> > +	.scan_index =3D _index,					\
> > +	.scan_type =3D {						\
> > +		.sign =3D 'u',					\
> > +		.realbits =3D _res,				\
> > +		.storagebits =3D 16,				\
> > +		.endianness =3D IIO_LE,				\
> > +	},							\
> >   }
> >  =20
> >   static const struct iio_chan_spec rockchip_saradc_iio_channels[] =3D {
> > -	ADC_CHANNEL(0, "adc0"),
> > -	ADC_CHANNEL(1, "adc1"),
> > -	ADC_CHANNEL(2, "adc2"),
> > +	ADC_CHANNEL(0, "adc0", 10),
> > +	ADC_CHANNEL(1, "adc1", 10),
> > +	ADC_CHANNEL(2, "adc2", 10),
> >   };
> >  =20
> >   static const struct rockchip_saradc_data saradc_data =3D {
> > -	.num_bits =3D 10,
> >   	.channels =3D rockchip_saradc_iio_channels,
> >   	.num_channels =3D ARRAY_SIZE(rockchip_saradc_iio_channels),
> >   	.clk_rate =3D 1000000,
> >   };
> >  =20
> >   static const struct iio_chan_spec rockchip_rk3066_tsadc_iio_channels[=
] =3D {
> > -	ADC_CHANNEL(0, "adc0"),
> > -	ADC_CHANNEL(1, "adc1"),
> > +	ADC_CHANNEL(0, "adc0", 12),
> > +	ADC_CHANNEL(1, "adc1", 12),
> >   };
> >  =20
> >   static const struct rockchip_saradc_data rk3066_tsadc_data =3D {
> > -	.num_bits =3D 12,
> >   	.channels =3D rockchip_rk3066_tsadc_iio_channels,
> >   	.num_channels =3D ARRAY_SIZE(rockchip_rk3066_tsadc_iio_channels),
> >   	.clk_rate =3D 50000,
> >   };
> >  =20
> >   static const struct iio_chan_spec rockchip_rk3399_saradc_iio_channels=
[] =3D {
> > -	ADC_CHANNEL(0, "adc0"),
> > -	ADC_CHANNEL(1, "adc1"),
> > -	ADC_CHANNEL(2, "adc2"),
> > -	ADC_CHANNEL(3, "adc3"),
> > -	ADC_CHANNEL(4, "adc4"),
> > -	ADC_CHANNEL(5, "adc5"),
> > +	ADC_CHANNEL(0, "adc0", 10),
> > +	ADC_CHANNEL(1, "adc1", 10),
> > +	ADC_CHANNEL(2, "adc2", 10),
> > +	ADC_CHANNEL(3, "adc3", 10),
> > +	ADC_CHANNEL(4, "adc4", 10),
> > +	ADC_CHANNEL(5, "adc5", 10),
> >   };
> >  =20
> >   static const struct rockchip_saradc_data rk3399_saradc_data =3D {
> > -	.num_bits =3D 10,
> >   	.channels =3D rockchip_rk3399_saradc_iio_channels,
> >   	.num_channels =3D ARRAY_SIZE(rockchip_rk3399_saradc_iio_channels),
> >   	.clk_rate =3D 1000000,
> > @@ -193,6 +216,39 @@ static void rockchip_saradc_reset_controller(struc=
t reset_control *reset)
> >   	reset_control_deassert(reset);
> >   }
> >  =20
> > +static irqreturn_t rockchip_saradc_trigger_handler(int irq, void *p)
> > +{
> > +	struct iio_poll_func *pf =3D p;
> > +	struct iio_dev *i_dev =3D pf->indio_dev;
> > +	struct rockchip_saradc *info =3D iio_priv(i_dev);
> > +	u16 data[20]; =20
> How about this:
> #define MAX_CHANNEL_NUM 16

Unfortunately this is a bit more complex than it seems.=20
The buffer needs to be big enough for all the channels
+ a 8 byte aligned space to put the timestamp in.

You can construct that in a fashion suitable to use in a
macro but it's a bit more fiddly than simply being the
maximum number of channels.

> u16 data[MAX_CHANNEL_NUM];
> > +	int ret;
> > +	int i, j =3D 0;
> > +
> > +	mutex_lock(&i_dev->mlock);
> > +
> > +	for_each_set_bit(i, i_dev->active_scan_mask, i_dev->masklength) {
> > +		const struct iio_chan_spec *chan =3D &i_dev->channels[i];
> > +
> > +		ret =3D rockchip_saradc_conversion(info, chan);
> > +		if (ret) {
> > +			rockchip_saradc_power_down(info);
> > +			goto out;
> > +		}
> > +
> > +		data[j] =3D info->last_val;
> > +		j++;
> > +	}
> > +
> > +	iio_push_to_buffers_with_timestamp(i_dev, data, iio_get_time_ns(i_dev=
));
> > +out:
> > +	mutex_unlock(&i_dev->mlock);
> > +
> > +	iio_trigger_notify_done(i_dev->trig);
> > +
> > +	return IRQ_HANDLED;
> > +}
> > +
> >   static int rockchip_saradc_probe(struct platform_device *pdev)
> >   {
> >   	struct rockchip_saradc *info =3D NULL;
> > @@ -315,12 +371,19 @@ static int rockchip_saradc_probe(struct platform_=
device *pdev)
> >   	indio_dev->channels =3D info->data->channels;
> >   	indio_dev->num_channels =3D info->data->num_channels;
> >  =20
> > -	ret =3D iio_device_register(indio_dev);
> > +	ret =3D iio_triggered_buffer_setup(indio_dev, NULL,
> > +					 rockchip_saradc_trigger_handler, NULL); =20
> devm_iio_triggered_buffer_setup seems better
> >   	if (ret)
> >   		goto err_clk;
> >  =20
> > +	ret =3D iio_device_register(indio_dev);
> > +	if (ret)
> > +		goto err_buffer_cleanup;
> > +
> >   	return 0;
> >  =20
> > +err_buffer_cleanup:
> > +	iio_triggered_buffer_cleanup(indio_dev);
> >   err_clk:
> >   	clk_disable_unprepare(info->clk);
> >   err_pclk:
> >  =20
> xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org
>=20
>=20
