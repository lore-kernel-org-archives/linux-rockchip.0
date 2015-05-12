From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/2] regulator: act8865: add restart handler for act8846
Date: Tue, 12 May 2015 22:22:56 +0200
Message-ID: <2204003.IdqJV6LE2e@phil>
References: <A1C80CFB-CDCA-4F88-BA5F-371918CECD97@stud.hs-offenburg.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <A1C80CFB-CDCA-4F88-BA5F-371918CECD97@stud.hs-offenburg.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Michael =?ISO-8859-1?Q?Niew=F6hner?= <mniewoeh@stud.hs-offenburg.de>
Cc: lgirdwood@gmail.com, broonie@kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Michael,

Am Montag, 11. Mai 2015, 22:54:11 schrieb Michael Niew=F6hner:
> Rebooting radxa rock which uses act8846 results in kernel panic becau=
se the
> bootloader doesn't readjust frequency or voltage for cpu correctly. T=
his
> workaround power cycles the act8846 at restart to reset the board.

Hmm, it might be nice to reword this, as this being a "workaround" for =
the=20
radxarock is a bit "short sighted".

The act8846 simply provides means to reset the system when used as main=
 pmic=20
[hence the reliance on the system-power-controller] and other socs/boar=
ds=20
using it as pmic might also profit from exposing this function - for ex=
ample if=20
there is no other means of reset.


> Signed-off-by: Michael Niewoehner <mniewoeh@stud.hs-offenburg.de>
> ---
>  drivers/regulator/act8865-regulator.c | 43
> +++++++++++++++++++++++++++++++++++ 1 file changed, 43 insertions(+)
>=20
> diff --git a/drivers/regulator/act8865-regulator.c
> b/drivers/regulator/act8865-regulator.c index 2ff73d7..f8cdff3 100644
> --- a/drivers/regulator/act8865-regulator.c
> +++ b/drivers/regulator/act8865-regulator.c
> @@ -27,6 +27,7 @@
>  #include <linux/of_device.h>
>  #include <linux/regulator/of_regulator.h>
>  #include <linux/regmap.h>
> +#include <linux/reboot.h>
>=20
>  /*
>   * ACT8600 Global Register Map.
> @@ -133,10 +134,14 @@
>  #define	ACT8865_VOLTAGE_NUM	64
>  #define ACT8600_SUDCDC_VOLTAGE_NUM	255
>=20
> +#define ACT8846_SIPC_MASK 0x01
> +
>  struct act8865 {
>  	struct regmap *regmap;
>  	int off_reg;
>  	int off_mask;
> +	int sipc_reg;
> +	int sipc_mask;
>  };
>=20
>  static const struct regmap_config act8865_regmap_config =3D {
> @@ -402,6 +407,17 @@ static void act8865_power_off(void)
>  	while (1);
>  }
>=20
> +static int act8846_power_cycle(struct notifier_block *this,
> +	unsigned long code, void *unused)
> +{
> +	struct act8865 *act8846;
> +
> +	act8846 =3D i2c_get_clientdata(act8865_i2c_client);
> +	regmap_write(act8846->regmap, act8846->sipc_reg, act8846->sipc_mask=
);

The act8846 is currently the only one of the three types providing such=
=20
functionality, so until the second chip variant surfaces that provides =
a reset=20
capability, it might be less intrusive to simply do

	regmap_write(act8846->regmap, ACT8846_GLB_OFF_CTRL, ACT8846_SIPC_MASK)=
;

here and skip all the infrastructure like sipc_reg and sipc_mask assign=
ment=20
and handling? But I guess that is Mark's call what he likes better.


> +
> +	return NOTIFY_DONE;
> +}
> +

structs like the restart_handler normally live near the function they=20
reference and not as static part of some function. And as the restart=20
functionality is not rockchip-specific, it should also not be named=20
rockchip_foo as below ;-)

static struct notifier_block act8846_restart_handler =3D {
	.notifier_call =3D act8846_power_cycle,
	.priority =3D 129,
};



>  static int act8865_pmic_probe(struct i2c_client *client,
>  			      const struct i2c_device_id *i2c_id)
>  {
> @@ -413,6 +429,7 @@ static int act8865_pmic_probe(struct i2c_client *=
client,
> struct act8865 *act8865;
>  	unsigned long type;
>  	int off_reg, off_mask;
> +	int sipc_reg, sipc_mask;
>=20
>  	pdata =3D dev_get_platdata(dev);
>=20
> @@ -434,18 +451,24 @@ static int act8865_pmic_probe(struct i2c_client
> *client, num_regulators =3D ARRAY_SIZE(act8600_regulators);
>  		off_reg =3D -1;
>  		off_mask =3D -1;
> +		sipc_reg =3D -1;
> +		sipc_mask =3D -1;
>  		break;
>  	case ACT8846:
>  		regulators =3D act8846_regulators;
>  		num_regulators =3D ARRAY_SIZE(act8846_regulators);
>  		off_reg =3D ACT8846_GLB_OFF_CTRL;
>  		off_mask =3D ACT8846_OFF_SYSMASK;
> +		sipc_reg =3D ACT8846_GLB_OFF_CTRL;
> +		sipc_mask =3D ACT8846_SIPC_MASK;
>  		break;
>  	case ACT8865:
>  		regulators =3D act8865_regulators;
>  		num_regulators =3D ARRAY_SIZE(act8865_regulators);
>  		off_reg =3D ACT8865_SYS_CTRL;
>  		off_mask =3D ACT8865_MSTROFF;
> +		sipc_reg =3D -1;
> +		sipc_mask =3D -1;
>  		break;
>  	default:
>  		dev_err(dev, "invalid device id %lu\n", type);
> @@ -494,6 +517,26 @@ static int act8865_pmic_probe(struct i2c_client
> *client, }
>  	}

no need to add a second check for of_device_is_system_power_controller(=
) as we=20
already have a check for this property directly above, simply extend it=
 with=20
something like the following.

if (of_device_is_system_power_controller(dev->of_node)) {
	int ret;

	/* already existing code to set poweroff handler */

	if (type =3D=3D ACT8846) {
		ret =3D register_restart_handler(&act8846_restart_handler);
		if (ret)
		pr_err("%s: cannot register restart handler, %d\n",
		       __func__, ret);
	}
}


>=20
> +	/* Register restart handler */
> +	if (of_device_is_system_power_controller(dev->of_node)
> +				&& sipc_reg > 0) {
> +		static struct notifier_block rockchip_restart_handler =3D {
> +			.notifier_call =3D act8846_power_cycle,
> +			.priority =3D 129,
> +		};
> +
> +		int ret;
> +
> +		act8865_i2c_client =3D client;
> +		act8865->sipc_reg =3D sipc_reg;
> +		act8865->sipc_mask =3D sipc_mask;
> +
> +		ret =3D register_restart_handler(&rockchip_restart_handler);
> +		if (ret)
> +			pr_err("%s: cannot register restart handler, %d\n",
> +			       __func__, ret);
> +	}
> +
>  	/* Finally register devices */
>  	for (i =3D 0; i < num_regulators; i++) {
>  		const struct regulator_desc *desc =3D &regulators[i];
