From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/2] usb: dwc2: host: Fix missing device insertions
Date: Tue, 17 Nov 2015 08:13:36 -0800
Message-ID: <CAD=FV=XMAjPBpVX5VB+mNrbOgcsJP+cqESep9aJXH7rxA-r5-w@mail.gmail.com>
References: <CAD=FV=UA1oGQw0+582vBD=vDgTVFaWxxgvfGNt+kCX9YTkve_g@mail.gmail.com>
	<Pine.LNX.4.44L0.1511171034030.1680-100000@iolanthe.rowland.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44L0.1511171034030.1680-100000@iolanthe.rowland.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Felipe Balbi <balbi@ti.com>, John Youn <John.Youn@synopsys.com>, Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "Herrero, Gregory" <gregory.herrero@intel.com>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Dinh Nguyen <dinguyen@opensource.altera.com>, John Youn <johnyoun@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Alan,

On Tue, Nov 17, 2015 at 7:40 AM, Alan Stern <stern@rowland.harvard.edu> wrote:
> On Mon, 16 Nov 2015, Doug Anderson wrote:
>
>> > Fundamentally there's no difference between a "connect" interrupt and a
>> > "disconnect" interrupt.  They should both do exactly the same things:
>> > clear the interrupt source, post a "connection change" event, and set
>> > the driver's connect status based on the hardware's current state.
>> > The second and third parts can be handled by a shared subroutine.
>>
>> Ah, sorry I misunderstood.  OK, fair enough.  So you're saying that
>> the problem is that dwc2_hcd_disconnect() has a line that looks like
>> this:
>>
>>   hsotg->flags.b.port_connect_status = 0;
>>
>> ...and the dwc2_port_intr() has a line that looks like this:
>>
>>   hsotg->flags.b.port_connect_status = 1;
>>
>> ...and both should just query the status.
>
> Well, I don't know how the driver uses flags.b.port_connect_status.  In
> principle it could do away with that flag completely and always query
> the hardware status.
>
>> Do you think we should to block landing this patch on cleaning up how
>> dwc2 handles port_connect_status?  I'm not sure what side effects
>> changing port_connect_status will have, so I'll need to test and dig a
>> bit...
>>
>> I'm currently working on trying to fix the microframe scheduler and
>> was planning to post the next series of patches there pretty soon.
>> I'm also planning to keep digging to figure out how to overall
>> increase compatibility with devices (and compatibility with many
>> devices plugged in).
>>
>> If it were up to me, I'd prefer to land this patch in either 4.4 or
>> 4.5 since it does seem to work.  ...then put seeing what we can do to
>> cleanup all of the port_connect_status on the todo list.
>
> It's up to you guys.  All I've been doing here is pointing out that
> your proposed approach didn't seem like the best.

Thanks!  Just wanted to make sure you know that I'm very very
appreciative of your reviews and suggestions here.  Having someone
intimately familiar with how other USB host drivers work that's
willing to point out how dwc2 can do things better will be very
helpful in helping dwc2 grow.

-Doug
