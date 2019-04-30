From: Artur Petrosyan <Arthur.Petrosyan@synopsys.com>
Subject: Re: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with
 DWC2_POWER_DOWN_PARAM_NONE
Date: Tue, 30 Apr 2019 06:05:21 +0000
Message-ID: <SN1PR12MB24317F315C5A4DFE70F9CB0DA73A0@SN1PR12MB2431.namprd12.prod.outlook.com>
References: <20190418001356.124334-1-dianders@chromium.org>
 <20190418001356.124334-2-dianders@chromium.org>
 <SN1PR12MB243108D1EF3239EC4F730ACDA7390@SN1PR12MB2431.namprd12.prod.outlook.com>
 <CAD=FV=UOmfNeuZPrDcZRdwAkF4yRifCpBGUuZTsmmz0UVEZ+yA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>, Felipe Balbi <felipe.balbi@linux.intel.com>, "heiko@sntech.de" <heiko@sntech.de>, Alan Stern <stern@rowland.harvard.edu>, "amstan@chromium.org" <amstan@chromium.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, William Wu <william.wu@rock-chips.com>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, Stefan Wahren <stefan.wahren@i2se.com>, Randy Li <ayaka@soulik.info>, "zyw@rock-chips.com" <zyw@rock-chips.com>, "mka@chromium.org" <mka@chromium.org>, "ryandcase@chromium.org" <ryandcase@chromium.org>, Amelie Delaunay <amelie.delaunay@st.com>, "jwerner@chromium.org" <jwerner@chromium.org>, "dinguyen@opensource.altera.com" <dinguyen@opensource.altera.com>, Elaine
List-Id: linux-rockchip.vger.kernel.org

