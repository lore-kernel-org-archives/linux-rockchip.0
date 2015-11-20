From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v4 2/2] usb: dwc2: host: Clear interrupts before handling them
Date: Fri, 20 Nov 2015 08:49:15 -0800
Message-ID: <CAD=FV=XBOmi_oH1jTnLABzVEssTeyVDQm9ocbfuO+gGjAFOCtg@mail.gmail.com>
References: <1447968195-32097-1-git-send-email-dianders@chromium.org>
	<1447968195-32097-2-git-send-email-dianders@chromium.org>
	<87y4dsd6hr.fsf@saruman.tx.rr.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <87y4dsd6hr.fsf@saruman.tx.rr.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Felipe Balbi <balbi@ti.com>
Cc: John Youn <John.Youn@synopsys.com>, Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "Herrero, Gregory" <gregory.herrero@intel.com>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Dinh Nguyen <dinguyen@opensource.altera.com>, John Youn <johnyoun@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Felipe,

On Fri, Nov 20, 2015 at 7:40 AM, Felipe Balbi <balbi@ti.com> wrote:
>
> Hi,
>
> Douglas Anderson <dianders@chromium.org> writes:
>> In general it is wise to clear interrupts before processing them.  If
>> you don't do that, you can get:
>>  1. Interrupt happens
>>  2. You look at system state and process interrupt
>>  3. A new interrupt happens
>>  4. You clear interrupt without processing it.
>>
>> This patch was actually a first attempt to fix missing device insertions
>> as described in (usb: dwc2: host: Fix missing device insertions) and it
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
>> still seems wise as a general policy to clear interrupt before handling
>> them.
>>
>> Note that for dwc2_handle_usb_port_intr(), instead of moving the clear
>> of PRTINT to the beginning of the function we remove it completely.  The
>> only way to clear PRTINT is to clear the sources that set it in the
>> first place.
>>
>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
>> Acked-by: John Youn <johnyoun@synopsys.com>
>> Tested-by: John Youn <johnyoun@synopsys.com>
>
> $ patch -p1 --dry-run < patch.diff
> checking file drivers/usb/dwc2/core_intr.c
> checking file drivers/usb/dwc2/hcd_intr.c
> Hunk #4 FAILED at 365.
> Hunk #5 succeeded at 388 (offset 11 lines).
> 1 out of 5 hunks FAILED
>
> Care to rebase on top of my testing/next ?

No problem.

...though when I did that, I actually found (by code inspection) a bug
in the original patch, so I guess it's a good thing it didn't apply...
...and then that led me to another bug that was pre-existing.  I'll
send up two new patches shortly.  I'll remove John's Ack and Tested
tags from the patch since it contains a change.

It looks like you already landed part 1 of this series (usb: dwc2:
host: Fix missing device insertions) so I won't resend that.

-Doug
