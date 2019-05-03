From: Artur Petrosyan <Arthur.Petrosyan@synopsys.com>
Subject: Re: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with
 DWC2_POWER_DOWN_PARAM_NONE
Date: Fri, 3 May 2019 08:25:48 +0000
Message-ID: <SN1PR12MB243136608514210F3E3E536EA7350@SN1PR12MB2431.namprd12.prod.outlook.com>
References: <20190418001356.124334-1-dianders@chromium.org>
 <20190418001356.124334-2-dianders@chromium.org>
 <CAD=FV=UGjQz9Di=NL_r_g1Hofqv-FWBywfSm9Vu6gGr22wzPrA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>, Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>, Felipe Balbi <felipe.balbi@linux.intel.com>, =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>
Cc: Alan Stern <stern@rowland.harvard.edu>, Alexandru M Stan <amstan@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, William Wu <william.wu@rock-chips.com>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, Stefan Wahren <stefan.wahren@i2se.com>, Randy Li <ayaka@soulik.info>, Chris <zyw@rock-chips.com>, Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>, Amelie Delaunay <amelie.delaunay@st.com>, Julius Werner <jwerner@chromium.org>, Dinh Nguyen <dinguyen@opensource.altera.com>, Elaine Zhang <zhangqing@rock-chips.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On 5/2/2019 03:58, Doug Anderson wrote:=0A=
> Hi,=0A=
> =0A=
> =0A=
> On Wed, Apr 17, 2019 at 5:15 PM Douglas Anderson <dianders@chromium.org> =
wrote:=0A=
>>=0A=
>> This is an attempt to rehash commit 0cf884e819e0 ("usb: dwc2: add bus=0A=
>> suspend/resume for dwc2") on ToT.  That commit was reverted in commit=0A=
>> b0bb9bb6ce01 ("Revert "usb: dwc2: add bus suspend/resume for dwc2"")=0A=
>> because apparently it broke the Altera SOCFPGA.=0A=
>>=0A=
>> With all the changes that have happened to dwc2 in the meantime, it's=0A=
>> possible that the Altera SOCFPGA will just magically work with this=0A=
>> change now.  ...and it would be good to get bus suspend/resume=0A=
>> implemented.=0A=
>>=0A=
>> This change is a forward port of one that's been living in the Chrome=0A=
>> OS 3.14 kernel tree.=0A=
>>=0A=
>> Signed-off-by: Douglas Anderson <dianders@chromium.org>=0A=
>> ---=0A=
>> This patch was last posted at:=0A=
>>=0A=
>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lkml.kernel.org_r=
_1446237173-2D15263-2D1-2Dgit-2Dsend-2Demail-2Ddianders-40chromium.org&d=3D=
DwIBaQ&c=3DDPL6_X_6JkXFx7AXWqB0tg&r=3D9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D=
7niMJI&m=3D7rxT8EFX9mqUDtTL4P7iuzYNsYROe9rxHGCresSKPTg&s=3DlTaNUA2XIYPat417=
fkd1A4Zpvb5eyYtTc1H_NIfW8Vw&e=3D=0A=
>>=0A=
>> ...and appears to have died the death of silence.  Maybe it could get=0A=
>> some bake time in linuxnext if we can't find any proactive testing?=0A=
>>=0A=
>> I will also freely admit that I don't know tons about the theory=0A=
>> behind this patch.  I'm mostly just re-hashing the original commit=0A=
>> from Kever that was reverted since:=0A=
>> * Turning on partial power down on rk3288 doesn't "just work".  I=0A=
>>    don't get hotplug events.  This is despite dwc2 auto-detecting that=
=0A=
>>    we are power optimized.=0A=
>> * If we don't do something like this commit we don't get into as low=0A=
>>    of a power mode.=0A=
> =0A=
> OK, I spent the day digging more into this patch to confirm that it's=0A=
> really the right thing to do.  ...and it still seems to be.=0A=
> =0A=
> First off: I'm pretty sure the above sentence "If we don't do=0A=
> something like this commit we don't get into as low of a power mode."=0A=
> is totally wrong.  Luckily it's "after the cut" and not part of the=0A=
> commit message.  Specifically I did a bunch of power testing and I=0A=
> couldn't find any instance saving power after this patch.=0A=
> =0A=
> ...but, then I looked more carefully at all the history of this=0A=
> commit.  I ended up at:=0A=
> =0A=
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__chromium-2Dreview.=
googlesource.com_c_chromiumos_third-5Fparty_kernel_-2B_306265_&d=3DDwIBaQ&c=
=3DDPL6_X_6JkXFx7AXWqB0tg&r=3D9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=
=3D7rxT8EFX9mqUDtTL4P7iuzYNsYROe9rxHGCresSKPTg&s=3DLiyyIyaCPmr88nJeI7TCGtoJ=
BFLRWir_reikYtAHHDw&e=3D=0A=
Looking at this code review I see that this patch fixes whatever issues =0A=
you have on Chrome OS 3.14. But your patch has landed on the top of =0A=
latest Kernel version. With the latest version I think you would not =0A=
have the regression issue.=0A=
So you are fixing Chrome OS 3.14.=0A=
=0A=
> =0A=
> ...where I said that this fixes a resume speed regression.  More=0A=
> details could be found at the linked bug, AKA:=0A=
> =0A=
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__bugs.chromium.org_=
p_chromium_issues_detail-3Fid-3D548336&d=3DDwIBaQ&c=3DDPL6_X_6JkXFx7AXWqB0t=
g&r=3D9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=3D7rxT8EFX9mqUDtTL4P7iu=
zYNsYROe9rxHGCresSKPTg&s=3D7gK8ZGX2zZPqC98CDMhqxEY3Acm_TbYa3fpQjWtvexM&e=3D=
=0A=
> =0A=
> ...but, sadly, I wasn't as verbose as I usually am and didn't describe=0A=
> my exact testing setup.  So I tried to reproduce.  ...and I was able=0A=
> to.  I tested on an rk3288-veyron-jerry with an empty USB hub plugged=0A=
> into the left port (the host port) and my "servo 2" debug board hooked=0A=
> up to the right port.  The "power_Resume" test in Chrome OS certainly=0A=
> showed a regression in 3.14 when doing a suspend/resume cycle.=0A=
> =0A=
> =0A=
> Digging into the logs in 3.14, before this patch I saw this in the logs:=
=0A=
> =0A=
> usb 3-1: reset high-speed USB device number 2 using dwc2=0A=
> usb 3-1.7: reset high-speed USB device number 3 using dwc2=0A=
> =0A=
> ...after this patch:=0A=
> =0A=
> usb 3-1: USB disconnect, device number 2=0A=
> usb 3-1.7: USB disconnect, device number 3=0A=
> usb 3-1: new high-speed USB device number 4 using dwc2=0A=
> usb 3-1: New USB device found, idVendor=3D1a40, idProduct=3D0201, bcdDevi=
ce=3D 1.00=0A=
> usb 3-1: New USB device strings: Mfr=3D0, Product=3D1, SerialNumber=3D0=
=0A=
> usb 3-1: Product: USB 2.0 Hub [MTT]=0A=
> usb 3-1.7: new high-speed USB device number 5 using dwc2=0A=
> usb 3-1.7: New USB device found, idVendor=3D1a40, idProduct=3D0101, bcdDe=
vice=3D 1.11=0A=
> usb 3-1.7: New USB device strings: Mfr=3D0, Product=3D1, SerialNumber=3D0=
=0A=
> usb 3-1.7: Product: USB 2.0 Hub=0A=
> =0A=
> ...so basically my belief is that without this patch we're just sorta=0A=
> leaving the device hanging and it get confused on resume.  After this=0A=
> patch we behave slightly better.=0A=
> =0A=
> I tested on 4.19 and found much the same.  There:=0A=
> =0A=
> usb 2-1: reset high-speed USB device number 2 using dwc2=0A=
> usb 2-1.7: reset high-speed USB device number 3 using dwc2=0A=
> =0A=
> vs.=0A=
> =0A=
> usb 2-1.7: USB disconnect, device number 3=0A=
> usb 2-1: USB disconnect, device number 2=0A=
> usb 2-1: new high-speed USB device number 4 using dwc2=0A=
> usb 2-1: New USB device found, idVendor=3D1a40, idProduct=3D0201, bcdDevi=
ce=3D 1.00=0A=
> usb 2-1: New USB device strings: Mfr=3D0, Product=3D1, SerialNumber=3D0=
=0A=
> usb 2-1: Product: USB 2.0 Hub [MTT]=0A=
> usb 2-1.7: new high-speed USB device number 5 using dwc2=0A=
> usb 2-1.7: New USB device found, idVendor=3D1a40, idProduct=3D0101, bcdDe=
vice=3D 1.11=0A=
> usb 2-1.7: New USB device strings: Mfr=3D0, Product=3D1, SerialNumber=3D0=
=0A=
> usb 2-1.7: Product: USB 2.0 Hub=0A=
> =0A=
> =0A=
> On 4.19 I didn't actually notice a the same resume time regression,=0A=
> presumably because things are happening more asynchronously there (I=0A=
> didn't confirm this).  ...but in any case it seems like the right=0A=
> thing to do to actually do the suspend.=0A=
> =0A=
> =0A=
> I'll also re-iterate once more that I'm not claiming that my patch=0A=
> helps with "partial power down".  It merely makes the "power savings=0A=
> disabled" case work more properly.=0A=
> =0A=
> =0A=
> I'll also note that my patch is already in Felipe's "testing/next"=0A=
> branch which I continue to believe is correct and good.=0A=
> =0A=
> -Doug=0A=
> =0A=
=0A=
=0A=
-- =0A=
Regards,=0A=
Artur=0A=
