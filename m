From: William Wu <william.wu@rock-chips.com>
Subject: Re: [PATCH v4 5/5] usb: dwc3: rockchip: add devicetree bindings documentation
Date: Tue, 21 Jun 2016 17:11:44 +0800
Message-ID: <576904D0.6060005@rock-chips.com>
References: <1464870896-25612-1-git-send-email-william.wu@rock-chips.com> <12544596.GMXFpFZvx9@phil> <5763C083.2030304@rock-chips.com> <4674233.DVms812T4a@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <4674233.DVms812T4a@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?ISO-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>
Cc: gregkh@linuxfoundation.org, balbi@kernel.org, linux-rockchip@lists.infradead.org, briannorris@google.com, dianders@google.com, kever.yang@rock-chips.com, huangtao@rock-chips.com, frank.wang@rock-chips.com, eddie.cai@rock-chips.com, John.Youn@synopsys.com, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, sergei.shtylyov@cogentembedded.com
List-Id: linux-rockchip.vger.kernel.org

Dear Heiko,

On 06/20/2016 10:44 PM, Heiko St=FCbner wrote:
> Hi William,
>
> Am Freitag, 17. Juni 2016, 17:18:59 schrieb William Wu:
>> On 06/17/2016 07:15 AM, Heiko St=FCbner wrote:
>>> Am Donnerstag, 2. Juni 2016, 20:34:56 schrieb William Wu:
>>>> This patch adds the devicetree documentation required for Rockchip
>>>> USB3.0 core wrapper consisting of USB3.0 IP from Synopsys.
>>>>
>>>> It supports DRD mode, and could operate in device mode (SS, HS, FS=
)
>>>> and host mode (SS, HS, FS, LS).
>>>>
>>>> Signed-off-by: William Wu <william.wu@rock-chips.com>
> [...]
>
>>>> +Optional clocks:
>>>> +  "aclk_usb3otg0"	Aclk for specific usb controller clock.
> what does this clock do? Also most likely same argument as below.
Here is partial rk3399 clk tree about usb3:

aclk_usb3                       7            7   297000000 0 0
              aclk_usb3_grf                1            1=20
297000000          0 0
              aclk_usb3_rksoc_axi_perf     1            1=20
297000000          0 0
              aclk_usb3otg1                1            1=20
297000000          0 0
              aclk_usb3otg0                1            1=20
297000000          0 0
              aclk_usb3_noc                1            1=20
297000000          0 0

from the clk tree, and check with our IC designers, we can see that:
1. aclk_usb3 is the parent clk of aclk_usb3****
2. aclk_usb3_grf  is used for both otg0 and otg1 grf, and these usb3 gr=
f=20
can be set
to control otg0 and otg1 controller, but not the phy.
3. aclk_usb3otg1 is otg1 controller clk,  aclk_usb3otg0 is otg0=20
controller clk.
4. aclk_usb3_rksoc_axi_perf is the clk for usb3 performance monitor mod=
ule.
5. aclk_usb3_noc is the clk for soc bus interconnect.

>
>>>> +  "aclk_usb3_rksoc_axi_perf"  USB AXI perf clock.  Not present on=
 all
>>>> platforms.
>>> The clock names looks pretty strange. What are they for? Especially=
 as
>>> nothing seems to use them right now.
>> "aclk_usb3_rksoc_axi_perf", it's the clk for usb3 performance monito=
r
>> module, you can refer to the GRF_USB3_PERF_xxx. And we don't use the=
 usb3
>> performance monitor control registers right now.
> ok, then I'd suggest not defining the clock for now.
>
> For one, there are more perf blocks in the GRF (usb3, pcie, hdcp22, g=
mac, gpu,
> etc) which all seem to share a somewhat similar design, so they will =
maybe
> result in a separate driver of some form for the performance monitors=
=2E
>
> And secondly, it is somewhat easy to add new optional properties, but=
 you
> cannot remove anything defined previously. So if we later decide to h=
andle all
> the performance monitors differently, you can't remove that clock fro=
m the
> binding again. (or at least only with quite a bit of hassle).
>
> So as this clock isn't used at all yet, I guess it should not get inc=
luded
> now.
Yes, I agree with you. We can remove the aclk_usb3_rksoc_axi_perf right=
 now.
>
>>>> +  "aclk_usb3_grf"	USB grf clock.  Not present on all platforms.
>>> for my own education, which part of the GRF does this clock supply?
>> "aclk_usb3_grf", it's the clk for USB3 grf, e.g. GRF_USB3OTGX_CONX
> Hmm, this looks more like it belongs to the otg phy?
> Anyway, also seems unused right now, so same argument as above applie=
s here.
As I have described above, the "aclk_usb3_grf" is  used for both otg0=20
and otg1 grf,
and these usb3 grf can be set to control otg0 and otg1 controller, but=20
not the phy.
And we have done a test that remove the grf clk, and the result showed=20
that usb3
controller can't work normally. So I think we need the usb3 grf clk.

So about the usb3 controller clk management, I think it should contain=20
the following clk:
1.  aclk_usb3otg1
2.  aclk_usb3otg0
3.  aclk_usb3_grf
4.  aclk_usb3_noc
=46or "aclk_usb3_noc", I discuss with our clk manager, the clk is alway=
s=20
on before,
but according to upstream maintainer's suggestion, we need to manage th=
e=20
noc clk by each module.

and the follow two clk can be removed:
1. aclk_usb3
2. aclk_usb3_rksoc_axi_perf

Is it ok?
>
>
> Heiko
>
>
>
