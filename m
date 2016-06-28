From: William Wu <william.wu@rock-chips.com>
Subject: Re: [PATCH v4 5/5] usb: dwc3: rockchip: add devicetree bindings documentation
Date: Tue, 28 Jun 2016 11:18:04 +0800
Message-ID: <5771EC6C.3070707@rock-chips.com>
References: <1464870896-25612-1-git-send-email-william.wu@rock-chips.com> <4674233.DVms812T4a@diego> <576904D0.6060005@rock-chips.com> <1518073.zeMq7N85Id@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1518073.zeMq7N85Id@phil>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: gregkh@linuxfoundation.org, balbi@kernel.org, linux-rockchip@lists.infradead.org, briannorris@google.com, dianders@google.com, kever.yang@rock-chips.com, huangtao@rock-chips.com, frank.wang@rock-chips.com, eddie.cai@rock-chips.com, John.Youn@synopsys.com, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, sergei.shtylyov@cogentembedded.com
List-Id: linux-rockchip.vger.kernel.org

Dear Heiko,

On 06/25/2016 03:50 AM, Heiko Stuebner wrote:
> Hi William,
>
> Am Dienstag, 21. Juni 2016, 17:11:44 schrieb William Wu:
>> On 06/20/2016 10:44 PM, Heiko St=FCbner wrote:
>>> Am Freitag, 17. Juni 2016, 17:18:59 schrieb William Wu:
>>>> On 06/17/2016 07:15 AM, Heiko St=FCbner wrote:
>>>>> Am Donnerstag, 2. Juni 2016, 20:34:56 schrieb William Wu:
>>>>>> This patch adds the devicetree documentation required for Rockch=
ip
>>>>>> USB3.0 core wrapper consisting of USB3.0 IP from Synopsys.
>>>>>>
>>>>>> It supports DRD mode, and could operate in device mode (SS, HS, =
=46S)
>>>>>> and host mode (SS, HS, FS, LS).
>>>>>>
>>>>>> Signed-off-by: William Wu <william.wu@rock-chips.com>
>>> [...]
>>>
>>>>>> +Optional clocks:
>>>>>> +  "aclk_usb3otg0"	Aclk for specific usb controller clock.
>>> what does this clock do? Also most likely same argument as below.
>> Here is partial rk3399 clk tree about usb3:
>>
>> aclk_usb3                       7            7   297000000 0 0
>>                aclk_usb3_grf                1            1
>> 297000000          0 0
>>                aclk_usb3_rksoc_axi_perf     1            1
>> 297000000          0 0
>>                aclk_usb3otg1                1            1
>> 297000000          0 0
>>                aclk_usb3otg0                1            1
>> 297000000          0 0
>>                aclk_usb3_noc                1            1
>> 297000000          0 0
>>
>> from the clk tree, and check with our IC designers, we can see that:
>> 1. aclk_usb3 is the parent clk of aclk_usb3****
>> 2. aclk_usb3_grf  is used for both otg0 and otg1 grf, and these usb3=
 grf
>> can be set
>> to control otg0 and otg1 controller, but not the phy.
>> 3. aclk_usb3otg1 is otg1 controller clk,  aclk_usb3otg0 is otg0
>> controller clk.
>> 4. aclk_usb3_rksoc_axi_perf is the clk for usb3 performance monitor
>> module. 5. aclk_usb3_noc is the clk for soc bus interconnect.
>>
>>>>>> +  "aclk_usb3_rksoc_axi_perf"  USB AXI perf clock.  Not present =
on
>>>>>> all
>>>>>> platforms.
>>>>> The clock names looks pretty strange. What are they for? Especial=
ly as
>>>>> nothing seems to use them right now.
>>>> "aclk_usb3_rksoc_axi_perf", it's the clk for usb3 performance moni=
tor
>>>> module, you can refer to the GRF_USB3_PERF_xxx. And we don't use t=
he
>>>> usb3
>>>> performance monitor control registers right now.
>>> ok, then I'd suggest not defining the clock for now.
>>>
>>> For one, there are more perf blocks in the GRF (usb3, pcie, hdcp22,
>>> gmac, gpu, etc) which all seem to share a somewhat similar design, =
so
>>> they will maybe result in a separate driver of some form for the
>>> performance monitors.
>>>
>>> And secondly, it is somewhat easy to add new optional properties, b=
ut
>>> you
>>> cannot remove anything defined previously. So if we later decide to
>>> handle all the performance monitors differently, you can't remove t=
hat
>>> clock from the binding again. (or at least only with quite a bit of
>>> hassle).
>>>
>>> So as this clock isn't used at all yet, I guess it should not get
>>> included now.
>> Yes, I agree with you. We can remove the aclk_usb3_rksoc_axi_perf ri=
ght
>> now.
>>>>>> +  "aclk_usb3_grf"	USB grf clock.  Not present on all platforms.
>>>>> for my own education, which part of the GRF does this clock suppl=
y?
>>>> "aclk_usb3_grf", it's the clk for USB3 grf, e.g. GRF_USB3OTGX_CONX
>>> Hmm, this looks more like it belongs to the otg phy?
>>> Anyway, also seems unused right now, so same argument as above appl=
ies
>>> here.
>> As I have described above, the "aclk_usb3_grf" is  used for both otg=
0
>> and otg1 grf,
>> and these usb3 grf can be set to control otg0 and otg1 controller, b=
ut
>> not the phy.
>> And we have done a test that remove the grf clk, and the result show=
ed
>> that usb3
>> controller can't work normally. So I think we need the usb3 grf clk.
>>
>> So about the usb3 controller clk management, I think it should conta=
in
>> the following clk:
>> 1.  aclk_usb3otg1
>> 2.  aclk_usb3otg0
>> 3.  aclk_usb3_grf
> correct, aclk_usb3otgX would then be the busclk for each controller i=
f I'm
> not mistaken and the grf clock should also get enabled, like we also =
plan on
> doing for the vio_grf clock in the display area.
OK, so  aclk_usb3_grf should be marked as critical, right?

I found that most of the grf clocks haven't been marked as critical,=20
apart from vio_grf. So may I keep the aclk_usb3_grf in usb3 dts, and=20
remove it after clock manager adds it to critical clocks?
>
>> 4.  aclk_usb3_noc
>> For "aclk_usb3_noc", I discuss with our clk manager, the clk is alwa=
ys
>> on before,
>> but according to upstream maintainer's suggestion, we need to manage=
 the
>> noc clk by each module.
> can you point me to this discussion? The bus-interconnect is a very s=
eparate
> component, which we don't model so far and thus we have all the noc c=
locks
> simply marked as critical.
>
> As this clock doesn't belong to the actual usb controller block, but =
said
> separate component, handling it in the controller seems somehow wrong=
 to me.
>
> So my (current) opinion would again be to mark the noc clock as criti=
cal for
> the time being.
Sorry, it seems that I get the new information about clk management too=
=20
late.:-)

There's no dedicated discussion about noc clk, but similar to grf clock=
,=20
please refer to "https://patchwork.kernel.org/patch/9171467/" for add=20
pclk_vio_grf to critical clock on the RK3399, and you have agreed on=20
that mark vio grf clk as critical. So I agree with your opinion, thanks=
~
>
>> and the follow two clk can be removed:
>> 1. aclk_usb3
>> 2. aclk_usb3_rksoc_axi_perf
>>
>> Is it ok?
> yep, apart from the noc-clock, this looks great.
>
>
> Heiko
Best regards,
      William Wu
>
>
>
