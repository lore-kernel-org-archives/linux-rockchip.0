From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] usb: host: ohci-platform: Disable ohci for rk3288
Date: Fri, 3 Jul 2020 18:08:52 +0100
Message-ID: <a3d2bc2a-9c19-25fa-f2d7-1a26fcc0c047@arm.com>
References: <20200702090504.36670-1-jagan@amarulasolutions.com>
 <f0ae5915-9cb8-9550-f05c-6cebad191a14@arm.com>
 <CAMty3ZBBdYdNOf-nQTdKZfi-VagaML6k+4PkAh6Uz936h9auow@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAMty3ZBBdYdNOf-nQTdKZfi-VagaML6k+4PkAh6Uz936h9auow@mail.gmail.com>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, =?UTF-8?Q?Myl=c3=a8ne_Josserand?= <mylene.josserand@collabora.com>, linux-usb@vger.kernel.org, linux-kernel <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Suniel Mahesh <sunil@amarulasolutions.com>, William Wu <william.wu@rock-chips.com>, Michael Trimarchi <michael@amarulasolutions.com>, linux-amarula <linux-amarula@amarulasolutions.com>, Kever Yang <kever.yang@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

On 2020-07-03 12:39, Jagan Teki wrote:
> On Thu, Jul 2, 2020 at 8:08 PM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> On 2020-07-02 10:05, Jagan Teki wrote:
>>> rk3288 has usb host0 ohci controller but doesn't actually work
>>> on real hardware but it works with new revision chip rk3288w.
>>>
>>> So, disable ohci for rk3288.
>>>
>>> For rk3288w chips the compatible update code is handled by bootloader.
>>>
>>> Cc: William Wu <william.wu@rock-chips.com>
>>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>>> ---
>>> Note:
>>> - U-Boot patch for compatible update
>>> https://patchwork.ozlabs.org/project/uboot/patch/20200702084820.35942-1-jagan@amarulasolutions.com/
>>>
>>>    drivers/usb/host/ohci-platform.c | 2 +-
>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/usb/host/ohci-platform.c b/drivers/usb/host/ohci-platform.c
>>> index 7addfc2cbadc..24655ed6a7e0 100644
>>> --- a/drivers/usb/host/ohci-platform.c
>>> +++ b/drivers/usb/host/ohci-platform.c
>>> @@ -96,7 +96,7 @@ static int ohci_platform_probe(struct platform_device *dev)
>>>        struct ohci_hcd *ohci;
>>>        int err, irq, clk = 0;
>>>
>>> -     if (usb_disabled())
>>> +     if (usb_disabled() || of_machine_is_compatible("rockchip,rk3288"))
>>
>> This seems unnecessary to me - if we've even started probing a driver
>> for a broken piece of hardware to the point that we need magic checks to
>> bail out again, then something is already fundamentally wrong.
>>
>> Old boards only sold with the original SoC variant have no reason to
>> enable the OHCI (since it never worked originally), thus will never
>> execute this check.
>>
>> New boards designed around the W variant to make use of the OHCI can
>> freely enable it either way.
>>
>> The only relative-edge-case where it might matter is older board designs
>> still in production which have shipped with both SoC variants. Enabling
>> OHCI can't be *necessary* given that it's still broken on a lot of
>> deployed boards, so at best it must be an opportunistic nice-to-have.
>> Since we're already having to rely on the bootloader to patch up the
>> devicetree for other low-level differences in this case, it should be
>> part of that responsibility for it to only enable the OHCI on the
>> appropriate SoC variant too. Statically enabling it in the DTS for a
>> board where it may well not work is just bad.
> 
> You mean enable OHCI by identifying revision W with dts status "okay"?
> doesn't it complex for the bootloader to update all effecting changes?

Well, on boards which may have either SoC it's already got to detect the 
difference and make at least a couple of other DT adjustments; a handful 
more lines to check for a specific node and flip its status wouldn't be 
too horrendous (although I suppose you'd also want to check whether the 
EHCI is enabled first, to guess at whether the port's even wired up at all).

Or alternatively, as I said, simply don't bother doing anything - boards 
that only use RK3288W can enable OHCI in their DTS, and other boards 
that have been not using it for however many years can continue not 
using it even if it might technically be available on newer production runs.

Robin.
