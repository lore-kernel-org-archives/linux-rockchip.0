From: Artur Petrosyan <Arthur.Petrosyan@synopsys.com>
Subject: Re: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with
 DWC2_POWER_DOWN_PARAM_NONE
Date: Mon, 29 Apr 2019 08:43:34 +0000
Message-ID: <SN1PR12MB243108D1EF3239EC4F730ACDA7390@SN1PR12MB2431.namprd12.prod.outlook.com>
References: <20190418001356.124334-1-dianders@chromium.org>
 <20190418001356.124334-2-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>, Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>, Felipe Balbi <felipe.balbi@linux.intel.com>, "heiko@sntech.de" <heiko@sntech.de>
Cc: Alan Stern <stern@rowland.harvard.edu>, "amstan@chromium.org" <amstan@chromium.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, William Wu <william.wu@rock-chips.com>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, Stefan Wahren <stefan.wahren@i2se.com>, Randy Li <ayaka@soulik.info>, "zyw@rock-chips.com" <zyw@rock-chips.com>, "mka@chromium.org" <mka@chromium.org>, "ryandcase@chromium.org" <ryandcase@chromium.org>, Amelie Delaunay <amelie.delaunay@st.com>, "jwerner@chromium.org" <jwerner@chromium.org>, "dinguyen@opensource.altera.com" <dinguyen@opensource.altera.com>, Elaine Zhang <zhangqing@rock-chips.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.or>
List-Id: linux-rockchip.vger.kernel.org

