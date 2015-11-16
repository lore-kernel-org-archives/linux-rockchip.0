From: Felipe Balbi <balbi@ti.com>
Subject: Re: [PATCH v2 1/2] usb: dwc2: host: Fix missing device insertions
Date: Mon, 16 Nov 2015 11:44:17 -0600
Message-ID: <87y4dxltzi.fsf@saruman.tx.rr.com>
References: <1446582629-30091-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-="; micalg=pgp-sha1;
	protocol="application/pgp-signature"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1446582629-30091-1-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <John.Youn@synopsys.com>
Cc: Yunzhi Li <lyz@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Julius Werner <jwerner@chromium.org>, gregory.herrero@intel.com, yousaf.kaukab@intel.com, dinguyen@opensource.altera.com, Douglas Anderson <dianders@chromium.org>, johnyoun@synopsys.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

(replying here for the context of why I think this is NOT the smallest
patch possible for the -rc)

Douglas Anderson <dianders@chromium.org> writes:
> If you've got your interrupt signals bouncing a bit as you insert your
> USB device, you might end up in a state when the device is connected but
> the driver doesn't know it.
>
> Specifically, the observed order is:
>  1. hardware sees connect
>  2. hardware sees disconnect
>  3. hardware sees connect
>  4. dwc2_port_intr() - clears connect interrupt
>  5. dwc2_handle_common_intr() - calls dwc2_hcd_disconnect()
>
> Now you'll be stuck with the cable plugged in and no further interrupts
> coming in but the driver will think we're disconnected.
>
> We'll fix this by checking for the missing connect interrupt and
> re-connecting after the disconnect is posted.  We don't skip the
> disconnect because if there is a transitory disconnect we really want to
> de-enumerate and re-enumerate.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> Changes in v2:
> - Don't reconnect when called from _dwc2_hcd_stop() (John Youn)
>
>  drivers/usb/dwc2/core.h      |  6 ++++--
>  drivers/usb/dwc2/core_intr.c |  4 ++--
>  drivers/usb/dwc2/hcd.c       | 40 ++++++++++++++++++++++++++++++++++++++=
--
>  drivers/usb/dwc2/hcd_intr.c  |  6 +-----
>  4 files changed, 45 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
> index a66d3cb62b65..daa1c342cdac 100644
> --- a/drivers/usb/dwc2/core.h
> +++ b/drivers/usb/dwc2/core.h
> @@ -1154,12 +1154,14 @@ static inline int dwc2_hsotg_set_test_mode(struct=
 dwc2_hsotg *hsotg,
>=20=20
>  #if IS_ENABLED(CONFIG_USB_DWC2_HOST) || IS_ENABLED(CONFIG_USB_DWC2_DUAL_=
ROLE)
>  extern int dwc2_hcd_get_frame_number(struct dwc2_hsotg *hsotg);
> -extern void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg);
> +extern void dwc2_hcd_connect(struct dwc2_hsotg *hsotg);
> +extern void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg, bool force);

this 'force' parameter is new and looks unnecessary for the -rc.

>  extern void dwc2_hcd_start(struct dwc2_hsotg *hsotg);
>  #else
>  static inline int dwc2_hcd_get_frame_number(struct dwc2_hsotg *hsotg)
>  { return 0; }
> -static inline void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg) {}
> +static inline void dwc2_hcd_connect(struct dwc2_hsotg *hsotg) {}
> +static inline void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg, bool fo=
rce) {}
>  static inline void dwc2_hcd_start(struct dwc2_hsotg *hsotg) {}
>  static inline void dwc2_hcd_remove(struct dwc2_hsotg *hsotg) {}
>  static inline int dwc2_hcd_init(struct dwc2_hsotg *hsotg, int irq)
> diff --git a/drivers/usb/dwc2/core_intr.c b/drivers/usb/dwc2/core_intr.c
> index 27daa42788b1..61601d16e233 100644
> --- a/drivers/usb/dwc2/core_intr.c
> +++ b/drivers/usb/dwc2/core_intr.c
> @@ -239,7 +239,7 @@ static void dwc2_handle_otg_intr(struct dwc2_hsotg *h=
sotg)
>  			dev_dbg(hsotg->dev, "a_suspend->a_peripheral (%d)\n",
>  				hsotg->op_state);
>  			spin_unlock(&hsotg->lock);
> -			dwc2_hcd_disconnect(hsotg);
> +			dwc2_hcd_disconnect(hsotg, false);