Hi,=0A=
=0A=
On 4/29/2019 21:34, Doug Anderson wrote:=0A=
> Hi,=0A=
> =0A=
> On Mon, Apr 29, 2019 at 1:43 AM Artur Petrosyan=0A=
> <Arthur.Petrosyan@synopsys.com> wrote:=0A=
>>=0A=
>> Hi,=0A=
>>=0A=
>> On 4/18/2019 04:15, Douglas Anderson wrote:=0A=
>>> This is an attempt to rehash commit 0cf884e819e0 ("usb: dwc2: add bus=
=0A=
>>> suspend/resume for dwc2") on ToT.  That commit was reverted in commit=
=0A=
>>> b0bb9bb6ce01 ("Revert "usb: dwc2: add bus suspend/resume for dwc2"")=0A=
>>> because apparently it broke the Altera SOCFPGA.=0A=
>>>=0A=
>>> With all the changes that have happened to dwc2 in the meantime, it's=
=0A=
>>> possible that the Altera SOCFPGA will just magically work with this=0A=
>>> change now.  ...and it would be good to get bus suspend/resume=0A=
>>> implemented.=0A=
>>>=0A=
>>> This change is a forward port of one that's been living in the Chrome=
=0A=
>>> OS 3.14 kernel tree.=0A=
>>>=0A=
>>> Signed-off-by: Douglas Anderson <dianders@chromium.org>=0A=
>>> ---=0A=
>>> This patch was last posted at:=0A=
>>>=0A=
>>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lkml.kernel.org_=
r_1446237173-2D15263-2D1-2Dgit-2Dsend-2Demail-2Ddianders-40chromium.org&d=
=3DDwIDAg&c=3DDPL6_X_6JkXFx7AXWqB0tg&r=3D9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqr=
C_D7niMJI&m=3DMMfe-4lZePyty6F5zfQ54kiYGuJWNulyRat944LkOsc&s=3DnExFpAPP_0plZ=
fO5LMG1B-mqt1vyCvE35elVcyVgs8Y&e=3D=0A=
>>>=0A=
>>> ...and appears to have died the death of silence.  Maybe it could get=
=0A=
>>> some bake time in linuxnext if we can't find any proactive testing?=0A=
>>>=0A=
>>> I will also freely admit that I don't know tons about the theory=0A=
>>> behind this patch.  I'm mostly just re-hashing the original commit=0A=
>>> from Kever that was reverted since:=0A=
>>> * Turning on partial power down on rk3288 doesn't "just work".  I=0A=
>>>     don't get hotplug events.  This is despite dwc2 auto-detecting that=
=0A=
>>>     we are power optimized.=0A=
>> What do you mean by doesn't "just work" ? It seem to me that even after=
=0A=
>> adding this patch you don't get issues fixed.=0A=
>> You mention that you don't get the hotplug events. Please provide dwc2=
=0A=
>> debug logs and register dumps on this issue.=0A=
> =0A=
> I mean that partial power down in the currently upstream driver=0A=
> doesn't work.  AKA: if I turn on partial power down in the upstream=0A=
> driver then hotplug events break.  I can try to provide some logs.  On=0A=
> what exact version of the code do you want logs?  Just your series?=0A=
> Just my series?  Mainline?  Some attempt at combining both series?  As=0A=
> I said things seem to sorta work with the combined series.  I can try=0A=
> to clarify if that's the series you want me to test with.  ...or I can=0A=
> wait for your next version?=0A=
As I said this patch doesn't fix the issue with hotplug. With this patch =
=0A=
or without the hotplug behaves as it was. I have tested it on our setup.=0A=
=0A=
Have you debugged your patch? Does it make any difference on your setup =0A=
? Does it fix the issue with hotplug?=0A=
=0A=
Try to debug with the following steps.=0A=
1. Debug code with just your patch. Capture the logs and provide. So =0A=
that I can see what is difference with your patch.=0A=
2. Debug only with my series and see if those issues with hotplug are =0A=
still there.=0A=
=0A=
=0A=
> =0A=
> =0A=
>>> @@ -4506,21 +4507,35 @@ static int _dwc2_hcd_suspend(struct usb_hcd *hc=
d)=0A=
>>>         */=0A=
>>>        if (!hsotg->bus_suspended) {=0A=
>>>                hprt0 =3D dwc2_read_hprt0(hsotg);=0A=
>>> -             hprt0 |=3D HPRT0_SUSP;=0A=
>>> -             hprt0 &=3D ~HPRT0_PWR;=0A=
>>> -             dwc2_writel(hsotg, hprt0, HPRT0);=0A=
>>> -             spin_unlock_irqrestore(&hsotg->lock, flags);=0A=
>>> -             dwc2_vbus_supply_exit(hsotg);=0A=
>>> -             spin_lock_irqsave(&hsotg->lock, flags);=0A=
>>> +             if (hprt0 & HPRT0_CONNSTS) { > +                        h=
prt0 |=3D HPRT0_SUSP;=0A=
>> Here you set "HPRT0_SUSP" bit but what if core doesn't support both=0A=
>> hibernation and Partial Power down assuming that=0A=
>> hsotg->params.power_down" value us equal to "DWC2_POWER_DOWN_PARAM_NONE"=
=0A=
>> which is 0.=0A=
> =0A=
> I am by no means an expert on dwc2, but an assumption made in my patch=0A=
> is that even cores that can't support partial power down can still=0A=
> save some amount of power when hcd_suspend is called.=0A=
Have you tried to debug dwc2 with power_down =3D=3D DWC2_POWER_DOWN_PARAM_N=
ONE ?=0A=
> =0A=
> Some evidence that this should be possible: looking at mainline Linux=0A=
> and at dwc2_port_suspend(), I see:=0A=
> =0A=
> * It is currently called even when we have DWC2_POWER_DOWN_PARAM_NONE=0A=
Currently (without your and my patches) (looking at mainline Linux) the =0A=
function dwc2_port_suspend() is called anyway because its call is issued =
=0A=
by the system. But it performs entering to suspend only in case of =0A=
DWC2_POWER_DOWN_PARAM_PARTIAL.=0A=
=0A=
This is not an assumption. What I am pointing out is based on debugging =0A=
and before making assumptions without debugging for me seems not ok.=0A=
=0A=
Currently without your patch and without my patches. In the =0A=
dwc2_port_suspend() it will enter to suspend only in case that =0A=
power_down =3D=3D DWC2_POWER_DOWN_PARAM_PARTIAL. Because if you look at the=
 =0A=
code more carefully you will see=0A=
=0A=
  	if (hsotg->params.power_down !=3D DWC2_POWER_DOWN_PARAM_PARTIAL)=0A=
		goto skip_power_saving;=0A=
=0A=
This says if power_down is not DWC2_POWER_DOWN_PARAM_PARTIAL then skip =0A=
power saving.=0A=
=0A=
So but after your patch. If power_down is DWC2_POWER_DOWN_PARAM_NONE it =0A=
tries to suspend.=0A=
=0A=
=0A=
> =0A=
> * It currently sets HPRT0_SUSP=0A=
> =0A=
> * It currently sets PCGCTL_STOPPCLK specifically in the case where=0A=
> power down is DWC2_POWER_DOWN_PARAM_NONE.=0A=
It currently (without my and your patches) doesn't set PCGCTL_STOPPCLK =0A=
when power down is DWC2_POWER_DOWN_PARAM_NONE. Because again and again =0A=
when power down is DWC2_POWER_DOWN_PARAM_NONE power saving is skipped.=0A=
=0A=
=0A=
> =0A=
> ...I believe that the net effect of my patch ends up doing both those=0A=
> same two things in hcd_suspend.  That is: when power_down is=0A=
> DWC2_POWER_DOWN_PARAM_NONE I believe my patch is really just doing the=0A=
> same thing that dwc2_port_suspend() would do in the same case.  Is=0A=
> that not OK?=0A=
No if your patch is doing the same thing as it was doing before what is =0A=
the purpose of the patch ?=0A=
=0A=
My testes show that your patch doesn't fix the issue related partial =0A=
power down.=0A=
=0A=
> =0A=
> =0A=
> =0A=
>>> +                     if (hsotg->params.power_down =3D=3D DWC2_POWER_DO=
WN_PARAM_PARTIAL)=0A=
>> You make one checking of hsotg->params.power_down mode here.=0A=
>>> +                             hprt0 &=3D ~HPRT0_PWR;=0A=
>>> +                     dwc2_writel(hsotg, hprt0, HPRT0);=0A=
>>> +             }=0A=
>>> +             if (hsotg->params.power_down =3D=3D DWC2_POWER_DOWN_PARAM=
_PARTIAL) {=0A=
>> another checking of power_down mode here.=0A=
> =0A=
> Yeah, we can debate about how to best share/split code.  I'm not in=0A=
> love with the current structure either.  When I rebased your patches=0A=
> atop mine I changed this to more fully split them and I agree that was=0A=
> better.=0A=
> =0A=
> =0A=
>>> @@ -4592,10 +4612,12 @@ static int _dwc2_hcd_resume(struct usb_hcd *hcd=
)=0A=
>>>                spin_unlock_irqrestore(&hsotg->lock, flags);=0A=
>>>                dwc2_port_resume(hsotg);=0A=
>>>        } else {=0A=
>>> -             dwc2_vbus_supply_init(hsotg);=0A=
>>> +             if (hsotg->params.power_down =3D=3D DWC2_POWER_DOWN_PARAM=
_PARTIAL) {=0A=
>>> +                     dwc2_vbus_supply_init(hsotg);=0A=
>>>=0A=
>>> -             /* Wait for controller to correctly update D+/D- level */=
=0A=
>>> -             usleep_range(3000, 5000);=0A=
>>> +                     /* Wait for controller to correctly update D+/D- =
level */=0A=
>>> +                     usleep_range(3000, 5000);=0A=
>>> +             }=0A=
>>>=0A=
>>>                /*=0A=
>>>                 * Clear Port Enable and Port Status changes.=0A=
>>>=0A=
>>=0A=
>> I have tested the patch on HAPS-DX. With this patch or without it when I=
=0A=
>> have a device connected core  enters to partial power down and doesn't=
=0A=
>> exit from it. So I cannot use the device.=0A=
> =0A=
> Can you explain what HAPS-DX is?=0A=
It is the general setup to perform our use case testes.=0A=
For more information about the details you can google about it.=0A=
=0A=
> =0A=
> =0A=
> -Doug=0A=
> =0A=
=0A=
=0A=
-- =0A=
Regards,=0A=
Artur=0A=