Hi,=0A=
=0A=
On 4/18/2019 04:15, Douglas Anderson wrote:=0A=
> This is an attempt to rehash commit 0cf884e819e0 ("usb: dwc2: add bus=0A=
> suspend/resume for dwc2") on ToT.  That commit was reverted in commit=0A=
> b0bb9bb6ce01 ("Revert "usb: dwc2: add bus suspend/resume for dwc2"")=0A=
> because apparently it broke the Altera SOCFPGA.=0A=
> =0A=
> With all the changes that have happened to dwc2 in the meantime, it's=0A=
> possible that the Altera SOCFPGA will just magically work with this=0A=
> change now.  ...and it would be good to get bus suspend/resume=0A=
> implemented.=0A=
> =0A=
> This change is a forward port of one that's been living in the Chrome=0A=
> OS 3.14 kernel tree.=0A=
> =0A=
> Signed-off-by: Douglas Anderson <dianders@chromium.org>=0A=
> ---=0A=
> This patch was last posted at:=0A=
> =0A=
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lkml.kernel.org_r_=
1446237173-2D15263-2D1-2Dgit-2Dsend-2Demail-2Ddianders-40chromium.org&d=3DD=
wIDAg&c=3DDPL6_X_6JkXFx7AXWqB0tg&r=3D9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7=
niMJI&m=3DMMfe-4lZePyty6F5zfQ54kiYGuJWNulyRat944LkOsc&s=3DnExFpAPP_0plZfO5L=
MG1B-mqt1vyCvE35elVcyVgs8Y&e=3D=0A=
> =0A=
> ...and appears to have died the death of silence.  Maybe it could get=0A=
> some bake time in linuxnext if we can't find any proactive testing?=0A=
> =0A=
> I will also freely admit that I don't know tons about the theory=0A=
> behind this patch.  I'm mostly just re-hashing the original commit=0A=
> from Kever that was reverted since:=0A=
> * Turning on partial power down on rk3288 doesn't "just work".  I=0A=
>    don't get hotplug events.  This is despite dwc2 auto-detecting that=0A=
>    we are power optimized.=0A=
What do you mean by doesn't "just work" ? It seem to me that even after =0A=
adding this patch you don't get issues fixed.=0A=
You mention that you don't get the hotplug events. Please provide dwc2 =0A=
debug logs and register dumps on this issue.=0A=
=0A=
> * If we don't do something like this commit we don't get into as low=0A=
>    of a power mode.=0A=
> =0A=
> Changes in v2: None=0A=
> =0A=
>   drivers/usb/dwc2/hcd.c | 84 ++++++++++++++++++++++++++----------------=
=0A=
>   1 file changed, 53 insertions(+), 31 deletions(-)=0A=
> =0A=
> diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c=0A=
> index e272d020012e..978232a9e4a8 100644=0A=
> --- a/drivers/usb/dwc2/hcd.c=0A=
> +++ b/drivers/usb/dwc2/hcd.c=0A=
> @@ -4482,6 +4482,7 @@ static int _dwc2_hcd_suspend(struct usb_hcd *hcd)=
=0A=
>   	unsigned long flags;=0A=
>   	int ret =3D 0;=0A=
>   	u32 hprt0;=0A=
> +	u32 pcgctl;=0A=
>   =0A=
>   	spin_lock_irqsave(&hsotg->lock, flags);=0A=
>   =0A=
> @@ -4497,7 +4498,7 @@ static int _dwc2_hcd_suspend(struct usb_hcd *hcd)=
=0A=
>   	if (hsotg->op_state =3D=3D OTG_STATE_B_PERIPHERAL)=0A=
>   		goto unlock;=0A=
>   =0A=
> -	if (hsotg->params.power_down !=3D DWC2_POWER_DOWN_PARAM_PARTIAL)=0A=
> +	if (hsotg->params.power_down > DWC2_POWER_DOWN_PARAM_PARTIAL)=0A=
 >   		goto skip_power_saving;=0A=
 >=0A=
=0A=
"hsotg->params.power_down" is assigned to "DWC2_POWER_DOWN_PARAM_NONE =3D =
=0A=
0" if there is no hibernation or partial power down supported by the =0A=
core or power saving features are disabled by =0A=
"hsotg->params.power_saving =3D false" , "DWC2_POWER_DOWN_PARAM_PARTIAL" =
=0A=
if core supports partial power down, "DWC2_POWER_DOWN_PARAM_HIBERNATION =0A=
" if the core supports hibernation=0A=
=0A=
When you check "if (hsotg->params.power_down > =0A=
DWC2_POWER_DOWN_PARAM_PARTIAL)" you are saying that "skip_power_saving" =0A=
only in that case when core supports Hibernation. But what if core =0A=
doesn't support both hibernation and partial power down and the =0A=
"hsotg->params.power_down" value us equal to =0A=
"DWC2_POWER_DOWN_PARAM_NONE" which is 0.=0A=
=0A=
With this implementation driver will program entering to suspend when =0A=
core doesn't support both hibernation and partial power down.=0A=
=0A=
>   	/*=0A=
> @@ -4506,21 +4507,35 @@ static int _dwc2_hcd_suspend(struct usb_hcd *hcd)=
=0A=
>   	 */=0A=
>   	if (!hsotg->bus_suspended) {=0A=
>   		hprt0 =3D dwc2_read_hprt0(hsotg);=0A=
> -		hprt0 |=3D HPRT0_SUSP;=0A=
> -		hprt0 &=3D ~HPRT0_PWR;=0A=
> -		dwc2_writel(hsotg, hprt0, HPRT0);=0A=
> -		spin_unlock_irqrestore(&hsotg->lock, flags);=0A=
> -		dwc2_vbus_supply_exit(hsotg);=0A=
> -		spin_lock_irqsave(&hsotg->lock, flags);=0A=
> +		if (hprt0 & HPRT0_CONNSTS) { > +			hprt0 |=3D HPRT0_SUSP;=0A=
Here you set "HPRT0_SUSP" bit but what if core doesn't support both =0A=
hibernation and Partial Power down assuming that =0A=
hsotg->params.power_down" value us equal to "DWC2_POWER_DOWN_PARAM_NONE" =
=0A=
which is 0.=0A=
> +			if (hsotg->params.power_down =3D=3D DWC2_POWER_DOWN_PARAM_PARTIAL)=0A=
You make one checking of hsotg->params.power_down mode here.=0A=
> +				hprt0 &=3D ~HPRT0_PWR;=0A=
> +			dwc2_writel(hsotg, hprt0, HPRT0);=0A=
> +		}=0A=
> +		if (hsotg->params.power_down =3D=3D DWC2_POWER_DOWN_PARAM_PARTIAL) {=
=0A=
another checking of power_down mode here.=0A=
> +			spin_unlock_irqrestore(&hsotg->lock, flags);=0A=
> +			dwc2_vbus_supply_exit(hsotg);=0A=
> +			spin_lock_irqsave(&hsotg->lock, flags);=0A=
> +		} else {=0A=
> +			pcgctl =3D readl(hsotg->regs + PCGCTL);=0A=
> +			pcgctl |=3D PCGCTL_STOPPCLK;=0A=
> +			writel(pcgctl, hsotg->regs + PCGCTL);=0A=
"PCGCTL_STOPPCLK" bit is set only when core enters to partial power =0A=
down. So here if hsotg->params.power_down is not equal to =0A=
DWC2_POWER_DOWN_PARAM_PARTIAL and is DWC2_POWER_DOWN_PARAM_NONE the the =0A=
bit will be set.=0A=
> +		}=0A=
>   	}=0A=
>   =0A=
> -	/* Enter partial_power_down */=0A=
> -	ret =3D dwc2_enter_partial_power_down(hsotg);=0A=
> -	if (ret) {=0A=
> -		if (ret !=3D -ENOTSUPP)=0A=
> -			dev_err(hsotg->dev,=0A=
> -				"enter partial_power_down failed\n");=0A=
> -		goto skip_power_saving;=0A=
> +	if (hsotg->params.power_down =3D=3D DWC2_POWER_DOWN_PARAM_PARTIAL) {=0A=
one more power_down mode checking here.=0A=
I understand that those checking are to make sure that we got partial =0A=
power down mode enabled but before this patch it was done with one checking=
.=0A=
> +		/* Enter partial_power_down */=0A=
> +		ret =3D dwc2_enter_partial_power_down(hsotg);=0A=
> +		if (ret) {=0A=
> +			if (ret !=3D -ENOTSUPP)=0A=
> +				dev_err(hsotg->dev,=0A=
> +					"enter partial_power_down failed\n");=0A=
> +			goto skip_power_saving;=0A=
> +		}=0A=
> +=0A=
> +		/* After entering partial_power_down, hardware is no more accessible *=
/=0A=
> +		clear_bit(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags);=0A=
>   	}=0A=
>   =0A=
>   	/* Ask phy to be suspended */=0A=
> @@ -4530,9 +4545,6 @@ static int _dwc2_hcd_suspend(struct usb_hcd *hcd)=
=0A=
>   		spin_lock_irqsave(&hsotg->lock, flags);=0A=
>   	}=0A=
>   =0A=
> -	/* After entering partial_power_down, hardware is no more accessible */=
=0A=
> -	clear_bit(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags);=0A=
> -=0A=
>   skip_power_saving:=0A=
>   	hsotg->lx_state =3D DWC2_L2;=0A=
>   unlock:=0A=
> @@ -4545,6 +4557,7 @@ static int _dwc2_hcd_resume(struct usb_hcd *hcd)=0A=
>   {=0A=
>   	struct dwc2_hsotg *hsotg =3D dwc2_hcd_to_hsotg(hcd);=0A=
>   	unsigned long flags;=0A=
> +	u32 pcgctl;=0A=
>   	int ret =3D 0;=0A=
>   =0A=
>   	spin_lock_irqsave(&hsotg->lock, flags);=0A=
> @@ -4555,17 +4568,11 @@ static int _dwc2_hcd_resume(struct usb_hcd *hcd)=
=0A=
>   	if (hsotg->lx_state !=3D DWC2_L2)=0A=
>   		goto unlock;=0A=
>   =0A=
> -	if (hsotg->params.power_down !=3D DWC2_POWER_DOWN_PARAM_PARTIAL) {=0A=
> +	if (hsotg->params.power_down > DWC2_POWER_DOWN_PARAM_PARTIAL) {=0A=
>   		hsotg->lx_state =3D DWC2_L0;=0A=
>   		goto unlock;=0A=
>   	}=0A=
>   =0A=
> -	/*=0A=
> -	 * Set HW accessible bit before powering on the controller=0A=
> -	 * since an interrupt may rise.=0A=
> -	 */=0A=
> -	set_bit(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags);=0A=
> -=0A=
>   	/*=0A=
>   	 * Enable power if not already done.=0A=
>   	 * This must not be spinlocked since duration=0A=
> @@ -4577,10 +4584,23 @@ static int _dwc2_hcd_resume(struct usb_hcd *hcd)=
=0A=
>   		spin_lock_irqsave(&hsotg->lock, flags);=0A=
>   	}=0A=
>   =0A=
> -	/* Exit partial_power_down */=0A=
> -	ret =3D dwc2_exit_partial_power_down(hsotg, true);=0A=
> -	if (ret && (ret !=3D -ENOTSUPP))=0A=
> -		dev_err(hsotg->dev, "exit partial_power_down failed\n");=0A=
> +	if (hsotg->params.power_down =3D=3D DWC2_POWER_DOWN_PARAM_PARTIAL) {=0A=
> +		/*=0A=
> +		 * Set HW accessible bit before powering on the controller=0A=
> +		 * since an interrupt may rise.=0A=
> +		 */=0A=
> +		set_bit(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags);=0A=
> +=0A=
> +=0A=
you leave an odd blank line here.  Please delete it.=0A=
> +		/* Exit partial_power_down */=0A=
> +		ret =3D dwc2_exit_partial_power_down(hsotg, true);=0A=
> +		if (ret && (ret !=3D -ENOTSUPP))=0A=
> +			dev_err(hsotg->dev, "exit partial_power_down failed\n");=0A=
> +	} else {=0A=
> +		pcgctl =3D readl(hsotg->regs + PCGCTL);=0A=
> +		pcgctl &=3D ~PCGCTL_STOPPCLK;=0A=
> +		writel(pcgctl, hsotg->regs + PCGCTL);=0A=
=0A=
Here if core doesn't support both hibernation and partial power down =0A=
and "hsotg->params.power_down" is equal to "DWC2_POWER_DOWN_PARAM_NONE" =0A=
which is 0 then "PCGCTL_STOPPCLK" bit is unset.=0A=
=0A=
> +	}=0A=
>   =0A=
>   	hsotg->lx_state =3D DWC2_L0;=0A=
>   =0A=
> @@ -4592,10 +4612,12 @@ static int _dwc2_hcd_resume(struct usb_hcd *hcd)=
=0A=
>   		spin_unlock_irqrestore(&hsotg->lock, flags);=0A=
>   		dwc2_port_resume(hsotg);=0A=
>   	} else {=0A=
> -		dwc2_vbus_supply_init(hsotg);=0A=
> +		if (hsotg->params.power_down =3D=3D DWC2_POWER_DOWN_PARAM_PARTIAL) {=
=0A=
> +			dwc2_vbus_supply_init(hsotg);=0A=
>   =0A=
> -		/* Wait for controller to correctly update D+/D- level */=0A=
> -		usleep_range(3000, 5000);=0A=
> +			/* Wait for controller to correctly update D+/D- level */=0A=
> +			usleep_range(3000, 5000);=0A=
> +		}=0A=
>   =0A=
>   		/*=0A=
>   		 * Clear Port Enable and Port Status changes.=0A=
> =0A=
=0A=
I have tested the patch on HAPS-DX. With this patch or without it when I =
=0A=
have a device connected core  enters to partial power down and doesn't =0A=
exit from it. So I cannot use the device.=0A=
=0A=
-- =0A=
Regards,=0A=
Artur=0A=