because force is unnecessary (it seems to be just an optimization to
me), this change is unnecessary.

>  			spin_lock(&hsotg->lock);
>  			hsotg->op_state =3D OTG_STATE_A_PERIPHERAL;
>  		} else {
> @@ -401,7 +401,7 @@ static void dwc2_handle_disconnect_intr(struct dwc2_h=
sotg *hsotg)
>  		dwc2_op_state_str(hsotg));
>=20=20
>  	if (hsotg->op_state =3D=3D OTG_STATE_A_HOST)
> -		dwc2_hcd_disconnect(hsotg);
> +		dwc2_hcd_disconnect(hsotg, false);


and so is this.

>  	dwc2_writel(GINTSTS_DISCONNINT, hsotg->regs + GINTSTS);
>  }
> diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
> index e79baf73c234..e208eac7ff57 100644
> --- a/drivers/usb/dwc2/hcd.c
> +++ b/drivers/usb/dwc2/hcd.c
> @@ -268,15 +268,33 @@ static void dwc2_hcd_cleanup_channels(struct dwc2_h=
sotg *hsotg)
>  }
>=20=20
>  /**
> + * dwc2_hcd_connect() - Handles connect of the HCD
> + *
> + * @hsotg: Pointer to struct dwc2_hsotg
> + *
> + * Must be called with interrupt disabled and spinlock held
> + */
> +void dwc2_hcd_connect(struct dwc2_hsotg *hsotg)
> +{
> +	if (hsotg->lx_state !=3D DWC2_L0)
> +		usb_hcd_resume_root_hub(hsotg->priv);
> +
> +	hsotg->flags.b.port_connect_status_change =3D 1;
> +	hsotg->flags.b.port_connect_status =3D 1;
> +}

you make no mention of why this is needed. This is basically a refactor,
not a fix.

> +/**
>   * dwc2_hcd_disconnect() - Handles disconnect of the HCD
>   *
>   * @hsotg: Pointer to struct dwc2_hsotg
> + * @force: If true, we won't try to reconnect even if we see device conn=
ected.
>   *
>   * Must be called with interrupt disabled and spinlock held
>   */
> -void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg)
> +void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg, bool force)

as mentioned before, unnecessary 'force' parameter.

> @@ -315,6 +333,24 @@ void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg)
>  		dwc2_hcd_cleanup_channels(hsotg);
>=20=20
>  	dwc2_host_disconnect(hsotg);
> +
> +	/*
> +	 * Add an extra check here to see if we're actually connected but
> +	 * we don't have a detection interrupt pending.  This can happen if:
> +	 *   1. hardware sees connect
> +	 *   2. hardware sees disconnect
> +	 *   3. hardware sees connect
> +	 *   4. dwc2_port_intr() - clears connect interrupt
> +	 *   5. dwc2_handle_common_intr() - calls here
> +	 *
> +	 * Without the extra check here we will end calling disconnect
> +	 * and won't get any future interrupts to handle the connect.
> +	 */
> +	if (!force) {
> +		hprt0 =3D dwc2_readl(hsotg->regs + HPRT0);
> +		if (!(hprt0 & HPRT0_CONNDET) && (hprt0 & HPRT0_CONNSTS))
> +			dwc2_hcd_connect(hsotg);

what's inside this 'force' branch is what you really need to fix the
problem, right ? It seems like for the -rc cycle, all you need is:

diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index 571c21727ff9..967d1e686efe 100644
=2D-- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -276,6 +276,7 @@ static void dwc2_hcd_cleanup_channels(struct dwc2_hsotg=
 *hsotg)
  */
 void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg)
 {
+	u32 hprt0;
 	u32 intr;
=20
 	/* Set status flags for the hub driver */
@@ -315,6 +316,15 @@ void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg)
 		dwc2_hcd_cleanup_channels(hsotg);
