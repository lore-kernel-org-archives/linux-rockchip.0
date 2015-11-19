From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v3 2/2] usb: dwc2: host: Clear interrupts before handling them
Date: Thu, 19 Nov 2015 13:12:33 -0800
Message-ID: <CAD=FV=V9AfWoeph34i2z37Ze93EYRA8NjwfX=CGhmOb6ufXRMQ@mail.gmail.com>
References: <1447962313-17069-1-git-send-email-dianders@chromium.org>
	<1447962313-17069-2-git-send-email-dianders@chromium.org>
	<CAKv9HNbtQjnOzctNH9qVy97KZCW-W0M+s+vZAt0oRDv7KUtsUw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAKv9HNbtQjnOzctNH9qVy97KZCW-W0M+s+vZAt0oRDv7KUtsUw@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?B?QW50dGkgU2VwcMOkbMOk?= <a.seppala@gmail.com>
Cc: John Youn <John.Youn@synopsys.com>, Felipe Balbi <balbi@ti.com>, Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "Herrero, Gregory" <gregory.herrero@intel.com>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Dinh Nguyen <dinguyen@opensource.altera.com>, John Youn <johnyoun@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Antti,

On Thu, Nov 19, 2015 at 1:09 PM, Antti Sepp=C3=A4l=C3=A4 <a.seppala@gma=
il.com> wrote:
> On 19 November 2015 at 21:45, Douglas Anderson <dianders@chromium.org=
> wrote:
>> In general it is wise to clear interrupts before processing them.  I=
f
>> you don't do that, you can get:
>>  1. Interrupt happens
>>  2. You look at system state and process interrupt
>>  3. A new interrupt happens
>>  4. You clear interrupt without processing it.
>>
>> This patch was actually a first attempt to fix missing device insert=
ions
>> as described in (usb: dwc2: host: Fix missing device insertions) and=
 it
>> did solve some of the signal bouncing problems but not all of
>> them (which is why I submitted the other patch).  Specifically, this
>> patch itself would sometimes change:
>>  1. hardware sees connect
>>  2. hardware sees disconnect
>>  3. hardware sees connect
>>  4. dwc2_port_intr() - clears connect interrupt
>>  5. dwc2_handle_common_intr() - calls dwc2_hcd_disconnect()
>>
>> ...to:
>>  1. hardware sees connect
>>  2. hardware sees disconnect
>>  3. dwc2_port_intr() - clears connect interrupt
>>  4. hardware sees connect
>>  5. dwc2_handle_common_intr() - calls dwc2_hcd_disconnect()
>>
>> ...but with different timing then sometimes we'd still miss cable
>> insertions.
>>
>> In any case, though this patch doesn't fix any (known) problems, it
>> still seems wise as a general policy to clear interrupt before handl=
ing
>> them.
>>
>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
>> Acked-by: John Youn <johnyoun@synopsys.com>
>> Tested-by: John Youn <johnyoun@synopsys.com>
>> ---
>> Changes in v3:
>> - Don't (uselessly) clear the PRTINT anymore (Felipe Balbi).
>>
>> Changes in v2: None
>>
>
> Hi.
>
> It seems that towards the end of hcd_intr.c you seem to be switching =
a
> few calls of dwc2_writel() to plain writel(). It looks like something
> that is easily overlooked but please always use dwc2_writel to
> preserve correct register endianness on big-endian platforms.

Oops!  That was a very dumb oversight, thanks for catching.  Sorry
about that.  Fix coming.

-Doug
