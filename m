From: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH 30/30] iio: adc: rockchip_saradc: Demote Demote
 seemingly unintentional kerneldoc header
Date: Sat, 18 Jul 2020 17:15:36 +0100
Message-ID: <20200718171536.5b5ac001@archlinux>
References: <20200717165538.3275050-1-lee.jones@linaro.org>
        <20200717165538.3275050-31-lee.jones@linaro.org>
        <4422628.h3HLAr0T0d@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <4422628.h3HLAr0T0d@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
Cc: Lee Jones <lee.jones@linaro.org>, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, 17 Jul 2020 21:10:27 +0200
Heiko St=C3=BCbner <heiko@sntech.de> wrote:

> Am Freitag, 17. Juli 2020, 18:55:38 CEST schrieb Lee Jones:
> > This is the only use of kerneldoc in the source file and no
> > descriptions are provided.
> >=20
> > Fixes the following W=3D1 kernel build warning(s):
> >=20
> >  drivers/iio/adc/rockchip_saradc.c:190: warning: Function parameter or =
member 'reset' not described in 'rockchip_saradc_reset_controller'
> >=20
> > Cc: Heiko Stuebner <heiko@sntech.de>
> > Cc: Philipp Zabel <p.zabel@pengutronix.de>
> > Cc: linux-rockchip@lists.infradead.org
> > Signed-off-by: Lee Jones <lee.jones@linaro.org> =20
>=20
> Subject-line says "Demote Demote..."
>=20
> Otherwise
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Fixed up and applied.

Thanks for whole set Lee.

Jonathan

>=20
>=20
> > ---
> >  drivers/iio/adc/rockchip_saradc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockch=
ip_saradc.c
> > index 582ba047c4a67..cf4ec59c1dab0 100644
> > --- a/drivers/iio/adc/rockchip_saradc.c
> > +++ b/drivers/iio/adc/rockchip_saradc.c
> > @@ -183,7 +183,7 @@ static const struct of_device_id rockchip_saradc_ma=
tch[] =3D {
> >  };
> >  MODULE_DEVICE_TABLE(of, rockchip_saradc_match);
> > =20
> > -/**
> > +/*
> >   * Reset SARADC Controller.
> >   */
> >  static void rockchip_saradc_reset_controller(struct reset_control *res=
et)
> >  =20
>=20
>=20
>=20
>=20