=20
 	dwc2_host_disconnect(hsotg);
+
+	hprt0 =3D dwc2_readl(hsotg->regs + HPRT0);
+	if (!(hprt0 & (HPRT0_CONNDET | HPRT0_CONNSTS))) {
+		if (hsotg->lx_state !=3D DWC2_L0)
+			usb_hcd_resume_roothub(hsotg->priv);
+
+		hsotg->flags.b.port_connect_status_change =3D 1;
+		hsotg->flags.b.port_connect_status =3D 1;
+	}
 }
=20
 /**

This has some code duplication and it'll *always* check for CONNDET |
CONNSTS, but that's okay for the -rc. Follow-up patches (for v4.5 merge
window) can refactor the code duplication and introduce 'force'
parameter.

> @@ -2365,7 +2401,7 @@ static void _dwc2_hcd_stop(struct usb_hcd *hcd)
>=20=20
>  	spin_lock_irqsave(&hsotg->lock, flags);
>  	/* Ensure hcd is disconnected */
> -	dwc2_hcd_disconnect(hsotg);
> +	dwc2_hcd_disconnect(hsotg, true);

unnecessary change.

>  	dwc2_hcd_stop(hsotg);
>  	hsotg->lx_state =3D DWC2_L3;
>  	hcd->state =3D HC_STATE_HALT;
> diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
> index bda0b21b850f..03504ac2fecc 100644
> --- a/drivers/usb/dwc2/hcd_intr.c
> +++ b/drivers/usb/dwc2/hcd_intr.c
> @@ -350,11 +350,7 @@ static void dwc2_port_intr(struct dwc2_hsotg *hsotg)
>  		dev_vdbg(hsotg->dev,
>  			 "--Port Interrupt HPRT0=3D0x%08x Port Connect Detected--\n",
>  			 hprt0);
> -		if (hsotg->lx_state !=3D DWC2_L0)
> -			usb_hcd_resume_root_hub(hsotg->priv);
> -
> -		hsotg->flags.b.port_connect_status_change =3D 1;
> -		hsotg->flags.b.port_connect_status =3D 1;
> +		dwc2_hcd_connect(hsotg);

unnecessary change.

Do you agree  or do you think 'force' is really necessary for this fix ?

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWShXxAAoJEIaOsuA1yqREXqkP/ir+vMd0e/C6x+KrzR3YbFHG
e/tpignaOLi+kOBYQZUojWSwEpRdDF6jW4WhQl11EopwZ62L3RB6UL53dkwsN16I
aiOEwl696Os+Gfs10grnZNH4qwFL/I7qaBpHztQdVaQkRyrvfOP71X7r0f+P711d
ICNOIGX+TwVfrDAsJQKt2IkI3BdQngH1Xij41rx20mx+drCLGGi/cFPjnkMcJoLd
1Umg7GY9bc9RyJRz1sy5ks2nIF+aIYPv8L67Vb5WX0S2PA7O6ldEEpJpyUmLJLkc
q5WsorzTNEi6q1D/iiSTTBiTYi8C1rQhweqPutsW7vv1w/FXoHX98hs1DQV93xOg
xRS6Ud5I1ltmn+xrN02G2nfPvPYRrIMH4MG8VB5L+tyvZ9g21k2bGsUbPTE2aCxe
pO3x/OY0GQuNrS26Mjwp9H86YSzyzw5UAn13S8Laq6mzA144/l3YnHO7KPEUA7QA
y43WHEX8P3kzno+3+OfsAE+2ccggSY/cJ893uxZWs8LHkZIJgcN+BVzhPnVSqv41
ywFrkYaVuIw2f86jYR23Bq2LrJ+WJ0ITWiN5dZt9J/6+c0+X7SG1gUXdUiIcTw0J
s3jhdQOCZq6weXXOi3kEw1NIxZGTAN6alizX4K+jHBZ0wdbMHMnNO0OpAKuzl8Pm
U1/DC219vr6IELIXEVyj
=xw48
-----END PGP SIGNATURE-----
--=-=-=--
