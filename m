From: Artur Petrosyan <Arthur.Petrosyan@synopsys.com>
Subject: Re: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with
 DWC2_POWER_DOWN_PARAM_NONE
Date: Tue, 7 May 2019 07:05:45 +0000
Message-ID: <SN1PR12MB243183AAC5636C23144634FBA7310@SN1PR12MB2431.namprd12.prod.outlook.com>
References: <20190418001356.124334-1-dianders@chromium.org>
 <20190418001356.124334-2-dianders@chromium.org>
 <CAD=FV=UGjQz9Di=NL_r_g1Hofqv-FWBywfSm9Vu6gGr22wzPrA@mail.gmail.com>
 <SN1PR12MB243136608514210F3E3E536EA7350@SN1PR12MB2431.namprd12.prod.outlook.com>
 <CAD=FV=V97+_cQ1aD=w_a3SifGOG3M5DPvcnvxYVUJMkX_WLTFg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>, Felipe Balbi <felipe.balbi@linux.intel.com>, =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>, Alan Stern <stern@rowland.harvard.edu>, Alexandru M Stan <amstan@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, William Wu <william.wu@rock-chips.com>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, Stefan Wahren <stefan.wahren@i2se.com>, Randy Li <ayaka@soulik.info>, Chris <zyw@rock-chips.com>, Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>, Amelie Delaunay <amelie.delaunay@st.com>, Julius Werner <jwerner@chromium.org>, Elaine Zhang <zhangqing@rock-chips.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kern>
List-Id: linux-rockchip.vger.kernel.org

Hi,=0A=
=0A=
On 5/3/2019 19:08, Doug Anderson wrote:=0A=
> Hi,=0A=
> =0A=
> On Fri, May 3, 2019 at 1:25 AM Artur Petrosyan=0A=
> <Arthur.Petrosyan@synopsys.com> wrote:=0A=
>>=0A=
>> On 5/2/2019 03:58, Doug Anderson wrote:=0A=
>>> Hi,=0A=
>>>=0A=
>>>=0A=
>>> On Wed, Apr 17, 2019 at 5:15 PM Douglas Anderson <dianders@chromium.org=
> wrote:=0A=
>>>>=0A=
>>>> This is an attempt to rehash commit 0cf884e819e0 ("usb: dwc2: add bus=
=0A=
>>>> suspend/resume for dwc2") on ToT.  That commit was reverted in commit=
=0A=
>>>> b0bb9bb6ce01 ("Revert "usb: dwc2: add bus suspend/resume for dwc2"")=
=0A=
>>>> because apparently it broke the Altera SOCFPGA.=0A=
>>>>=0A=
>>>> With all the changes that have happened to dwc2 in the meantime, it's=
=0A=
>>>> possible that the Altera SOCFPGA will just magically work with this=0A=
>>>> change now.  ...and it would be good to get bus suspend/resume=0A=
>>>> implemented.=0A=
>>>>=0A=
>>>> This change is a forward port of one that's been living in the Chrome=
=0A=
>>>> OS 3.14 kernel tree.=0A=
>>>>=0A=
>>>> Signed-off-by: Douglas Anderson <dianders@chromium.org>=0A=
>>>> ---=0A=
>>>> This patch was last posted at:=0A=
>>>>=0A=
>>>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lkml.kernel.org=
_r_1446237173-2D15263-2D1-2Dgit-2Dsend-2Demail-2Ddianders-40chromium.org&d=
=3DDwIBaQ&c=3DDPL6_X_6JkXFx7AXWqB0tg&r=3D9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqr=
C_D7niMJI&m=3D7rxT8EFX9mqUDtTL4P7iuzYNsYROe9rxHGCresSKPTg&s=3DlTaNUA2XIYPat=
417fkd1A4Zpvb5eyYtTc1H_NIfW8Vw&e=3D=0A=
>>>>=0A=
>>>> ...and appears to have died the death of silence.  Maybe it could get=
=0A=
>>>> some bake time in linuxnext if we can't find any proactive testing?=0A=
>>>>=0A=
>>>> I will also freely admit that I don't know tons about the theory=0A=
>>>> behind this patch.  I'm mostly just re-hashing the original commit=0A=
>>>> from Kever that was reverted since:=0A=
>>>> * Turning on partial power down on rk3288 doesn't "just work".  I=0A=
>>>>     don't get hotplug events.  This is despite dwc2 auto-detecting tha=
t=0A=
>>>>     we are power optimized.=0A=
>>>> * If we don't do something like this commit we don't get into as low=
=0A=
>>>>     of a power mode.=0A=
>>>=0A=
>>> OK, I spent the day digging more into this patch to confirm that it's=
=0A=
>>> really the right thing to do.  ...and it still seems to be.=0A=
>>>=0A=
>>> First off: I'm pretty sure the above sentence "If we don't do=0A=
>>> something like this commit we don't get into as low of a power mode."=
=0A=
>>> is totally wrong.  Luckily it's "after the cut" and not part of the=0A=
>>> commit message.  Specifically I did a bunch of power testing and I=0A=
>>> couldn't find any instance saving power after this patch.=0A=
>>>=0A=
>>> ...but, then I looked more carefully at all the history of this=0A=
>>> commit.  I ended up at:=0A=
>>>=0A=
>>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__chromium-2Drevie=
w.googlesource.com_c_chromiumos_third-5Fparty_kernel_-2B_306265_&d=3DDwIBaQ=
&c=3DDPL6_X_6JkXFx7AXWqB0tg&r=3D9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI=
&m=3D7rxT8EFX9mqUDtTL4P7iuzYNsYROe9rxHGCresSKPTg&s=3DLiyyIyaCPmr88nJeI7TCGt=
oJBFLRWir_reikYtAHHDw&e=3D=0A=
>> Looking at this code review I see that this patch fixes whatever issues=
=0A=
>> you have on Chrome OS 3.14. But your patch has landed on the top of=0A=
>> latest Kernel version. With the latest version I think you would not=0A=
>> have the regression issue.=0A=
>> So you are fixing Chrome OS 3.14.=0A=
> =0A=
> I'm confused why you ignored the rest of my email where I said I also=0A=
> ported it to 4.19 (which, from a dwc2 host point of view, is pretty=0A=
> much mainline) and saw that the patch was still needed.=0A=
I didn't ignore it just I had to perform testes and reply to it with =0A=
another email.=0A=
> =0A=
> -Doug=0A=
> =0A=
I spent yesterday debugging and performing testes with Linux Mainline. =0A=
So when we don't have any of power saving modes supported and the =0A=
power_down is DWC2_POWER_DOWN_PARAM_NONE. We can set "PCGCTL_STOPPCLK" =0A=
bit whenever there is suspend ( Checked the programming guide and data =0A=
book). I have not seen any case that this affects the flow. I have not =0A=
been able to see if after setting "PCGCTL_STOPPCLK" bit there is any =0A=
power saved or driver behaved differently. Maybe it is platform depended =
=0A=
. However, there is a possibility that this might save power.=0A=
=0A=
So as this is not breaking anything. I am ok with this patch.=0A=
=0A=
-- =0A=
Regards,=0A=
Artur=0A=
