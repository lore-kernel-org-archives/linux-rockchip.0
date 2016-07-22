From: Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [v6 PATCH 1/6] extcon: Add Type-C and DP support
Date: Fri, 22 Jul 2016 18:29:13 +0900
Message-ID: <5791E769.9060403@samsung.com>
References: <1469106808-28297-1-git-send-email-zyw@rock-chips.com>
 <CGME20160721131520epcas1p402684ff2569a23d7e5e011da9fb07667@epcas1p4.samsung.com>
 <1469106808-28297-2-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-reply-to: <1469106808-28297-2-git-send-email-zyw@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chris Zhong <zyw@rock-chips.com>, dianders@chromium.org, tfiga@chromium.org, heiko@sntech.de, yzq@rock-chips.com, groeck@chromium.org, myungjoo.ham@samsung.com, wulf@rock-chips.com, marcheu@chromium.org
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Chris,

I'm sorry for late reply. I finished the first draft to support the ext=
con property.
You can check the patches[1]. But, I need more time to test it. After t=
ested it,
I'll send the patches.

[1] https://git.kernel.org/cgit/linux/kernel/git/chanwoo/extcon.git/log=
/?h=3Dextcon-test

Chanwoo Choi (4):
  extcon: Add the extcon_type to group each connector into five categor=
y
  extcon: Add the support for extcon property according to type of conn=
ector
  extcon: Rename the extcon_set/get_state() to maintain the function na=
ming pattern
  extcon: Add the sync APIs to support the  notification for extcon pro=
perty

Chris Zhong (1):
  extcon: Add EXTCON_DISP_DP and the property for USB Type-C

Regards,
Chanwoo Choi

On 2016=EB=85=84 07=EC=9B=94 21=EC=9D=BC 22:13, Chris Zhong wrote:
> Add EXTCON_DISP_DP for the Display external connector. For Type-C
> connector the DisplayPort can work as an Alternate Mode(VESA DisplayP=
ort
> Alt Mode on USB Type-C Standard). The Type-C support both normal and
> flipped orientation, so add a property to extcon.
>=20
> Signe-off-by: Chris Zhong <zyw@rock-chips.com>
>=20
> Signed-off-by: Chris Zhong <zyw@rock-chips.com>
> ---
>=20
> Changes in v6:
> - move the EXTCON_PROP_TYPEC_POLARITY to EXTCON_TYPE_USB in _supporte=
d
> Series-changes: 5
> - support get property
>=20
> Changes in v5: None
> Changes in v4: None
> Changes in v3: None
> Changes in v2: None
> Changes in v1: None
>=20
>  drivers/extcon/extcon.c | 26 ++++++++++++++++++++++++++
>  include/linux/extcon.h  | 13 +++++++++++++
>  2 files changed, 39 insertions(+)
>=20
> diff --git a/drivers/extcon/extcon.c b/drivers/extcon/extcon.c
> index a1117db..f79b510 100644
> --- a/drivers/extcon/extcon.c
> +++ b/drivers/extcon/extcon.c
> @@ -157,6 +157,11 @@ struct __extcon_info {
>  		.id =3D EXTCON_DISP_VGA,
>  		.name =3D "VGA",
>  	},
> +	[EXTCON_DISP_DP] =3D {
> +		.type =3D EXTCON_TYPE_DISP | EXTCON_TYPE_USB,
> +		.id =3D EXTCON_DISP_DP,
> +		.name =3D "DP",
> +	},
> =20
>  	/* Miscellaneous external connector */
>  	[EXTCON_DOCK] =3D {
> @@ -270,6 +275,7 @@ static bool is_extcon_property_supported(unsigned=
 int id,
>  		switch (prop) {
>  		case EXTCON_PROP_USB_ID:
>  		case EXTCON_PROP_USB_VBUS:
> +		case EXTCON_PROP_TYPEC_POLARITY:
>  			return true;
>  		default:
>  			break;
> @@ -547,6 +553,26 @@ int extcon_get_cable_property(struct extcon_dev =
*edev, unsigned int id,
>  				enum extcon_property prop,
>  				union extcon_property_value *val)
>  {
> +	struct extcon_cable *cable;
> +	int index;
> +
> +	if (!edev)
> +		return -EINVAL;
> +
> +	/* Check the property whether is supported or not */
> +	if (!is_extcon_property_supported(id, prop))
> +		return -EINVAL;
> +
> +	/* Find the cable index of external connector by using id */
> +	index =3D find_cable_index_by_id(edev, id);
> +	if (index < 0)
> +		return index;
> +
> +	/* Store the property value */
> +	cable =3D &edev->cables[index];
> +
> +	val->intval =3D cable->propval[prop].intval;
> +
>  	return 0;
>  }
> =20
> diff --git a/include/linux/extcon.h b/include/linux/extcon.h
> index f6f0a8d..50ef87f 100644
> --- a/include/linux/extcon.h
> +++ b/include/linux/extcon.h
> @@ -77,6 +77,7 @@ enum extcon_type {
>  #define EXTCON_DISP_MHL		41	/* Mobile High-Definition Link */
>  #define EXTCON_DISP_DVI		42	/* Digital Visual Interface */
>  #define EXTCON_DISP_VGA		43	/* Video Graphics Array */
> +#define EXTCON_DISP_DP		44	/* DisplayPort */
> =20
>  /* Miscellaneous external connector */
>  #define EXTCON_DOCK		60
> @@ -108,9 +109,13 @@ enum extcon_property {
>  	 * - EXTCON_PROP_USB_USB
>  	 * @type:	integer (int value)
>  	 * @value:	0 (low) or 1 (high)
> +	 * - EXTCON_PROP_TYPEC_POLARITY,
> +	 * @type:	integer (int value)
> +	 * @value:	0 (normal) or 1 (flip)
>  	 */
>  	EXTCON_PROP_USB_ID =3D 0,
>  	EXTCON_PROP_USB_VBUS,
> +	EXTCON_PROP_TYPEC_POLARITY,
> =20
>  	/* Properties of EXTCON_TYPE_CHG. */
>  	/* Properties of EXTCON_TYPE_JACK. */
> @@ -225,6 +230,14 @@ extern int extcon_get_cable_state_(struct extcon=
_dev *edev, unsigned int id);
>  extern int extcon_set_cable_state_(struct extcon_dev *edev, unsigned=
 int id,
>  				   bool cable_state);
> =20
> +extern int extcon_get_cable_property(struct extcon_dev *edev, unsign=
ed int id,
> +				     enum extcon_property prop,
> +				     union extcon_property_value *val);
> +
> +extern int extcon_set_cable_property(struct extcon_dev *edev, unsign=
ed int id,
> +				     enum extcon_property prop,
> +				     union extcon_property_value val);
> +
>  /*
>   * Following APIs are to monitor every action of a notifier.
>   * Registrar gets notified for every external port of a connection d=
evice.
>=20
