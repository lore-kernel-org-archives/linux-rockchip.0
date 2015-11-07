From: Alan Stern <stern@rowland.harvard.edu>
Subject: Re: [PATCH 2/3] usb: dwc2: host: Giveback URB in tasklet context
Date: Sat, 7 Nov 2015 10:09:44 -0500 (EST)
Message-ID: <Pine.LNX.4.44L0.1511071008010.23886-100000@netrider.rowland.org>
References: <CAD=FV=WysKiu9iVOzPSLrabEqTtFhxPxvkhTqpQf3gp=h55d9w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=WysKiu9iVOzPSLrabEqTtFhxPxvkhTqpQf3gp=h55d9w@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: John Youn <John.Youn@synopsys.com>, Felipe Balbi <balbi@ti.com>, Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "Herrero, Gregory" <gregory.herrero@intel.com>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Dinh Nguyen <dinguyen@opensource.altera.com>, John Youn <johnyoun@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Ming Lei <ming.lei@canonical.com>
List-Id: linux-rockchip.vger.kernel.org

On Fri, 6 Nov 2015, Doug Anderson wrote:

> You're talking to someone who has only been looking at the details of
> USB for about 2 days now.  :-P  ...I'm trying to grok all of that, but
> I'm not sure I got it all...
> 
> I will say that "URB_ISO_ASAP" is not referenced anywhere in dwc2.
> Presumably that's a bug (or missing feature).  Would it be terrible if
> I just ignored that for now and said that if you try to add something
> to the queue and we're currently in the process of waiting for our
> timer to expire then you'll just get back -ENOSPC?  dwc2 won't deal
> perfectly well if you've very close to exhausting the available
> bandwidth, but that could be a task for another day.

Sure.  It's not necessary to support everything perfectly, right from
the beginning.

Alan Stern
